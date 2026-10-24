/-
Positive kernel data and Hermitian symmetry
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: e7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The original introduction is copied below. This split constructs no quotient, completion or finiteness theorem beyond the retained finite-support inequality.
-/
import Mathlib.Analysis.Complex.Order
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positive rhetorical kernels

A `PositiveKernel` is an arbitrary-index complex matrix together with the
exact positive-semidefinite witness used by the Moore--Aronszajn quotient and
completion below.  Mathlib's definition quantifies over finitely supported
coefficient families, so no finiteness assumption is imposed on the index.
-/

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PositiveKernelTheory

open scoped ComplexOrder

universe u

/-- A Hermitian positive-semidefinite scalar kernel. -/
structure PositiveKernel (Index : Type u) where
  matrix : Matrix Index Index ℂ
  positiveSemidefinite : matrix.PosSemidef

namespace PositiveKernel

variable {Index : Type u}

instance : CoeFun (PositiveKernel Index) (fun _ ↦ Index → Index → ℂ) where
  coe kernel := kernel.matrix

/-- Positive semidefiniteness includes Hermitian symmetry. -/
theorem isHermitian (kernel : PositiveKernel Index) :
    kernel.matrix.IsHermitian :=
  kernel.positiveSemidefinite.isHermitian

/-- Kernel entries satisfy the exact complex Hermitian symmetry law. -/
@[simp]
theorem conj_apply_symm (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel j i) = kernel i j := by
  exact kernel.isHermitian.apply i j

/-- Matrix-spelled Hermitian symmetry, retained for rewriting under sums. -/
@[simp]
theorem conj_matrix_apply_symm
    (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel.matrix j i) = kernel.matrix i j :=
  kernel.isHermitian.apply i j

end PositiveKernel

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PositiveKernelTheory

end
