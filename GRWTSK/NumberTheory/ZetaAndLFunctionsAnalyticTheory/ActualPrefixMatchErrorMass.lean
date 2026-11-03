/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualPrefixMatchedVector

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact full squared error removed by actual prefix matching. The actual
prefix remains an input; no signed arithmetic bound is supplied. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualPrefixMatchErrorMass
open ActualPrefixMatchedVector CyclicActualMertensPrefixSource
variable (N : ℕ) [NeZero N]

def centerError (v : ZMod N → ℝ) (i : ZMod N) : ℝ := v i-(∑ j, v j)/(N : ℝ)

theorem centered_square_mass (v : ZMod N → ℝ) :
    (∑ i, centerError N v i^2) =
      (∑ i, v i^2)-(∑ i, v i)^2/(N : ℝ) := by
  have hN : (N : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne N
  have he : (∑ i : ZMod N, centerError N v i^2) =
      (∑ i, v i^2)-2*((∑ j, v j)/(N : ℝ))*(∑ i, v i)+
        (N : ℝ)*((∑ j, v j)/(N : ℝ))^2 := by
    calc
      _ = ∑ i : ZMod N, (v i^2-2*((∑ j, v j)/(N : ℝ))*v i+
          ((∑ j, v j)/(N : ℝ))^2) := by
        apply Finset.sum_congr rfl
        intro i _
        unfold centerError
        ring
      _ = _ := by
        rw [Finset.sum_add_distrib,Finset.sum_sub_distrib,← Finset.mul_sum]
        simp [nsmul_eq_mul]
  rw [he]
  field_simp [hN]
  <;> ring

theorem actual_match_error_is_centered (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) :
    (fun i => matchActualPrefix N z i-actualIncrement N e i) =
      centerError N (fun i => z i-actualIncrement N e i) := by
  funext i
  unfold matchActualPrefix centerError
  rw [Finset.sum_sub_distrib,actual_full_prefix]
  ring

theorem actual_prefix_matching_error_mass_le (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) :
    (∑ i, (matchActualPrefix N z i-actualIncrement N e i)^2) ≤
      ∑ i, (z i-actualIncrement N e i)^2 := by
  have he := actual_match_error_is_centered N e z
  simp_rw [congrFun he]
  rw [centered_square_mass]
  have hp : (0 : ℝ) ≤ N := Nat.cast_nonneg N
  exact sub_le_self _ (div_nonneg (sq_nonneg _) hp)

end GRWTSK.NumberTheory.Zeta.Riemann.ActualPrefixMatchErrorMass
