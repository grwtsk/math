# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b569bf3ab91a385b107f7aec5704d58bc603e98f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b569bf3ab91a385b107f7aec5704d58bc603e98f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [homeomorph_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/declarations/homeomorph-source--653ef9934d7d14677e881669.md) | 29 | `result-track:653ef9934d7d14677e88166971ff3dc812ed5344685fb9f5177a38e7c572fbe2` |
| 2 | `theorem` | [homeomorph_symm_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/declarations/homeomorph-symm-source--3c21629a5199158b64f23d8c.md) | 39 | `result-track:3c21629a5199158b64f23d8c03709c7832ea8cacfe980810b963a14542cc7955` |
| 3 | `theorem` | [homeomorph_outer_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/declarations/homeomorph-outer-source--5ffce7f5a8b03cda11f98ae8.md) | 59 | `result-track:5ffce7f5a8b03cda11f98ae871ee2e392ccb8202f39944c4ed4de42431b8756f` |
| 4 | `theorem` | [homeomorph_symm_outer_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/declarations/homeomorph-symm-outer-source--af1f99e69dc0ba751cc389a0.md) | 68 | `result-track:af1f99e69dc0ba751cc389a0fcea4347a7c01bdd7415c21f2409900eb6c17659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
