# Verification target: GRWTSK.NumberTheory.Moebius.DyadicTriangularKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29207a118760feb5bf47b46b80ce9bdcd0702d94",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29207a118760feb5bf47b46b80ce9bdcd0702d94`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicTriangularKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicTriangularMertensCorrelation`](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularMertensCorrelation.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTriangularAtom](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/mertenstriangularatom--a07fc7b31f0f83ac7cebbb01.md) | 36 | `declaration-track:a07fc7b31f0f83ac7cebbb01d91c4dfedb499aee4af68e6ab4325ac996e506ac` |
| 2 | `def` | [weightedMertensDyadicTriangularBoundary](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularboundary--7cba3032a8c51caa422ea54f.md) | 41 | `declaration-track:7cba3032a8c51caa422ea54f2dc29b4a76c5a2aefe606b02d736f62ea28338fc` |
| 3 | `def` | [weightedMertensDyadicTriangularLocal](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularlocal--7d932ca611d29acc0d2a1b28.md) | 46 | `declaration-track:7d932ca611d29acc0d2a1b28c18d06b15a1f0889e79a17e3aa92c840fc22371e` |
| 4 | `def` | [weightedMertensDyadicTriangularKernel](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularkernel--44e7700ea4e0f12bb45aed20.md) | 52 | `declaration-track:44e7700ea4e0f12bb45aed20ebe21b6d3c49bc86716543abddd5bc26ded9798a` |
| 5 | `def` | [weightedMertensDyadicBoundarySquare](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadicboundarysquare--a2c16959a1b9b10d0b114a70.md) | 58 | `declaration-track:a2c16959a1b9b10d0b114a70750d5e8b1e1d404e617a733a8abbccd0692491dc` |
| 6 | `def` | [SubpolynomialDyadicTriangularKernel](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/subpolynomialdyadictriangularkernel--ea57655866a2197bf9aef9a0.md) | 63 | `declaration-track:ea57655866a2197bf9aef9a04eca14f076acb2d1480011bd7b12666bcff0f412` |
| 7 | `theorem` | [finite_tail_abel](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/finite-tail-abel--74657cb218a7cfb8da8a713e.md) | 71 | `result-track:74657cb218a7cfb8da8a713ed16919504b708366f1a3946700b43b2f3cb74c7e` |
| 8 | `theorem` | [two_mul_sum_mul_sub_const](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/two-mul-sum-mul-sub-const--3c7e055baf8f456c1caa9341.md) | 89 | `result-track:3c7e055baf8f456c1caa93415534517c91243fbbe03c1599a071ec7280bf0a35` |
| 9 | `theorem` | [dyadic_reciprocal_cell](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/dyadic-reciprocal-cell--f2368ff172901083a0d98259.md) | 109 | `result-track:f2368ff172901083a0d982590a6f68007b506f37f5f3be1e009078a4b8e4fe05` |
| 10 | `theorem` | [mertensPrefixTriangularCorrelation_sub_pred](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/mertensprefixtriangularcorrelation-sub-pred--6dd28cbb629b2e8e8d8e3288.md) | 120 | `result-track:6dd28cbb629b2e8e8d8e328858b1910a15674ae131f393c1d9a972a7ef79b975` |
| 11 | `theorem` | [weightedMertensDyadicTriangularCorrelation_eq_range](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularcorrelation-eq-range--b4a0fd72be601d6e4f8d554f.md) | 133 | `result-track:b4a0fd72be601d6e4f8d554f781e18591c40aa466f67b0b5f9136603076454ba` |
| 12 | `theorem` | [weightedMertensDyadicTriangularLocal_eq_range](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularlocal-eq-range--4fb55512df04011ee5e08bb0.md) | 150 | `result-track:4fb55512df04011ee5e08bb06b8dea3bb573c09384e013236458852e24f67df3` |
| 13 | `theorem` | [dyadic_left_inv_eq_two_mul_right_inv](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/dyadic-left-inv-eq-two-mul-right-inv--d733172431c291f48d03365f.md) | 164 | `result-track:d733172431c291f48d03365ff74c64ae7e0817331c4edcc09ee2d3cbd2de37d8` |
| 14 | `theorem` | [two_mul_sum_atom_range_eq_triangular_sub](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/two-mul-sum-atom-range-eq-triangular-sub--a9a6c4fc09df686a68ff2d8b.md) | 172 | `result-track:a9a6c4fc09df686a68ff2d8be998bc7d0cbf18e937c58e859169820d26ce914d` |
| 15 | `theorem` | [weightedMertensDyadicTriangularCorrelation_eq_kernel](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularcorrelation-eq-kernel--96953928204ac2f10cc3d1a8.md) | 190 | `result-track:96953928204ac2f10cc3d1a8f0e833fe4bf32c7aaf125c9c899ad05dbdf90717` |
| 16 | `theorem` | [weightedMertensDyadicTriangularBoundary_eq_square_sub_diagonal](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularboundary-eq-square-sub-diagonal--b06db26d280618da7f02ef21.md) | 249 | `result-track:b06db26d280618da7f02ef215e2861d04dfb3cef1bc3112709e187714eea7586` |
| 17 | `theorem` | [weightedMertensDyadicTriangularBoundary_le_boundarySquare](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/weightedmertensdyadictriangularboundary-le-boundarysquare--c887b2a6dc776464394a5f85.md) | 266 | `result-track:c887b2a6dc776464394a5f85249a59c7cc73c71de57fddddaaa7fc35ea8cbd8e` |
| 18 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/subpolynomialdyadictriangularkernel-iff-triangular--1b6903c17db2dceff273f950.md) | 277 | `result-track:1b6903c17db2dceff273f950ea3aa63abc8e4df7d81e635b5c7972367eb5145b` |
| 19 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/subpolynomialdyadictriangularkernel-iff-orderedpair--63f5ae66e5ee1d2c0288159d.md) | 294 | `result-track:63f5ae66e5ee1d2c0288159dd5a3c3ad7b22f8193cf6ebd9f131a77b627efa55` |
| 20 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_block](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/subpolynomialdyadictriangularkernel-iff-block--65c9245f98433a746c896615.md) | 300 | `result-track:65c9245f98433a746c896615ab9297374addc89b5eb3cef77ddb576b01ade5b9` |
| 21 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/subpolynomialdyadictriangularkernel-iff-cumulative--60123155399621c04790b040.md) | 306 | `result-track:60123155399621c04790b040b9777c13b98599959c0d08753de52031d2ea58dc` |
| 22 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_allPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/subpolynomialdyadictriangularkernel-iff-allpositiveweightedmertenssquare--5526088be6cb4fb2028431b3.md) | 312 | `result-track:5526088be6cb4fb2028431b341104d235fb5801084356f18c1ba9ece690117b1` |
| 23 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicTriangularKernel](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/declarations/riemannhypothesis-of-subpolynomialdyadictriangularkernel--e3f0b0d314a402cb42f72bd1.md) | 320 | `result-track:e3f0b0d314a402cb42f72bd1811b0888c8d4cb104ed744cb8910c61d14dc7437` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
