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
