# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994.LevelShapes

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23ac0bce81357695e3f48c66e497fbefdfec2c6a` · SHA-256 `d1441708653bbb29131a5efc4ca0ec02b042fd20f2de04a234cf90c8f95f86e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LevelShapes — individually reviewed exact mathematical source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8abed34926fdd99431232ba0b73b1fd1b8918a018ec60c240c73cb354075e0d7
Organized SHA-256: e3dd6955a78259da5793842acc4d975f397afc624c4b5d55da85dd4bc107b0eb
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact Nat-recursive finite rectangular shape data and rows/cols successor equations only. Base dimensions and n may be zero. No geometric bundle, analytic spectrum, heat flow or additional growth theorem is constructed. -/

import Folder.Catalan.Tree
import Folder.Expansion.Shell
import Folder.Spectral.Expansion
import Folder.Spectral.Fiber
import Folder.Spectral.Tensor

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


namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994

open Folder
open Folder.Research

open Carrier

def levelShape (base : GridShape) : Nat → GridShape
  | 0 => base
  | n + 1 => Expansion.expandedShape (levelShape base n)


theorem levelShape_rows_succ
    (base : GridShape)
    (n : Nat) :
    (levelShape base (n + 1)).rows =
      (levelShape base n).rows + 2 :=
  rfl


theorem levelShape_cols_succ
    (base : GridShape)
    (n : Nat) :
    (levelShape base (n + 1)).cols =
      (levelShape base n).cols + 2 :=
  rfl


theorem shape_changes_of_step
    (base : GridShape)
    (n : Nat) :
    (levelShape base (n + 1)).rows =
        (levelShape base n).rows + 2 ∧
    (levelShape base (n + 1)).cols =
        (levelShape base n).cols + 2 :=
  ⟨levelShape_rows_succ base n, levelShape_cols_succ base n⟩


end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGrids.Variant8abed34926fdd994
```
