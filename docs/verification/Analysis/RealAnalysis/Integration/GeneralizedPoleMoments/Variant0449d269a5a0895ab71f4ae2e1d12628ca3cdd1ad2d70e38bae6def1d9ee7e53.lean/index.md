# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.GeneralizedPoleMoments.Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb0f2f3e68b09d9620a4aa67786fcbcadc7e322d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.JointPhaseScaling` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_moment_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/first-moment-convolution--78b1bf143474805a0bbff701.md) | 36 | `result-track:78b1bf143474805a0bbff7011ccfaeab4a3b620f3628d8377d0f98636c8997af` |
| 2 | `theorem` | [integral_first_moment_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/integral-first-moment-convolution--aecd6359f928c48b77571a76.md) | 58 | `result-track:aecd6359f928c48b77571a76fe6f3d589bda470ec9cc4c895738b0bae33929da` |
| 3 | `theorem` | [weighted_test_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-test-first-moment-integrable--b7a5a7b48bd8e65d879a4f7b.md) | 77 | `result-track:b7a5a7b48bd8e65d879a4f7b26e272ee48a080fe5bf463a784d7424d007baa3e` |
| 4 | `theorem` | [generalized_pole_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/generalized-pole-moment-integrable--50945ad73e4388de3a96bf82.md) | 86 | `result-track:50945ad73e4388de3a96bf82d61038f34b7ee378257f2b7d3ca43509c42f3705` |
| 5 | `theorem` | [generalized_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/generalized-pole-moment-zero--a76325d6ed1870085a4fba3e.md) | 95 | `result-track:a76325d6ed1870085a4fba3e7328a7c8fd33ced746f42c354e430f0ada457b81` |
| 6 | `theorem` | [positive_generalized_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/positive-generalized-pole-moment-zero--f321de404bee3de5a7a13f95.md) | 125 | `result-track:f321de404bee3de5a7a13f9503e1a7725075eac984a1de723e660248170c804b` |
| 7 | `theorem` | [negative_generalized_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/negative-generalized-pole-moment-zero--8d70d532035a5ed53ff3fa84.md) | 132 | `result-track:8d70d532035a5ed53ff3fa849516e3957da74b8c58d28e2344c8f7c6a541a640` |
| 8 | `theorem` | [ordinary_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/ordinary-pole-moment-zero--8a128606a8d71c00afb872a7.md) | 139 | `result-track:8a128606a8d71c00afb872a7e0cf0907846e2d8775df5744d4939321616dfd2f` |
| 9 | `theorem` | [affine_pole_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/affine-pole-moment-integrable--c9cf250e7db6cb38dbbdac2c.md) | 148 | `result-track:c9cf250e7db6cb38dbbdac2c776a4ef5bbd2e86521b703c3e5afb4149d93711f` |
| 10 | `theorem` | [affine_pole_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/affine-pole-moment-zero--b7122bfad2009e47957c48da.md) | 157 | `result-track:b7122bfad2009e47957c48da52a75a9c7827afe2ea26a955993a379ea5e455cc` |
| 11 | `theorem` | [generalized_pole_half_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/generalized-pole-half-interval--624a471c964ce3b822ef430c.md) | 176 | `result-track:624a471c964ce3b822ef430c4bf94184fd9b3c8b10fc4175ad2c9e8b4572cf84` |
| 12 | `theorem` | [positive_generalized_half_moment_abs_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/positive-generalized-half-moment-abs-le-four--c7ab2f2d24bb5ab57d95a8f3.md) | 222 | `result-track:c7ab2f2d24bb5ab57d95a8f39dc82524028b88aac8792d853209afb0a172d9b2` |
| 13 | `theorem` | [source_bump_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/source-bump-nonneg--c7a76a904c06bfd1b0e0d5c0.md) | 264 | `result-track:c7a76a904c06bfd1b0e0d5c0d97e79423ecae83d8d6a8d0d4dc32e628a5d1a21` |
| 14 | `theorem` | [scaled_bump_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/scaled-bump-nonneg--5f0445680c20965ce2d2a2e1.md) | 271 | `result-track:5f0445680c20965ce2d2a2e12bf8b172406734f246f8945c1d1fbbeed5fb8200` |
| 15 | `theorem` | [scaled_bump_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/scaled-bump-continuous--0b93f2620926c7b0b61e765a.md) | 275 | `result-track:0b93f2620926c7b0b61e765a78422eb7f16b4749562614bc5ba69a59c7846f31` |
| 16 | `theorem` | [weighted_bump_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-bump-eq-indicator--0880d14dc87c1921c7a7e0ce.md) | 285 | `result-track:0880d14dc87c1921c7a7e0ce643e07079c585885abd78b8d04cfa223e8fc8dff` |
| 17 | `theorem` | [weighted_bump_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-bump-integrable--383b3280d5cae3f1d7df0f48.md) | 294 | `result-track:383b3280d5cae3f1d7df0f4846efaeebcc03b08039f0fce9d69668e8ce550708` |
| 18 | `theorem` | [weighted_bump_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-bump-integral-pos--37e1f231c9329be5f377ca57.md) | 302 | `result-track:37e1f231c9329be5f377ca57f667b47595940f08c7b4d293b529b8038532ddd0` |
| 19 | `def` | [testFirstPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/testfirstprimitive--c498c635f8a609eefd09b5c9.md) | 313 | `declaration-track:c498c635f8a609eefd09b5c9a914316d85c5efbbd86c0ddb6cfd8c2f6809964b` |
| 20 | `theorem` | [test_first_primitive_has_deriv_at](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/test-first-primitive-has-deriv-at--fba22ec683ae7b31a3c6fa9c.md) | 317 | `result-track:fba22ec683ae7b31a3c6fa9cb1981a621a1b8cf688de599582ff98876685510b` |
| 21 | `theorem` | [weighted_dilation_test_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-dilation-test-first-moment--5ce0a4ab8f27d9ddda096990.md) | 328 | `result-track:5ce0a4ab8f27d9ddda0969903a813578861f69b07c85adccc7e64f5856bf07d2` |
| 22 | `theorem` | [weighted_test_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-test-first-moment--abdb5386f71052e425bc631f.md) | 369 | `result-track:abdb5386f71052e425bc631fa3c7f7296498340c40133c3649a6ee3a7aecdfed` |
| 23 | `theorem` | [weighted_test_first_moment_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/weighted-test-first-moment-ne-zero--c079e70063d242e061251dc8.md) | 378 | `result-track:c079e70063d242e061251dc83dc5273cc29cf2fdc1d98e5c884096b433fa511f` |
| 24 | `theorem` | [scaled_bump_has_compact_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/scaled-bump-has-compact-support--c187e8d2f20928410e416300.md) | 389 | `result-track:c187e8d2f20928410e416300526c6341148cb6eddad4296217929ea5c6eab029` |
| 25 | `theorem` | [compact_correlation_eq_integral_cos_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/compact-correlation-eq-integral-cos-source--49cd5b1c70501a559bbead38.md) | 397 | `result-track:49cd5b1c70501a559bbead388e1d2561f795d7e51e0cc291ecd8e7df3f062018` |
| 26 | `theorem` | [fixed_kernel_zero_eq_bump_correlation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/fixed-kernel-zero-eq-bump-correlation--d42ecb004982a79804e69615.md) | 500 | `result-track:d42ecb004982a79804e69615440f6f7e64e9c1c192546b2f74e845697a1a6e09` |
| 27 | `theorem` | [fixed_kernel_zero_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/GeneralizedPoleMoments/Variant0449d269a5a0895ab71f4ae2e1d12628ca3cdd1ad2d70e38bae6def1d9ee7e53.lean/declarations/fixed-kernel-zero-nonneg--44ac0e09e71ba70722ddd881.md) | 528 | `result-track:44ac0e09e71ba70722ddd88165c7075e7bb5d608e019021330cd2be048b38bec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
