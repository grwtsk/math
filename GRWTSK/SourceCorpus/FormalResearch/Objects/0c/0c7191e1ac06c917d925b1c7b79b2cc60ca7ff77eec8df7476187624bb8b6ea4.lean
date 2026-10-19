import SourceActualPsiIntegerExact
import FormalResearch.RiemannHypothesis.Landau.Bridge

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open FormalResearch.RiemannHypothesis.Landau.Bridge

#check original_estimate_of_actual_psi_floor_upper
#print axioms original_estimate_of_actual_psi_floor_upper
#check riemann_hypothesis_of_uniform_lower_bound
#print axioms riemann_hypothesis_of_uniform_lower_bound

example {K R : ℝ} (hR : 1 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    _root_.RiemannHypothesis := by
  exact riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hpsi)
