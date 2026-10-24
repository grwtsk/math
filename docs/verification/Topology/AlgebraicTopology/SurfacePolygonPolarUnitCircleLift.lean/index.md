# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "393233fd959747dc630c2e88814e243869d23cad",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `393233fd959747dc630c2e88814e243869d23cad`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [realAnglePolarDisk_eq_of_unitAddCircle_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/declarations/realanglepolardisk-eq-of-unitaddcircle-eq--f32200e1acd83f046b537962.md) | 34 | `result-track:f32200e1acd83f046b537962533897d03122381df87cb8ec00bc3ce2d81ae951` |
| 2 | `def` | [unitCirclePolarDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/declarations/unitcirclepolardisk--43f1fedca65e2102ae48dced.md) | 49 | `declaration-track:43f1fedca65e2102ae48dceda29bcb925d9c8ce97a3b1121daa89c374c8cfa19` |
| 3 | `theorem` | [unitCirclePolarDisk_coe](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/declarations/unitcirclepolardisk-coe--2dc975810d94ee5d899cbb8e.md) | 59 | `result-track:2dc975810d94ee5d899cbb8eab825b13ebb3522c886ac1101b285f893ca51157` |
| 4 | `theorem` | [unitCirclePolarDisk_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/declarations/unitcirclepolardisk-zero--507bd3dbda115c3073711af4.md) | 65 | `result-track:507bd3dbda115c3073711af4b4d1fb289380031254491280b6ebcc24412bc4af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
