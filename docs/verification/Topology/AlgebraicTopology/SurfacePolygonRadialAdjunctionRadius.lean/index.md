# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionRadius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad14f52eab1a2c5ab977c927377423134a7b7acc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad14f52eab1a2c5ab977c927377423134a7b7acc`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionSource`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euclidean_radius_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/declarations/euclidean-radius-source--9c6c60c3618cc40c6fab3cfc.md) | 29 | `result-track:9c6c60c3618cc40c6fab3cfc1c3ec56476c88de012b22b65ba02f421434ebf4e` |
| 2 | `theorem` | [radius_agrees_with_filled_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/declarations/radius-agrees-with-filled-source--38f51e60f6fec209e986c85a.md) | 39 | `result-track:38f51e60f6fec209e986c85a1203401646fba9875b9a4886732a0193dfafe588` |
| 3 | `theorem` | [apex_euclidean_radius_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/declarations/apex-euclidean-radius-zero--48feaf5f2f3032305555b9a8.md) | 49 | `result-track:48feaf5f2f3032305555b9a8f02038690c348b3a9add45c6097486b90f03a08d` |
| 4 | `theorem` | [boundary_euclidean_radius_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/declarations/boundary-euclidean-radius-one--406790c5d67eaedbc6835ffa.md) | 57 | `result-track:406790c5d67eaedbc6835ffae3865b338127139a1c7a54200b19cd4dd23725bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
