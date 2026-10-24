# Verification target: GRWTSK.Geometry.DifferentialGeometry.Structures.Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce11e6276b2fef8df2d20ccef3bb1ea26db5827d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce11e6276b2fef8df2d20ccef3bb1ea26db5827d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SmoothRing](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/declarations/smoothring--0d8abee295bdb36afe823c00.md) | 35 | `declaration-track:0d8abee295bdb36afe823c00fe23acac7e823c2d708493e783e539159ad212c5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/declarations/instance--cc5cbbdbf3b15bd34454da9c.md) | 41 | `declaration-track:cc5cbbdbf3b15bd34454da9c3f95100a0637927d6b5d96c8122864dd976d0380` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/declarations/instance--a29a5c4a0d0d9a3de3ac7e27.md) | 48 | `declaration-track:a29a5c4a0d0d9a3de3ac7e2771c09d6f17acc56e7215b90c6e1099662e3f5e0a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/declarations/instance--ab8fe57ad1e5de6004c5c5be.md) | 58 | `declaration-track:ab8fe57ad1e5de6004c5c5be43dd4581928c6d659f903ed834ca6e456f72e2c6` |
| 5 | `theorem` | [topologicalSemiring_of_smooth](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant37c5c955b2de9d7a97e209fe09948e35d9dc2f18a42beaca7c24ea1365f39f47.lean/declarations/topologicalsemiring-of-smooth--6ebd794f4d6554f8e93ada2f.md) | 74 | `result-track:6ebd794f4d6554f8e93ada2fdc613cda60f817a868689ea7686999a9778457a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
