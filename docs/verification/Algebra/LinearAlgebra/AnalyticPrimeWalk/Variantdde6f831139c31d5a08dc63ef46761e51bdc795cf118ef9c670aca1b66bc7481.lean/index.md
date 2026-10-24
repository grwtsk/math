# Verification target: GRWTSK.Algebra.LinearAlgebra.AnalyticPrimeWalk.Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61489a745c2332359d3bb8a035b37b5ea11b6932",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61489a745c2332359d3bb8a035b37b5ea11b6932`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeCharacter](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/conductorthreecharacter--cb266c71bcc146f3b16755dd.md) | 95 | `declaration-track:cb266c71bcc146f3b16755ddf0ceac104c60ab7bbb745199ba3eae196f33d6db` |
| 2 | `theorem` | [conductorThreeCharacter_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/conductorthreecharacter-ne-one--c3588ca50618a394409affe4.md) | 100 | `result-track:c3588ca50618a394409affe47e3f8af1400f229d67715bfa5f014bfbf87e0733` |
| 3 | `theorem` | [conductorThreeCharacter_isPrimitive](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/conductorthreecharacter-isprimitive--98b28b586df1e484ccb9a030.md) | 107 | `result-track:98b28b586df1e484ccb9a0309e02cc260e2d93b78871473476d1b49cb98f553e` |
| 4 | `def` | [GRHForConductorThreeCharacter](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/grhforconductorthreecharacter--23c3dfbc6699746a43da9b66.md) | 120 | `declaration-track:23c3dfbc6699746a43da9b668110da5a002a33292c814ff687357f0ff5a08089` |
| 5 | `def` | [conductorThreePositiveZeroOrdinates](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/conductorthreepositivezeroordinates--7048fbd8864579a2d0813358.md) | 128 | `declaration-track:7048fbd8864579a2d0813358256d556e18969129c1ff589927a831b30d15bf94` |
| 6 | `def` | [ConductorThreePositiveOrdinatesLI](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/conductorthreepositiveordinatesli--646eb9f40543108a7621f19c.md) | 138 | `declaration-track:646eb9f40543108a7621f19c5fce20c26ec9d33f7705e4aaeb9d07263860ea12` |
| 7 | `def` | [ConductorThreeGRHAndLI](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/conductorthreegrhandli--b83393a4c881dc6093ea8146.md) | 146 | `declaration-track:b83393a4c881dc6093ea81468470000d33daf0ac4da7795165f7db1eb49e6eac` |
| 8 | `structure` | [ResidueSixCounts](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/residuesixcounts--8ec8735c3b68a8498ef2af33.md) | 155 | `declaration-track:8ec8735c3b68a8498ef2af339efe1ee31f029797eae26a1e365586c45f5b4f1d` |
| 9 | `def` | [eligibleCount](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/eligiblecount--5f4ce9417ca0eaecb71fd7e4.md) | 161 | `declaration-track:5f4ce9417ca0eaecb71fd7e41cc71f83103b9cac79ae214e7baa1621d43c5857` |
| 10 | `def` | [countDifference](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/countdifference--19a2f6445a4aefe3a8b3d8a8.md) | 167 | `declaration-track:19a2f6445a4aefe3a8b3d8a84062d25d76fbb30205af0cf9aa8357e7ce590e4d` |
| 11 | `def` | [HasSqrtLogCountDifferenceBound](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/hassqrtlogcountdifferencebound--2837edf98e9b856ca9061612.md) | 174 | `declaration-track:2837edf98e9b856ca90616125275434f088a339f2efaf0b2e06277800e38dde8` |
| 12 | `def` | [HasInversePNTReindexBound](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/hasinversepntreindexbound--44fcf27ee6a499f1f2328a1e.md) | 184 | `declaration-track:44fcf27ee6a499f1f2328a1e7bd0c184b5de251264190986702ab7f60b118c7a` |
| 13 | `def` | [logCellWeight](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/logcellweight--781501b2440cb8d9cc669ef1.md) | 192 | `declaration-track:781501b2440cb8d9cc669ef10f048fa397764034743a0f27febad4897bad2c99` |
| 14 | `def` | [negativeLogMass](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/negativelogmass--b51d9d9eb1f61a922458af9c.md) | 199 | `declaration-track:b51d9d9eb1f61a922458af9cecb37d7a22dfc21b09dc676be1abf89dcad3b586` |
| 15 | `def` | [negativeLogDensityAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/negativelogdensityat--f40e25553481b605bdbc7e85.md) | 205 | `declaration-track:f40e25553481b605bdbc7e85c1a8b6924a7ebfddb3e441595d7181aa9b58b02e` |
| 16 | `def` | [HasNegativeLogSignDensity](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/hasnegativelogsigndensity--c44506c04e5a50276a23af83.md) | 213 | `declaration-track:c44506c04e5a50276a23af83fb264c387bfc9f842823e0f22da1048101c91d87` |
| 17 | `structure` | [AnalyticBridgeHypotheses](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/analyticbridgehypotheses--371022497324e9b09610353c.md) | 221 | `declaration-track:371022497324e9b09610353cda4ff3425197c088a2263842b16727a775f62bb9` |
| 18 | `def` | [empiricalWeightAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/empiricalweightat--6d5d4523cad45e869ef96884.md) | 256 | `declaration-track:6d5d4523cad45e869ef96884c98079fa1671f23029bbb455704a23b546032f39` |
| 19 | `def` | [errorOperatorAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/erroroperatorat--567fc5d6d80831733c5bb221.md) | 263 | `declaration-track:567fc5d6d80831733c5bb221d734a00d0827fdf20b22c250dce43378ae7d0644` |
| 20 | `theorem` | [centeredWeight_empiricalWeightAt_eq_delta](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/centeredweight-empiricalweightat-eq-delta--04c4fd5fc35a1f102b2e0705.md) | 270 | `result-track:04c4fd5fc35a1f102b2e07059e26ed5e2b8cb79d718a50a763496ec2db3b399d` |
| 21 | `theorem` | [signedObservable_errorOperatorAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/signedobservable-erroroperatorat--cb7346159c0b0f2ca42b27b6.md) | 287 | `result-track:cb7346159c0b0f2ca42b27b6db504dde9060c813fdef597926996ba6299066b3` |
| 22 | `theorem` | [errorOperatorAt_normSq](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/erroroperatorat-normsq--f354a8c6d01d198640c3447e.md) | 297 | `result-track:f354a8c6d01d198640c3447e732e30c5b7e5a514aed25a88ce52cd9162fa4149` |
| 23 | `theorem` | [delta_at_eligibleIndex](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/delta-at-eligibleindex--fb7f1b5af8a35cda36f0787b.md) | 307 | `result-track:fb7f1b5af8a35cda36f0787b563df1c106e1a3506b9575e34cf32629177589e0` |
| 24 | `def` | [frobeniusPairing](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/frobeniuspairing--611fb47165300412e10f3236.md) | 324 | `declaration-track:611fb47165300412e10f32368bba16ba0f1713fd5f924a0a0f18c66c2da92594` |
| 25 | `theorem` | [frobeniusPairing_eq_trace_transpose_mul](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/frobeniuspairing-eq-trace-transpose-mul--bd741c0470cc09acd18fb230.md) | 331 | `result-track:bd741c0470cc09acd18fb230e6e0260257361c34614bf7ca6a71b3f116919c0e` |
| 26 | `def` | [restrictedGeneratorDifference](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/restrictedgeneratordifference--2ab39fb5287c58a305d291ce.md) | 348 | `declaration-track:2ab39fb5287c58a305d291ce17cb5e9fdabe93ee2e2731607ca37412a8b60c7d` |
| 27 | `theorem` | [restrictedGeneratorDifference_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/restrictedgeneratordifference-tomatrix--290ad5d4e3b9f87a394179da.md) | 353 | `result-track:290ad5d4e3b9f87a394179da46ccfbb73983e27b73d67df9c6cd4124222f35a8` |
| 28 | `def` | [orientedEndTrace](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/orientedendtrace--490fb4f8f19f694d3ddc26dc.md) | 367 | `declaration-track:490fb4f8f19f694d3ddc26dce2cd4c04399db20dfc27d714e2bebba02e8f6917` |
| 29 | `theorem` | [tracePairing_conj](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/tracepairing-conj--79c5347ff036354399af7703.md) | 374 | `result-track:79c5347ff036354399af7703ee43a9d9f47c15028dbe3b5cd9aae40689f63160` |
| 30 | `theorem` | [orientedEndTrace_centeredWeight_generatorDifference](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/orientedendtrace-centeredweight-generatordifference--dea88ae8c4847ad31e21f72d.md) | 388 | `result-track:dea88ae8c4847ad31e21f72d1bfaba278f3e3e5e3ff6bb6b8ec4e04f49be60ec` |
| 31 | `theorem` | [generatorDifference_frobenius_self](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/generatordifference-frobenius-self--47c39a6f298fffd0ec3af869.md) | 410 | `result-track:47c39a6f298fffd0ec3af8697656a9c654e340046c9f2763849942eca1b3d007` |
| 32 | `def` | [orientedFrobeniusProbe](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/orientedfrobeniusprobe--45507d3b61386c73cad4e1fb.md) | 421 | `declaration-track:45507d3b61386c73cad4e1fb1bd76dc273055d4257cabf6621df3577e4cde803` |
| 33 | `theorem` | [frobeniusPairing_orientedProbe_discrepancy](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/frobeniuspairing-orientedprobe-discrepancy--a30daaaaaa18dfd375e23247.md) | 426 | `result-track:a30daaaaaa18dfd375e232476742d9666a0a8ec774099a8043daf0e52ffe7dc8` |
| 34 | `def` | [oneThirdGeneratorDifferenceProbe](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/onethirdgeneratordifferenceprobe--ec585c89bb06d395d5d6c7e6.md) | 440 | `declaration-track:ec585c89bb06d395d5d6c7e6dbdf4ca6d99623ed56618a2df5ddb18cfda8ca0d` |
| 35 | `theorem` | [frobeniusPairing_oneThirdProbe_discrepancy](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/frobeniuspairing-onethirdprobe-discrepancy--83d0283b39bed3138544bd68.md) | 446 | `result-track:83d0283b39bed3138544bd68c098e548967cfb00546f7f39e98efe11dcc24065` |
| 36 | `theorem` | [frobeniusPairing_errorOperatorAt](../../../../../mathematics/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/declarations/frobeniuspairing-erroroperatorat--ea95ac96a1853d8e1f0ad3a3.md) | 459 | `result-track:ea95ac96a1853d8e1f0ad3a3e30fe55e2ac952592a4759920bb6cb158d4b66df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
