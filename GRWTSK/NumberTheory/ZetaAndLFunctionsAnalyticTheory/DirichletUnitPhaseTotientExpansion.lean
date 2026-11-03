/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFullPhaseResidualDecomposition

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact summed unit-phase square: the linear phase term cancels globally,
while the squared phases remain. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletUnitPhaseTotientExpansion
open DirichletCyclicPhaseCancellation DirichletGenuineCharacterVectorNorm
variable (N : ℕ) [NeZero N]

theorem unit_indicator_mass (χ : DirichletCharacter ℂ N) :
    (∑ i : ZMod N, if IsUnit i then (1 : ℝ) else 0) = (Nat.totient N : ℝ) := by
  classical
  rw [← character_full_mass N χ]
  apply Finset.sum_congr rfl
  intro i _
  by_cases hu : IsUnit i
  · have hn : ‖χ i‖=1 := by
      simpa only [hu.unit_spec] using χ.unit_norm_eq_one hu.unit
    simp [hu,hn]
  · simp [hu,χ.map_nonunit hu]

theorem unit_phase_square_expansion (χ : DirichletCharacter ℂ N) (t b : ℝ) :
    (∑ i : ZMod N, if IsUnit i then
      (t*neighborPhase N (fun j => χ j) i-b)^2 else 0) =
      t^2*(∑ i : ZMod N, if IsUnit i then
        (neighborPhase N (fun j => χ j) i)^2 else 0)+
      (Nat.totient N : ℝ)*b^2 := by
  classical
  have he : (∑ i : ZMod N, if IsUnit i then
      (t*neighborPhase N (fun j => χ j) i-b)^2 else 0) =
      ∑ i : ZMod N,
        t^2*(if IsUnit i then (neighborPhase N (fun j => χ j) i)^2 else 0)-
        (2*t*b)*(if IsUnit i then neighborPhase N (fun j => χ j) i else 0)+
        b^2*(if IsUnit i then 1 else 0) := by
    apply Finset.sum_congr rfl
    intro i _
    split_ifs <;> ring
  rw [he,Finset.sum_add_distrib,Finset.sum_sub_distrib,
    ← Finset.mul_sum,← Finset.mul_sum,← Finset.mul_sum,
    genuine_character_unit_phase_sum_zero,unit_indicator_mass N χ]
  ring

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletUnitPhaseTotientExpansion
