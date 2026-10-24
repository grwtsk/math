# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt07.Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e118f1b6f7618d1a4e7a40af731c10e57e1fc7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e118f1b6f7618d1a4e7a40af731c10e57e1fc7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean.json)

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
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/compactlaplace--78bd10304d54350eb7054d40.md) | 30 | `declaration-track:78bd10304d54350eb7054d407e11a2c744c9db260e15ed7efeded72d98986dcf` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/primitivetransform--69a9622619f4c2474016fbb6.md) | 33 | `declaration-track:69a9622619f4c2474016fbb6add4e39c9ca19f6a82df96f8718bbc0210c5c963` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/normalizedprimitivetransform--6b8cf9639236d54b046179d0.md) | 35 | `declaration-track:6b8cf9639236d54b046179d077c3d091a7a37512bcf23446dba408e353e76616` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/compactlaplace-integrable--c17945ec53fdc49650919482.md) | 38 | `result-track:c17945ec53fdc496509194828e61480758729cc1712afceccee630af9f2cf623` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/complex-weighted-derivative--253e4d70dc6dca2eef5df289.md) | 45 | `result-track:253e4d70dc6dca2eef5df2891a62b0efb7c4019a81df0867e68a613db780a330` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/actual-complex-pole-filter--89996c93c2bd6224361e5b8d.md) | 74 | `result-track:89996c93c2bd6224361e5b8d5de3968b51a11a3740dbdfe00a4eaea4dd317f79` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/primitive-transform-normalization--01b2c581daebeda31d30bdf4.md) | 101 | `result-track:01b2c581daebeda31d30bdf478d661502d2586addc857f788fac29d6e3fdb445` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-transform-factored--d103826447fb4a0c68e4cb71.md) | 111 | `result-track:d103826447fb4a0c68e4cb719705c1ff85215352af562501ea938a5616f8dc66` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-transform-factored-unnormalized--87b1ac7833a1f45be8203d44.md) | 118 | `result-track:87b1ac7833a1f45be8203d44166ee6dd9ee04a4f097fe5e1fda8da13532cc4ed` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/compactlaplace-hasderivat--303830d092a0dd2f6744a90b.md) | 128 | `result-track:303830d092a0dd2f6744a90b7ee828d99199b99af191b2f6b7cc6d23f6819be9` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/compactlaplace-differentiable--fa696f8461f5b9ce9a14f81c.md) | 173 | `result-track:fa696f8461f5b9ce9a14f81c4520c69a9f7275a2c321f480d8195a411b6b0100` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/normalized-primitive-differentiable--bfc2935af8cd3881758c44a5.md) | 177 | `result-track:bfc2935af8cd3881758c44a543e6c906d3372f34dfbbc6e73aed2e4e3afbd6ce` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/primitive-differentiable--987fba2f7b72079ac14e3895.md) | 182 | `result-track:987fba2f7b72079ac14e389527dcaab6376a4c0ae1677d932c194a3fae50b80e` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-differentiable--40f6f631fa7a17ca79e0bbef.md) | 190 | `result-track:40f6f631fa7a17ca79e0bbef4f2d54e092cd5ce97f442ce6023ff7e94a39a0d2` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/normalized-primitive-half--f8a97c00862b64b759af9b64.md) | 199 | `result-track:f8a97c00862b64b759af9b64df2d81eeb6fed5492e05bb4df653080b9ea254b4` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/normalized-primitive-half-ne-zero--097f3d165356868cdace2c9e.md) | 212 | `result-track:097f3d165356868cdace2c9e78aa28ff89c67ad53a713d0fb6db6abcac7a5d97` |
| 17 | `theorem` | [primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/primitive-analyticat--6ceac7a580a35dc2de5b5122.md) | 218 | `result-track:6ceac7a580a35dc2de5b51226f50d22634992384238bb8e8060f0305059ed7ab` |
| 18 | `theorem` | [normalized_primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/normalized-primitive-analyticat--b497f9b14c91c6c6a9da1e60.md) | 221 | `result-track:b497f9b14c91c6c6a9da1e60d06dd710af0e48df2a522ce654ea49d4e21aae9d` |
| 19 | `theorem` | [boundary_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-analyticat--336fde1b492c6366fdce8d6b.md) | 225 | `result-track:336fde1b492c6366fdce8d6baf328b6549604b5303fafa78146f975ce717eecd` |
| 20 | `def` | [boundaryUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundaryunit--a52fe15170be0ad478339bcb.md) | 229 | `declaration-track:a52fe15170be0ad478339bcbda27275e9ce008b1053e37fa5aa192dd7955066b` |
| 21 | `theorem` | [boundaryUnit_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundaryunit-differentiable--7a7f3331d97c3753c4c00b43.md) | 233 | `result-track:7a7f3331d97c3753c4c00b43905140efcfac8a07ae2243cf24a3cefe9d84fe1e` |
| 22 | `theorem` | [boundaryUnit_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundaryunit-at-zero--1811590838f1c30372b3c33e.md) | 239 | `result-track:1811590838f1c30372b3c33e5938cb2151be9531bb5c8f5080ac1300e6ccb52b` |
| 23 | `theorem` | [boundaryUnit_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundaryunit-ne-zero--4bac0e3ed4eb5b044a37173a.md) | 246 | `result-track:4bac0e3ed4eb5b044a37173a920e06ebfb476c38f47351a67dc8e68d75ae1fea` |
| 24 | `theorem` | [boundary_cubic_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-cubic-factor--d34ba94a80212cc1300b1ed8.md) | 253 | `result-track:d34ba94a80212cc1300b1ed8b23102546d0b64bbdae99efda8bf98b75c88cfd1` |
| 25 | `theorem` | [boundary_analytic_order_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-analytic-order-three--a3629862eb18dd9ed9a771f5.md) | 260 | `result-track:a3629862eb18dd9ed9a771f5d6a05448df3a37a28a352dfc519683ff9c2dbdb3` |
| 26 | `theorem` | [boundary_analytic_order_nat_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant585f444eaed7ecafa6237bbadf3fb4de5586b21357f42c1fb3ca0fc8aae76871.lean/declarations/boundary-analytic-order-nat-three--ae6f74486e689393d88e549c.md) | 268 | `result-track:ae6f74486e689393d88e549c8e00bdf053e5f0490f29aafa878e7df1ce275761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
