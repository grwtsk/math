# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d4ad7ca3f22611e9fbd96976cc76de52b77e80",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d4ad7ca3f22611e9fbd96976cc76de52b77e80`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_angle_eq_iff_perimeter_projection_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/declarations/source-angle-eq-iff-perimeter-projection-eq--e79cbd87a510a4cb252a3813.md) | 29 | `result-track:e79cbd87a510a4cb252a3813be433bf4ad390a5e251d82cfe0d53a0ff584458b` |
| 2 | `theorem` | [source_angle_eq_iff_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/declarations/source-angle-eq-iff-connected--15c9d7453ad0a342e10f0726.md) | 38 | `result-track:15c9d7453ad0a342e10f07266af6c94428a26ba89e54da51654be87a376243a9` |
| 3 | `theorem` | [source_angle_ne_iff_projection_ne](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/declarations/source-angle-ne-iff-projection-ne--16014912ba0d33f0d599799f.md) | 51 | `result-track:16014912ba0d33f0d599799f14ce5d736ca6c3d3c43d7691299d3c0216cfe751` |
| 4 | `theorem` | [source_angle_ne_iff_not_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/declarations/source-angle-ne-iff-not-connected--70c621d0b887fe7192c3854f.md) | 59 | `result-track:70c621d0b887fe7192c3854f0d8dfb24eb27729a29a93adbb3fc3ce99cae446e` |
| 5 | `theorem` | [perimeter_angle_eq_iff](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean/declarations/perimeter-angle-eq-iff--8f61dd041bdb1a5f81c7d072.md) | 66 | `result-track:8f61dd041bdb1a5f81c7d0729bdef73ef64e8ca77ff530797ce80b95fd575bff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
