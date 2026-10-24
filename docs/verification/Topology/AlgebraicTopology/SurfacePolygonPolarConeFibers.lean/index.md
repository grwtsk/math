# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarConeFibers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4f70b63f9a713a96d480d7d1b2b207833b63cfb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4f70b63f9a713a96d480d7d1b2b207833b63cfb`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarStandardConeDescent.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [jointPolar_radius_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/declarations/jointpolar-radius-eq--bff3a0d117177762ae3ff206.md) | 36 | `result-track:bff3a0d117177762ae3ff206fcd5dba16952b50b784a842d3d2f7f237551c133` |
| 2 | `theorem` | [jointPolar_angle_eq_of_ne_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/declarations/jointpolar-angle-eq-of-ne-zero--c2fc3d1c65a6b6787e91ec20.md) | 61 | `result-track:c2fc3d1c65a6b6787e91ec201976a651f265a5c7436beef16370ae17e9ea64e5` |
| 3 | `theorem` | [standardConePolarDisk_eq_iff_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/declarations/standardconepolardisk-eq-iff-connected--c438a0a5783f3ea26e885ea4.md) | 89 | `result-track:c438a0a5783f3ea26e885ea4db9cc6022f999ddf8526ed9660cd3a7f83a452cd` |
| 4 | `theorem` | [standardConePolarDisk_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarConeFibers.lean/declarations/standardconepolardisk-injective--0733a2dfdd0fb19747639c9c.md) | 109 | `result-track:0733a2dfdd0fb19747639c9c1a692bc3d0571f382061ccda96352d2ba40f0460` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
