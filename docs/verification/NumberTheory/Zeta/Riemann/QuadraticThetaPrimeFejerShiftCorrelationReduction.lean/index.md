# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d39630a6d426d2110328af98a5034c57a1c33f9",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d39630a6d426d2110328af98a5034c57a1c33f9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOffDiagonalReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fejerOctaveIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejeroctaveindexset--7d8552ea3334fe2e069418d1.md) | 59 | `declaration-track:7d8552ea3334fe2e069418d1a7f1ee625035ba853c5bbb20733b26390e6efe5a` |
| 2 | `def` | [fejerPositiveOffDiagonalPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositiveoffdiagonalpairs--1dd0662f94620d1b7e750cc9.md) | 63 | `declaration-track:1dd0662f94620d1b7e750cc929c3436f2119a7afb56a7d5f83902754a9c8b4cd` |
| 3 | `def` | [fejerNegativeOffDiagonalPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejernegativeoffdiagonalpairs--24cd4dfde61db672c1e22d6e.md) | 68 | `declaration-track:24cd4dfde61db672c1e22d6ed63402006e5aa58813822b9cef96d0435a897479` |
| 4 | `theorem` | [mem_fejerPositiveOffDiagonalPairs_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/mem-fejerpositiveoffdiagonalpairs-iff--e68e72c6b3f8599fb4cd517f.md) | 73 | `result-track:e68e72c6b3f8599fb4cd517f428fdfb08c47d0b13008666217e05c13c9cb0706` |
| 5 | `theorem` | [mem_fejerNegativeOffDiagonalPairs_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/mem-fejernegativeoffdiagonalpairs-iff--656ccf91080e5af8d6643684.md) | 91 | `result-track:656ccf91080e5af8d6643684cef46a08dc52ca6aa504fbbbe97bc69607fce8ba` |
| 6 | `theorem` | [fejerOffDiagonalPairs_eq_positive_union_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejeroffdiagonalpairs-eq-positive-union-negative--47ee2c4844292c45e4ddc077.md) | 110 | `result-track:47ee2c4844292c45e4ddc0774d0345edbf343f7787364d756895e1b0ac916b4e` |
| 7 | `theorem` | [fejerPositiveNegativePairs_disjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivenegativepairs-disjoint--0debcb6cdbef880fa04543e0.md) | 140 | `result-track:0debcb6cdbef880fa04543e0b28ea4a7cb75750c1c5ce64ad634898367c4a56c` |
| 8 | `def` | [fejerNegativePositiveSwapEquiv](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejernegativepositiveswapequiv--d9df1034067ce9694da8830b.md) | 155 | `declaration-track:d9df1034067ce9694da8830be77e2703f3bdeaedbedcdf76b3c5e4fe56271561` |
| 9 | `def` | [nonAliasingFejerPositivePairCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation--c1625c05a5fbce330182f0e7.md) | 181 | `declaration-track:c1625c05a5fbce330182f0e750dd89799ad49e10e7a7044cc490e5f6748d0cf0` |
| 10 | `def` | [nonAliasingFejerNegativePairCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejernegativepaircorrelation--53621bdbb55f104e518d3aa0.md) | 188 | `declaration-track:53621bdbb55f104e518d3aa08ed0414ddacc87703cee560eb74924dde900a42e` |
| 11 | `theorem` | [nonAliasingFejerNegativePairCorrelation_eq_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejernegativepaircorrelation-eq-positive--53249ec511f1b348fc4249f2.md) | 196 | `result-track:53249ec511f1b348fc4249f2200bd5466962834b9ef7fbcb81926eecdaffac73` |
| 12 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_offDiag_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerquadraticoffdiagonal-eq-offdiag-sum--5745f7e19e3d3d9758641337.md) | 218 | `result-track:5745f7e19e3d3d97586413377d5221d3e0b8c74ae7458fe1eb6f63d26d1e9212` |
| 13 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_positivePairCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-positivepaircorrelation--0cad11ee428f415d57b160f6.md) | 238 | `result-track:0cad11ee428f415d57b160f6fe673a47926b23f87aef6fd4ee27651181ecd3ba` |
| 14 | `def` | [fejerPositiveLagSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagset--f8df5872a567c16479eaa8c8.md) | 263 | `declaration-track:f8df5872a567c16479eaa8c8634b6bbe69d55d751b33fa8d03b682a6c103cf0a` |
| 15 | `def` | [fejerPositiveLagFiber](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagfiber--6de03ab9e6a0569cc9d59e3c.md) | 267 | `declaration-track:6de03ab9e6a0569cc9d59e3c86ae5149889aa6a4c291566bc9dfc621cbe7a542` |
| 16 | `theorem` | [mem_fejerPositiveLagFiber_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/mem-fejerpositivelagfiber-iff--7aede165f9d4dd1ea2071800.md) | 273 | `result-track:7aede165f9d4dd1ea20718005f6090479f375abfc220139fd690e6cc050d3988` |
| 17 | `theorem` | [fejerPositivePairLag_mapsTo_Icc](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivepairlag-mapsto-icc--642cd93d747a00d0d135242c.md) | 293 | `result-track:642cd93d747a00d0d135242c6a830400b9a9250e47548d2c5e6f4f6290d58b74` |
| 18 | `def` | [nonAliasingFejerLagCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerlagcorrelation--a1306eb2124b8105027e9af3.md) | 305 | `declaration-track:a1306eb2124b8105027e9af386d56d458175a6c1809917d378b6cd66592700b0` |
| 19 | `def` | [nonAliasingFejerShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejershiftcorrelation--e7c01022e3811992a742db83.md) | 312 | `declaration-track:e7c01022e3811992a742db83556fce5a7aa04270f2388ded86bcd661f9e01bfa` |
| 20 | `def` | [fejerPositiveLagFiberEquivIoc](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagfiberequivioc--859cbcb30304ec8ba1216ab1.md) | 320 | `declaration-track:859cbcb30304ec8ba1216ab104a5a6b869a220f3761ee54193b47d4a3e6f40e6` |
| 21 | `theorem` | [nonAliasingFejerLagCorrelation_eq_shiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerlagcorrelation-eq-shiftcorrelation--503126f2d81f2cb3b75088dc.md) | 355 | `result-track:503126f2d81f2cb3b75088dc7c7a083c5cd676e7a9a8c32d4d7622ec4860a641` |
| 22 | `theorem` | [nonAliasingFejerShiftCorrelation_eq_weighted_centeredPrimePair](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejershiftcorrelation-eq-weighted-centeredprimepair--a38007f4aa7baa17fb0b29b9.md) | 384 | `result-track:a38007f4aa7baa17fb0b29b992ce79bee4b6afbfad2c139b067bd143da3227b5` |
| 23 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_lagCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-lagcorrelation--8c496a4ff9733f47032163a7.md) | 399 | `result-track:8c496a4ff9733f47032163a769937aa6ffec148ef60e7db9429f221e38a87e00` |
| 24 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-shiftcorrelation--7da0db6219c2f45be8866756.md) | 411 | `result-track:7da0db6219c2f45be8866756cb4680eb7af793f1689ea27fdbe30f706d7b9c1b` |
| 25 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_sum_shiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-sum-shiftcorrelation--5b7537fd86b149363771d937.md) | 422 | `result-track:5b7537fd86b149363771d9378fce95756f06f2c4feb62387736a40c4f6523738` |
| 26 | `theorem` | [fejerPositiveLagSet_card_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/fejerpositivelagset-card-le--64255d2eb0665e483b8f52bf.md) | 432 | `result-track:64255d2eb0665e483b8f52bfd8fd65abcdaecfa91704f5c6fadc5ca72a0eaf44` |
| 27 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/seveneighthsboundaryminimalexactshiftcorrelationbound--2f471ddd7056ba0c06245faf.md) | 443 | `declaration-track:2f471ddd7056ba0c06245faf4eb3de537cf00c2dc4bcfcec793359ff313f93d6` |
| 28 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/seveneighthsboundaryminimalexactshiftcorrelationabsolutebound--b7c1f958331c1d7e13c3656f.md) | 463 | `declaration-track:b7c1f958331c1d7e13c3656fcf24b03682ffcfd26f4f89637d05153d1d72059e` |
| 29 | `def` | [SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/seveneighthsboundaryminimalpointwiseshiftsquarerootbound--b73d8e4fad71b55ee31a9b73.md) | 483 | `declaration-track:b73d8e4fad71b55ee31a9b73371f5c2010555667614321b204995df48f1ec22a` |
| 30 | `theorem` | [absoluteShiftCorrelationBound_to_exactShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/absoluteshiftcorrelationbound-to-exactshiftcorrelationbound--bb80de8880b750734638148f.md) | 503 | `result-track:bb80de8880b750734638148f7eaabddb77d3c10aa915e304ecbb269fb0e8ea1e` |
| 31 | `theorem` | [pointwiseShiftSquareRootBound_to_exactShiftCorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/pointwiseshiftsquarerootbound-to-exactshiftcorrelationbound--bfd2fa4c053298f642526122.md) | 533 | `result-track:bfd2fa4c053298f642526122ac1bebcc414a4f7f06edfbcc5e5f0ca1fc583b64` |
| 32 | `theorem` | [exactShiftCorrelationBound_to_signedOffDiagonalBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/exactshiftcorrelationbound-to-signedoffdiagonalbound--55c8aa546a8cd512afaca4b5.md) | 610 | `result-track:55c8aa546a8cd512afaca4b5b24e71d3aa593e9b97d49a673d0ca9032653a67d` |
| 33 | `theorem` | [exactShiftCorrelationBound_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/exactshiftcorrelationbound-to-partialdiscrepancy--afe0837afecd16e33dc3471d.md) | 641 | `result-track:afe0837afecd16e33dc3471d1bcd6cafa8f8afc4587d440f3d86c33b517909ad` |
| 34 | `theorem` | [lagCount_add_pointwiseSquareRootExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/lagcount-add-pointwisesquarerootexponent--2c02cba031277166deb08a10.md) | 655 | `result-track:2c02cba031277166deb08a109da81899c737464607e2608efa026f860cb445b0` |
| 35 | `theorem` | [threeHalves_lt_trivialPairCountingExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/declarations/threehalves-lt-trivialpaircountingexponent--d12c21b5c91465ad36d3fb48.md) | 661 | `result-track:d12c21b5c91465ad36d3fb48d77eef190167023094566072fa32c36cd5661b0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
