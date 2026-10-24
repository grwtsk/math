# Verification target: GRWTSK.Analysis.Attempt02.Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76f5b40393a24bd89df717d539e14f19bbc061f5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/index.md) · [Full source](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76f5b40393a24bd89df717d539e14f19bbc061f5`.

Source path: `GRWTSK/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean.json)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/compactlaplace--bf436d2a7212cd08f736bceb.md) | 29 | `declaration-track:bf436d2a7212cd08f736bceb4b74bb14397c877b3435234c853e968ad30b5eb9` |
| 2 | `def` | [primitiveTransform](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/primitivetransform--90e380b43cd2dc5efbce555d.md) | 32 | `declaration-track:90e380b43cd2dc5efbce555dd73ec4569454bdd61ec501fcba9d4ad3548f6034` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/normalizedprimitivetransform--297eda45f0207107cbfb85f0.md) | 34 | `declaration-track:297eda45f0207107cbfb85f04a9dddf1acebe70620a0db363f0608dfc1ba127f` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/compactlaplace-integrable--7db58a29000d04d8288a08b5.md) | 37 | `result-track:7db58a29000d04d8288a08b56f326ff095c7fed4b66c3cd249281307fb2ad57e` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/complex-weighted-derivative--0a415bfe582243e4117ca663.md) | 44 | `result-track:0a415bfe582243e4117ca66396ef883d1a7e774bbaaa1955a88053fa9d47afe8` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/actual-complex-pole-filter--5472e5b5067f80126884593f.md) | 73 | `result-track:5472e5b5067f80126884593f607ed4e89fb69845e9f8c0c6e8a8a6c25cc6f7b1` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/primitive-transform-normalization--df07b7dedb68461aeb529427.md) | 100 | `result-track:df07b7dedb68461aeb52942788c7eb92ca3dd92ea9bea1eb429662863d371148` |
| 8 | `theorem` | [boundary_transform_factored](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/boundary-transform-factored--d46676a27e2a1a4c04df6880.md) | 110 | `result-track:d46676a27e2a1a4c04df6880f517f1772a0f6ab41c9bb353ec8172c4e8e3771f` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../mathematics/Analysis/Attempt02/Variant451aca226ebb19fcb3f44875396d44a9ff7cfc03a77e44d55add61b79260d65f.lean/declarations/boundary-transform-factored-unnormalized--0668e0f1c715de3aeb1cd241.md) | 117 | `result-track:0668e0f1c715de3aeb1cd241d841b705f7b13bc4f6b0ef9b74c7f376bb805ed8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
