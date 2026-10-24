# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dfb6cdefbadb8fd689c13aa3ef90e5a736cbeef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dfb6cdefbadb8fd689c13aa3ef90e5a736cbeef`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorSeparation`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorSeparation.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oppositeBoundaryPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/declarations/oppositeboundarypoint--656f03dd615cbe1aa73afeb7.md) | 28 | `declaration-track:656f03dd615cbe1aa73afeb7bec268681689df2ecdc77264f8f5bbc39a193022` |
| 2 | `theorem` | [interior_step_pair_orbit](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/declarations/interior-step-pair-orbit--76b176aea312f5df02784aca.md) | 35 | `result-track:76b176aea312f5df02784aca18dbdc8239907768b059a2e16be11d568c189e57` |
| 3 | `theorem` | [interior_step_preserves_handle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/declarations/interior-step-preserves-handle--b158862f4a2f6e3103220181.md) | 56 | `result-track:b158862f4a2f6e3103220181e37b954639706b53e7b381246e147262bb79cf9a` |
| 4 | `theorem` | [interior_step_preserves_nonendpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/declarations/interior-step-preserves-nonendpoint--553cdebd76fe93a822931947.md) | 65 | `result-track:553cdebd76fe93a82293194745b8f86960bd9b0b6e3fd851e3a8264eab254bf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
