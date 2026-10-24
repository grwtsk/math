# Verification target: GRWTSK.Geometry.DifferentialGeometry.Structures.Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14b18f6bb865086711998a52e4ffbaaba31098ad",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14b18f6bb865086711998a52e4ffbaaba31098ad`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean.json)

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
| 1 | `class` | [ContMDiffRing](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/declarations/contmdiffring--870af788aae32395432e186f.md) | 26 | `declaration-track:870af788aae32395432e186fe7bbffbbcd9b6e3ab76e9f4f414e81828ada6c51` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/declarations/instance--64d5dd5cfc942dca2bba9e43.md) | 34 | `declaration-track:64d5dd5cfc942dca2bba9e43c30dbf23f47d3d215b6eac7bf5b3ba16302381c7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/declarations/instance--11eb4af5029251d5d46ebb58.md) | 40 | `declaration-track:11eb4af5029251d5d46ebb58e1f70a791ab643a2b7657a36793b4f40ff5d88cc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/declarations/instance--e258fab21e17a94e20dad7be.md) | 49 | `declaration-track:e258fab21e17a94e20dad7be8578ff30979c1d8e57974451f7bd9fdd37e34c5d` |
| 5 | `theorem` | [topologicalSemiring_of_contMDiffRing](../../../../../mathematics/Geometry/DifferentialGeometry/Structures/Variant9e1e667d9e8080488a30eae45e5f81d944ec1a59303944384aec5a389474d679.lean/declarations/topologicalsemiring-of-contmdiffring--aa774ab652d8b3d72e51971f.md) | 66 | `result-track:aa774ab652d8b3d72e51971f055009f5275a50c69d6564ffcf51035a1f5e05d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
