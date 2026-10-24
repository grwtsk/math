# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aedc0a9e116a7196866d3a0168a23b3fd00837c3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aedc0a9e116a7196866d3a0168a23b3fd00837c3`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [standardCircleConeConnected_jointPolar_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardcircleconeconnected-jointpolar-eq--7550d568d113d9e7b94ee08e.md) | 38 | `result-track:7550d568d113d9e7b94ee08eeb79889a000600895d6dc19ab7f1bc3496387274` |
| 2 | `def` | [standardConePolarDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardconepolardisk--e666e72c7c63f1b4027dda3a.md) | 55 | `declaration-track:e666e72c7c63f1b4027dda3a13413b96dd73be7a0d9c3aaa173909dd556419f0` |
| 3 | `theorem` | [standardConePolarDisk_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardconepolardisk-projection--5ca749b1e34ac7c3e2afae1f.md) | 63 | `result-track:5ca749b1e34ac7c3e2afae1fba06a46ebdbd8826ddfedb5144dae29440c12d24` |
| 4 | `theorem` | [standardConePolarDisk_norm_eq_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardconepolardisk-norm-eq-radius--ac0e11f2dcfa8e4adb43cf04.md) | 71 | `result-track:ac0e11f2dcfa8e4adb43cf04889545d6ba89ec6f152aef148bbca0e5b534de86` |
| 5 | `theorem` | [standardConePolarDisk_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardconepolardisk-continuous--cdf5ffaa60da762eec1da602.md) | 81 | `result-track:cdf5ffaa60da762eec1da602e9458bbc650c3f3a859f1f1b6a397524e1665304` |
| 6 | `theorem` | [standardConePolarDisk_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardconepolardisk-apex--2041a7f088e2cedd0a175935.md) | 87 | `result-track:2041a7f088e2cedd0a1759356e7b77a19e87afe289f8d98714a8081cb52f4a60` |
| 7 | `theorem` | [standardConePolarDisk_boundary_norm](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/declarations/standardconepolardisk-boundary-norm--ae78d18bd7964585e6e03f7b.md) | 94 | `result-track:ae78d18bd7964585e6e03f7bf5ba2abdc770571a5328e9d75b3ccdc217970eb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
