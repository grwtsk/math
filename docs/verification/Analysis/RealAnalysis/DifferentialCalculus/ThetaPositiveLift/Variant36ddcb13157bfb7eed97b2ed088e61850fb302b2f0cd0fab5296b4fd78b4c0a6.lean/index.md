# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "187362e72a201445c3052ff2d4181eef7d9823e3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `187362e72a201445c3052ff2d4181eef7d9823e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiPhiTransform` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPositiveLift` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_poly_exp_norm_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphi-poly-exp-norm-le-tail--8747c67440fbf4c503ec6886.md) | 38 | `result-track:8747c67440fbf4c503ec6886f8ac25b6fff0cb21d0cee721a314034f8f775c02` |
| 2 | `theorem` | [thetaPhi_poly_exp_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphi-poly-exp-integrableon--effd21dabea7d135a612e02e.md) | 79 | `result-track:effd21dabea7d135a612e02eafa2eef7434c8d563ee308f5509d2f2ad41a3ff6` |
| 3 | `theorem` | [thetaPhi_evenBasis_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphi-evenbasis-integrableon--aee4bccf59cbac888ed68cd2.md) | 105 | `result-track:aee4bccf59cbac888ed68cd242eb5d7cd0fca18cf5b92bd83ca4146fb7da71f8` |
| 4 | `def` | [thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphiexpmomentintegrand--348ba11639e56f5480857fd1.md) | 110 | `declaration-track:348ba11639e56f5480857fd1a073fd429a29d0e18b4cd73bb51f025eea3c29e3` |
| 5 | `def` | [thetaPhiExpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphiexpmoment--9d8faaddfc175657e5f2d649.md) | 114 | `declaration-track:9d8faaddfc175657e5f2d64967a3fac66be7cfb48a6b15089963e58522103b00` |
| 6 | `theorem` | [continuous_thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/continuous-thetaphiexpmomentintegrand--28f82e8bb06d033c9850aaf2.md) | 118 | `result-track:28f82e8bb06d033c9850aaf2f90afebc5bf12590cc2f130e2af823f8463f2c95` |
| 7 | `theorem` | [thetaPhiExpMomentIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphiexpmomentintegrand-norm-le--de05507b2948bcb30745d02c.md) | 126 | `result-track:de05507b2948bcb30745d02c30e5f336e9a93cdad35c4f48a0b735bc155f291d` |
| 8 | `theorem` | [thetaPhiExpMomentIntegrand_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphiexpmomentintegrand-integrableon--72e7b68bb6a84df572497fde.md) | 146 | `result-track:72e7b68bb6a84df572497fde936bc1e153aa445c8277758a6137106bf3561303` |
| 9 | `theorem` | [hasDerivAt_thetaPhiExpMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/hasderivat-thetaphiexpmomentintegrand--5022a7ee1ce91fbab48a0bf2.md) | 154 | `result-track:5022a7ee1ce91fbab48a0bf202330c5c9247774f03df8b1f2412e0eede5dbcc5` |
| 10 | `theorem` | [hasDerivAt_thetaPhiExpMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/hasderivat-thetaphiexpmoment--8a38f277298e6bc27c81c5f6.md) | 164 | `result-track:8a38f277298e6bc27c81c5f6941a68ade8f2044ba9441a14b63fcdf206968084` |
| 11 | `def` | [thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetacenteredmomentjet--a0e905b6b15ab6d719d4b213.md) | 191 | `declaration-track:a0e905b6b15ab6d719d4b213645b2dd42d238057315dce2f73fe3ae38ab878be` |
| 12 | `theorem` | [hasDerivAt_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/hasderivat-thetacenteredmomentjet--538ab41076920719d29c77f9.md) | 195 | `result-track:538ab41076920719d29c77f937a56d1b670c561a9b73fc08a9a59c149a18b896` |
| 13 | `theorem` | [iteratedDeriv_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/iteratedderiv-thetacenteredmomentjet--0978d5713402caa8f86bc354.md) | 204 | `result-track:0978d5713402caa8f86bc35465141490e4aa795de20b45dfd0f69ea6757b9a53` |
| 14 | `theorem` | [thetaCenteredMomentJet_even_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetacenteredmomentjet-even-zero--9b41b80a8fabecb6b2f309d3.md) | 213 | `result-track:9b41b80a8fabecb6b2f309d3da4ec42f06f0594463ce2e161c076f583f24f7c4` |
| 15 | `theorem` | [xi_centered_eq_thetaCenteredMomentJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/xi-centered-eq-thetacenteredmomentjet--371559ab53c03ecce5f89c84.md) | 223 | `result-track:371559ab53c03ecce5f89c845054fbc582c6db5a6f51957a11d15cc2e872031f` |
| 16 | `theorem` | [centeredXi_iteratedDeriv_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/centeredxi-iteratedderiv-even--41583422fa778664cc3f9e09.md) | 242 | `result-track:41583422fa778664cc3f9e09c9377e9ccc2368658f4e23ed837a1181f817692f` |
| 17 | `theorem` | [iteratedDeriv_centeredXi_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/iteratedderiv-centeredxi-zero--0b0caf0a7be7d232ea3b8233.md) | 250 | `result-track:0b0caf0a7be7d232ea3b8233e484adba50d0df57d863a1ad982e9c2357e06d05` |
| 18 | `theorem` | [iteratedDeriv_cosh_linear_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/iteratedderiv-cosh-linear-zero--23a2069414b04fec7030339c.md) | 257 | `result-track:23a2069414b04fec7030339ca616586c2922c3a01a3e035c50dee3ef09793260` |
| 19 | `theorem` | [xi_iteratedDeriv_even_eq_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/xi-iteratedderiv-even-eq-thetaphi--fa0475b290ddab28c871c9b0.md) | 270 | `result-track:fa0475b290ddab28c871c9b028aeef279ca171c4bcf2acb724b2192dd1ba2bab` |
| 20 | `theorem` | [thetaPhi_complex_even_moment_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphi-complex-even-moment-eq--91cbe5d4e5a119b0fc55d2d8.md) | 277 | `result-track:91cbe5d4e5a119b0fc55d2d84e9a6a528c18c0e22acc5d140b2f9cd2b788e989` |
| 21 | `theorem` | [thetaPhi_power_integral_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphi-power-integral-re--7f3f364f487018cd57e67bf3.md) | 284 | `result-track:7f3f364f487018cd57e67bf35363915412da3f7d567dc11058eeedb5d687d157` |
| 22 | `theorem` | [coefficient_eq_thetaPhi_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/coefficient-eq-thetaphi-ioi--cacecd0808d405361e399c93.md) | 290 | `result-track:cacecd0808d405361e399c93bea37425c3bab595b6341a0d7038b1258a817e3e` |
| 23 | `theorem` | [thetaPhi_evenBasis_integral_Ici_eq_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetaphi-evenbasis-integral-ici-eq-ioi--0d92bad327a9c3065045b4ec.md) | 306 | `result-track:0d92bad327a9c3065045b4eccefb123f33752da7bf6cfe5079d280ef761d6eda` |
| 24 | `theorem` | [thetaCoefficientFormula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/thetacoefficientformula--e48170b45cb7e7effa667edd.md) | 313 | `result-track:e48170b45cb7e7effa667eddfc5ff024872ea891a9a049abf717e5a54cd29a9d` |
| 25 | `theorem` | [coefficient_zero_eq_eight_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/coefficient-zero-eq-eight-integral--f9b4aeb2b84bd28f411846d1.md) | 319 | `result-track:f9b4aeb2b84bd28f411846d1d7841002ba78d0f9b97a74134ab6cba368a4a04b` |
| 26 | `theorem` | [coefficient_one_eq_sixteen_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/coefficient-one-eq-sixteen-integral--dfd82f8796406a6f5d35fa63.md) | 325 | `result-track:dfd82f8796406a6f5d35fa63587f2f0fd52bfac51e1929afb40b1faff9bb18c3` |
| 27 | `theorem` | [coefficient_zero_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/declarations/coefficient-zero-pos--6fb7af55d921a3942d9c687f.md) | 338 | `result-track:6fb7af55d921a3942d9c687f86fce89a5f31a58268ca8b418333992fd1fd7925` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
