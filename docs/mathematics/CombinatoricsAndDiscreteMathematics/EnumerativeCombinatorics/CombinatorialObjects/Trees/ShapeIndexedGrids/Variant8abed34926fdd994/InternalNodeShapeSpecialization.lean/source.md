# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Trees.ShapeIndexedGrids.Variant8abed34926fdd994.InternalNodeShapeSpecialization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e839510738c114bd5130c7d5647bea6fd30da125` · SHA-256 `a61f687c5cf0a954f0f61459658372770ced72313ecd33f8b8a5b127a5c790f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
InternalNodeShapeSpecialization — individually reviewed exact mathematical source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7
Organized SHA-256: e3dd6955a78259da5793842acc4d975f397afc624c4b5d55da85dd4bc107b0eb
PMD: 510.7.010.030.070 trees (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The exact supplied binary-tree internal-node count selects the Nat-recursive finite grid shape. Both growth statements require the unchanged U.internal=T.internal+1 hypothesis; no grafting operation, Catalan counting formula or stronger tree relation is inferred. -/

import Folder.Catalan.Tree
import Folder.Expansion.Shell
import Folder.Spectral.Expansion
import Folder.Spectral.Fiber
import Folder.Spectral.Tensor

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.LevelShapes

/-!
# Folder.Research.ShapeChangingBundle

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.shape_changing_bundle
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Trees.ShapeIndexedGrids.Variant8abed34926fdd994

open Folder
open Folder.Research
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994

open Carrier

def catalanShape
    (base : GridShape)
    (T : Catalan.CTree) : GridShape :=
  levelShape base T.internal


theorem catalanShape_rows_of_internal_succ
    (base : GridShape)
    {T U : Catalan.CTree}
    (h : U.internal = T.internal + 1) :
    (catalanShape base U).rows =
      (catalanShape base T).rows + 2 := by
  unfold catalanShape
  rw [h]
  exact levelShape_rows_succ base T.internal


theorem catalanShape_cols_of_internal_succ
    (base : GridShape)
    {T U : Catalan.CTree}
    (h : U.internal = T.internal + 1) :
    (catalanShape base U).cols =
      (catalanShape base T).cols + 2 := by
  unfold catalanShape
  rw [h]
  exact levelShape_cols_succ base T.internal

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Trees.ShapeIndexedGrids.Variant8abed34926fdd994
```
