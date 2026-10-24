# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.RamareCorrectedBridge.Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d0eef3f07450b8199acad938667e8229ec1654f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d0eef3f07450b8199acad938667e8229ec1654f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathExtras.NumberTheory.Mertens.RamareEq22` — import line 10; external provider; requires a separately pinned dependency.
- `MathExtras.NumberTheory.Mertens.RamareCorrectedRemainder` — import line 11; external provider; requires a separately pinned dependency.
- `AnalyticNT.Bilinear.ProductHyperbola` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hyperbolaPairs](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbolapairs--799a28a349892aed72584e67.md) | 33 | `declaration-track:799a28a349892aed72584e67ba8c3e2e7387f2ff30f8bbe5f5e6398ed2d79761` |
| 2 | `def` | [hyperbolaLeft](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbolaleft--b9395a434c8e73679e36fa88.md) | 37 | `declaration-track:b9395a434c8e73679e36fa887f400452c275fa905272b9382f9feb15c91e7818` |
| 3 | `def` | [hyperbolaRight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbolaright--86cc8603e2f69d8fb1fbd750.md) | 41 | `declaration-track:86cc8603e2f69d8fb1fbd750059113c5ec0641b56e227188beff00879e226162` |
| 4 | `def` | [hyperbolaSquare](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbolasquare--a3800fee0811b0a34813cef2.md) | 45 | `declaration-track:a3800fee0811b0a34813cef23a1596113e05783b2df5ca9ccc765e9f3358b3e0` |
| 5 | `theorem` | [hyperbolaPairs_eq_union](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbolapairs-eq-union--1615bc5d448c9525f365e1d2.md) | 48 | `result-track:1615bc5d448c9525f365e1d292482e90e446a433c99c8a33b14f292b03441540` |
| 6 | `theorem` | [hyperbolaLeft_inter_right](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbolaleft-inter-right--c0de0777f04930217a7ed3a9.md) | 78 | `result-track:c0de0777f04930217a7ed3a9e0e618dde43b8ba3f4b3c1e91b6f9838621c1409` |
| 7 | `theorem` | [sum_hyperbolaPairs_eq_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/sum-hyperbolapairs-eq-cutoff--95cf3e5420256a1bb9b0390e.md) | 103 | `result-track:95cf3e5420256a1bb9b0390e45f04f0c81405fccd13a28adc53c039452813b29` |
| 8 | `theorem` | [sum_hyperbolaLeft_eq_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/sum-hyperbolaleft-eq-cutoff--de5d802fdfaf12377dd5d836.md) | 137 | `result-track:de5d802fdfaf12377dd5d8363db3716b8d75f8adfab01bdf1ef87c12f7221831` |
| 9 | `theorem` | [sum_hyperbolaRight_eq_left](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/sum-hyperbolaright-eq-left--0ba567edf349af66c6cea9df.md) | 171 | `result-track:0ba567edf349af66c6cea9dfe34d11f7dfe0672eaa4facb45085d7268b24943e` |
| 10 | `theorem` | [balanced_productCutoffSum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/balanced-productcutoffsum--5488d1b2f10e7f22390173eb.md) | 196 | `result-track:5488d1b2f10e7f22390173ebcdb23f979a46e0e49498f411e9845d9f176291a7` |
| 11 | `theorem` | [sum_vonMangoldt_Icc_eq_psi_nat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/sum-vonmangoldt-icc-eq-psi-nat--d9fc8314b298c0ce521b8b1d.md) | 220 | `result-track:d9fc8314b298c0ce521b8b1d32ab3747e51fd68368f4617342fbe4bf48ad2e06` |
| 12 | `theorem` | [vonMangoldt_convolution_hyperbola](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/vonmangoldt-convolution-hyperbola--180324475e7c45d1409617a8.md) | 238 | `result-track:180324475e7c45d1409617a8227a46695b3c584f0efd5d4a428a16d55210f145` |
| 13 | `theorem` | [vonMangoldt_log_sum_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/vonmangoldt-log-sum-eq--859ec4c9851f63b0b65475e5.md) | 284 | `result-track:859ec4c9851f63b0b65475e506020086ab68def20235bd4b1f4972e8d2e96b9b` |
| 14 | `theorem` | [floor_real_sqrt_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/floor-real-sqrt-natcast--1c8ec844c2187e5521b17219.md) | 370 | `result-track:1c8ec844c2187e5521b1721906bb67d577a7ff58cc41fe2890edec3250547272` |
| 15 | `theorem` | [psi_natDiv_eq_psi_realDiv](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/psi-natdiv-eq-psi-realdiv--aa36a73ca658b73798705631.md) | 398 | `result-track:aa36a73ca658b73798705631ed67f21aa12b6dbdf66f1163e82aaf42bdbd4ca2` |
| 16 | `theorem` | [firstMertensSum_sqrt_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/firstmertenssum-sqrt-natcast--71917958de33ab3e58e17383.md) | 404 | `result-track:71917958de33ab3e58e173831e04e879b93390780efc25e0ab846c97f7e5ecc9` |
| 17 | `def` | [correctedR4](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/correctedr4--f860d0489d9e720160d1ade3.md) | 418 | `declaration-track:f860d0489d9e720160d1ade32e2c642209298399e7b82df9f5a04a08ab34f303` |
| 18 | `def` | [correctedR3](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/correctedr3--4e234de073129ad276e6de2c.md) | 424 | `declaration-track:4e234de073129ad276e6de2c61a11718f9a6ac7e66725a7c034fe5d1e84924ae` |
| 19 | `theorem` | [hyperbola_small_sum_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/hyperbola-small-sum-eq--ca0230e24690bb68f4382c67.md) | 432 | `result-track:ca0230e24690bb68f4382c6702f93cec46eb9b6846ae7d3e0dc87b57052127b5` |
| 20 | `theorem` | [psi_sqrt_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/psi-sqrt-natcast--885a3b04e57850f9b7037cad.md) | 451 | `result-track:885a3b04e57850f9b7037cad5e4ec1a801e8f2572bef32e10b19092b274a5d2e` |
| 21 | `theorem` | [vonMangoldt_convolution_eq_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/vonmangoldt-convolution-eq-corrected--8f7fd96a7d8191bb98ab7041.md) | 458 | `result-track:8f7fd96a7d8191bb98ab7041ec328c775a92d2d2b0bb2071468da4f3688c9d3e` |
| 22 | `theorem` | [r2Star_eq_convolution_sub_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/r2star-eq-convolution-sub-log--f4c5618f8fddeaed71e1fa38.md) | 480 | `result-track:f4c5618f8fddeaed71e1fa38cabf52cb1f0921130e1a543cd49edaa973575627` |
| 23 | `theorem` | [intervalIntegrable_psi_div](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/intervalintegrable-psi-div--336249dd76797ee3713552a6.md) | 494 | `result-track:336249dd76797ee3713552a603dab131f6f2aaaacf261db329b302e8c0c9b4c9` |
| 24 | `theorem` | [intervalIntegrable_chebyshevRemainder_div](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/intervalintegrable-chebyshevremainder-div--1fdd18ff8b004ec5ac0e6a86.md) | 512 | `result-track:1fdd18ff8b004ec5ac0e6a86a63279fb463fcb4db8050348658861d5af4cd007` |
| 25 | `theorem` | [integral_psi_div_eq_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/integral-psi-div-eq-corrected--ea617b6240706e262a56e4f3.md) | 525 | `result-track:ea617b6240706e262a56e4f3b9b2327083930fdc5189c642308409a58c2455b7` |
| 26 | `theorem` | [r2Star_eq_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/r2star-eq-corrected--0b199314bb5319aa913657df.md) | 551 | `result-track:0b199314bb5319aa913657df636bf1b6dab1d5b808705865e3d7aea00a7cd9f5` |
| 27 | `theorem` | [r2Star_abs_le_corrected](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant26682fe1ed619336e8d86fe636d86e2cee8971f2529cd940f27944d35079d4b5.lean/declarations/r2star-abs-le-corrected--4afc3b119d0c3c66350e87ed.md) | 569 | `result-track:4afc3b119d0c3c66350e87ed87d778e440042d940d5cbe0e1d8503011c9ebbfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
