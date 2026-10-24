# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt09.Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d3650ef092f32dacaca684285deb5b477ea270",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d3650ef092f32dacaca684285deb5b477ea270`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/compactlaplace--a2491926ccbc9f70d49c23d0.md) | 22 | `declaration-track:a2491926ccbc9f70d49c23d07420000db32401715221edbab11bc56ccfedc403` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/primitivetransform--3b09b0395fa1a6aeef2fda2e.md) | 25 | `declaration-track:3b09b0395fa1a6aeef2fda2e5103eabddcea56a13ec00c9e8ca391d7865a1852` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/normalizedprimitivetransform--80a2e6a379aa02120877731e.md) | 27 | `declaration-track:80a2e6a379aa02120877731e5075858ca549baac18adde5e428835ff8a7b19bb` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/compactlaplace-integrable--b06b688b3b1f6ed1cab74e7d.md) | 30 | `result-track:b06b688b3b1f6ed1cab74e7d7f1a1786fff80401b0b3f6e4e4a74ff417b1989b` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/complex-weighted-derivative--4d3cdee5452be1974ae7354f.md) | 37 | `result-track:4d3cdee5452be1974ae7354f80d736889970d3827ed503ebaf095af32fbb670f` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/actual-complex-pole-filter--97fae0a923c1da5ff4063e47.md) | 66 | `result-track:97fae0a923c1da5ff4063e47d10de79501387cf5df3393d5229f1f25e89037eb` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/primitive-transform-normalization--cdce84f4d9dc5b759d9150a2.md) | 93 | `result-track:cdce84f4d9dc5b759d9150a269aa30769700486917814d524939ae454527ce7f` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-transform-factored--74bc37540c71fd97af0e27ca.md) | 103 | `result-track:74bc37540c71fd97af0e27ca556ea27a500ebfeaea0c6bb4b82dfc6c715d3fb6` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-transform-factored-unnormalized--4b187de04c2158815a0ab6fe.md) | 110 | `result-track:4b187de04c2158815a0ab6fe9b55ae20f665866b4aa88dcae58bf5326583e729` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/compactlaplace-hasderivat--fa9ee32c63ff11c3d891a6e6.md) | 120 | `result-track:fa9ee32c63ff11c3d891a6e6d2e9e204ca5f2572085f7cdb023c37b04a8abb62` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/compactlaplace-differentiable--88dbd5595f8f704d863550e1.md) | 165 | `result-track:88dbd5595f8f704d863550e11fc92d4f46a0ea34691281ab2ac732c7a5fc7018` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/normalized-primitive-differentiable--4cd54ecf127e4e9e0a9467d6.md) | 169 | `result-track:4cd54ecf127e4e9e0a9467d65c4d72850cafeb5146bef919f64dc17cbace41c5` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/primitive-differentiable--0ea83ebf2eef968779446551.md) | 174 | `result-track:0ea83ebf2eef9687794465512cc0186db0fa6a3dba4ce158d24ce4393c1aad8a` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-differentiable--e1b71643941c915baf732fa2.md) | 182 | `result-track:e1b71643941c915baf732fa2f679083c3e09a0b25a33b1f32eaf3f8f6bc36b53` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/normalized-primitive-half--cb68d97e6afddce3c1122dfc.md) | 191 | `result-track:cb68d97e6afddce3c1122dfcb0876e40d2f2d72773b59263de5db9094f6465df` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/normalized-primitive-half-ne-zero--3b9e2aac92763a76d4c4f3b4.md) | 204 | `result-track:3b9e2aac92763a76d4c4f3b42dfb2402ed074e776f26c5ebda3c5e8e598afa37` |
| 17 | `theorem` | [primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/primitive-analyticat--38d9433c9ac12f7edfa80fe7.md) | 210 | `result-track:38d9433c9ac12f7edfa80fe79c01ec5c0de838205719a30bac70abc11af73618` |
| 18 | `theorem` | [normalized_primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/normalized-primitive-analyticat--51b7cdbcc2d62c50ce33d079.md) | 213 | `result-track:51b7cdbcc2d62c50ce33d079e05b7aef85b7b3b003239dd4c9ff79bd0da03f7e` |
| 19 | `theorem` | [boundary_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-analyticat--7f32b2d78de886b7b17c39a0.md) | 217 | `result-track:7f32b2d78de886b7b17c39a0e9c3a2331e7808470449f9f83b05cacb41ba1bc2` |
| 20 | `def` | [boundaryUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundaryunit--f5ffc14c84f0d29d07889ed8.md) | 221 | `declaration-track:f5ffc14c84f0d29d07889ed869423c2b932455be7ec4e75550d67f1b0490be19` |
| 21 | `theorem` | [boundaryUnit_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundaryunit-differentiable--50b05ae9dcd39e5677cbadeb.md) | 225 | `result-track:50b05ae9dcd39e5677cbadebb1a76c0e89a2f6a947ad037783425850426ca67a` |
| 22 | `theorem` | [boundaryUnit_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundaryunit-at-zero--c321fb7d9d152a9a01ac076c.md) | 231 | `result-track:c321fb7d9d152a9a01ac076cb744fb6b2937219fc524941f6169fc6e61a48cfb` |
| 23 | `theorem` | [boundaryUnit_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundaryunit-ne-zero--141aeb06e5600727bb2dbf2b.md) | 238 | `result-track:141aeb06e5600727bb2dbf2bcdfbdf296f42d7d95eec53ead734fe63d83d7baf` |
| 24 | `theorem` | [boundary_cubic_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-cubic-factor--047e174f1ccab79e91e7a5b1.md) | 245 | `result-track:047e174f1ccab79e91e7a5b1bf8d9a2c7d8a95cdcbd67f05610f44728b25ebcd` |
| 25 | `theorem` | [primitive_transform_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/primitive-transform-half--e49edb5689798a0d61910e82.md) | 251 | `result-track:e49edb5689798a0d61910e82b28964cde9a724252a2bade128bbaa5e98d32724` |
| 26 | `theorem` | [primitive_half_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/primitive-half-re-pos--d99d25c61f79dcaa7452ee93.md) | 262 | `result-track:d99d25c61f79dcaa7452ee9357e09e236d9d4bc17c066ad24e1f4f56159dd937` |
| 27 | `theorem` | [boundary_analytic_order_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-analytic-order-three--00e41fa91601af598c1f74f3.md) | 273 | `result-track:00e41fa91601af598c1f74f3853638416e366bd243b2e2abf7d1dafb384c65ff` |
| 28 | `theorem` | [boundary_analytic_order_nat_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/declarations/boundary-analytic-order-nat-three--aa15307758eedd48d7a31564.md) | 281 | `result-track:aa15307758eedd48d7a31564960c2ad38da714eeccfd0f67b75c8cf6bba62e08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
