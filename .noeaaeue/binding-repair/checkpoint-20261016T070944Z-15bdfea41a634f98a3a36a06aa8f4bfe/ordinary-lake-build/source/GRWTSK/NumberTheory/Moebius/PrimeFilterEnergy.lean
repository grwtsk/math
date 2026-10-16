/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFactorFilters
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion

/-! Exact causal energy recurrence. Energies at negative horizons are zero;
the correlation is clipped, never an oriented integral over a reversed window. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set
open scoped BigOperators

def noteEnergy (f : ℝ → ℝ) (T : ℝ) : ℝ := ∫ u in (0 : ℝ)..max 0 T, f u ^ 2

def noteCorrelation (f : ℝ → ℝ) (a T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..max 0 T, f u * causalShift a f u

theorem noteCorrelation_zero_before {f : ℝ → ℝ} {a T : ℝ}
    (hT : 0 ≤ T) (hTa : T < a) : noteCorrelation f a T = 0 := by
  unfold noteCorrelation
  rw [max_eq_right hT]
  calc
    _ = ∫ u in (0 : ℝ)..T, (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      simp [causalShift, show ¬a ≤ u by linarith [hu.2]]
    _ = 0 := intervalIntegral.integral_zero

theorem causalShift_continuous {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (a : ℝ) :
    Continuous (causalShift a f) := by
  apply Continuous.if_le (hf.comp (continuous_id.sub continuous_const))
    continuous_const continuous_const continuous_id
  intro u hu
  change a = u at hu
  simp [← hu, hf0]

theorem primeNoteCascade_continuous {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    Continuous (primeNoteCascade P) := by
  apply continuous_finsetSum
  intro S hS
  exact continuous_const.mul (pickupResponse_continuous
    (prime_product_pos fun p hp ↦ hP p (Finset.mem_powerset.mp hS hp)))

theorem primeNoteCascade_zero {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) :
    primeNoteCascade P 0 = 0 := by
  apply Finset.sum_eq_zero
  intro S hS
  have hn := prime_product_pos (fun p hp ↦ hP p (Finset.mem_powerset.mp hS hp))
  have hlog := Real.log_nonneg (by exact_mod_cast hn : (1 : ℝ) ≤ ∏ p ∈ S, p)
  by_cases h : Real.log (∏ p ∈ S, p : ℕ) ≤ 0
  · have he : Real.log (∏ p ∈ S, p : ℕ) = 0 := le_antisymm h hlog
    have hz : pickupResponse (∏ p ∈ S, p) 0 = 0 := by
      simpa only [he] using pickupResponse_at_event hn
    rw [hz, mul_zero]
  · rw [pickupResponse, if_neg h, mul_zero]

theorem primeNoteCascade_negative {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime)
    {u : ℝ} (hu : u < 0) : primeNoteCascade P u = 0 := by
  apply Finset.sum_eq_zero
  intro S hS
  have hn := prime_product_pos (fun p hp ↦ hP p (Finset.mem_powerset.mp hS hp))
  have hl := Real.log_nonneg (by exact_mod_cast hn : (1 : ℝ) ≤ ∏ p ∈ S, p)
  rw [pickupResponse, if_neg (by linarith : ¬Real.log (∏ p ∈ S, p : ℕ) ≤ u), mul_zero]

theorem noteEnergy_nonneg (f : ℝ → ℝ) (T : ℝ) : 0 ≤ noteEnergy f T :=
  intervalIntegral.integral_nonneg_of_forall (le_max_left _ _) (fun _ ↦ sq_nonneg _)

theorem noteEnergy_mono {f : ℝ → ℝ} (hf : Continuous f) : Monotone (noteEnergy f) := by
  intro s t hst
  unfold noteEnergy
  exact intervalIntegral.integral_mono_interval le_rfl (le_max_left _ _)
    (max_le_max_left 0 hst) (ae_of_all _ fun u ↦ sq_nonneg (f u))
    ((hf.pow 2).intervalIntegrable 0 (max 0 t))

theorem causalShift_energy {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    {a T : ℝ} (ha : 0 ≤ a) (hT : 0 ≤ T) :
    noteEnergy (causalShift a f) T = noteEnergy f (T - a) := by
  have hs := causalShift_continuous hf hf0 a
  by_cases haT : a ≤ T
  · have hz : (∫ u in (0 : ℝ)..a, causalShift a f u ^ 2) = 0 := by
      calc
        _ = ∫ u in (0 : ℝ)..a, (0 : ℝ) := by
          apply intervalIntegral.integral_congr
          intro u hu
          rw [uIcc_of_le ha] at hu
          by_cases h : a ≤ u
          · have he : u = a := le_antisymm hu.2 h
            simp [causalShift, he, hf0]
          · simp [causalShift, h]
        _ = 0 := intervalIntegral.integral_zero
    have he : (∫ u in a..T, causalShift a f u ^ 2) =
        ∫ u in (0 : ℝ)..T - a, f u ^ 2 := by
      calc
        _ = ∫ u in a..T, f (u - a) ^ 2 := by
          apply intervalIntegral.integral_congr
          intro u hu
          rw [uIcc_of_le haT] at hu
          simp [causalShift, hu.1]
        _ = _ := by
          simpa only [sub_self] using
            intervalIntegral.integral_comp_sub_right (fun u ↦ f u ^ 2) a (a := a) (b := T)
    unfold noteEnergy
    rw [max_eq_right hT, max_eq_right (sub_nonneg.mpr haT),
      ← intervalIntegral.integral_add_adjacent_intervals
        (show IntervalIntegrable (fun u ↦ causalShift a f u ^ 2) volume 0 a from
          (hs.pow 2).intervalIntegrable 0 a)
        (show IntervalIntegrable (fun u ↦ causalShift a f u ^ 2) volume a T from
          (hs.pow 2).intervalIntegrable a T), hz, he,
      zero_add]
  · unfold noteEnergy
    rw [max_eq_right hT, max_eq_left (by linarith : T - a ≤ 0)]
    simp only [intervalIntegral.integral_same]
    calc
      _ = ∫ u in (0 : ℝ)..T, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hT] at hu
        simp [causalShift, show ¬a ≤ u by linarith [hu.2]]
      _ = 0 := intervalIntegral.integral_zero

/-- Exact recurrence for any continuous waveform vanishing at its causal origin. -/
theorem energy_after_prime_filter {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0)
    {p : ℕ} (hp : p.Prime) {T : ℝ} (hT : 0 ≤ T) :
    noteEnergy (primeNoteFilter p f) T = noteEnergy f T +
      (p : ℝ)⁻¹ * noteEnergy f (T - Real.log p) -
      2 * (Real.sqrt p)⁻¹ * noteCorrelation f (Real.log p) T := by
  have hs := causalShift_continuous hf hf0 (Real.log p)
  have hsq : ((Real.sqrt p)⁻¹) ^ 2 = (p : ℝ)⁻¹ := by
    rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg p)]
  have he : noteEnergy (primeNoteFilter p f) T = noteEnergy f T +
      ((Real.sqrt p)⁻¹)^2 * noteEnergy (causalShift (Real.log p) f) T -
      2 * (Real.sqrt p)⁻¹ * noteCorrelation f (Real.log p) T := by
    unfold noteEnergy primeNoteFilter noteCorrelation
    calc
      _ = ∫ u in (0 : ℝ)..max 0 T, f u ^ 2 +
          ((Real.sqrt p)⁻¹)^2 * causalShift (Real.log p) f u ^ 2 -
          (2 * (Real.sqrt p)⁻¹) * (f u * causalShift (Real.log p) f u) := by
        apply intervalIntegral.integral_congr
        intro u _
        ring
      _ = _ := by
        have hA : IntervalIntegrable (fun u ↦ f u ^ 2) volume 0 (max 0 T) :=
          (hf.pow 2).intervalIntegrable _ _
        have hB : IntervalIntegrable (fun u ↦ ((Real.sqrt p)⁻¹)^2 *
            causalShift (Real.log p) f u ^ 2) volume 0 (max 0 T) :=
          ((hs.pow 2).const_mul _).intervalIntegrable _ _
        have hC : IntervalIntegrable (fun u ↦ (2 * (Real.sqrt p)⁻¹) *
            (f u * causalShift (Real.log p) f u)) volume 0 (max 0 T) :=
          ((hf.mul hs).const_mul _).intervalIntegrable _ _
        rw [intervalIntegral.integral_sub (hA.add hB) hC,
          intervalIntegral.integral_add hA hB,
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  rw [he, hsq, causalShift_energy hf hf0
    (Real.log_nonneg (by exact_mod_cast hp.one_le)) hT]

theorem energy_after_prime_insertion {P : Finset ℕ} (hP : ∀ p ∈ P, p.Prime)
    {p : ℕ} (hp : p.Prime) (hpP : p ∉ P) {T : ℝ} (hT : 0 ≤ T) :
    noteEnergy (primeNoteCascade (insert p P)) T = noteEnergy (primeNoteCascade P) T +
      (p : ℝ)⁻¹ * noteEnergy (primeNoteCascade P) (T - Real.log p) -
      2 * (Real.sqrt p)⁻¹ * noteCorrelation (primeNoteCascade P) (Real.log p) T := by
  rw [primeNoteCascade_insert hP hp hpP]
  exact energy_after_prime_filter (primeNoteCascade_continuous hP) (primeNoteCascade_zero hP) hp hT

theorem pickupEnergy_eq_cascade_energy {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = noteEnergy (primeNoteCascade (pickupPrimes T)) T := by
  unfold pickupEnergy noteEnergy
  rw [max_eq_right hT]
  apply intervalIntegral.integral_congr
  intro u hu
  rw [uIcc_of_le hT] at hu
  change wholePickup u ^ 2 = primeNoteCascade (pickupPrimes T) u ^ 2
  rw [pickup_eq_prime_note_cascade hu.1 hu.2]

end GRWTSK.RiemannHypothesis.CCC
