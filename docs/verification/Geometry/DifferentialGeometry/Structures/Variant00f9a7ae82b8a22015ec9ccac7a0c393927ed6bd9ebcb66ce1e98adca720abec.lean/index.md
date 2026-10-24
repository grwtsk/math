# Verification target: GRWTSK.Geometry.DifferentialGeometry.Structures.Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43d7dce3a01d4b2ead5228d685b10029994ceaee",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43d7dce3a01d4b2ead5228d685b10029994ceaee`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SmoothRing](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/declarations/smoothring--aa690740840a001f00d54435.md) | 27 | `declaration-track:aa690740840a001f00d54435265ed4ce1ac3b18585a9e7bcb5ca21e6fda5df82` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/declarations/instance--15f668f22b24a52bc0a54ec1.md) | 33 | `declaration-track:15f668f22b24a52bc0a54ec191039bb5214faebd47e60fd8b9f9267b7ce94c61` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/declarations/instance--aac00a733eac422d53610b85.md) | 40 | `declaration-track:aac00a733eac422d53610b85c804552d06bab9df0b914b2e97671f17fc2058cf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/declarations/instance--4c384799a3c48cdfa8c5687a.md) | 50 | `declaration-track:4c384799a3c48cdfa8c5687a6a5f1dd46892e1f2e89ab3a96e1b78e70d306431` |
| 5 | `theorem` | [topologicalSemiring_of_smooth](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant00f9a7ae82b8a22015ec9ccac7a0c393927ed6bd9ebcb66ce1e98adca720abec.lean/declarations/topologicalsemiring-of-smooth--35f3003d6396e25b8ea4f6c9.md) | 66 | `result-track:35f3003d6396e25b8ea4f6c9d1128ac8d698591cba6b372f2f0fa1fe8f9761ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
