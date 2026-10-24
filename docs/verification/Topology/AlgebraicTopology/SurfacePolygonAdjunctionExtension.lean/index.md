# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionExtension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbafab40d2b7aa8355af9759b8538725590e0bc7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbafab40d2b7aa8355af9759b8538725590e0bc7`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionCompatibility`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionCompatibility.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conePullback](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/declarations/conepullback--1168bc5c867d541a0049b18a.md) | 37 | `declaration-track:1168bc5c867d541a0049b18a2c033525624bbc20f7c1e8b15841899ec29e30e1` |
| 2 | `theorem` | [conePullback_respects_outerStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/declarations/conepullback-respects-outerstep--d86440d1290ff62636dcfea4.md) | 43 | `result-track:d86440d1290ff62636dcfea4be4d4e58947630f1c37bb756d614ff5f83122d2a` |
| 3 | `theorem` | [conePullback_respects_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/declarations/conepullback-respects-outerconnected--5c3158a0a11f970cc36ef1cd.md) | 83 | `result-track:5c3158a0a11f970cc36ef1cd7225f917a53188a4ef48908f737fff50c63ffe5a` |
| 4 | `theorem` | [disk_eq_of_characteristic_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionExtension.lean/declarations/disk-eq-of-characteristic-eq--36faaafde29048d81843d49c.md) | 100 | `result-track:36faaafde29048d81843d49cf4aea7242de69708d93861bb8d11804c0e6e882b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
