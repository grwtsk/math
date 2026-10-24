# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt08.Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89ad44b4380bfd986362b2751ad9826db6d410f7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89ad44b4380bfd986362b2751ad9826db6d410f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean.json)

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
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/compactlaplace--b46a7993897423a978b0c4be.md) | 30 | `declaration-track:b46a7993897423a978b0c4bef959f4b1c694a755eee5e2eb03337a3a8f00ca51` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/primitivetransform--a2e1885252a91ab19a37b735.md) | 33 | `declaration-track:a2e1885252a91ab19a37b73579de6f6bdbb6df10513cf0548a538540e497b222` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/normalizedprimitivetransform--d0e1a7581c9ee30e357c4bc2.md) | 35 | `declaration-track:d0e1a7581c9ee30e357c4bc2b52dd6d1cb7b6bb1ce88fa19638a0e24c4079c3d` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/compactlaplace-integrable--305009ce4af1275bd6073f80.md) | 38 | `result-track:305009ce4af1275bd6073f80d853083e028519b2933d4d7d1857da5dd7357d6a` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/complex-weighted-derivative--76bdd62b54c8911739b61c62.md) | 45 | `result-track:76bdd62b54c8911739b61c623c21d79c0fdebb8ddbfb06d569ae13b1c1864df5` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/actual-complex-pole-filter--8dfb551f5832223147651c7b.md) | 74 | `result-track:8dfb551f5832223147651c7b81fe367b09f7d965593efce22ac1976a5b9a9c77` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/primitive-transform-normalization--42ca51f635e189c7097d8dbd.md) | 101 | `result-track:42ca51f635e189c7097d8dbde0ff69e83a5f2f64e1b01087fa9e74edb4a43e95` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-transform-factored--1ca6f2b6e8a539b1b46fd6a3.md) | 111 | `result-track:1ca6f2b6e8a539b1b46fd6a3635e028811680cb358b1af0c313b089df9540f7d` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-transform-factored-unnormalized--7c3938172ef97922c81747f2.md) | 118 | `result-track:7c3938172ef97922c81747f2be9760be65721aafa7837f6854d0711dce168dee` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/compactlaplace-hasderivat--0751d04790e96d9713ed8cd9.md) | 128 | `result-track:0751d04790e96d9713ed8cd973647da250eea5525cbfce9e44b1ad37069501d5` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/compactlaplace-differentiable--d11231b4bfd5147fed5bd381.md) | 173 | `result-track:d11231b4bfd5147fed5bd3810a5dce6901565239cb28731373e5db8e76548705` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/normalized-primitive-differentiable--547ffa23f140a66818ab9f9d.md) | 177 | `result-track:547ffa23f140a66818ab9f9d7b206208bbd263b96aadd6ead2edaa539bc86643` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/primitive-differentiable--323e7f129bb31709fca35955.md) | 182 | `result-track:323e7f129bb31709fca35955487c8ae44244e364d5b589c44fb4cc540abc405c` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-differentiable--00739cefa58c45144cae0d9a.md) | 190 | `result-track:00739cefa58c45144cae0d9abe6f0b941df40681c8550a81c2641dff715f24da` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/normalized-primitive-half--e62ecff11809d87a857e857e.md) | 199 | `result-track:e62ecff11809d87a857e857e727671485427311c6561ddc9d07be7e3c662b4ae` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/normalized-primitive-half-ne-zero--d9d21949faea18d06b514ab5.md) | 212 | `result-track:d9d21949faea18d06b514ab53d04aea0d6316a5e6c51e5923c983805949c34e4` |
| 17 | `theorem` | [primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/primitive-analyticat--0df6ea667d21d70454a52224.md) | 218 | `result-track:0df6ea667d21d70454a522240f5a3be4cdca21a5451f338ae4580a79148a3766` |
| 18 | `theorem` | [normalized_primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/normalized-primitive-analyticat--3835840c66e03f5e07e7242f.md) | 221 | `result-track:3835840c66e03f5e07e7242f11e8c79fd248c1d09eb22c3aab2d73dd7d184159` |
| 19 | `theorem` | [boundary_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-analyticat--4f4afa0a3c58ad906d677666.md) | 225 | `result-track:4f4afa0a3c58ad906d67766694ceb8c947a1b1524643cc4883f6b23b40e8ad13` |
| 20 | `def` | [boundaryUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundaryunit--6a8873b2df7c85bdc8477c68.md) | 229 | `declaration-track:6a8873b2df7c85bdc8477c68570962a40e5e16fec8f08c54ce6860ba300ff476` |
| 21 | `theorem` | [boundaryUnit_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundaryunit-differentiable--d8d2d615cffbcfe04ff8228a.md) | 233 | `result-track:d8d2d615cffbcfe04ff8228a32f8247b9387e6101059937d09f6c415c8d1727d` |
| 22 | `theorem` | [boundaryUnit_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundaryunit-at-zero--e27bbb97e6576f1ff25164d0.md) | 239 | `result-track:e27bbb97e6576f1ff25164d00e13c3fea266450aaa677df55f0cf88fefafbecd` |
| 23 | `theorem` | [boundaryUnit_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundaryunit-ne-zero--ee71d66b9f98871ba3abc625.md) | 246 | `result-track:ee71d66b9f98871ba3abc625a596e8e0e26df090896e97e4a4006bea47b9ddd6` |
| 24 | `theorem` | [boundary_cubic_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-cubic-factor--60d1373fdf6de65ea3782595.md) | 253 | `result-track:60d1373fdf6de65ea3782595b83c62dde43948c69984042557a6f87fd1373c52` |
| 25 | `theorem` | [boundary_analytic_order_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-analytic-order-three--2102b9f87b90df4b2e6c0567.md) | 260 | `result-track:2102b9f87b90df4b2e6c05679b819f6c0e9c1ec8e52afd8720201a12109c6fc4` |
| 26 | `theorem` | [boundary_analytic_order_nat_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt08/Variant926f4b89c4cde5350cbc136a49b6e29cb3db4229b6076afcc1f3de4388806f78.lean/declarations/boundary-analytic-order-nat-three--bd44fbde8232eb9af8ef2673.md) | 268 | `result-track:bd44fbde8232eb9af8ef267359e404a4d794140274855ccd6db8fd70903830ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
