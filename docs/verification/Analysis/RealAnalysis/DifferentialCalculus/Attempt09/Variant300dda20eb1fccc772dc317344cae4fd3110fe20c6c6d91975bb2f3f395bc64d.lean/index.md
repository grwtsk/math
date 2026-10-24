# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt09.Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de92a166ab2203cd2976d00361b1afbed3818e8e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de92a166ab2203cd2976d00361b1afbed3818e8e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/compactlaplace--ccefc13e8457872e11d2a290.md) | 30 | `declaration-track:ccefc13e8457872e11d2a290aaf74c3eb1648434cf32146ab7c8e5b600bc58f4` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/primitivetransform--af030fbce33045670cf513c8.md) | 33 | `declaration-track:af030fbce33045670cf513c89f70a27717d3ee74575d9fd889045df9cd57aaa6` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/normalizedprimitivetransform--017b1eec0668d66a68fff4f6.md) | 35 | `declaration-track:017b1eec0668d66a68fff4f6f6d4136b056fe8c56fa5f643e9560c5d29caeba3` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/compactlaplace-integrable--2b9d691079bfdcc22c7ab6a1.md) | 38 | `result-track:2b9d691079bfdcc22c7ab6a1c72388a0f8197d8af90a27a30c298ccd6d2cb3ea` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/complex-weighted-derivative--eb2ade3664aac1988e01e4a4.md) | 45 | `result-track:eb2ade3664aac1988e01e4a426d5b80086813e68924c74873fe6342dc7d79a93` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/actual-complex-pole-filter--093311d4824155ce3dd9ffae.md) | 74 | `result-track:093311d4824155ce3dd9ffaee3c4453c968acdbdc78b67dca5afb6bfff9a6590` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/primitive-transform-normalization--502b7b4a01b3c90e8c10d162.md) | 101 | `result-track:502b7b4a01b3c90e8c10d1621d3582ed513ea723a3f61f52e4ec5f3c543c30f7` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-transform-factored--0ad0dd772fc0f792841546fa.md) | 111 | `result-track:0ad0dd772fc0f792841546fab2ab4ed3e6b72770cd1a00dad19bebe3addd4af2` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-transform-factored-unnormalized--522fc5f31e0db83357ebdd71.md) | 118 | `result-track:522fc5f31e0db83357ebdd7161e7554297c1d6f66220e4d1c6db20b99c4052df` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/compactlaplace-hasderivat--76b13612724b829f51f1710a.md) | 128 | `result-track:76b13612724b829f51f1710a111c5d0fa344d05f078654a77c35fe0039570f64` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/compactlaplace-differentiable--86c3b5226684abd05feb3b2a.md) | 173 | `result-track:86c3b5226684abd05feb3b2a4028350c27a1e79b394c7fec4495ab360b4d1477` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/normalized-primitive-differentiable--acf205f856180bda48f86241.md) | 177 | `result-track:acf205f856180bda48f86241fb99ae6681507f9220f04f1f93fda4498c319740` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/primitive-differentiable--8055318b0ef130c17f05ecd2.md) | 182 | `result-track:8055318b0ef130c17f05ecd2439cc684efa45e0ab26a37ab15dec96d61fe4f3a` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-differentiable--3ec434d3e92d094298b72aa7.md) | 190 | `result-track:3ec434d3e92d094298b72aa7d8cb351d01c828b1cafd3a642ad80209723e3079` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/normalized-primitive-half--c821dc6be94e668e0c968fb2.md) | 199 | `result-track:c821dc6be94e668e0c968fb276bbcfd5279083635cbc2a987e36de2f892f2285` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/normalized-primitive-half-ne-zero--59656c313398ab25c0dccb44.md) | 212 | `result-track:59656c313398ab25c0dccb440fc8682d4bf03910649dabfa1c2a0d503a07bb9f` |
| 17 | `theorem` | [primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/primitive-analyticat--0cd258eb16acc64ebcea04b1.md) | 218 | `result-track:0cd258eb16acc64ebcea04b17a42659e9079bb94492f7c8df082156905e073ae` |
| 18 | `theorem` | [normalized_primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/normalized-primitive-analyticat--6a8cdec49f1679d222b8f794.md) | 221 | `result-track:6a8cdec49f1679d222b8f794add847101f41abf783b652fed6bb1fbed3cea0e6` |
| 19 | `theorem` | [boundary_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-analyticat--8bcdc6f2742bdc17f5b3871d.md) | 225 | `result-track:8bcdc6f2742bdc17f5b3871d0837f978b51ecdea526b9a1f94fa1c038c177a8f` |
| 20 | `def` | [boundaryUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundaryunit--b6eac7413efbfab8ff4f3be5.md) | 229 | `declaration-track:b6eac7413efbfab8ff4f3be57d22484d1f09ea94292dac050a28477d12e771e6` |
| 21 | `theorem` | [boundaryUnit_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundaryunit-differentiable--ef9cf5dbf3bdbe021f40f845.md) | 233 | `result-track:ef9cf5dbf3bdbe021f40f8456064a0082eef8482f079d786dd6540b2bcdcdfa5` |
| 22 | `theorem` | [boundaryUnit_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundaryunit-at-zero--3dff4436991aabdcff55458f.md) | 239 | `result-track:3dff4436991aabdcff55458f0e45e9d02e9f04a1541620a0914f436f1cbc779a` |
| 23 | `theorem` | [boundaryUnit_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundaryunit-ne-zero--16e9927980fee8b881848c4b.md) | 246 | `result-track:16e9927980fee8b881848c4bc10053a19ae64405f8b4839d5e95ead39900240b` |
| 24 | `theorem` | [boundary_cubic_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-cubic-factor--0c46af4cc38903ade1f177dd.md) | 253 | `result-track:0c46af4cc38903ade1f177dd1c34225a710a877db358005b301554777510d9aa` |
| 25 | `theorem` | [primitive_transform_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/primitive-transform-half--1c045115ae2fe5a62dd8fbec.md) | 259 | `result-track:1c045115ae2fe5a62dd8fbec00df48eba5fcda9e13b24de373c13ebbdb2cdcc4` |
| 26 | `theorem` | [primitive_half_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/primitive-half-re-pos--a2a0bf5568e34588737e10a1.md) | 270 | `result-track:a2a0bf5568e34588737e10a1cced4662142fef7a5bef49b46cb50f3e835ea5ca` |
| 27 | `theorem` | [boundary_analytic_order_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-analytic-order-three--fc38db7757a5db0e9f3c27a4.md) | 281 | `result-track:fc38db7757a5db0e9f3c27a484ddb3a5adf9b8c8925787c90629dcd29f3ea0a8` |
| 28 | `theorem` | [boundary_analytic_order_nat_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant300dda20eb1fccc772dc317344cae4fd3110fe20c6c6d91975bb2f3f395bc64d.lean/declarations/boundary-analytic-order-nat-three--af7048e0ddc72961a0c5cd66.md) | 289 | `result-track:af7048e0ddc72961a0c5cd66afc40087cc781c49f893a9d8de5199e4b7e396b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
