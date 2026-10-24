# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticEndpointStaircase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49646020d08e2797d7762f0d1b7b14c4e1bd01ea",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49646020d08e2797d7762f0d1b7b14c4e1bd01ea`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticEndpointStieltjesEnergy`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStieltjesEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftQuarticEndpointStaircaseLower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointstaircaselower--6598ced35259f203c21ede19.md) | 20 | `declaration-track:6598ced35259f203c21ede199140b94c6f605f8fdf0e59a5faa8b77724e8faa6` |
| 2 | `def` | [coreGrowingShiftQuarticEndpointStaircaseUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointstaircaseupper--1297ee136c34a9e2c1675474.md) | 25 | `declaration-track:1297ee136c34a9e2c16754741e4ff407df537222d99b96f30d5fceb7336cc71d` |
| 3 | `def` | [coreGrowingShiftQuarticEndpointStaircaseSupport](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointstaircasesupport--5691d9533048be25fba47142.md) | 33 | `declaration-track:5691d9533048be25fba47142af0729cc3b63e74196501591df8302b198c819e9` |
| 4 | `theorem` | [coreGrowingShiftQuarticEndpointExplicitDepthLower_eq_max_staircaseLower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointexplicitdepthlower-eq-max-staircaselower--64d5144707689440559a826a.md) | 43 | `result-track:64d5144707689440559a826a437f9dd73340cac5d15d4f40d069425868c5130d` |
| 5 | `theorem` | [cast_sub_max_succ_eq_indicator](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/cast-sub-max-succ-eq-indicator--207de6562c5abb420520b3e4.md) | 53 | `result-track:207de6562c5abb420520b3e4fa9a9b352959e3103cc982e92eb110d05b580268` |
| 6 | `theorem` | [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_indicator](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointexplicitdepthweightdrop-eq-indicator--2363a58e9990f26b1b630242.md) | 89 | `result-track:2363a58e9990f26b1b630242215d279b9c7e80c1b9598e84258eebb29b2c74bd` |
| 7 | `theorem` | [mem_coreGrowingShiftQuarticEndpointStaircaseSupport_iff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/mem-coregrowingshiftquarticendpointstaircasesupport-iff--e0bfaad182ee6f2bd3178e3e.md) | 111 | `result-track:e0bfaad182ee6f2bd3178e3e55c4d3ef4a276d39d6a73e7f662f079f7cdce275` |
| 8 | `theorem` | [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_eq_zero_or_one](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointexplicitdepthweightdrop-eq-zero-or-one--6769ef994f3a1589669c3585.md) | 123 | `result-track:6769ef994f3a1589669c35852d499dd1872ed4d2df579ef3ef6489cb0179974b` |
| 9 | `theorem` | [coreGrowingShiftQuarticEndpointExplicitDepthWeightDrop_le_one](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointexplicitdepthweightdrop-le-one--30a113b58987f218b2931d00.md) | 134 | `result-track:30a113b58987f218b2931d003dfbe9e5fbaf180fbff1e1009cd33465afd89834` |
| 10 | `theorem` | [coreGrowingShiftQuarticEndpointStaircaseSupport_subset_range](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointstaircasesupport-subset-range--a29fd84ed3c556ddadfb5bec.md) | 145 | `result-track:a29fd84ed3c556ddadfb5bec890e8b4614789c728a5c20931b650c99a0e4e936` |
| 11 | `def` | [coreGrowingShiftQuarticEndpointStaircaseSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointstaircasesquareenergy--053b499413c974c7502c5b48.md) | 168 | `declaration-track:053b499413c974c7502c5b48553554d29da6d9a56fa0cae1ee2c913d793059b0` |
| 12 | `theorem` | [coreGrowingShiftQuarticEndpointStieltjesSquareEnergy_eq_staircase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftquarticendpointstieltjessquareenergy-eq-staircase--86c32c9d37fb642a91bcddee.md) | 176 | `result-track:86c32c9d37fb642a91bcddee5c7101b432482de164212364df16e16af4e76b24` |
| 13 | `theorem` | [coreGrowingShiftBinaryPrefixSquareEnergy_eq_endpointStaircase](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/coregrowingshiftbinaryprefixsquareenergy-eq-endpointstaircase--b51c5be52046d89b052136dc.md) | 217 | `result-track:b51c5be52046d89b052136dcf47db57a0846e558ce9efe8a86ae3c90572b6ed0` |
| 14 | `def` | [SubpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/subpolynomialcoregrowingshiftquarticendpointstaircasesquareenergy--d9f5cc9234f8a1fc204bce56.md) | 225 | `declaration-track:d9f5cc9234f8a1fc204bce56b584246519af3cbe6cc15ec1926f6d865dd8d0f2` |
| 15 | `theorem` | [subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_stieltjes](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/subpolynomialcoregrowingshiftquarticendpointstaircasesquareenergy-iff-st--3df525c22b5e75756d244ca6.md) | 233 | `result-track:3df525c22b5e75756d244ca67f8347c34fb5e5b71e5b56460573932bc0f8b6e5` |
| 16 | `theorem` | [subpolynomialCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy_iff_prefixSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/subpolynomialcoregrowingshiftquarticendpointstaircasesquareenergy-iff-pr--b0513c303fd2aacc42817daf.md) | 251 | `result-track:b0513c303fd2aacc42817daffc2fec2d7a365c96d41891185ade61f85b52415c` |
| 17 | `theorem` | [riemannHypothesis_of_coreGrowingShiftQuarticEndpointStaircaseSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/riemannhypothesis-of-coregrowingshiftquarticendpointstaircasesquareenerg--fb5105c622232f7a35ba4f08.md) | 259 | `result-track:fb5105c622232f7a35ba4f0867abb5c7d90df465960c61aa3ce329488b0fd8bb` |
| 18 | `structure` | [EndpointStaircasePrefixSquareSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/endpointstaircaseprefixsquaresource--6c21add6aa77a4583adbd6a2.md) | 269 | `declaration-track:6c21add6aa77a4583adbd6a223069cec07192bbebcaa72cd4705110d94e1494d` |
| 19 | `structure` | [ToCoreGrowingShiftQuarticEndpointStaircaseSquareEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/tocoregrowingshiftquarticendpointstaircasesquareenergy--3410e7b24c4809276fb493e4.md) | 276 | `declaration-track:3410e7b24c4809276fb493e456ee75b05271a54812406967f8d1118b058fbcb3` |
| 20 | `structure` | [DyadicPrefixSquareToEndpointStaircaseSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/dyadicprefixsquaretoendpointstaircasesource--a3df13979d0b36a4262b49b4.md) | 288 | `declaration-track:a3df13979d0b36a4262b49b4401beee0c86fce9ae6ccd322b85e0a4db863eb0a` |
| 21 | `structure` | [ToCoreGrowingShiftQuarticEndpointStaircaseSquareEnergyFromDyadic](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/declarations/tocoregrowingshiftquarticendpointstaircasesquareenergyfromdyadic--4cbaed394890cb80f67475d3.md) | 296 | `declaration-track:4cbaed394890cb80f67475d30911da75355fe45c0dfe3c223d17959916fbb945` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
