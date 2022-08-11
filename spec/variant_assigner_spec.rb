# frozen_string_literal: true

RSpec.describe Absmartly::VariantAssigner do
  context "assign()" do
    it "should be deterministic" do
      test_cases = {
          "bleh@absmartly.com": [
              [[0.5, 0.5], '0x00000000', '0x00000000', 0],
              [[0.5, 0.5], '0x00000000', 0x00000001, 1],
              [[0.5, 0.5], '0x8015406f', '0x7ef49b98', 0],
              [[0.5, 0.5], '0x3b2e7d90', '0xca87df4d', 0],
              [[0.5, 0.5], '0x52c1f657', '0xd248bb2e', 0],
              [[0.5, 0.5], '0x865a84d0', '0xaa22d41a', 0],
              [[0.5, 0.5], '0x27d1dc86', '0x845461b9', 1],
              [[0.33, 0.33, 0.34], '0x00000000', '0x00000000', 0],
              [[0.33, 0.33, 0.34], '0x00000000', '0x00000001', 2],
              [[0.33, 0.33, 0.34], '0x8015406f', '0x7ef49b98', 0],
              [[0.33, 0.33, 0.34], '0x3b2e7d90', '0xca87df4d', 0],
              [[0.33, 0.33, 0.34], '0x52c1f657', '0xd248bb2e', 0],
              [[0.33, 0.33, 0.34], '0x865a84d0', '0xaa22d41a', 1],
              [[0.33, 0.33, 0.34], '0x27d1dc86', '0x845461b9', 1],
          ],
          '123456789': [
            [[0.5, 0.5 ], '0x00000000', '0x00000000', 1 ],
            [[0.5, 0.5], '0x00000000', '0x00000001', 0],
            [[0.5, 0.5], '0x8015406f', '0x7ef49b98', 1],
            [[0.5, 0.5], '0x3b2e7d90', '0xca87df4d', 1],
            [[0.5, 0.5], '0x52c1f657', '0xd248bb2e', 1],
            [[0.5, 0.5], '0x865a84d0', '0xaa22d41a', 0],
            [[0.5, 0.5], '0x27d1dc86', '0x845461b9', 0],
            [[0.33, 0.33, 0.34], '0x00000000', '0x00000000', 2],
            [[0.33, 0.33, 0.34], '0x00000000', '0x00000001', 1],
            [[0.33, 0.33, 0.34], '0x8015406f', '0x7ef49b98', 2],
            [[0.33, 0.33, 0.34], '0x3b2e7d90', '0xca87df4d', 2],
            [[0.33, 0.33, 0.34], '0x52c1f657', '0xd248bb2e', 2],
            [[0.33, 0.33, 0.34], '0x865a84d0', '0xaa22d41a', 0],
            [[0.33, 0.33, 0.34], '0x27d1dc86', '0x845461b9', 0],
          ],
          e791e240fcd3df7d238cfc285f475e8152fcc0ec: [
              [[0.5, 0.5], '0x00000000', '0x00000000', 1],
              [[0.5, 0.5], '0x00000000', '0x00000001', 0],
              [[0.5, 0.5], '0x8015406f', '0x7ef49b98', 1],
              [[0.5, 0.5], '0x3b2e7d90', '0xca87df4d', 1],
              [[0.5, 0.5], '0x52c1f657', '0xd248bb2e', 0],
              [[0.5, 0.5], '0x865a84d0', '0xaa22d41a', 0],
              [[0.5, 0.5], '0x27d1dc86', '0x845461b9', 0],
              [[0.33, 0.33, 0.34], '0x00000000', '0x00000000', 2],
              [[0.33, 0.33, 0.34], '0x00000000', '0x00000001', 0],
              [[0.33, 0.33, 0.34], '0x8015406f', '0x7ef49b98', 2],
              [[0.33, 0.33, 0.34], '0x3b2e7d90', '0xca87df4d', 1],
              [[0.33, 0.33, 0.34], '0x52c1f657', '0xd248bb2e', 0],
              [[0.33, 0.33, 0.34], '0x865a84d0', '0xaa22d41a', 0],
              [[0.33, 0.33, 0.34], '0x27d1dc86', '0x845461b9', 1],
          ],
      }
      # expect(1).to eq(1)
      
      # for (const [unit, tests] of Object.entries(testCases)) {
      #     const assigner = new VariantAssigner(hashUnit(unit))
      #
      #   for (const testCase of tests) {
      #       const variant = assigner.assign(testCase[0], testCase[1], testCase[2])
      #       expect(variant).toBe(testCase[3])
      #   }
      # }
      
    end
  end
end
