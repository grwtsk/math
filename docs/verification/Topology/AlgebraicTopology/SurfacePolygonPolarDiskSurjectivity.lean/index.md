# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskSurjectivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af80f6efc0d0b085b03f50585a248594d8cea88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af80f6efc0d0b085b03f50585a248594d8cea88`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarConeFibers`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskRadius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/declarations/diskradius--ecd15b01e519f6599bc6964f.md) | 36 | `declaration-track:ecd15b01e519f6599bc6964fdd6df0975bc9271e370fc7135455517076ff43be` |
| 2 | `theorem` | [disk_origin_in_polar_range](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/declarations/disk-origin-in-polar-range--b5f6e9d0acbf7c04dc97e718.md) | 43 | `result-track:b5f6e9d0acbf7c04dc97e7187b402b723460abfbf8dfc0b50276ac32cd63dec3` |
| 3 | `theorem` | [disk_nonzero_in_polar_range_of_phase](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/declarations/disk-nonzero-in-polar-range-of-phase--c2481c75488442a045cb8310.md) | 51 | `result-track:c2481c75488442a045cb83109f776d1b6f6670fa2d3aa6caeb6793a1f83f29be` |
| 4 | `theorem` | [standardConePolarDisk_surjective_of_phase](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/declarations/standardconepolardisk-surjective-of-phase--079c922e19c74bac17e669f1.md) | 65 | `result-track:079c922e19c74bac17e669f17c60e1e4ac4b9840a91b6b9745be0f8f4a4255f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
