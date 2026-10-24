# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionMapping

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc9c79ec10461fc95b5ac31a47e53c6c319225cf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc9c79ec10461fc95b5ac31a47e53c6c319225cf`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionUniversal`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionUniversal.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompatibleContinuousPair](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/declarations/compatiblecontinuouspair--d7d3e5523063a74871bef812.md) | 34 | `declaration-track:d7d3e5523063a74871bef8127f647f16db8f6e80133d32e92d77608fe1ce9d42` |
| 2 | `def` | [restrictContinuousPair](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/declarations/restrictcontinuouspair--19520087eccdae1789d52908.md) | 42 | `declaration-track:19520087eccdae1789d52908dd91feb88b34b802384ad7205ff5eaf9b54ae4f7` |
| 3 | `def` | [extendContinuousPair](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/declarations/extendcontinuouspair--c91a442989ce57e1e63309f5.md) | 54 | `declaration-track:c91a442989ce57e1e63309f5ca5cb71a2a509b489621c663a95f31e9e78c24f2` |
| 4 | `theorem` | [restrict_extendContinuousPair](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/declarations/restrict-extendcontinuouspair--d32e138b5554afdbd8dc69ba.md) | 63 | `result-track:d32e138b5554afdbd8dc69ba0b57231ecb722c10640a5a5a7e681076f66e7e7f` |
| 5 | `theorem` | [extend_restrictContinuousPair](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/declarations/extend-restrictcontinuouspair--ad9d1e87c238481fdb90b551.md) | 78 | `result-track:ad9d1e87c238481fdb90b551e48f8b6ba8019ac7a4031a72116024101be43f84` |
| 6 | `def` | [continuousMappingEquiv](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAdjunctionMapping.lean/declarations/continuousmappingequiv--f3ad1f3661900016b3c71072.md) | 93 | `declaration-track:f3ad1f3661900016b3c71072f41ab3b1e6e3307e083dee6e689b361bacc02728` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
