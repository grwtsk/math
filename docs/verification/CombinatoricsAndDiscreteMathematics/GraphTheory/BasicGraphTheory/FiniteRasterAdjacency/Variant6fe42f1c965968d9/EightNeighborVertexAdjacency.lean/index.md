# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterAdjacency.Variant6fe42f1c965968d9.EightNeighborVertexAdjacency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a517853535a78950e4e290c813c3df9f2efcd8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a517853535a78950e4e290c813c3df9f2efcd8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NeighboringCoordinate](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/neighboringcoordinate--bd06c28d72473200f96056ed.md) | 36 | `declaration-track:bd06c28d72473200f96056ed4125dd067ed60daf1073a10f0f583eac01b49191` |
| 2 | `instance` | [neighboringCoordinateDecidable](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/neighboringcoordinatedecidable--b8c6e4d0a9df59da8b3deb0d.md) | 39 | `declaration-track:b8c6e4d0a9df59da8b3deb0d6e0b9acdbe1de91603d861e5b2b70634254724a8` |
| 3 | `theorem` | [neighboringCoordinate_symmetric](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/neighboringcoordinate-symmetric--781e8e3962df899dec4f823d.md) | 44 | `result-track:781e8e3962df899dec4f823dcc29d33d53b1b6fee8fdc5a7910dcc42a6bfe1ce` |
| 4 | `def` | [VertexAdjacent](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/vertexadjacent--595ac854ca88a9d04199663d.md) | 58 | `declaration-track:595ac854ca88a9d04199663d54f135300676b65421ee5fa7b9e55911cb67df33` |
| 5 | `instance` | [vertexAdjacentDecidable](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/vertexadjacentdecidable--f44c3f167e30f17e80712ff0.md) | 64 | `declaration-track:f44c3f167e30f17e80712ff05bc687e53c6348f4e137c3bf90a40fccd478c29d` |
| 6 | `theorem` | [vertexAdjacent_symmetric](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/vertexadjacent-symmetric--13c4ad8e498e7e0c5160e782.md) | 70 | `result-track:13c4ad8e498e7e0c5160e78284124b244447fe828c5ca77d5a8d2f37bee0200e` |
| 7 | `theorem` | [not_vertexAdjacent_self](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/EightNeighborVertexAdjacency.lean/declarations/not-vertexadjacent-self--f91df3e309bac4f53dcaaf8b.md) | 81 | `result-track:f91df3e309bac4f53dcaaf8b5bfc0d376442245ee097172db409edb69cdefe46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
