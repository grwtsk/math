# Verification target: GRWTSK.Topology.AlgebraicTopology.Homology.SimplicialHomology.SourceComponents.Variantae88ac453195b5c4.OctahedralBoundarySquared

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c90d2315755dacb5813f9812833ec805b8ca79f9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/index.md) · [Full source](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c90d2315755dacb5813f9812833ec805b8ca79f9`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.CombinatorialTopology.SimplicialComplexes.SourceComponents.Variantae88ac453195b5c4.OctahedralFiniteCells`](../../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/index.md) — import line 20; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralVertexCoefficient](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/declarations/octahedralvertexcoefficient--5b7e9d22bf34ece25c252b9c.md) | 38 | `declaration-track:5b7e9d22bf34ece25c252b9c62164418895362711a980ac4edadde4142536707` |
| 2 | `def` | [octahedralFaceChain](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/declarations/octahedralfacechain--a174351df63dd2ec5364174e.md) | 47 | `declaration-track:a174351df63dd2ec5364174e0196b3957e87169e07433a49778f5f5b215667b9` |
| 3 | `def` | [octahedralFaceBoundarySquared](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/declarations/octahedralfaceboundarysquared--f4b41208013d5d67329fe6b4.md) | 52 | `declaration-track:f4b41208013d5d67329fe6b437fde003b988b9ba0610a011d7cc0050a51ed7a2` |
| 4 | `def` | [OctahedralBoundarySquaredZero](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/declarations/octahedralboundarysquaredzero--b211457349cbab4d406a3af6.md) | 57 | `declaration-track:b211457349cbab4d406a3af670058f126024d87ccab79bcccabffc675f4cc1fc` |
| 5 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../../../../mathematics/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variantae88ac453195b5c4/OctahedralBoundarySquared.lean/declarations/octahedralboundarysquaredzeroproof--f368238f0d17e63ba026549d.md) | 62 | `result-track:f368238f0d17e63ba026549dc68a11088bd1503361489f031aed681fef98a431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
