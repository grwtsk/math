# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAngleInterior

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8d7acb224f85a0510345a325c6d2657ac85df83",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8d7acb224f85a0510345a325c6d2657ac85df83`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [handleOrdinal_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/handleordinal-injective--f878bbea7aa00e584d2ef79b.md) | 34 | `result-track:f878bbea7aa00e584d2ef79b0bd8ef645d00d76c0c3688040ec7d0d6cafb27aa` |
| 2 | `theorem` | [directedSideOrdinal_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/directedsideordinal-injective--939d52d0b6846245bf3b665b.md) | 61 | `result-track:939d52d0b6846245bf3b665b178e8d1f5014630957630fcaf8dd03fb3ba9ed27` |
| 3 | `theorem` | [interior_real_angle_mem_Ico](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/interior-real-angle-mem-ico--e15bb831b7066f4f67e629a0.md) | 82 | `result-track:e15bb831b7066f4f67e629a0746ecd89c755b865e18fb659749cf7469673ea50` |
| 4 | `theorem` | [interior_angle_real_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/interior-angle-real-eq--e3de2dcac642583251fa0ff1.md) | 102 | `result-track:e3de2dcac642583251fa0ff1677fb66c52aed2e2a28cb9ffe4702645c42086cf` |
| 5 | `theorem` | [interior_sourceAngle_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/interior-sourceangle-injective--911ae398936b84c0ff3e50af.md) | 117 | `result-track:911ae398936b84c0ff3e50af5784fabac03fde1761fe1430ca6a15105294d953` |
| 6 | `theorem` | [perimeterAngle_interior_separation](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/perimeterangle-interior-separation--3a097613231180f1f63150f9.md) | 148 | `result-track:3a097613231180f1f63150f91c100f94c7f0f536c6971db2c67ea1321bf63de1` |
| 7 | `theorem` | [endpoint_alias_is_real](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/endpoint-alias-is-real--9795e7c8844c1cf68a66481d.md) | 160 | `result-track:9795e7c8844c1cf68a66481d9e19671b10f19266f9cb6ac31facda6c7e3567c5` |
| 8 | `theorem` | [distinct_source_corners_remain_distinct](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/distinct-source-corners-remain-distinct--9c607f41902436d44bf3eaa3.md) | 168 | `result-track:9c607f41902436d44bf3eaa3b3ebb4b80894b62ee574bdbb63a4fa97b3fd0f7e` |
| 9 | `theorem` | [genusTwo_directed_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/genustwo-directed-count--1d986b89dd3f876910561eaa.md) | 176 | `result-track:1d986b89dd3f876910561eaa506f4e269f1ae53fa855ff94aa8a8176fbbf6f5d` |
| 10 | `theorem` | [genusThree_directed_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/declarations/genusthree-directed-count--186c5fe13944f5ebad573986.md) | 181 | `result-track:186c5fe13944f5ebad5739863f3155df371f798df58ac1c45a6d15597dda94b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
