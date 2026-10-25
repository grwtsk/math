# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kronecker.Variantefa47a316d6df3d1fe61822bc6e21a5c7d2e7726fe0eb62e137394f6d0788b49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3240ba779b6fc9ca6af9e81fe42a51d9216a22` · SHA-256 `efa47a316d6df3d1fe61822bc6e21a5c7d2e7726fe0eb62e137394f6d0788b49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Kernel.Regularization

/-!
# Kronecker baseline

The Kronecker kernel is the zero semantic kernel plus the exact identity channel
with weight one.  It is the compatibility baseline for ordinary `ℓ²` concept
coordinates; it is not a useful semantic clustering kernel by itself.
-/

noncomputable section

namespace Mathematics.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u} [DecidableEq Index]

/-- Exact Kronecker kernel. -/
def kroneckerKernel : PositiveKernel Index :=
  regularizedKernel (zeroSemanticKernel (Index := Index)) 1 (by norm_num)

@[simp]
theorem kroneckerKernel_apply (left right : Index) :
    kroneckerKernel left right =
      if left = right then (1 : ℂ) else 0 := by
  simp [kroneckerKernel]

/-- The Kronecker kernel is positive definite. -/
theorem kroneckerKernel_posDef :
    (kroneckerKernel (Index := Index)).matrix.PosDef :=
  regularizedKernel_posDef
    (zeroSemanticKernel (Index := Index)) (1 : ℝ) (by norm_num)

end Mathematics.Kernel
```
