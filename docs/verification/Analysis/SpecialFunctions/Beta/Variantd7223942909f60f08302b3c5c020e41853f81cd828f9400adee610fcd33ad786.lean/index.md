# Verification target: GRWTSK.Analysis.SpecialFunctions.Beta.Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "759ae5f8971be63fe142c316a5312b1e18c65dc6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `759ae5f8971be63fe142c316a5312b1e18c65dc6`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.EulerSineProd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral--0fe5d7c9956939e4bdf01356.md) | 64 | `declaration-track:0fe5d7c9956939e4bdf013567aa15d72a31823dbae06ec9c511753188ca266f7` |
| 2 | `theorem` | [betaIntegral_convergent_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-convergent-left--adba76e8f6a00a252e253846.md) | 68 | `result-track:adba76e8f6a00a252e253846cfa8eefea7c705f95aecbe9128e5502ef7855793` |
| 3 | `theorem` | [betaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-convergent--61c8963db408382ebb2ab646.md) | 84 | `result-track:61c8963db408382ebb2ab64654cd3d866d2c4ae5a9f438286f0de38cc4928b39` |
| 4 | `theorem` | [betaIntegral_symm](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-symm--2ef0106f4e26e3b942bff515.md) | 96 | `result-track:2ef0106f4e26e3b942bff51564c4057837b5f056c685743edfe0142eecd060f9` |
| 5 | `theorem` | [betaIntegral_eval_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-eval-one-right--4a034c215d0fd12aaaf1df63.md) | 107 | `result-track:4a034c215d0fd12aaaf1df63e5886d2ae039ddf829b3cccb8e9c30ae4b6716ef` |
| 6 | `theorem` | [betaIntegral_scaled](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-scaled--6d1cb251c2d06c2021563425.md) | 115 | `result-track:6d1cb251c2d06c20215634254588e9d9f3ff5043602e1cca340bc1f7d0f4d730` |
| 7 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-mul-gamma-eq-betaintegral--45de512892d623747c7363df.md) | 136 | `result-track:45de512892d623747c7363df99b37d513bea8bf75735b8197a6c89789a2011f5` |
| 8 | `theorem` | [betaIntegral_recurrence](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-recurrence--556ea1f22a0b3647dcbec131.md) | 154 | `result-track:556ea1f22a0b3647dcbec131fa2967b9258cde741d64444a3f629dc8d29e26f5` |
| 9 | `theorem` | [betaIntegral_eval_nat_add_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/betaintegral-eval-nat-add-one-right--09246d606cfd6d0ba86abac4.md) | 212 | `result-track:09246d606cfd6d0ba86abac4420d445517ce7993e62436faa413de30370e2619` |
| 10 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq--3b99b2daf98f06e4c1f7c4da.md) | 241 | `declaration-track:3b99b2daf98f06e4c1f7c4dab2ee8982dfa2795a94a9d39467216aeaa7132de5` |
| 11 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq-eq-betaintegral-of-re-pos--83198bf7c85c0de6a0c158e0.md) | 244 | `result-track:83198bf7c85c0de6a0c158e06c16f4259121f098cff7b66042dac739862a3b9a` |
| 12 | `theorem` | [GammaSeq_add_one_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq-add-one-left--2bc33544da740b2f11b0dbc1.md) | 248 | `result-track:2bc33544da740b2f11b0dbc19dbd057b596a210794549dce2d38454230804146` |
| 13 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq-eq-approx-gamma-integral--44dcbe0deedaf26a7dc13123.md) | 260 | `result-track:44dcbe0deedaf26a7dc1312394dd9024575136d2e85adf71f6e1d0e8a1f7888b` |
| 14 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/approx-gamma-integral-tendsto-gamma-integral--8065ab1db26d037a437d7256.md) | 285 | `result-track:8065ab1db26d037a437d72562ce777b20d0a3143443ea2bbbdbf1019634dabac` |
| 15 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq-tendsto-gamma--7a7a677ee4b3b2f0cfc3bc4a.md) | 344 | `result-track:7a7a677ee4b3b2f0cfc3bc4afc88eeea74c863570f6e1a4a5178e5dfbc6cea9c` |
| 16 | `theorem` | [GammaSeq_mul](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq-mul--6dac816d7d7a2efad5ab925c.md) | 386 | `result-track:6dac816d7d7a2efad5ab925cb0c83f640d2a1741efce547b1706477cff650e28` |
| 17 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-mul-gamma-one-sub--fd13edb2db7938313b609565.md) | 410 | `result-track:fd13edb2db7938313b6095657c9e210b93056bed2584bdce87d965c756ccd161` |
| 18 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-ne-zero--e666c34f1f3444781eb22fa9.md) | 437 | `result-track:e666c34f1f3444781eb22fa90fb1342b1e133489da0328af337ad96c32c5cae0` |
| 19 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-eq-zero-iff--109407e9823f0c1c1dcd7540.md) | 457 | `result-track:109407e9823f0c1c1dcd7540ad832c4b7d47e8be20bffc8eb06b7afa360d572f` |
| 20 | `theorem` | [Gamma_ne_zero_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-ne-zero-of-re-pos--a305f861e4c2b8b7728ddc60.md) | 463 | `result-track:a305f861e4c2b8b7728ddc60a83bc7edbdd341d6fa80a316e701fca8e73c99b3` |
| 21 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq--68c1a432388f275da7b1e628.md) | 474 | `declaration-track:68c1a432388f275da7b1e62891d5473a99c84c3fba7d04c0ace2d5746a6f3814` |
| 22 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gammaseq-tendsto-gamma--05603fbb58d445a99fa1fed2.md) | 478 | `result-track:05603fbb58d445a99fa1fed2d5247931d26249140d1cd0ae2b3e09b898588326` |
| 23 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-mul-gamma-one-sub--8de2d29b48d023ca0635091e.md) | 488 | `result-track:8de2d29b48d023ca0635091e3d6b2e43527c4329dca4ecf6dd090fae2a62581f` |
| 24 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one--348a3f31202ce25a1fc38f72.md) | 511 | `result-track:348a3f31202ce25a1fc38f72fe9fb9ecefeecb1320c6180b7d1542e6e6ff9a7b` |
| 25 | `theorem` | [differentiable_one_div_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/differentiable-one-div-gamma--8a6483eea4269d85cdc7d040.md) | 519 | `result-track:8a6483eea4269d85cdc7d04009ddf74088d10303498bf06cfe4ef98c0403d494` |
| 26 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-mul-gamma-add-half--a3942e9ec78dedf1fa148b0a.md) | 551 | `result-track:a3942e9ec78dedf1fa148b0a6b83036266a57e3633152243605477a8f2de3d95` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean/declarations/gamma-mul-gamma-add-half--2b1e71dbb7d2d41d8a36cf6f.md) | 589 | `result-track:2b1e71dbb7d2d41d8a36cf6fadad305c408379f8ea1270ad39dc63763831b808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
