# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskKernelBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec4fdfaadeba25123df16adf8c57f350bd860730",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec4fdfaadeba25123df16adf8c57f350bd860730`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonConeKernel`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [diskCharacteristic_eq_iff_outerConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/declarations/diskcharacteristic-eq-iff-outerconnected--d90dd3cbae4d4d1ba580d645.md) | 36 | `result-track:d90dd3cbae4d4d1ba580d645d9c5e4d8c83999f6e71b0369713b16ae74171f27` |
| 2 | `theorem` | [diskCharacteristic_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/declarations/diskcharacteristic-isquotientmap--8e8dd450953ce530dad850aa.md) | 46 | `result-track:8e8dd450953ce530dad850aac0ece569eb590ea08ec941f55625e62563ea3fb7` |
| 3 | `theorem` | [continuous_iff_comp_diskCharacteristic](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/declarations/continuous-iff-comp-diskcharacteristic--1bea46f09b16cde099c4a72f.md) | 55 | `result-track:1bea46f09b16cde099c4a72f7c59eba404b9797d1efffbcf415269f5ba207dc1` |
| 4 | `theorem` | [diskCharacteristic_original_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskKernelBridge.lean/declarations/diskcharacteristic-original-boundary--3cb23646f404577b505a5516.md) | 63 | `result-track:3cb23646f404577b505a5516b11629d7d96eb3abae03b5cdf4870d0d0343cdde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
