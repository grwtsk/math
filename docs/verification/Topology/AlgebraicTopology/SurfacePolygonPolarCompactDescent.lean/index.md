# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21611e29285659ae772f9fc2d6eedf49ce59034b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21611e29285659ae772f9fc2d6eedf49ce59034b`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCompactCover`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactCover.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compactPolar_joint_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/declarations/compactpolar-joint-source--50a1b6428d7c0b160684dea5.md) | 38 | `result-track:50a1b6428d7c0b160684dea54ea1407a9d10bde11e49479de70b85ed19d35db1` |
| 2 | `theorem` | [unitCircleJointPolar_continuous_of_compact_quotient](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/declarations/unitcirclejointpolar-continuous-of-compact-quotient--1b9b833e4e2220183b6cdd90.md) | 46 | `result-track:1b9b833e4e2220183b6cdd901ab3fff34f9cf1073b4236c6736bb5b319f8d1b9` |
| 3 | `theorem` | [unitCircleJointPolar_continuous_of_fundamental_cover](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/declarations/unitcirclejointpolar-continuous-of-fundamental-cover--7521c860dd5329c95b57857d.md) | 66 | `result-track:7521c860dd5329c95b57857d0b26dd8ea2f81294b3e6bd457ec958e210a82824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
