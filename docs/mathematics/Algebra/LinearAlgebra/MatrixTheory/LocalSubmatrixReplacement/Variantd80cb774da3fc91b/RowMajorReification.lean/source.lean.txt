/-
RowMajorReification — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465
Organized SHA-256: 4f4155e5496c2783b1329e5b729c2581e009f8e855465497711ee5d2365da854
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Array.ofFn reifies the captured flattenEquiv into an ArrayBacked matrix with size proof. The theorem is equality only after toMatrix observation. No raw-array/proof-field equality, aliasing, mutation, cost or runtime-performance property is added; original ArrayBacked extension namespace is required and retained. -/

import BitMatrix.Geometry.GlobalProjection

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.LocalSubmatrixReplacement.Variantd80cb774da3fc91b.LocusOperationsAndSupport
/-!
# Exact declarative submatrix surgery

Extraction and implantation use the ordered global embeddings supplied by a
`MatrixLocus`.  Payload length and index order are therefore explicit.  The
round-trip theorem says that extracting an implanted replacement returns that
replacement exactly, while `implantSubmatrix_outside` proves the complement
unchanged.  No local invertibility or row/column property is promoted to a
global action-matrix certificate without an additional proof.
-/

/-! ## Array-backed refinement -/

namespace BitMatrix.ArrayBacked

open BitMatrix.Geometry

variable {m n : Nat}

/--
Reify a declarative matrix in the existing row-major array representation.
This is an executable representation boundary; mathematical surgery remains
defined only once, by `BitMatrix.implantSubmatrix` above.
-/
def ofMatrix (A : BitMatrix m n) : BitMatrix.ArrayBacked m n :=
  ⟨Array.ofFn (BitMatrix.FiniteField.flattenEquiv m n A), by simp⟩

@[simp]
theorem toMatrix_ofMatrix (A : BitMatrix m n) :
    (ofMatrix A).toMatrix = A := by
  apply BitMatrix.ext
  intro i j
  simp [ofMatrix, toMatrix, get, BitMatrix.FiniteField.flattenEquiv_apply_flatIdx]

/--
Executable submatrix replacement obtained by reifying the single declarative
specification.  Its theorem below is the refinement boundary; array equality
or proof-field equality is never used as the observational semantics.
-/
def implantSubmatrix
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    BitMatrix.ArrayBacked m n :=
  ofMatrix (BitMatrix.implantSubmatrix A.toMatrix L replacement.toMatrix)

@[simp]
theorem implantSubmatrix_spec
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    (implantSubmatrix A L replacement).toMatrix =
      BitMatrix.implantSubmatrix A.toMatrix L replacement.toMatrix := by
  simp [implantSubmatrix]

end BitMatrix.ArrayBacked


