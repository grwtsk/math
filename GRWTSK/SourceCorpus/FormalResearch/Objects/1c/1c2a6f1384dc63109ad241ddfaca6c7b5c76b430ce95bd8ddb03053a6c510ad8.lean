import SourceActualPositiveCutoffFlux
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# Complete absolute fixed-source cutoff cost

Prepared with OpenAI Codex. UNCOMPILED at preparation time.
The observable uses the owning full jointFlux, with both long axes, unequal-index
deletion, reciprocal-mean compensation and independent main term unchanged.
This is not a bound on the signed cutoff sum, a physical scale-event derivative
or a witness for the RH surplus. New native roles and options remain UNKNOWN.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualAbsoluteCutoffCost

open ArithmeticFunction SourceCutoffFlux SourceActualPositiveCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
open scoped BigOperators

noncomputable section

/-- The complete absolute cost at fixed source and explicit classification endpoints. -/
def absoluteCutoffCostAt (A : ℝ) (U N : ℕ) : ℝ :=
  ∑ u ∈ Finset.Ico 1 U, |jointFlux A u N|

/-- The literal actual-cutoff observable; no arithmetic row or counterterm is replaced. -/
def absoluteCutoffCost (A : ℝ) : ℝ :=
  absoluteCutoffCostAt A (vaughanCutoff A) (sourceKernelCutoff A)

/-- Every multiple of twelve has an actual zero Möbius coefficient. -/
theorem moebius_twelve_mul_eq_zero (k : ℕ) :
    (moebius (12 * k) : ℝ) = 0 := by
  have h12 : ¬ Squarefree (12 : ℕ) := by decide
  have h : ¬ Squarefree (12 * k) := by
    intro hs
    exact h12 (hs.squarefree_of_dvd (dvd_mul_right 12 k))
  rw [moebius_eq_zero_of_not_squarefree h]
  norm_num

/-- Distinct prime divisors two and three exclude prime powers among multiples of twelve. -/
theorem vonMangoldt_twelve_mul_eq_zero (k : ℕ) :
    vonMangoldt (12 * k) = 0 := by
  apply vonMangoldt_eq_zero_iff.mpr
  intro hp
  rcases isPrimePow_iff_unique_prime_dvd.mp hp with ⟨p, _, huniq⟩
  have h2 : 2 ∣ 12 * k :=
    dvd_trans (by norm_num : 2 ∣ (12 : ℕ)) (dvd_mul_right 12 k)
  have h3 : 3 ∣ 12 * k :=
    dvd_trans (by norm_num : 3 ∣ (12 : ℕ)) (dvd_mul_right 12 k)
  have hp2 : 2 = p := huniq 2 ⟨Nat.prime_two, h2⟩
  have hp3 : 3 = p := huniq 3 ⟨Nat.prime_three, h3⟩
  have h23 : (2 : ℕ) = 3 := hp2.trans hp3.symm
  norm_num at h23

/-- The already checked complete zero-coefficient flux identity applies to every positive atom. -/
theorem twelfth_event_flux_eq_log (A : ℝ) (N k : ℕ) (hk : 1 ≤ k) :
    jointFlux A (12 * k - 1) N =
      Real.log (12 * k : ℕ) - Real.log (12 * k - 1 : ℕ) := by
  have hj : 12 * k - 1 + 1 = 12 * k := by omega
  have hμ : (moebius (12 * k - 1 + 1) : ℝ) = 0 := by
    rw [hj]
    exact moebius_twelve_mul_eq_zero k
  have hΛ : vonMangoldt (12 * k - 1 + 1) = 0 := by
    rw [hj]
    exact vonMangoldt_twelve_mul_eq_zero k
  simpa only [hj] using
    jointFlux_eq_log_of_adjacent_coefficients_zero A (12 * k - 1) N hμ hΛ

/-- The selected event index lies in the exact half-open short-cutoff inventory. -/
theorem twelfth_event_mem_inventory {U k : ℕ} (hk : k ∈ Finset.Icc 1 (U / 12)) :
    12 * k - 1 ∈ Finset.Ico 1 U := by
  rcases Finset.mem_Icc.mp hk with ⟨hk1, hkU⟩
  have hkm : k * 12 ≤ U := (Nat.le_div_iff_mul_le (by norm_num : 0 < 12)).mp hkU
  apply Finset.mem_Ico.mpr
  omega

/-- At an actual admissible scale every selected deletion is legal on both long axes. -/
theorem twelfth_event_legal_at_actual_scale {A : ℝ} (hA : 1 ≤ A) {k : ℕ}
    (hk : k ∈ Finset.Icc 1 (vaughanCutoff A / 12)) :
    12 * k - 1 ∈ Finset.Ico 1 (vaughanCutoff A) ∧
      12 * k - 1 < sourceKernelCutoff A := by
  have hm := twelfth_event_mem_inventory hk
  have hupper := actual_adjacent_le_upper hA
  exact ⟨hm, by have := (Finset.mem_Ico.mp hm).2; omega⟩

/-- The positive atom is a full independent-main-subtracted balance at a present endpoint. -/
theorem twelfth_event_complete_balance (A : ℝ) (U N : ℕ) (hUN : U ≤ N) {k : ℕ}
    (hk : k ∈ Finset.Icc 1 (U / 12)) :
    jointAt A (12 * k) N - jointAt A (12 * k - 1) N =
      Real.log (12 * k : ℕ) - Real.log (12 * k - 1 : ℕ) := by
  have hk1 : 1 ≤ k := (Finset.mem_Icc.mp hk).1
  have hu := twelfth_event_mem_inventory hk
  have huN : 12 * k - 1 < N := (Finset.mem_Ico.mp hu).2.trans_le hUN
  have hj : 12 * k - 1 + 1 = 12 * k := by omega
  have h := jointAt_succ A (12 * k - 1) N huN
  rw [hj, twelfth_event_flux_eq_log A N k hk1] at h
  exact h

/-- Each selected logarithmic increment dominates its actual reciprocal harmonic atom. -/
theorem twelfth_event_log_lower (k : ℕ) (hk : 1 ≤ k) :
    (12 * (k : ℝ))⁻¹ ≤
      Real.log (12 * k : ℕ) - Real.log (12 * k - 1 : ℕ) := by
  have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
  let x : ℝ := 12 * (k : ℝ)
  have hx : 0 < x := by dsimp [x]; linarith
  have hy : 0 < x - 1 := by dsimp [x]; linarith
  have hcast : ((12 * k - 1 : ℕ) : ℝ) = x - 1 := by
    simp only [Nat.cast_sub (by omega : 1 ≤ 12 * k), Nat.cast_mul, Nat.cast_ofNat,
      Nat.cast_one, x]
  have hlog := Real.one_sub_inv_le_log_of_pos (div_pos hx hy)
  rw [Real.log_div hx.ne' hy.ne'] at hlog
  have hident : 1 - (x / (x - 1))⁻¹ = x⁻¹ := by
    rw [inv_div]
    field_simp [hx.ne'] <;> ring
  rw [hident] at hlog
  simpa only [x, Nat.cast_mul, Nat.cast_ofNat, hcast] using hlog

/-- A harmonic lower bound for complete absolute cost retains legal finite endpoint updates. -/
theorem harmonic_div_twelve_le_absoluteCutoffCostAt (A : ℝ) (U N : ℕ) (hUN : U ≤ N) :
    (harmonic (U / 12) : ℝ) / 12 ≤ absoluteCutoffCostAt A U N := by
  classical
  let S : Finset ℕ := (Finset.Icc 1 (U / 12)).image (fun k ↦ 12 * k - 1)
  have hsub : S ⊆ Finset.Ico 1 U := by
    intro u hu
    rcases Finset.mem_image.mp hu with ⟨k, hk, rfl⟩
    exact twelfth_event_mem_inventory hk
  have hinj : Set.InjOn (fun k : ℕ ↦ 12 * k - 1) (Finset.Icc 1 (U / 12)) := by
    intro k hk l hl hkl
    have hk1 := (Finset.mem_Icc.mp hk).1
    have hl1 := (Finset.mem_Icc.mp hl).1
    omega
  have himage : (∑ u ∈ S, |jointFlux A u N|) =
      ∑ k ∈ Finset.Icc 1 (U / 12), |jointFlux A (12 * k - 1) N| := by
    dsimp [S]
    exact Finset.sum_image hinj
  have hcost : (∑ u ∈ S, |jointFlux A u N|) ≤ absoluteCutoffCostAt A U N := by
    unfold absoluteCutoffCostAt
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro u _ _
    exact abs_nonneg _
  have hcell : ∀ k ∈ Finset.Icc 1 (U / 12),
      (12 * (k : ℝ))⁻¹ ≤ |jointFlux A (12 * k - 1) N| := by
    intro k hk
    have hk1 := (Finset.mem_Icc.mp hk).1
    have hu := twelfth_event_mem_inventory hk
    have huN : 12 * k - 1 < N := (Finset.mem_Ico.mp hu).2.trans_le hUN
    have hj : 12 * k - 1 + 1 = 12 * k := by omega
    have hfull := twelfth_event_complete_balance A U N hUN hk
    have hflux : jointFlux A (12 * k - 1) N =
        Real.log (12 * k : ℕ) - Real.log (12 * k - 1 : ℕ) := by
      rw [← jointAt_succ A (12 * k - 1) N huN, hj]
      exact hfull
    rw [hflux]
    exact (twelfth_event_log_lower k hk1).trans (le_abs_self _)
  have hsum := Finset.sum_le_sum hcell
  have hharm : (harmonic (U / 12) : ℝ) / 12 =
      ∑ k ∈ Finset.Icc 1 (U / 12), (12 * (k : ℝ))⁻¹ := by
    simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast,
      Finset.sum_div]
    apply Finset.sum_congr rfl
    intro k _
    simp only [mul_inv_rev, div_eq_mul_inv]
    ring
  rw [hharm]
  exact hsum.trans (himage ▸ hcost)

