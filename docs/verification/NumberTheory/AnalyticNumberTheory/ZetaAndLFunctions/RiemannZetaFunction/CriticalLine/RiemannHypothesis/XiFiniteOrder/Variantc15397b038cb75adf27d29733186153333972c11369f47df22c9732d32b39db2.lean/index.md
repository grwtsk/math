# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiFiniteOrder.Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52b808c3776925575708810fcb34146374bd7b61",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52b808c3776925575708810fcb34146374bd7b61`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.SectorProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteHeightRH](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/finiteheightrh--7844883d3df4194c4e9438f1.md) | 38 | `declaration-track:7844883d3df4194c4e9438f146b3246b07b49be1fdb4ec4b14d4af02a9fde168` |
| 2 | `theorem` | [offline_above_height](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/offline-above-height--6af2edb500f604081d0ee69f.md) | 42 | `result-track:6af2edb500f604081d0ee69f52981afdb31ab30e30d5fb0e72f05bc9b2b5bd06` |
| 3 | `theorem` | [transverse_strip](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/transverse-strip--485138fb15c2c303a70993c6.md) | 48 | `result-track:485138fb15c2c303a70993c602516d4db28240ec872c88a12cb4c95634d5a9bd` |
| 4 | `inductive` | [RootFactor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/rootfactor--977733dbc7e9e69679e58320.md) | 56 | `declaration-track:977733dbc7e9e69679e58320ae1d4e8e762e577aa91ecae786bd982120ee21c3` |
| 5 | `def` | [pairScale](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/pairscale--ee7109f805675e0ab1de8758.md) | 63 | `declaration-track:ee7109f805675e0ab1de8758778426c7c6d8e04de338c61df066bebbc70c4baf` |
| 6 | `def` | [RootFactor.toFactor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/rootfactor-tofactor--2fe862254c5964f931a8e424.md) | 66 | `declaration-track:2fe862254c5964f931a8e424335b6702290649bb55982c3b916ac4098edc238e` |
| 7 | `theorem` | [cos_twice_arctan](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/cos-twice-arctan--6f1a930ffe3fe4d76ab9e4b0.md) | 72 | `result-track:6f1a930ffe3fe4d76ab9e4b011b9e03d32b8d9d445309736ea73140ebe3d5f2d` |
| 8 | `theorem` | [pair_parameters](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/pair-parameters--3535aadd1b468707ce84d617.md) | 79 | `result-track:3535aadd1b468707ce84d617b22552a61b59df44c5824d93a55144f23762d9ab` |
| 9 | `theorem` | [cleared_root_pair](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/cleared-root-pair--be4233fe87fe229b8f5d2151.md) | 97 | `result-track:be4233fe87fe229b8f5d2151b7b9bf1ad57fe16b75ecd50401b582f6af520900` |
| 10 | `theorem` | [RootFactor.admissible](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/rootfactor-admissible--f55140d4cf8072af26dc954a.md) | 107 | `result-track:f55140d4cf8072af26dc954a381e80eb66b35318b3e2d5121d169798d5800895` |
| 11 | `def` | [ActualPairedProduct](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/actualpairedproduct--92684307bdba789da2df9bc0.md) | 131 | `declaration-track:92684307bdba789da2df9bc0b431f11222f3b18217b41760caeb9f1d74d22284` |
| 12 | `theorem` | [xi_pfOrder_of_height](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/xi-pforder-of-height--e0293c970303fd3b73a5fd73.md) | 139 | `result-track:e0293c970303fd3b73a5fd73ab01e8e9b6c9c8a1fe1d403ec0b859979717b45b` |
| 13 | `def` | [publishedHeight](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/publishedheight--d1f8af8db3d85be62f991344.md) | 151 | `declaration-track:d1f8af8db3d85be62f99134407ff68585e499668257c05336b59d4a10acbbfd9` |
| 14 | `def` | [publishedOrder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/publishedorder--a06ee326168282b738933f6b.md) | 154 | `declaration-track:a06ee326168282b738933f6beee1555c08892fafe5b01c50f3a7ec0bce4dee08` |
| 15 | `theorem` | [published_order_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/published-order-bound--6828d3c8cf9eef7c97528a80.md) | 157 | `result-track:6828d3c8cf9eef7c97528a80149d430cda33123ef4bbe9be05f2a64daca1da05` |
| 16 | `def` | [PublishedHeightInput](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/publishedheightinput--6d8d9d13e58da72d1b891c76.md) | 165 | `declaration-track:6d8d9d13e58da72d1b891c7654a872cbc42921a5e6645208b9f73beb3ee64326` |
| 17 | `theorem` | [xi_published_order](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/xi-published-order--e635cd4939f57bd5f8259a90.md) | 168 | `result-track:e635cd4939f57bd5f8259a907040383dc1139f19c70db4635a756b431f48c8eb` |
| 18 | `theorem` | [actual_block_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/actual-block-nonnegative--14d3bca94a20446783ab6182.md) | 174 | `result-track:14d3bca94a20446783ab618230047b28a71c226274e84c7b00d52cecef1f5502` |
| 19 | `theorem` | [actual_frame_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/actual-frame-nonnegative--8bae062b6eea710a1f048bb1.md) | 181 | `result-track:8bae062b6eea710a1f048bb1bb6555aca96bcef02caaf16c3e9bd4876c0f2a92` |
| 20 | `theorem` | [actual_plane_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/actual-plane-nonnegative--84217c4281d89e7c77bdb758.md) | 189 | `result-track:84217c4281d89e7c77bdb758a2ab1e66d76a5ae942cdb5f70f2436df2922e917` |
| 21 | `theorem` | [actual_coordinate_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variantc15397b038cb75adf27d29733186153333972c11369f47df22c9732d32b39db2.lean/declarations/actual-coordinate-nonnegative--88b2052a5b9f0e0defa8e6a2.md) | 198 | `result-track:88b2052a5b9f0e0defa8e6a2beb072cdfdccf789ce0fb7e05f55ef60e1a92844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
