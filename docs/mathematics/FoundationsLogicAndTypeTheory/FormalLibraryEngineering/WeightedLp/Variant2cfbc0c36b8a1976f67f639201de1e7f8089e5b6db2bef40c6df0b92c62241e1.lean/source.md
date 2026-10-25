# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightedLp.Variant2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edfe179d16b56534dc9557256c409a0011df38fb` · SHA-256 `2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.ExtensionOperator

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace WeightedLp

/-- Weight data used by a receipt-compatible weighted norm surface. -/
structure Weight where
  value : PlanePoint → ℝ
  nonnegative : ∀ x : PlanePoint, 0 ≤ value x

/--
Receipt-compatible weighted Lp norm signature.

The actual analytic norm and measure-theoretic estimates are open residue.
-/
def weightedLpNorm
    (_p : ℝ)
    (_omega : PlanePoint → ℝ)
    (_F : PlanePoint → ℂ) : ℝ :=
  0

structure WeightedNormSurface where
  p : ℝ
  weightRecorded : Bool
  lpNormFormalized : Bool
  authority : DecouplingAuthority

def weightedLpResidue : String :=
  "weighted_lp_norm_estimates_not_formalized"

def defaultWeightedNormSurface : WeightedNormSurface :=
  { p := 2
    weightRecorded := true
    lpNormFormalized := false
    authority := .openResidue }

theorem weighted_lp_surface_is_open_residue :
    defaultWeightedNormSurface.authority = .openResidue := rfl

end WeightedLp
end Think.Analysis.Decoupling
```
