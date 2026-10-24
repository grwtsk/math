# Verification target: GRWTSK.Topology.CombinatorialTopology.SimplicialComplexes.SourceComponents.Variantae88ac453195b5c4.OctahedralFiniteCells

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e25ffe8adc0e95958f5aee2b15de482a341dddf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/index.md) · [Full source](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e25ffe8adc0e95958f5aee2b15de482a341dddf`.

Source path: `GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OctahedralSign](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralsign--71ba4cbef39e1161229c069d.md) | 37 | `declaration-track:71ba4cbef39e1161229c069da1747c801df2ccbceccd057e6e0fe0f0ac5a1422` |
| 2 | `def` | [octahedralSignWeight](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralsignweight--e674881ad3661078fe6bd0d9.md) | 43 | `declaration-track:e674881ad3661078fe6bd0d9ce8d13241a48666fb1bddb0b4ab974a5a08a39a7` |
| 3 | `inductive` | [OctahedralVertex](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralvertex--a472ceea325272f0bd7c4f56.md) | 48 | `declaration-track:a472ceea325272f0bd7c4f562be5ae5c8cdaa6366d8ff8d790b9da6699be56b1` |
| 4 | `inductive` | [OctahedralEdge](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedraledge--6e4a78cb9e687a94956f464c.md) | 55 | `declaration-track:6e4a78cb9e687a94956f464cb3f3c2775503df10bde69609ff0f27e2bea04b15` |
| 5 | `structure` | [OctahedralFace](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralface--afe55624d299e3dc50179890.md) | 62 | `declaration-track:afe55624d299e3dc50179890d8c000a5188ad2437e979b442fe809ffb4e4c1d7` |
| 6 | `def` | [octahedralVertexId](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralvertexid--69561e4672e823e8cb90e5e5.md) | 69 | `declaration-track:69561e4672e823e8cb90e5e58766017b30278ac7d0c45af408ca4e3ec48ee86c` |
| 7 | `def` | [octahedralEdgeId](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedraledgeid--80659146b3dbc6dea316020e.md) | 78 | `declaration-track:80659146b3dbc6dea316020e296b1bfdc8d0b7e20ab35afb86de1e70f387e63e` |
| 8 | `def` | [octahedralFaceId](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralfaceid--c982fe46fc8aae91bf60aba9.md) | 93 | `declaration-track:c982fe46fc8aae91bf60aba90a038d016524c0ba9668b4ba4dc35a4570ae02b8` |
| 9 | `def` | [octahedralVertices](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralvertices--ac70200277098632b5271936.md) | 104 | `declaration-track:ac70200277098632b5271936a12367e760a54b897f2c64a337e5c61b4121f7e9` |
| 10 | `def` | [octahedralEdges](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedraledges--fdd085155f03196468fc7c73.md) | 110 | `declaration-track:fdd085155f03196468fc7c73f0333b7a94ef231f3c02f403909609abfd8608ad` |
| 11 | `def` | [octahedralFaces](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralfaces--d369f4c939cf7778785967d1.md) | 119 | `declaration-track:d369f4c939cf7778785967d143d4362ed83cceb21f099ae3a2a592e136f7333a` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedraledgeboundary--cc539598e2f273ace1a1f4c1.md) | 130 | `declaration-track:cc539598e2f273ace1a1f4c112bd626a2c01042f063b339c5b7c51674b97ce3c` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralfaceboundary--5628e3b163d826892015b140.md) | 137 | `declaration-track:5628e3b163d826892015b140084d73a36a2faa0a69ef224e46c5eccd5c1d121c` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralfacecoefficient--3cafc6df69134e00ca02b498.md) | 144 | `declaration-track:3cafc6df69134e00ca02b498129c75cf118336fa3ae779c8016360e7832e9686` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralemptycell--d2bfdfe88799f28b4b680fd2.md) | 150 | `declaration-track:d2bfdfe88799f28b4b680fd2760a62fb88aff78231adaf29bac09fd19df66cff` |
| 16 | `def` | [OctahedralCell](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralcell--6bbdf3527ea921e22bf4ac47.md) | 153 | `declaration-track:6bbdf3527ea921e22bf4ac472b8a52292a5e6438bdc5c4d1577f21bd2f7a859a` |
| 17 | `def` | [octahedralCellLabel](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralcelllabel--d93f9dcd0e0d8d8954697a49.md) | 159 | `declaration-track:d93f9dcd0e0d8d8954697a49613c0e49ee050c767150a809ed0b31f7f642c31c` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralboundarycells--8f0accedb11507d166bb9346.md) | 166 | `declaration-track:8f0accedb11507d166bb9346adcbaa0bb6b467ddbe3ce5e8dd8bf56089e52ed7` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralfinitesound--5dd7cdf5e7c1685a3832e63c.md) | 174 | `declaration-track:5dd7cdf5e7c1685a3832e63c139c910fdb181cf027e6f46c09876fa3ddd46948` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralfinitesoundproof--b48e9e04814bfc84c49bf780.md) | 179 | `result-track:b48e9e04814bfc84c49bf7807587eb36ad9209aa97b93b265d344c488e708f36` |
| 21 | `def` | [octahedralCellComplex](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variantae88ac453195b5c4/OctahedralFiniteCells.lean/declarations/octahedralcellcomplex--18a8924cd66749d7f8527c39.md) | 183 | `declaration-track:18a8924cd66749d7f8527c39405f2269804ba823cf84358ce25d581d7618445d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
