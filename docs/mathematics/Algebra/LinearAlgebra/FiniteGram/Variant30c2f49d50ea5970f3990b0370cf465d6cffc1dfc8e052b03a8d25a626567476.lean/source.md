# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteGram.Variant30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `664944c296fd41ba704fe5b4f2c7fecbaff8189a` · SHA-256 `30c2f49d50ea5970f3990b0370cf465d6cffc1dfc8e052b03a8d25a626567476`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Kernel.Core
import Mathematics.Kernel.Regularization
import Mathlib.LinearAlgebra.Matrix.DotProduct

/-!
# Finite active Gram matrices

A Lean environment can be arbitrarily large from the API's point of view, but
one extraction snapshot and one active clustering region are finite.  This
module isolates the exact finite matrix selected from any arbitrary-index
kernel.
-/

noncomputable section

namespace Mathematics.Kernel

open scoped ComplexOrder

universe u v

/-- Exact Gram matrix selected by an active index family. -/
def finiteGram
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) : Matrix Active Active ℂ :=
  kernel.matrix.submatrix indices indices

@[simp]
theorem finiteGram_apply
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (p q : Active) :
    finiteGram kernel indices p q = kernel (indices p) (indices q) :=
  rfl

/-- Every selected Gram matrix is Hermitian. -/
theorem finiteGram_hermitian
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) :
    (finiteGram kernel indices).IsHermitian :=
  kernel.isHermitian.submatrix indices

/-- Every selected Gram matrix is positive semidefinite. -/
theorem finiteGram_psd
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index) :
    (finiteGram kernel indices).PosSemidef :=
  kernel.positiveSemidefinite.submatrix indices

/-- Exact factor certificate `G = B⁺B`; the factor rank may be smaller than
the active-set cardinality. -/
structure GramFactorCertificate
    {Index : Type u}
    (kernel : PositiveKernel Index)
    {Active : Type v}
    (indices : Active → Index)
    (FactorIndex : Type*) [Fintype FactorIndex] where
  factor : Matrix FactorIndex Active ℂ
  reconstructs : factor.conjTranspose * factor = finiteGram kernel indices

namespace GramFactorCertificate

variable
    {Index : Type u}
    {kernel : PositiveKernel Index}
    {Active : Type v}
    {indices : Active → Index}
    {FactorIndex : Type*}
    [Fintype FactorIndex]

/-- Certified factor columns realize the kernel entries exactly. -/
theorem column_inner_eq_kernel
    (certificate : GramFactorCertificate kernel indices FactorIndex)
    (p q : Active) :
    (∑ k, star (certificate.factor k p) * certificate.factor k q) =
      kernel (indices p) (indices q) := by
  have entry := congrFun (congrFun certificate.reconstructs p) q
  simpa [Matrix.mul_apply] using entry

end GramFactorCertificate

end Mathematics.Kernel
```
