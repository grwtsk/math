# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variantfb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8104bc5d7248bc59e812919217a54b6aa8e8f475` · SHA-256 `fb52dae068ac979bcf97de38da86645dfb7ed636c1483cbbc5d95021c895fdc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.DirichletSeries
import Number.EulerProduct

/-!
# Analytic number Euler products

Finite Euler products live in `Number`. Infinite Euler products live here, and
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
