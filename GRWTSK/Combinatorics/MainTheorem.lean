import Think.SourceTree.Legacy.Analysis.Decoupling.ModelCurve

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace MainTheorem

def WeightedDecouplingInequality
    (_phi : ℝ → ℝ)
    (_Z : Finset ℝ)
    (_alpha _p _epsilon _delta _constant : ℝ)
    (_g : ℝ → ℂ) : Prop :=
  False

def mainTheoremStatementSurface : Prop :=
  ∀ {phi : ℝ → ℝ} {Z : Finset ℝ} {alpha p epsilon delta : ℝ},
    (∀ z ∈ Z, z ∈ Set.Icc (0 : ℝ) 1) →
    0 < alpha →
    2 ≤ p →
    p ≤ 6 →
    0 < epsilon →
    0 < delta →
    delta ≤ 1 →
    VanishingCurvature.VanishingCurvatureHypotheses phi Z alpha →
    ∀ g : ℝ → ℂ,
      ModelCurve.IntegrableOnUnitInterval g →
      ∃ constant : ℝ,
        0 < constant ∧
          WeightedDecouplingInequality phi Z alpha p epsilon delta constant g

/-- Theorem 1.3 surface, retained as open residue. -/
def l2_decoupling_vanishing_curvature_finite_exceptional_set :
    DecouplingTheoremSurface :=
  { arxivId := "1812.04760"
    externalLabel := "Theorem 1.3"
    leanNamespace := "Think.Analysis.Decoupling.MainTheorem"
    leanName := "l2_decoupling_vanishing_curvature_finite_exceptional_set"
    theoremStatementRecorded := true
    proofComplete := false
    authority := .openResidue
    unresolvedResidue :=
      "full_vanishing_curvature_decoupling_proof_missing" }

theorem main_theorem_surface_is_open_residue :
    l2_decoupling_vanishing_curvature_finite_exceptional_set.authority =
      .openResidue := rfl

theorem main_theorem_surface_is_not_checked_proof :
    l2_decoupling_vanishing_curvature_finite_exceptional_set.authority ≠
      .checkedProof := by
  intro h
  cases h

end MainTheorem
end Think.Analysis.Decoupling
