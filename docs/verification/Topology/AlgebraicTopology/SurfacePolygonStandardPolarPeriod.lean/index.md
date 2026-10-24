# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "577a49a287bf9723a507c9328d89b15647c55c61",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `577a49a287bf9723a507c9328d89b15647c55c61`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardPolarRadiusFibers.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [realAnglePolar_add_int](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean/declarations/realanglepolar-add-int--5bacb26ff9f11b83bc01e158.md) | 30 | `result-track:5bacb26ff9f11b83bc01e15840a02d98afd0f1f9bdea847756c00353ba317659` |
| 2 | `theorem` | [realAnglePolarDisk_add_int](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean/declarations/realanglepolardisk-add-int--96b20d087dedf55608bd1b0b.md) | 47 | `result-track:96b20d087dedf55608bd1b0b66b58976a8d31b527efeabe944179b9e41026e7d` |
| 3 | `theorem` | [genusTwo_polar_integer_period](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPeriod.lean/declarations/genustwo-polar-integer-period--1495b42b27dd78e3307c0924.md) | 55 | `result-track:1495b42b27dd78e3307c0924e564c8b85ccc560e54231e2f302caaf028b5ed38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
