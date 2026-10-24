# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "452ebb897c6b1bb29509bb60dde5a6fcca0689b9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `452ebb897c6b1bb29509bb60dde5a6fcca0689b9`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/cornerdiscretetopology--2aa5c16a7b541f8034b42c1c.md) | 33 | `declaration-track:2aa5c16a7b541f8034b42c1cf7cbac324b93d3b12a0496bb03bceb212e456383` |
| 2 | `def` | [unitCircleAttachingMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap--157371c974d7bf404af64159.md) | 37 | `declaration-track:157371c974d7bf404af641596efc3464667caa5c0bccf3e55eaaf525265f04bd` |
| 3 | `theorem` | [unitCircleAttachingMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-continuous--2db63c0abdc06b31d32ace95.md) | 42 | `result-track:2db63c0abdc06b31d32ace95eae458d174464a9b1f81dcd5e17017fd56dfbe7b` |
| 4 | `theorem` | [unitCircleAttachingMap_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-source--9b714779069eeb9ef0ffe4c9.md) | 49 | `result-track:9b714779069eeb9ef0ffe4c9c2e8d6adee1dead7316b149cee74a447502270bf` |
| 5 | `theorem` | [unitCircleAttachingMap_factorization](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-factorization--ecfb85b68d3d7f9006c9ea4d.md) | 59 | `result-track:ecfb85b68d3d7f9006c9ea4d4d64e2a03527484f6ad41e617e58dfbdbc8a086c` |
| 6 | `theorem` | [unitCircleAttachingMap_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-surjective--78dfc74f666d1b052e304ce8.md) | 66 | `result-track:78dfc74f666d1b052e304ce8aaf6a3d6d8b643ebe22a94ca49f2ee008373e2d3` |
| 7 | `theorem` | [unitCircleAttachingMap_pairs_a](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-pairs-a--b59963470c3277116b215262.md) | 74 | `result-track:b59963470c3277116b21526243a9622270ebd81553d9fa76e32da76c52a9eb60` |
| 8 | `theorem` | [unitCircleAttachingMap_pairs_b](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-pairs-b--5f4b0c194a6c54c8198342f2.md) | 86 | `result-track:5f4b0c194a6c54c8198342f287c31ce0eb4f0a3777cc6e804e63de7187c23983` |
| 9 | `theorem` | [unitCircleAttachingMap_not_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-not-injective--dc61d8bd827eea6119cdcee0.md) | 99 | `result-track:dc61d8bd827eea6119cdcee0fa529c06f47116c07cac52eeaec8d619544fe90a` |
| 10 | `theorem` | [unitCircleAttachingMap_kernel](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/declarations/unitcircleattachingmap-kernel--871cafa74bfbe847c9f9e7a2.md) | 111 | `result-track:871cafa74bfbe847c9f9e7a22fb69f08e577eaa0d362f03e92519db6170b44fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
