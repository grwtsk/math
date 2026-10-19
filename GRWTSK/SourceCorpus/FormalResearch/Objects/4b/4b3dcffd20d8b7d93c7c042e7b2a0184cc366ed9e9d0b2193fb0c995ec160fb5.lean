import SourceActualPsiIntegerExact
import FormalResearch.RiemannHypothesis.Landau.Bridge

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open FormalResearch.RiemannHypothesis.Landau.Bridge

example (hnot : ¬ _root_.RiemannHypothesis) (K R : ℝ) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ K < actualPsiFloorPairing A := by
  by_contra h
  have hup : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K := by
    intro A hRA
    by_contra hA
    exact h ⟨A, hRA, lt_of_not_ge hA⟩
  exact hnot (riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hup))
