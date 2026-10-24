# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb834637b7fef1ec43308f710f2f52cd250019c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb834637b7fef1ec43308f710f2f52cd250019c`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompatibleDiskBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/declarations/compatiblediskboundary--8bc76f7559769647f1579132.md) | 34 | `declaration-track:8bc76f7559769647f15791323bb61079cd905873f0c3ac5f4f6af659919b1c9e` |
| 2 | `theorem` | [compatible_of_filledMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/declarations/compatible-of-filledmap--9bf5b9b2c642863f7e4a4914.md) | 45 | `result-track:9bf5b9b2c642863f7e4a491469940ecebdc9c9bca987228dace599871427daef` |
| 3 | `theorem` | [continuous_disk_restriction](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/declarations/continuous-disk-restriction--cddd3a712f541a4087eedc7d.md) | 54 | `result-track:cddd3a712f541a4087eedc7d079f045e1b8507574f4d5eef085339d546b42ae0` |
| 4 | `theorem` | [continuous_boundary_restriction](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/declarations/continuous-boundary-restriction--9f6e9978decc2b394f1c9446.md) | 63 | `result-track:9f6e9978decc2b394f1c944669471c2c8528cb9b89cd2329cdde8ceb650c777d` |
| 5 | `theorem` | [filledMap_ext_of_disk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/declarations/filledmap-ext-of-disk--40ca3a11065a476f5d44b501.md) | 72 | `result-track:40ca3a11065a476f5d44b501467dd5e87a19a00eedd2d4d423da4d2983a4bd33` |
| 6 | `theorem` | [filledMap_continuous_iff_disk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/declarations/filledmap-continuous-iff-disk--2f89cfd7914b8c19f916cc74.md) | 82 | `result-track:2f89cfd7914b8c19f916cc74b1b6a4fb2655cf3b00ad692a1c6d808586d3d516` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
