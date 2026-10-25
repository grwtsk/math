# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f7d50d6434c8e499ce1fee5d1a05454d44e62ed` · SHA-256 `316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.DirichletSeries
import Number.EulerProduct

/-!
# Analytic number Euler products

Finite Euler products live in `Number`.  Infinite Euler products live here, and
only behind explicit convergence and identity authority.
-/

namespace AnalyticNumber

/-- Authority for an infinite Euler product attached to a finite system label. -/
structure InfiniteEulerProductAuthority
    (_finiteSystemLabel : String) where
  absoluteConvergenceSound : Prop
  absoluteConvergenceProof : absoluteConvergenceSound
  finiteProductsConverge : Prop
  finiteProductsConvergeProof : finiteProductsConverge
  productIdentitySound : Prop
  productIdentityProof : productIdentitySound

theorem infinite_euler_product_requires_authority
    (A : InfiniteEulerProductAuthority "EulerProduct") :
    A.absoluteConvergenceSound ∧
      A.finiteProductsConverge ∧
      A.productIdentitySound :=
  ⟨A.absoluteConvergenceProof,
    A.finiteProductsConvergeProof,
    A.productIdentityProof⟩

/-- A finite Euler product window does not prove the infinite Euler product. -/
def FiniteEulerWindowProvesInfiniteEulerProduct
    (_P : _root_.Number.FiniteEulerProduct) : Prop :=
  False

theorem finite_euler_window_not_infinite_product
    (P : _root_.Number.FiniteEulerProduct) :
    ¬ FiniteEulerWindowProvesInfiniteEulerProduct P := by
  intro h
  exact h

end AnalyticNumber
```
