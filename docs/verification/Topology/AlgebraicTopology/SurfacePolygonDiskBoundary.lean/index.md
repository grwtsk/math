# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c832f637f8dc3fa8dcb1cc22359be67725540523",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c832f637f8dc3fa8dcb1cc22359be67725540523`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonUnitCircleAttachment.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.AdditiveDiskBoundary`](../../../../mathematics/Topology/AlgebraicTopology/AdditiveDiskBoundary.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.AddCircleConeDisk`](../../../../mathematics/Topology/AlgebraicTopology/AddCircleConeDisk.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/cornerdiscretetopology--eb78f847e9b5187b00ba2366.md) | 35 | `declaration-track:eb78f847e9b5187b00ba236676d1d289c90e3d0b24b62839688cc96f41a205da` |
| 2 | `def` | [perimeterDiskBoundaryHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterdiskboundaryhomeomorph--21f4fbd8c6fb980da331af1c.md) | 39 | `declaration-track:21f4fbd8c6fb980da331af1cdd7f9b6e44821862102ebfc07cba6ab23894cf8d` |
| 3 | `def` | [diskBoundaryAttachingMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap--6176509420d8b59e984d8f36.md) | 45 | `declaration-track:6176509420d8b59e984d8f36ab814fed6ade11370ddcf1c64a11aacf431dfb22` |
| 4 | `theorem` | [diskBoundaryAttachingMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-continuous--9337b4ac51acfca36872b209.md) | 49 | `result-track:9337b4ac51acfca36872b209671304722cc62e8562904e7e90ac9474cefc4a6f` |
| 5 | `theorem` | [diskBoundaryAttachingMap_chart](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-chart--a608592b002dbf13de3a4f2f.md) | 54 | `result-track:a608592b002dbf13de3a4f2f3a4cf6170ab4a3fc994f503c2255dc6a071ee1c7` |
| 6 | `theorem` | [diskBoundaryAttachingMap_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-source--f9961c8b9ce65adfda28687f.md) | 63 | `result-track:f9961c8b9ce65adfda28687fc619c88244c68f718aa488a3a18a521d5b92596c` |
| 7 | `theorem` | [diskBoundaryAttachingMap_factorization](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-factorization--f4daff7a12bf7240743ddb22.md) | 70 | `result-track:f4daff7a12bf7240743ddb2240770ba1b1b5bb9bde3d94aeb6dfecd57606ca1d` |
| 8 | `theorem` | [diskBoundaryAttachingMap_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-surjective--95323a565eba69ba8d72c6a7.md) | 76 | `result-track:95323a565eba69ba8d72c6a7843fdff63d7fc84d87f0cfae25511e660967a1a5` |
| 9 | `theorem` | [diskBoundaryAttachingMap_pairs_a](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-pairs-a--69a9d3d227f2d7496cb54981.md) | 83 | `result-track:69a9d3d227f2d7496cb54981834ad04fc89dec8155cf184c423779dbe4303c17` |
| 10 | `theorem` | [diskBoundaryAttachingMap_pairs_b](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-pairs-b--380bfd0b549776fba2a7ba40.md) | 92 | `result-track:380bfd0b549776fba2a7ba40705fc7e435100c741b5bd03b68f8f6e1ef17719f` |
| 11 | `theorem` | [diskBoundaryAttachingMap_not_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-not-injective--5f3dad7067c7edc1660a7a57.md) | 101 | `result-track:5f3dad7067c7edc1660a7a57bd33ee978d2dbc55f839ff056b91133cbb40817b` |
| 12 | `theorem` | [diskBoundaryAttachingMap_kernel](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/diskboundaryattachingmap-kernel--11480014be99a4d8e89a55cf.md) | 110 | `result-track:11480014be99a4d8e89a55cf02aa77bd6647a3069c0a1974ca036b58be5b8741` |
| 13 | `theorem` | [perimeterUnitCircleHomeomorph_source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterunitcirclehomeomorph-source--44add53b6cc294614f87af1f.md) | 118 | `result-track:44add53b6cc294614f87af1fc4ba700cb5f177cd12bac856a63cfea91016cf01` |
| 14 | `theorem` | [perimeterDiskBoundaryHomeomorph_source_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterdiskboundaryhomeomorph-source-zero--10523ff14248d74ae74bf01b.md) | 126 | `result-track:10523ff14248d74ae74bf01b4b55343782909cff52aadbbf9338009e244440df` |
| 15 | `theorem` | [perimeterDiskBoundaryHomeomorph_source_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterdiskboundaryhomeomorph-source-one--3e47849ddf6b571763e5333a.md) | 136 | `result-track:3e47849ddf6b571763e5333a13c32a135723141c5f0093bd1d9c2d5edb2a4839` |
| 16 | `def` | [perimeterConeDiskHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterconediskhomeomorph--cb65d9251bcab49e6ff6a445.md) | 146 | `declaration-track:cb65d9251bcab49e6ff6a44541b40b0752a440329e8afaf884a04adafa9beb80` |
| 17 | `theorem` | [perimeterConeDiskHomeomorph_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterconediskhomeomorph-boundary--fc77c58abd7c886acd6aed2e.md) | 151 | `result-track:fc77c58abd7c886acd6aed2e22164455d99185acb4ebb3652399940f0e3b77d5` |
| 18 | `theorem` | [perimeterConeDiskHomeomorph_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/perimeterconediskhomeomorph-apex--f383722374a590b3506066a5.md) | 159 | `result-track:f383722374a590b3506066a59c0174d1ff4a9d5ebf50d2cde21523372c8f7a4b` |
| 19 | `theorem` | [norm_perimeterConeDiskHomeomorph](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskBoundary.lean/declarations/norm-perimeterconediskhomeomorph--c1d4f9f0775f227e6d0ee18f.md) | 168 | `result-track:c1d4f9f0775f227e6d0ee18f4c74ef81884145da2d8d236d20cc265fd8086943` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