/-- The literal actual classification cost has the harmonic lower bound. -/
theorem harmonic_div_twelve_le_absoluteCutoffCost {A : ℝ} (hA : 1 ≤ A) :
    (harmonic (vaughanCutoff A / 12) : ℝ) / 12 ≤ absoluteCutoffCost A := by
  exact harmonic_div_twelve_le_absoluteCutoffCostAt A (vaughanCutoff A)
    (sourceKernelCutoff A) (vaughanCutoff_le_sourceKernelCutoff A hA)

/-- Local harmonic bounds supply a logarithmic lower bound without any signed estimate. -/
theorem log_div_twelve_le_absoluteCutoffCost {A : ℝ} (hA : 1 ≤ A) :
    Real.log (vaughanCutoff A / 12 + 1 : ℕ) / 12 ≤ absoluteCutoffCost A := by
  exact (div_le_div_of_nonneg_right (log_add_one_le_harmonic _)
    (by norm_num : (0 : ℝ) ≤ 12)).trans (harmonic_div_twelve_le_absoluteCutoffCost hA)

/-- Explicit point scales realize exact literal short cutoffs; this is not event-limit calculus. -/
theorem vaughanCutoff_sqrt_twelve_mul (k : ℕ) :
    vaughanCutoff (Real.sqrt (12 * (k : ℝ))) = 12 * k := by
  unfold vaughanCutoff
  rw [Real.sq_sqrt (by positivity : 0 ≤ 12 * (k : ℝ))]
  have hc : 12 * (k : ℝ) = (12 * k : ℕ) := by norm_cast
  rw [hc, Nat.floor_natCast]

/-- Absolute cost is unbounded beyond every real threshold, while the signed sum is separate. -/
theorem absoluteCutoffCost_unbounded (C R : ℝ) :
    ∃ A : ℝ, max 1 R ≤ A ∧ C < absoluteCutoffCost A := by
  obtain ⟨k, hk⟩ := exists_nat_gt (max (Real.exp (12 * C)) ((max 1 R) ^ 2 + 1))
  have hkexp : Real.exp (12 * C) < (k : ℝ) := (le_max_left _ _).trans_lt hk
  have hklarge : (max 1 R) ^ 2 + 1 < (k : ℝ) := (le_max_right _ _).trans_lt hk
  let A : ℝ := Real.sqrt (12 * (k : ℝ))
  have hR : max 1 R ≤ A := by
    apply Real.le_sqrt_of_sq_le
    have hkR : (0 : ℝ) ≤ k := Nat.cast_nonneg k
    nlinarith
  have hA : 1 ≤ A := (le_max_left _ _).trans hR
  have hU : vaughanCutoff A = 12 * k := vaughanCutoff_sqrt_twelve_mul k
  have hdiv : vaughanCutoff A / 12 = k := by rw [hU]; omega
  have hlog : 12 * C < Real.log (k + 1 : ℕ) := by
    have hlt : Real.exp (12 * C) < (k + 1 : ℕ) := by
      simpa only [Nat.cast_add, Nat.cast_one] using hkexp.trans (lt_add_one (k : ℝ))
    simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos _) hlt
  have hbound := log_div_twelve_le_absoluteCutoffCost hA
  rw [hdiv] at hbound
  have hC : C < Real.log (k + 1 : ℕ) / 12 := by
    apply (lt_div_iff₀ (by norm_num : (0 : ℝ) < 12)).2
    nlinarith
  exact ⟨A, hR, hC.trans_le hbound⟩

/-- An eventual uniform absolute-event budget cannot replace the complete signed cancellation. -/
theorem no_eventual_absoluteCutoffCost_upper_bound :
    ¬ ∃ C R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → absoluteCutoffCost A ≤ C := by
  rintro ⟨C, R, _, hbound⟩
  obtain ⟨A, hA, hC⟩ := absoluteCutoffCost_unbounded C R
  exact (not_le_of_gt hC) (hbound A ((le_max_right _ _).trans hA))

end

end FormalResearch.RiemannHypothesis.SourceActualAbsoluteCutoffCost
