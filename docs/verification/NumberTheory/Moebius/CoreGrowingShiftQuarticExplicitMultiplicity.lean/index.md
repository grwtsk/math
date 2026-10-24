# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticExplicitMultiplicity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83dcefd45fb0f6b3b2e5ea8e2a51805dd4eaba11",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83dcefd45fb0f6b3b2e5ea8e2a51805dd4eaba11`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftQuarticMultiplicityBox`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftQuarticDepthSupport](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthsupport--20f67297cbe239f662dbcc61.md) | 21 | `declaration-track:20f67297cbe239f662dbcc61e1a1363010aa6463f06b9c5474f8495da909b320` |
| 2 | `def` | [coreGrowingShiftQuarticExplicitDepthLower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticexplicitdepthlower--01fdd0fa3a1b022c790e91d6.md) | 31 | `declaration-track:01fdd0fa3a1b022c790e91d645c85f99cca2fd16f961e3c6405e3f41e0b15126` |
| 3 | `def` | [coreGrowingShiftQuarticExplicitDepthUpper](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticexplicitdepthupper--0e7e4078dc8e20466bb806b0.md) | 37 | `declaration-track:0e7e4078dc8e20466bb806b0ae555c991d20beec7eb7b2ee9a45ac24f01849df` |
| 4 | `def` | [coreGrowingShiftQuarticExplicitDepthSupport](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticexplicitdepthsupport--26a510e21fecf98e00f793b0.md) | 45 | `declaration-track:26a510e21fecf98e00f793b0c39cef73ef487e9b5faca0679c0fd76db41c5dce` |
| 5 | `theorem` | [coreLongDeepDepths_eq_exactInterval](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/corelongdeepdepths-eq-exactinterval--36c4bf7fad072a58036b3457.md) | 55 | `result-track:36c4bf7fad072a58036b3457f9971ede0df8aee0412b42d0ed3f1bbcae86f633` |
| 6 | `theorem` | [harmonicShift_active_iff_depth_interval](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/harmonicshift-active-iff-depth-interval--8647448d7104b38dfb4bea11.md) | 100 | `result-track:8647448d7104b38dfb4bea113dd3bd5451086b5a388304aeded6d70496cebf8a` |
| 7 | `theorem` | [parallelogramSeparation_base_iff_depth_lower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/parallelogramseparation-base-iff-depth-lower--d41127af7a22d8f57b11ca6c.md) | 113 | `result-track:d41127af7a22d8f57b11ca6c5c75d9ed438c438234aae2c92d56e57b249b1972` |
| 8 | `theorem` | [coreGrowingShiftQuarticDepthSupport_eq_explicit](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthsupport-eq-explicit--d907cb14f1c3743e594b7d45.md) | 123 | `result-track:d907cb14f1c3743e594b7d458275e7e8e75c8a8cce40478b7b53ada2ab37903a` |
| 9 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_eq_supportCard](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthmultiplicity-eq-supportcard--a3af70316698de2d711c79de.md) | 161 | `result-track:a3af70316698de2d711c79de61ead8b5df1fc7f6b0336f0106e857f2e98dc1fa` |
| 10 | `def` | [coreGrowingShiftQuarticExplicitDepthMultiplicity](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticexplicitdepthmultiplicity--2e07dca1d57a3e0b6d097b2c.md) | 238 | `declaration-track:2e07dca1d57a3e0b6d097b2c3dcf08cc878990c617b32098ff8b205b206bd070` |
| 11 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_eq_explicit](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthmultiplicity-eq-explicit--89891c9e5d964be9b47640b1.md) | 247 | `result-track:89891c9e5d964be9b47640b1c5aa7979fc4dd83d23587cd2d053573b852c46a9` |
| 12 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_shift_zero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthmultiplicity-shift-zero--a664064728ffa3b8972ad278.md) | 260 | `result-track:a664064728ffa3b8972ad2781f11345bdaab360bb75bcbe6a1723d280a9262ed` |
| 13 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_separation_zero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthmultiplicity-separation-zero--4ffaa8931c1691c6288b248f.md) | 267 | `result-track:4ffaa8931c1691c6288b248f9d52abe7341c4d59989c71fb7175017fb9a452e8` |
| 14 | `theorem` | [coreGrowingShiftQuarticDepthMultiplicity_collisionDiagonal](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticdepthmultiplicity-collisiondiagonal--83b1fa700252a70631384c4e.md) | 274 | `result-track:83b1fa700252a70631384c4e1661cf951288aff9dde52c50301d81b5fa95179a` |
| 15 | `theorem` | [coreGrowingShiftQuarticExplicitDepthMultiplicity_eq_zero_of_upper_le_lower](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticexplicitdepthmultiplicity-eq-zero-of-upper-le-low--d6ee4e04e89f7a7021456106.md) | 282 | `result-track:d6ee4e04e89f7a7021456106e9005f5cec5006b3cde2c6bb296f44a8dfe70552` |
| 16 | `def` | [coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticexplicitintervalweightedboxenergy--166586749f02e69c47b21bbe.md) | 294 | `declaration-track:166586749f02e69c47b21bbe3015ae2e41d2dbaecbe3113220c070f0053a615d` |
| 17 | `theorem` | [coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy_eq_explicitInterval](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/coregrowingshiftquarticmultiplicityweightedboxenergy-eq-explicitinterval--10957553a023e2436d0d3272.md) | 303 | `result-track:10957553a023e2436d0d32723af4b3e68e30460bb7f3f864fbadd3338d729023` |
| 18 | `def` | [SubpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/subpolynomialcoregrowingshiftquarticexplicitintervalweightedboxbudget--98bb356853a58733e7a88a32.md) | 314 | `declaration-track:98bb356853a58733e7a88a323278038cf458b8563a38cdf89628e06671d60351` |
| 19 | `theorem` | [subpolynomialCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget_iff_multiplicityBox](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/subpolynomialcoregrowingshiftquarticexplicitintervalweightedboxbudget-if--6eca452a958bc10e3270cbb6.md) | 323 | `result-track:6eca452a958bc10e3270cbb65d8bb3a830b4b2433cbe2f3e07f91d7b809a96de` |
| 20 | `theorem` | [riemannHypothesis_of_centeredCollision_and_explicitIntervalBox](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/riemannhypothesis-of-centeredcollision-and-explicitintervalbox--53b7467fe5556b5b041a0afe.md) | 342 | `result-track:53b7467fe5556b5b041a0afeefd6f643502a0d22d397d049ec69ef69f7f1cc93` |
| 21 | `structure` | [ExplicitIntervalWeightedParallelogramSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/explicitintervalweightedparallelogramsource--18a07fe6bed19602f8936698.md) | 355 | `declaration-track:18a07fe6bed19602f8936698be32819becb4428bd2d24da12c1d23839667f734` |
| 22 | `structure` | [ToCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudget](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/tocoregrowingshiftquarticexplicitintervalweightedboxbudget--b3832d22fc5b9a75e23a354b.md) | 362 | `declaration-track:b3832d22fc5b9a75e23a354b99e66c81bc1d47a9259a6dc4c93497a4ffa31498` |
| 23 | `structure` | [FullBoxU2ExplicitIntervalLocalizationSource](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/fullboxu2explicitintervallocalizationsource--30e8b7a7c64c4c4ab6af9604.md) | 374 | `declaration-track:30e8b7a7c64c4c4ab6af9604984279ac34dd6e3edf71b31bdf63f670f2c4c754` |
| 24 | `structure` | [ToCoreGrowingShiftQuarticExplicitIntervalWeightedBoxBudgetFromU2](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/declarations/tocoregrowingshiftquarticexplicitintervalweightedboxbudgetfromu2--7ee94307f68776e0c5385969.md) | 384 | `declaration-track:7ee94307f68776e0c538596903c2c86e5dea073ee95722e5045c009b340c7655` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
