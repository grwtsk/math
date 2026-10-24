# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e49b7daf657012e8244b3783350e26e6703cf5c7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e49b7daf657012e8244b3783350e26e6703cf5c7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankTwo` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailGap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap--b379d64ab77fa6dff8f95bb1.md) | 33 | `declaration-track:b379d64ab77fa6dff8f95bb1a1aa91e0e47af0b69e153e4f64390eff67a76602` |
| 2 | `theorem` | [hasDerivAt_thetaTail_normalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/hasderivat-thetatail-normalized--36ce077e5afd3beca42a016d.md) | 37 | `result-track:36ce077e5afd3beca42a016de2899f00c120b390ace25fbde93c43ba450dd417` |
| 3 | `theorem` | [thetaTailGap_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-nonnegative--cc6c089de91351b02bf7adce.md) | 46 | `result-track:cc6c089de91351b02bf7adcebdda92e1cc724b5b317fcacb8be356400eeb9a7b` |
| 4 | `theorem` | [thetaTailGap_derivative_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-derivative-ratio--e10d3b30e8079b0d2c449238.md) | 57 | `result-track:e10d3b30e8079b0d2c449238ebda695c902938c3e0870222466273dc354e3168` |
| 5 | `theorem` | [thetaTailGap_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-succ-succ--c70a447a62e400fca8e00469.md) | 67 | `result-track:c70a447a62e400fca8e00469b6c1d5547776426ac6844735308bb858ea6766cc` |
| 6 | `theorem` | [thetaTailGap_zero_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-zero-succ--c210563e74f846b6ac7ccb5e.md) | 75 | `result-track:c210563e74f846b6ac7ccb5ebbb4a2af7832bf5cd7c8d0b5aee454028f392eba` |
| 7 | `theorem` | [thetaPhi_logSlope_strictAnti](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-logslope-strictanti--8b1ec83f770c197a7bfd1c1d.md) | 84 | `result-track:8b1ec83f770c197a7bfd1c1d0ecc117db9be4f41eb83d51fa6ff150d9fab741e` |
| 8 | `theorem` | [thetaPhi_logSlope_cross_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-logslope-cross-positive--83d6e4e926d81db9e1c59a30.md) | 93 | `result-track:83d6e4e926d81db9e1c59a30750bf801e0f30e133174bd076034b13a5f681663` |
| 9 | `theorem` | [thetaTailGap_zero_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-zero-two-integral--1ead8e8acbb6d87c3a572c51.md) | 100 | `result-track:1ead8e8acbb6d87c3a572c5152e482491ad40322888d317a0f3064ee84dcf617` |
| 10 | `theorem` | [zero_two_gap_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/zero-two-gap-integrand-integrable--73f8ea5069b3106d28b96cfb.md) | 107 | `result-track:73f8ea5069b3106d28b96cfbc5dbdce5b27893846e916245e53c76ce531c98ee` |
| 11 | `theorem` | [thetaTailGap_zero_two_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-zero-two-positive--4e891a0de7067523386d07c8.md) | 120 | `result-track:4e891a0de7067523386d07c8f39c29131d72b90c55d984506305e6180d96f8ff` |
| 12 | `theorem` | [hasDerivAt_thetaTailGap_zero_succ_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/hasderivat-thetatailgap-zero-succ-succ--f241f244cc0c46d8f4cd5dc0.md) | 134 | `result-track:f241f244cc0c46d8f4cd5dc06ae338d000a0f5613eda1be4567cefbc311ce0b9` |
| 13 | `theorem` | [thetaPhi_mul_sub_pow_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-mul-sub-pow-tendsto--5259ec8e1463f70d9ea322d5.md) | 149 | `result-track:5259ec8e1463f70d9ea322d5bbd82d7cd3cd3fffdbac9389573d1456f6f81ba1` |
| 14 | `theorem` | [thetaPhi_deriv_sub_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-deriv-sub-pow-integrable--399fa8d1684c388a68eefcf5.md) | 171 | `result-track:399fa8d1684c388a68eefcf562aabe29018dd3c53866bbaa469488d37e62c168` |
| 15 | `theorem` | [thetaPhi_deriv_tailKernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-deriv-tailkernel-integral--58e360f2863735489935dbb0.md) | 185 | `result-track:58e360f2863735489935dbb02c4179d21eeaf758f71a776019287ece004f8728` |
| 16 | `theorem` | [thetaTailGap_zero_succ_succ_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-zero-succ-succ-integral--1b5b5864894f185cb584ad99.md) | 215 | `result-track:1b5b5864894f185cb584ad998dd73045384da257e3bf193ed7956a9eea27e995` |
| 17 | `theorem` | [thetaPhi_deriv_mul_sub_pow_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-deriv-mul-sub-pow-tendsto--fc6c4fa2e0ae8984c34d5071.md) | 240 | `result-track:fc6c4fa2e0ae8984c34d507162479f1186f643fd71c9790b645727ce09177bc3` |
| 18 | `theorem` | [thetaPhi_second_sub_pow_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-second-sub-pow-integrable--7b55f2144c9c0218f7a11132.md) | 252 | `result-track:7b55f2144c9c0218f7a1113214a7a9c7afe558c2806c8caf0a959e330bfb5470` |
| 19 | `theorem` | [thetaPhi_deriv_tailKernel_integral_all](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-deriv-tailkernel-integral-all--4668a124f22b49ff012f7436.md) | 266 | `result-track:4668a124f22b49ff012f74361adbebb0553586ea610be145bf44b42312e0b2e2` |
| 20 | `theorem` | [thetaPhi_second_tailKernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetaphi-second-tailkernel-integral--6f02597764e708a680249a51.md) | 277 | `result-track:6f02597764e708a680249a51d6865832280fb32abd674ec7a7c788b0b3ee4337` |
| 21 | `theorem` | [thetaTailGap_zero_succ_succ_deriv_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-zero-succ-succ-deriv-integral--5f880714feb3169dc0078393.md) | 309 | `result-track:5f880714feb3169dc0078393acc59157bab180941c57b66c3f3333bc10142c21` |
| 22 | `theorem` | [thetaTailGap_source_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-source-integrand-integrable--c0da4d0195807361947d83c6.md) | 330 | `result-track:c0da4d0195807361947d83c60b084fac1e6de5ce2b5a5c8504c9d9f2030971bc` |
| 23 | `theorem` | [thetaTailGap_source_deriv_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant82360790c2c1f9cee9d23d343477b5adbbd8faef0261ea262b873aaf9dce5606.lean/declarations/thetatailgap-source-deriv-integrand-integrable--859e881d5bbb0221b3b3963c.md) | 342 | `result-track:859e881d5bbb0221b3b3963c635996933de147097bcaf96ccc8d35870734ad85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
