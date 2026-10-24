# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variantb7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16450fe3b342a33e4da23c7db1dc5ed5402b73bf` · SHA-256 `b7d1c8ed0a95c251ad44c4506968e307beff18885a21c70fd274457ea31ae603`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Complex.Order
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positive kernels

`PositiveKernel` is indexed by an arbitrary type.  It imposes no assumptions
about modules, source paths, namespaces, or the project being inspected.
Mathlib's `Matrix.PosSemidef` quantifies over finitely supported coefficient
families, so the definition also works for infinite ambient index types.
-/

noncomputable section

namespace MathDiscovery.Kernel

open scoped ComplexOrder

universe u

/-- A Hermitian positive-semidefinite complex kernel. -/
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

/-- Exact complex Hermitian symmetry. -/
@[simp]
theorem conj_apply_symm (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel j i) = kernel i j := by
  exact kernel.isHermitian.apply i j

/-- Matrix-spelled Hermitian symmetry, useful under finite sums. -/
@[simp]
theorem conj_matrix_apply_symm
    (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel.matrix j i) = kernel.matrix i j :=
  kernel.isHermitian.apply i j

/-- The quadratic form is nonnegative on every finite combination. -/
theorem quadratic_nonnegative
    (kernel : PositiveKernel Index) (coefficients : Index →₀ ℂ) :
    0 ≤ coefficients.sum fun i ai ↦
      coefficients.sum fun j aj ↦ star ai * kernel i j * aj :=
  kernel.positiveSemidefinite.2 coefficients

end PositiveKernel

end MathDiscovery.Kernel
```
