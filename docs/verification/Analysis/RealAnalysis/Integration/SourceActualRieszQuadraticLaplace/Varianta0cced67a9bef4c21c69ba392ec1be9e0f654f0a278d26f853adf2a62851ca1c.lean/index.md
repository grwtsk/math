# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszQuadraticLaplace.Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea6aa9a7f976a7cb4abc908264f02f4909c608c",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea6aa9a7f976a7cb4abc908264f02f4909c608c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredInitialLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/profile--a0997100ff184df906c4a606.md) | 29 | `declaration-track:a0997100ff184df906c4a606bed912156878d5b4220f41575bea54395c80b12a` |
| 2 | `def` | [actualRieszAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/actualrieszabsolutecumulative--4fba7aac89176eef72475b53.md) | 34 | `declaration-track:4fba7aac89176eef72475b537d91872931704cd2d026f5e9079015d2a9c66553` |
| 3 | `def` | [actualRieszQuadraticLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/actualrieszquadraticlaplacebudget--d7bf9707c876fcb59d696f06.md) | 37 | `declaration-track:d7bf9707c876fcb59d696f06aadb0e33772aea1228b01dce9b5bc2bb9d891b0b` |
| 4 | `theorem` | [profile_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/profile-continuouson--a158971bb8f2f8bac1aecc1f.md) | 40 | `result-track:a158971bb8f2f8bac1aecc1fa67b5f17e35eb74804bc331add5bc9014ed626f5` |
| 5 | `theorem` | [profile_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/profile-intervalintegrable--c800b4c6340bcc8b77964b4c.md) | 45 | `result-track:c800b4c6340bcc8b77964b4cb8a0e8ad0bd507b461b0d2b5b31240264a3f9745` |
| 6 | `theorem` | [area_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/area-nonneg--eb968e7070e6dac7adf55779.md) | 50 | `result-track:eb968e7070e6dac7adf5577986c5c78d82635fa4c7d37831d0c66984c4148cdc` |
| 7 | `theorem` | [area_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/area-ac--1d84533fd53450ea768f8499.md) | 53 | `result-track:1d84533fd53450ea768f8499539ac5345b34f3512132d81fb8ed6af27a44acc2` |
| 8 | `theorem` | [area_ae_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/area-ae-deriv--96a54d5bae6df4d1eaf41d24.md) | 58 | `result-track:96a54d5bae6df4d1eaf41d241a49626950879341512a8b5f9751c33b0b6e1abf` |
| 9 | `theorem` | [area_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/area-zero--6885e7080ac8adf06d71a956.md) | 63 | `result-track:6885e7080ac8adf06d71a956707e11b7577668147ee2d3b1bda0c4ac54e77ea9` |
| 10 | `theorem` | [area_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/area-weight-intervalintegrable--6e650f6c3a2457364df1ae58.md) | 66 | `result-track:6e650f6c3a2457364df1ae58f4c9f2b799440297cd5a84c41540c07c2fc6bc62` |
| 11 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/absolute-weight-intervalintegrable--fd78140fa4e78dff5a9abd6a.md) | 71 | `result-track:fd78140fa4e78dff5a9abd6aab9cfde6c85165a42da0dd8eea37cb42cf4617cc` |
| 12 | `theorem` | [finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/finite-abel--a30204a49b1d3c282469897c.md) | 75 | `result-track:a30204a49b1d3c282469897c83fd61e8bd15f6245b7711c59ac8488278dbdcda` |
| 13 | `theorem` | [actualRieszAbsoluteCumulative_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/actualrieszabsolutecumulative-future-envelope--b1e3a247e2e9703130dc5de7.md) | 102 | `result-track:b1e3a247e2e9703130dc5de7b664560ff13e49fc85b8b1390b395edbcc96b593` |
| 14 | `theorem` | [polynomial_exp_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/polynomial-exp-integral-bound--4ed2e25afd6a7f0108ebd220.md) | 119 | `result-track:4ed2e25afd6a7f0108ebd220c70047cdc15a246d6e1e0ea706c68f2d5725d6f0` |
| 15 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/cumulative-weight-norm-bound--f13bcf245412e434b61f5c3c.md) | 150 | `result-track:f13bcf245412e434b61f5c3c0e20ab7ae28f1fbfd23d4446e07bcd09a51fa417` |
| 16 | `theorem` | [cumulative_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/cumulative-weight-integrable--14a706b74424a1e6d42c38db.md) | 167 | `result-track:14a706b74424a1e6d42c38db04d691b15c6c4c20db6f0a16b87ec2cb9cc60891` |
| 17 | `theorem` | [cumulative_weight_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/cumulative-weight-tendsto-zero--806c4810b272b9a8ccdcb0dc.md) | 181 | `result-track:806c4810b272b9a8ccdcb0dc6bf6296dc0365e4923f0b335bd511eb3f002f15d` |
| 18 | `theorem` | [weighted_norm_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/weighted-norm-finite-tendsto--be4069dc02cb5450c5ffd769.md) | 200 | `result-track:be4069dc02cb5450c5ffd7697f466aa077b6a4ac3b6413fe0fcac9600a01213b` |
| 19 | `theorem` | [profile_real_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/profile-real-weight-integrable--3951b8421a3c48204c9aaab2.md) | 214 | `result-track:3951b8421a3c48204c9aaab25a875b6bc5f42f939717088cba06d6f6591c9e1c` |
| 20 | `theorem` | [absolute_weight_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/absolute-weight-integral-bound--53c9e3cdbc413cf5ab4064a8.md) | 228 | `result-track:53c9e3cdbc413cf5ab4064a85b77f08a1862c9b72cab8793ffc898a2c49e0ed9` |
| 21 | `theorem` | [profile_continuousOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/profile-continuouson-positive--594cd245f7c43b9aa0812f76.md) | 259 | `result-track:594cd245f7c43b9aa0812f76e8a90a4a72a33ed9de7c5dd252992fc69803b246` |
| 22 | `theorem` | [kernel_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/kernel-norm--0cc50f0c1e43304bf1fbedde.md) | 264 | `result-track:0cc50f0c1e43304bf1fbeddeda9df361fe20568a5e796ed2a3bd0bc2b1a3179a` |
| 23 | `theorem` | [actualFixedCenteredRieszLaplace_positive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/actualfixedcenteredrieszlaplace-positive-integrable--fe3315ba5d8bba18e7015e8d.md) | 271 | `result-track:fe3315ba5d8bba18e7015e8def447e8b06e684fcfcedb00aadfe7c2b953bb902` |
| 24 | `theorem` | [actualFixedCenteredRieszLaplace_absolute_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/actualfixedcenteredrieszlaplace-absolute-budget--60e5bad9a500f26d4991e9cc.md) | 290 | `result-track:60e5bad9a500f26d4991e9cce7c4b8ae2998f5c4cadffec529c1b475140d3807` |
| 25 | `theorem` | [actualFixedCenteredRieszLaplace_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Varianta0cced67a9bef4c21c69ba392ec1be9e0f654f0a278d26f853adf2a62851ca1c.lean/declarations/actualfixedcenteredrieszlaplace-positive-norm-le--06a331af1b30bef8b687aa25.md) | 302 | `result-track:06a331af1b30bef8b687aa253ad34b88717926a294f68d15654534c9f5d44493` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
