# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variante7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d81097c3eecc96a440bf87eccbb566a0822b97e8` · SHA-256 `e7494dcc2517124c934f54466d438e7d85af6ae9fd540bc8881b0105e04bb367`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

namespace DAF.Rhetorical

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

/-- The kernel quadratic form is nonnegative for every finite combination. -/
theorem quadratic_nonnegative
    (kernel : PositiveKernel Index) (coefficients : Index →₀ ℂ) :
    0 ≤ coefficients.sum fun i ai ↦
      coefficients.sum fun j aj ↦ star ai * kernel i j * aj :=
  kernel.positiveSemidefinite.2 coefficients

end PositiveKernel

end DAF.Rhetorical
```
