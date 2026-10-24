# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31e1926c791320398a8b865f197f320032b9aedf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31e1926c791320398a8b865f197f320032b9aedf`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Complex.CircleMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClosedComplexUnitDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/declarations/closedcomplexunitdisk--1f1e5d594ce78ff67f1c886f.md) | 32 | `declaration-track:1f1e5d594ce78ff67f1c886f75bcba15494682d2402b8193e626d04431c1cae0` |
| 2 | `def` | [realAnglePolar](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/declarations/realanglepolar--b75e439ff07dced10e8482f6.md) | 35 | `declaration-track:b75e439ff07dced10e8482f6a52b1c4ac394606d6a2ba34442a4cc588c1c6d8a` |
| 3 | `theorem` | [realAnglePolar_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/declarations/realanglepolar-zero--7f341b06596d2cd57491d877.md) | 39 | `result-track:7f341b06596d2cd57491d877942b48abec8386db1971bbd108cd8651a0e3c691` |
| 4 | `theorem` | [realAnglePolar_norm](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/declarations/realanglepolar-norm--141fb7a8ad81e85d9450004e.md) | 44 | `result-track:141fb7a8ad81e85d9450004e012115e7bc9257ce631d8c7acb5c9b8bf33da68f` |
| 5 | `def` | [realAnglePolarDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardConeDisk.lean/declarations/realanglepolardisk--c4191dc437b2984baa98b3ba.md) | 49 | `declaration-track:c4191dc437b2984baa98b3ba9bf455155ad350b4d374d6528ee4834f8d4b93b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
