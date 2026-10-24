# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskHomeomorphism

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d24ee16c369c4a214605ded46fc7f2bb2107a9e3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d24ee16c369c4a214605ded46fc7f2bb2107a9e3`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Topology.Compactness.Compact` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [closedComplexUnitDisk_t2](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/closedcomplexunitdisk-t2--9989d39091aa9029ef86ddb3.md) | 42 | `result-track:9989d39091aa9029ef86ddb3e309fb67cf2f0aa3537df2a3a03355ea15ee864f` |
| 2 | `theorem` | [standardCircleCone_compact](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/standardcirclecone-compact--6039579aa628243ab5683216.md) | 47 | `result-track:6039579aa628243ab5683216b6e47e49fa7e9f67cd665713a7aa742d553e41c7` |
| 3 | `theorem` | [standardConePolarDisk_bijective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/standardconepolardisk-bijective--973ce427993f83844f29ff14.md) | 53 | `result-track:973ce427993f83844f29ff145b640301ef038bdfddbdce08593fc123108ee3d7` |
| 4 | `def` | [standardCircleConeHomeomorphClosedDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/standardcircleconehomeomorphcloseddisk--7b41527b4913cf1a27fd42e3.md) | 59 | `declaration-track:7b41527b4913cf1a27fd42e36803d99dff3584902e08e5edd7e17d9871add3d7` |
| 5 | `theorem` | [standardCircleConeHomeomorphClosedDisk_apply](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/standardcircleconehomeomorphcloseddisk-apply--5ef5b09da6ee2cdaecaab0ba.md) | 69 | `result-track:5ef5b09da6ee2cdaecaab0baccac0b9abc4aa404da3e1790358686fcf9776e79` |
| 6 | `theorem` | [standardCircleConeHomeomorphClosedDisk_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/standardcircleconehomeomorphcloseddisk-radius--844a9db86e43ba41aab0b0b7.md) | 76 | `result-track:844a9db86e43ba41aab0b0b755a093d67469fa6b25c3d3e6ba7f2f7d962c67e9` |
| 7 | `def` | [perimeterConeHomeomorphClosedDisk](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/perimeterconehomeomorphcloseddisk--9de031fa07a5a6f4b79d8026.md) | 91 | `declaration-track:9de031fa07a5a6f4b79d802691ba3fd79324ec7f6d2c21980f166a9198861f3b` |
| 8 | `theorem` | [perimeterConeHomeomorphClosedDisk_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/perimeterconehomeomorphcloseddisk-radius--9080498812933f139af52f03.md) | 98 | `result-track:9080498812933f139af52f03f952071d2469f1ece3c7eddbe035bb38d8b27177` |
| 9 | `theorem` | [perimeterConeHomeomorphClosedDisk_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/perimeterconehomeomorphcloseddisk-apex--fceedde61a8d9e72ad2a9e86.md) | 114 | `result-track:fceedde61a8d9e72ad2a9e86b9838bafd4dec36dc5c956a6b6dbfa7391f06ae7` |
| 10 | `theorem` | [perimeterConePolar_not_factor_through_filling](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/declarations/perimeterconepolar-not-factor-through-filling--d51a82e5371e5b498d301a97.md) | 128 | `result-track:d51a82e5371e5b498d301a974fb00c9f2ea1d0fec4b60137f6862c450fc8f877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
