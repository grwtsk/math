# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d52c72e9bf25578eaf9aa3c66f2a236185aad6d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d52c72e9bf25578eaf9aa3c66f2a236185aad6d`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionExtension`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskRepresentative](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/diskrepresentative--b020f5a7cd7bab1af7ab867d.md) | 39 | `declaration-track:b020f5a7cd7bab1af7ab867d561c14fc01c2b77fdea1bb0aec33577a02285555` |
| 2 | `theorem` | [diskRepresentative_spec](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/diskrepresentative-spec--d22d0be4a13a2b8758d71490.md) | 43 | `result-track:d22d0be4a13a2b8758d7149058f5a75932ab69ad90dd4b74b36a4851a95a6c38` |
| 3 | `def` | [extendCompatibleDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/extendcompatibledisk--300de08ec3f0e8c31b6e68aa.md) | 50 | `declaration-track:300de08ec3f0e8c31b6e68aac2864f2f873cd85579d32ca2da4b91f1b2321257` |
| 4 | `theorem` | [extendCompatibleDisk_disk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/extendcompatibledisk-disk--342a62577d257cc2d1c3d796.md) | 58 | `result-track:342a62577d257cc2d1c3d796df99015530f5a12e87490d8b59c6c06d8fa03ea0` |
| 5 | `theorem` | [extendCompatibleDisk_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/extendcompatibledisk-continuous--3eb3f3152b9b1f4068ff0a28.md) | 71 | `result-track:3eb3f3152b9b1f4068ff0a28d93da72a950c3e8fff89efd52458023d8ce59b28` |
| 6 | `theorem` | [extendCompatibleDisk_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/extendcompatibledisk-boundary--89dedb4e75d57804087b6e4c.md) | 84 | `result-track:89dedb4e75d57804087b6e4cdd4c36c7ea2d28209fcfd62ba60e9165415e6813` |
| 7 | `theorem` | [existsUnique_continuous_compatible_extension](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/declarations/existsunique-continuous-compatible-extension--46ced5a975de3842e6ebf34d.md) | 103 | `result-track:46ced5a975de3842e6ebf34d4b90247d19a092bd2a98405879077e1732be767a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
