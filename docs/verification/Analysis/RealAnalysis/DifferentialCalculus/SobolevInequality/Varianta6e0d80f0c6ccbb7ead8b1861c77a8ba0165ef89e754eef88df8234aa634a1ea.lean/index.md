# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SobolevInequality.Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "359c21256d5d3db3bcee9bc271792a403e3f66a6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `359c21256d5d3db3bcee9bc271792a403e3f66a6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.EuclideanDist` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.NormPow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Interval` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [T](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/t--6094a741c98bafc9f70f46ce.md) | 89 | `declaration-track:6094a741c98bafc9f70f46cec0b922215caf857b21491e17a428eb337952b3b4` |
| 2 | `lemma` | [T_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/t-univ--d2f7cdfd5f7f519a9c3f90f0.md) | 94 | `result-track:d2f7cdfd5f7f519a9c3f90f092e8987df9fd342355582612b97adcc001cb5447` |
| 3 | `lemma` | [T_empty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/t-empty--2949977f964437146a6a600d.md) | 100 | `result-track:2949977f964437146a6a600de004d29a731177663f8d10a1ee9010924d0b31ec` |
| 4 | `theorem` | [T_insert_le_T_lmarginal_singleton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/t-insert-le-t-lmarginal-singleton--df2e82a5a8c2513fc7d0b9ca.md) | 109 | `result-track:df2e82a5a8c2513fc7d0b9cadd9cf382ddf7ac4aad1a1017cb49a9a2fa516127` |
| 5 | `theorem` | [T_lmarginal_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/t-lmarginal-antitone--33fbd4283e7873cf1d220bd8.md) | 217 | `result-track:33fbd4283e7873cf1d220bd8eab5750d0711c762caf0b9d4b85874bfdd023551` |
| 6 | `theorem` | [lintegral_mul_prod_lintegral_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/lintegral-mul-prod-lintegral-pow-le--0940a94652a689848f57dbab.md) | 257 | `result-track:0940a94652a689848f57dbab505897976f1603c42610abf741ca0c51c419f54a` |
| 7 | `theorem` | [lintegral_prod_lintegral_pow_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/lintegral-prod-lintegral-pow-le--62851e0777e605d4901c72e7.md) | 270 | `result-track:62851e0777e605d4901c72e7161958c73d3ac10829eb117093ef5c6374cb3620` |
| 8 | `theorem` | [lintegral_pow_le_pow_lintegral_fderiv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/lintegral-pow-le-pow-lintegral-fderiv-aux--f42f4e0ca939c561c5a6e215.md) | 299 | `result-track:f42f4e0ca939c561c5a6e215f0ef4450a6f979363ac7fda42fcc75c458e48c2b` |
| 9 | `theorem` | [lintegral_pow_le_pow_lintegral_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/lintegral-pow-le-pow-lintegral-fderiv--0d4c1612e0a4a61bf5a2cfe6.md) | 371 | `result-track:0d4c1612e0a4a61bf5a2cfe611c0707b31de23ef368297d984b1896b85391806` |
| 10 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/elpnorm-le-elpnorm-fderiv-one--1af604b4a5f82b8be7b753fa.md) | 441 | `result-track:1af604b4a5f82b8be7b753fa2c9de47ca2828d274453ff7bca6c235a44102d9a` |
| 11 | `def` | [eLpNormLESNormFDerivOfEqInnerConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/elpnormlesnormfderivofeqinnerconst--894caea03aa702d04a99778e.md) | 454 | `declaration-track:894caea03aa702d04a99778e5d30516568fc48bdc7ff2d7b0d45a2c5c3fb61cd` |
| 12 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_of_eq_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/elpnorm-le-elpnorm-fderiv-of-eq-inner--1848fc1a9b72b3ebeed3195a.md) | 468 | `result-track:1848fc1a9b72b3ebeed3195ab0ca5071a0dbe6e3c950513cd4e7f3b100b3c65d` |
| 13 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_of_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/elpnorm-le-elpnorm-fderiv-of-eq--d977436bd7d2fd62cba44633.md) | 602 | `result-track:d977436bd7d2fd62cba44633667e5299853335f7b4ddbae56ce696f18f8a7b57` |
| 14 | `theorem` | [eLpNorm_le_eLpNorm_fderiv_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/elpnorm-le-elpnorm-fderiv-of-le--61dd85e9756f54b3aad3abb6.md) | 658 | `result-track:61dd85e9756f54b3aad3abb6f60e8eecac669fa6f4a04f1c0bc26433b318e017` |
| 15 | `theorem` | [eLpNorm_le_eLpNorm_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/declarations/elpnorm-le-elpnorm-fderiv--849f8a9075611e3c2772e0e7.md) | 716 | `result-track:849f8a9075611e3c2772e0e7a1a06da5962234275129f82e92f2bcbfc3757136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
