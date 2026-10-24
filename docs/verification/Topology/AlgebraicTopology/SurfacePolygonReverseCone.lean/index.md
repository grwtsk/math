# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd63ca5c5a2d1f52b8e4bdd881ed65b9ad6a66b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd63ca5c5a2d1f52b8e4bdd881ed65b9ad6a66b`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseRadial.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/cornerdiscretetopology--41f1ac0b4c0b845232d95577.md) | 18 | `declaration-track:41f1ac0b4c0b845232d955775ba9b99092632ce797fb42658e85e0b9f4712918` |
| 2 | `theorem` | [cylinder_respects_cone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/cylinder-respects-cone--18f0876d80612669d0912b48.md) | 22 | `result-track:18f0876d80612669d0912b484f8f5a0ff377f31eb526b633d3888a86a1d4e90b` |
| 3 | `def` | [perimeterConeToFilling](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/perimeterconetofilling--698b135fc2420032a179f222.md) | 42 | `declaration-track:698b135fc2420032a179f222d7338b5dd154523d6feeafc89fdb2e2bd8dda707` |
| 4 | `theorem` | [perimeterConeToFilling_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/perimeterconetofilling-source--3aae9e62c5ea45d9c906b829.md) | 47 | `result-track:3aae9e62c5ea45d9c906b8297dd5a145736e1a7f750abba6da9aeb0e0322900d` |
| 5 | `theorem` | [perimeterConeToFilling_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/perimeterconetofilling-continuous--3cb0802ecf55a155f63e9a3c.md) | 53 | `result-track:3cb0802ecf55a155f63e9a3c5fb282aefa2db24b46371649ddc5f954e1e4ff1b` |
| 6 | `def` | [euclideanDiskToFilling](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/euclideandisktofilling--0bdd1b23b860122434663bc7.md) | 60 | `declaration-track:0bdd1b23b860122434663bc715bdfaab90fe076ee6dfb66334459f3ffa0aa319` |
| 7 | `theorem` | [euclideanDiskToFilling_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/euclideandisktofilling-continuous--16970cc6484705f6a0c87d58.md) | 65 | `result-track:16970cc6484705f6a0c87d583646f35730a90498cf51f01bb33d9e5ec3eec468` |
| 8 | `theorem` | [euclideanDiskToFilling_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonReverseCone.lean/declarations/euclideandisktofilling-boundary--a13171cb1b53a5806fa2f457.md) | 72 | `result-track:a13171cb1b53a5806fa2f4577ece5799cb610ef41725aab82b9399c739244761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
