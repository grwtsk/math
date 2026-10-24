# Verification target: GRWTSK.Analysis.MeasureTheory.Jordan.Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1727ed3c53f5c8a3f77c9a395670e36398165a0",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1727ed3c53f5c8a3f77c9a395670e36398165a0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Decomposition.Hahn` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MutuallySingular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [JordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/jordandecomposition--719d36a75594f1f02e58fb36.md) | 55 | `declaration-track:719d36a75594f1f02e58fb36cfeeff779e6e4a45f07d05fbd4c41e5c28e0f4d2` |
| 2 | `instance` | [instZero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/instzero--4c1c2f70fc381909e624d240.md) | 74 | `declaration-track:4c1c2f70fc381909e624d2402550a4a8991b2ad91f64d342da0cd21654c5ef2a` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/instinhabited--b80b3e42aee3aa84cca451a5.md) | 76 | `declaration-track:b80b3e42aee3aa84cca451a5a3865c483c5c7d0c47188cabbde9a9ed23d39d27` |
| 4 | `instance` | [instInvolutiveNeg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/instinvolutiveneg--346ac190baca3b531152433b.md) | 78 | `declaration-track:346ac190baca3b531152433bbff1a3741be21b0dbc152fab83e0368d0ab43792` |
| 5 | `instance` | [instSMul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/instsmul--ae7bbf9817d2658d1fbe855d.md) | 82 | `declaration-track:ae7bbf9817d2658d1fbe855de4aa8544a9b4702d3f5819d44c5d9ea9bfd86f19` |
| 6 | `instance` | [instSMulReal](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/instsmulreal--5be50f42f5246714dac19592.md) | 87 | `declaration-track:5be50f42f5246714dac195928591594c703534c22d018d163e3c008275346968` |
| 7 | `theorem` | [zero_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/zero-pospart--5f4d9b99f955e186fc2f1f7d.md) | 91 | `result-track:5f4d9b99f955e186fc2f1f7dc91b6c449e6700ecf79678c63043ba0d90f508fe` |
| 8 | `theorem` | [zero_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/zero-negpart--4eb8fad7bda0fbcd11fc3c9f.md) | 95 | `result-track:4eb8fad7bda0fbcd11fc3c9ffde389c0b6831079ad626066fd2909346cdcab10` |
| 9 | `theorem` | [neg_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/neg-pospart--5f7f6411237be6422ecbef56.md) | 99 | `result-track:5f7f6411237be6422ecbef56408456a33180089f7a85694f8096d399b5cabe8a` |
| 10 | `theorem` | [neg_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/neg-negpart--8db969bcd37232b8d3e28b4a.md) | 103 | `result-track:8db969bcd37232b8d3e28b4ab313948c52e42b6f37d8190e9b030fffb2c86487` |
| 11 | `theorem` | [smul_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/smul-pospart--506a8e0ca75f5472a19f790e.md) | 107 | `result-track:506a8e0ca75f5472a19f790e337226efb60327f6d8de3a934191d62425ba7f8a` |
| 12 | `theorem` | [smul_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/smul-negpart--72bb0d94acd34acab00f390c.md) | 111 | `result-track:72bb0d94acd34acab00f390c283e6455a14008033ebbc9adf5173ff06e4d06a4` |
| 13 | `theorem` | [real_smul_def](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-def--764a16a2ed7c0c7cc1209ec4.md) | 114 | `result-track:764a16a2ed7c0c7cc1209ec4002d4fd06cd54a77132b2c246cd0d93cd5a17884` |
| 14 | `theorem` | [coe_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/coe-smul--c209c85e5c38cc9a10cf5858.md) | 119 | `result-track:c209c85e5c38cc9a10cf585867d6cb4029d64214598bd0deeeae0fbfe03a185f` |
| 15 | `theorem` | [real_smul_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-nonneg--e0245fa22b6a59f528ead0f5.md) | 122 | `result-track:e0245fa22b6a59f528ead0f555af9c653ca03374f50d66cb795f926dc9b23cdc` |
| 16 | `theorem` | [real_smul_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-neg--ca4b575c4eb6d86c82f9fbfe.md) | 125 | `result-track:ca4b575c4eb6d86c82f9fbfe2a108ddad91e050fa31e396b5b728d887890004c` |
| 17 | `theorem` | [real_smul_posPart_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-pospart-nonneg--f9a489603d59e247f01b2259.md) | 128 | `result-track:f9a489603d59e247f01b22593d060439fce558d4b649ec981bfbf63c4f56a74b` |
| 18 | `theorem` | [real_smul_negPart_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-negpart-nonneg--7c977296a77b9c2a73012558.md) | 132 | `result-track:7c977296a77b9c2a73012558636765562744890e8e2c28213990919669fbf154` |
| 19 | `theorem` | [real_smul_posPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-pospart-neg--23f415ebb03b2830a6174c6e.md) | 136 | `result-track:23f415ebb03b2830a6174c6e62270bf96b170b3bc1e29e78736130de7e480f10` |
| 20 | `theorem` | [real_smul_negPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/real-smul-negpart-neg--d331ed1f8232f8dbf42d66df.md) | 140 | `result-track:d331ed1f8232f8dbf42d66df950b648f1dd04763bd831e8098f11155e575e465` |
| 21 | `def` | [toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tosignedmeasure--767c84dc75d21ac680833152.md) | 145 | `declaration-track:767c84dc75d21ac680833152df0a005601154422cd8e354c38b694be2f8c01de` |
| 22 | `theorem` | [toSignedMeasure_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tosignedmeasure-zero--9f39e05a47cc5dabe0f07a17.md) | 148 | `result-track:9f39e05a47cc5dabe0f07a1752d73c45d0e8b002b20754b6c9204eb3904f3d06` |
| 23 | `theorem` | [toSignedMeasure_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tosignedmeasure-neg--c74820d0e4b2a64511bb8ed8.md) | 153 | `result-track:c74820d0e4b2a64511bb8ed8f6862c04e86d6fba0dd85d627049f4a6225f8bd8` |
| 24 | `theorem` | [toSignedMeasure_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tosignedmeasure-smul--749e247ca7ed96468624a541.md) | 158 | `result-track:749e247ca7ed96468624a54115b7ebd1a10ce7470e68c9ee2369ac73fd0e8ad1` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/exists-compl-positive-negative--6f86e6da6077fdacf26fc042.md) | 166 | `result-track:6f86e6da6077fdacf26fc04242db1977e3cb09b4595c2ae816bfcbfe7b88813f` |
| 26 | `def` | [toJordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition--0febe0171fe4ea772c79a5b2.md) | 196 | `declaration-track:0febe0171fe4ea772c79a5b24e7c6b79513c6ecaae41381fb3621264c75ed6a5` |
| 27 | `theorem` | [toJordanDecomposition_spec](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-spec--de7c2d70e6d5715fa4618335.md) | 208 | `result-track:de7c2d70e6d5715fa461833513eb7d22abae7acedd904ecf283656e3542166b1` |
| 28 | `theorem` | [toSignedMeasure_toJordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tosignedmeasure-tojordandecomposition--0c2b71a8edceaa806c5b5a93.md) | 225 | `result-track:0c2b71a8edceaa806c5b5a93aee00e90ee273994c1b9e2856be4805d0e2c248e` |
| 29 | `theorem` | [subset_positive_null_set](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/subset-positive-null-set--8449eabe189555ae4afdd108.md) | 242 | `result-track:8449eabe189555ae4afdd1084bbf9e08923ffc7a7d6d84671d43f4b289ea7a2f` |
| 30 | `theorem` | [subset_negative_null_set](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/subset-negative-null-set--2610042ad7b0ba99f7e0b714.md) | 255 | `result-track:2610042ad7b0ba99f7e0b7144e7dae6f1874c9c08aa526a4187601d73351b2bf` |
| 31 | `theorem` | [of_diff_eq_zero_of_symmDiff_eq_zero_positive](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/of-diff-eq-zero-of-symmdiff-eq-zero-positive--fc53033bb7cae5cd7ecc6f25.md) | 267 | `result-track:fc53033bb7cae5cd7ecc6f252151acc5eb6bf2e0a90518d3bd6fe567febe052b` |
| 32 | `theorem` | [of_diff_eq_zero_of_symmDiff_eq_zero_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/of-diff-eq-zero-of-symmdiff-eq-zero-negative--d2dcb923fbf967acede9d3b4.md) | 282 | `result-track:d2dcb923fbf967acede9d3b4343a36de64326ca34c4186e02dcd0775ea6d109f` |
| 33 | `theorem` | [of_inter_eq_of_symmDiff_eq_zero_positive](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/of-inter-eq-of-symmdiff-eq-zero-positive--ceb8ac05320531ff1693e48c.md) | 290 | `result-track:ceb8ac05320531ff1693e48c2a25d29800777f5c09f2987a2d866b371df0cea9` |
| 34 | `theorem` | [of_inter_eq_of_symmDiff_eq_zero_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/of-inter-eq-of-symmdiff-eq-zero-negative--85eed047880fb1323d0b0b88.md) | 306 | `result-track:85eed047880fb1323d0b0b88b849a337ebe017dd92e2e72a8614babd0ec39709` |
| 35 | `theorem` | [eq_of_posPart_eq_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/eq-of-pospart-eq-pospart--98370cee34d70c6678d7d39c.md) | 323 | `result-track:98370cee34d70c6678d7d39c5e6a9a5a1096d694d4b868611cc812618b5aee94` |
| 36 | `theorem` | [toSignedMeasure_injective](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tosignedmeasure-injective--dc28d25db2663d3ce5d3203d.md) | 333 | `result-track:dc28d25db2663d3ce5d3203d84739c679048b6434b772c9821236738675b5a55` |
| 37 | `theorem` | [toJordanDecomposition_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-tosignedmeasure--4187d6af7a3ec57b48c83b2a.md) | 388 | `result-track:4187d6af7a3ec57b48c83b2a31990e263db7a5808935d78c214be7e76be9bca3` |
| 38 | `def` | [toJordanDecompositionEquiv](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecompositionequiv--3251a6163c730535a336b10e.md) | 401 | `declaration-track:3251a6163c730535a336b10e4dbf429abe7ab6d7fc9ad9db227854cc4e3f4672` |
| 39 | `theorem` | [toJordanDecomposition_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-zero--9fe8dbe011d15a4904fc720f.md) | 408 | `result-track:9fe8dbe011d15a4904fc720ffcabe25229f26803fb9410f35045247bf6cadf66` |
| 40 | `theorem` | [toJordanDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-neg--e1c896127a9b46dff04d5e76.md) | 412 | `result-track:e1c896127a9b46dff04d5e76df29dc2dc682c60c0a33d3ceb62eec75d252047e` |
| 41 | `theorem` | [toJordanDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-smul--cd4cfa99f092e5244ff7c673.md) | 417 | `result-track:cd4cfa99f092e5244ff7c673629d73c1cdd801043e2e20e1215d175f15e4dbbd` |
| 42 | `theorem` | [toJordanDecomposition_smul_real_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-smul-real-nonneg--59c7d70815b7e0828f579f8f.md) | 422 | `result-track:59c7d70815b7e0828f579f8f9ce5bd4474d2679e5a7894c3f449d2a0c8fc03d5` |
| 43 | `theorem` | [toJordanDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-smul-real--0ac8ecc8b9cfa0bc2d3d6ae6.md) | 428 | `result-track:0ac8ecc8b9cfa0bc2d3d6ae6c83f52dbff65896e7c12803cf430251df7831096` |
| 44 | `theorem` | [toJordanDecomposition_eq](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/tojordandecomposition-eq--e3472670907ce5806558a354.md) | 442 | `result-track:e3472670907ce5806558a354333408157eb50097a2036decc41ee8c7bf9ea5a6` |
| 45 | `def` | [totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/totalvariation--860be234ebf4d085d60cc130.md) | 447 | `declaration-track:860be234ebf4d085d60cc1309b77de40f35324bcc326ecd9e0cedbfdaff79c87` |
| 46 | `theorem` | [totalVariation_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/totalvariation-zero--72ee0e4a6a790e1ee953c5bc.md) | 450 | `result-track:72ee0e4a6a790e1ee953c5bc18fc245050b47204deaac728a204f59744ea8dbe` |
| 47 | `theorem` | [totalVariation_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/totalvariation-neg--d3b7ccb9bd45a36594d6b5d2.md) | 453 | `result-track:d3b7ccb9bd45a36594d6b5d20b7d6ba46123bb4846442d23ccae811aedfb22be` |
| 48 | `theorem` | [null_of_totalVariation_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/null-of-totalvariation-zero--714272bb38b301393b7d994a.md) | 456 | `result-track:714272bb38b301393b7d994a8d0208df816967bf8bb85a53e5340157cc475c2b` |
| 49 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/absolutelycontinuous-ennreal-iff--2924538c7f250e2f1ef3ebbc.md) | 465 | `result-track:2924538c7f250e2f1ef3ebbc8593c3b143425e610e7d31dc6208da7c94370de4` |
| 50 | `theorem` | [totalVariation_absolutelyContinuous_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/totalvariation-absolutelycontinuous-iff--f2c81399dafad318b1f7394d.md) | 479 | `result-track:f2c81399dafad318b1f7394d0d9a185d071e807f47b195e8f08ef9cd233195fa` |
| 51 | `theorem` | [mutuallySingular_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/mutuallysingular-iff--f9c34b2ae3f63a25e272636a.md) | 493 | `result-track:f9c34b2ae3f63a25e272636aa162c4e40b8664d68518fd58e9048497f7486f74` |
| 52 | `theorem` | [mutuallySingular_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/mutuallysingular-ennreal-iff--0f898fdb74764592603da414.md) | 512 | `result-track:0f898fdb74764592603da414ee4a65889b4f1bd9ed6242c442d81e674252d847` |
| 53 | `theorem` | [totalVariation_mutuallySingular_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant4af392b433450c9a6161ac42c8437531cc04673396d35a61218cc81a4032927e.lean/declarations/totalvariation-mutuallysingular-iff--888a3e3c86e8ac093354e292.md) | 531 | `result-track:888a3e3c86e8ac093354e292c9433ae2c45d6ea3765d087f1ef17d056e348102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
