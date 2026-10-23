/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.BernoulliMellinRecurrence
import GRWTSK.NumberTheory.Zeta.Riemann.EndpointCorrectedJet

set_option autoImplicit false

/-!
# The actual periodic-Bernoulli residual of the maintained finite zeta model

Start from the SAME inclusive-cutoff fractional-Mellin identity, split the half
endpoint, and iterate the proved infinite-tail recurrence. Every correction has
the upstream Bernoulli coefficient and the existing Pochhammer product. This is
classical Euler--Maclaurin mathematics. All scripts remain unelaborated.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.EndpointBernoulliResidual

open Set MeasureTheory
open scoped BigOperators
open CriticalStripHeightDescent
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds
open PeriodicBernoulliMellin BernoulliMellinRecurrence

noncomputable section

/-- On this positive integration domain, the integer and natural floors agree. -/
theorem fract_eq_nat_fraction {t : ℝ} (ht : 0 ≤ t) :
    Int.fract t = t - (⌊t⌋₊ : ℝ) := by
  have hf : (⌊t⌋ : ℝ) = (⌊t⌋₊ : ℝ) := by
    exact_mod_cast (Int.natCast_floor_eq_floor ht).symm
  simp only [Int.fract, hf]

/-- The first half endpoint is derived from the same actual tail integral.
The integral converges, and s has positive real part before division by s. -/
theorem fractional_tail_split {N : ℕ} (hN : 1 ≤ N) {s : ℂ} (hs : 0 < s.re) :
    fractionalMellinTail (N : ℝ) s = tail 1 (N : ℝ) s +
      (N : ℂ) ^ (-s) / (2 * s) := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hN0 : (0 : ℝ) < N := zero_lt_one.trans_le hNr
  have hp : (-s - 1).re < -1 := by simp only [Complex.sub_re, Complex.neg_re, Complex.one_re]; linarith
  have hi := integrable_tail 1 hNr (σ := s.re) (by norm_num; linarith) le_rfl
  have hj := (integrableOn_Ioi_cpow_of_lt hp hN0).const_mul (1 / 2 : ℂ)
  have heq : fractionalMellinTail (N : ℝ) s =
      tail 1 (N : ℝ) s + (1 / 2 : ℂ) *
        ∫ t in Ioi (N : ℝ), (t : ℂ) ^ (-s - 1) := by
    change (∫ t in Ioi (N : ℝ), fractionalIntegrand s t) =
      (∫ t in Ioi (N : ℝ), integrand 1 s t) +
        (1 / 2 : ℂ) * (∫ t in Ioi (N : ℝ), (t : ℂ) ^ (-s - 1))
    rw [← integral_const_mul, ← integral_add hi hj]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    simp only [fractionalIntegrand, integrand, PeriodicBernoulli.periodic_first,
      fract_eq_nat_fraction (hN0.trans ht).le, Complex.ofReal_sub, Complex.ofReal_div,
      Complex.ofReal_one, Complex.ofReal_natCast, Nat.cast_one]
    rw [show -(s + 1) = -s - 1 by ring]
    push_cast
    ring
  rw [heq, integral_Ioi_cpow_of_lt hp hN0]
  have hs0 : s ≠ 0 := Complex.ne_zero_of_re_pos hs
  rw [show -s - 1 + 1 = -s by ring]
  congr 1
  field_simp [hs0]
  ring

/-- The minus half endpoint for the INCLUSIVE sum is fixed by the source, not chosen. -/
theorem half_endpoint_source {N : ℕ} (hN : 1 ≤ N) {s : ℂ}
    (hs : 0 < s.re) (hs1 : s ≠ 1) :
    riemannZeta s - EndpointCorrectedJet.model N 0 s = remainder 1 (N : ℝ) s := by
  have h := FinitePowerZetaJet.source_residual hN hs hs1
  rw [fractional_tail_split hN hs] at h
  have hs0 : s ≠ 0 := Complex.ne_zero_of_re_pos hs
  have he : -s * (tail 1 (N : ℝ) s + (N : ℂ) ^ (-s) / (2 * s)) =
      -(N : ℂ) ^ (-s) / 2 - s * tail 1 (N : ℝ) s := by
    field_simp [hs0]
    ring
  rw [he] at h
  rw [EndpointCorrectedJet.model_eq_previous_plus_corrections hN 0 hs1]
  simp only [Finset.range_zero, Finset.sum_empty, add_zero]
  simp only [remainder, PochhammerJet.value_succ, PochhammerJet.value_zero,
    Nat.cast_zero, add_zero, one_mul, Nat.factorial_one, Nat.cast_one, div_one]
  linear_combination h

/-- Multiplying the tail recurrence by the exact rising-factorial/factorial
coefficient creates the next correction and retains the next full integral. -/
theorem scaled_step {m N : ℕ} (hm : 1 ≤ m) (hN : 1 ≤ N) {s : ℂ} (hs : 0 < s.re) :
    remainder m (N : ℝ) s =
      ((_root_.bernoulli (m + 1) : ℂ) / ((m + 1).factorial : ℂ)) *
        PochhammerJet.value m s * (N : ℂ) ^ (-s - (m : ℂ)) +
      remainder (m + 1) (N : ℝ) s := by
  have hstep := tail_step hm hN hs
  have hm0 : (((m + 1 : ℕ) : ℂ)) ≠ 0 := by exact_mod_cast Nat.succ_ne_zero m
  have hf0 : (m.factorial : ℂ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero m
  have ht : tail m (N : ℝ) s =
      ((s + m) * tail (m + 1) (N : ℝ) s -
        (_root_.bernoulli (m + 1) : ℂ) * (N : ℂ) ^ (-s - (m : ℂ))) /
      ((m + 1 : ℕ) : ℂ) := by
    apply (eq_div_iff hm0).mpr
    linear_combination hstep
  rw [remainder, ht]
  simp only [remainder, PochhammerJet.value_succ, Nat.factorial_succ, Nat.cast_mul]
  field_simp [hm0, hf0]
  ring

/-- The raw recurrence term is literally the correction of the maintained model. -/
theorem correction_step {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (s : ℂ) :
    EndpointCorrectedJet.model N (p + 1) s = EndpointCorrectedJet.model N p s +
      ((_root_.bernoulli (2 * (p + 1)) : ℂ) / ((2 * (p + 1)).factorial : ℂ)) *
        PochhammerJet.value (2 * (p + 1) - 1) s *
          (N : ℂ) ^ (-s - ((2 * (p + 1) - 1 : ℕ) : ℂ)) := by
  rw [← EndpointCorrectedJet.correction_power_identity hN (2 * (p + 1) - 1) s]
  simp only [EndpointCorrectedJet.model, EndpointCorrectedJet.coefficient_succ,
    EndpointCorrectedJet.weight, Rat.cast_div, Rat.cast_natCast, Rat.cast_pow]
  ring

/-- An even tail has no intervening odd Bernoulli endpoint beyond B1. -/
theorem even_to_odd {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ} (hs : 0 < s.re) :
    remainder (2 * (p + 1)) (N : ℝ) s = remainder (2 * (p + 1) + 1) (N : ℝ) s := by
  have h := scaled_step (m := 2 * (p + 1)) (by omega) hN hs
  have hb : _root_.bernoulli (2 * (p + 1) + 1) = 0 :=
    bernoulli_eq_zero_of_odd ⟨p + 1, by omega⟩ (by omega)
  simpa only [hb, Rat.cast_zero, zero_div, zero_mul, zero_add] using h

/-- Exact source identity for EVERY positive number of endpoint corrections.
The positive-real-part domain is retained; no stronger continuation is claimed. -/
theorem source_residual_succ {N : ℕ} (hN : 1 ≤ N) (p : ℕ) {s : ℂ}
    (hs : 0 < s.re) (hs1 : s ≠ 1) :
    riemannZeta s - EndpointCorrectedJet.model N (p + 1) s =
      remainder (2 * (p + 1)) (N : ℝ) s := by
  induction p with
  | zero =>
    have hb := half_endpoint_source hN hs hs1
    have hr := scaled_step (m := 1) (by decide) hN hs
    have hc := correction_step hN 0 s
    norm_num at hb hr hc ⊢
    linear_combination hb + hr - hc
  | succ p ih =>
    have he := even_to_odd hN p hs
    have hr := scaled_step (m := 2 * (p + 1) + 1) (by omega) hN hs
    have hc := correction_step hN (p + 1) s
    have hi1 : 2 * (p + 1) + 1 + 1 = 2 * (p + 1 + 1) := by omega
    have hi2 : 2 * (p + 1 + 1) - 1 = 2 * (p + 1) + 1 := by omega
    rw [hi1] at hr
    rw [hi2] at hc
    linear_combination ih + he + hr - hc

/-- The application uses a coarser rational majorant so that no real-power
approximation is needed in its final comparison. -/
theorem remainder_sixteen_bound {s : ℂ} (hs : 0 ≤ s.re) (hB : ‖s‖ ≤ 15) :
    ‖remainder 16 (81 : ℝ) s‖ ≤
      (2154410000 / 4710128697246244834921603689 : ℝ) := by
  have h := remainder_norm_le_nat (m := 16) (N := (81 : ℝ)) (B := (15 : ℝ))
    (by decide) (by norm_num) hs hB
  have hb : (PeriodicBernoulli.majorant 16 : ℝ) ≤ 2000 := by
    exact_mod_cast PeriodicBernoulli.sixteenth_majorant_le
  calc
    _ ≤ (∏ j ∈ Finset.range 16, (15 + (j : ℝ))) / (16.factorial : ℝ) *
        ((PeriodicBernoulli.majorant 16 : ℝ) / (15 * (81 : ℝ) ^ 15)) := by simpa using h
    _ ≤ (∏ j ∈ Finset.range 16, (15 + (j : ℝ))) / (16.factorial : ℝ) *
        (2000 / (15 * (81 : ℝ) ^ 15)) := by gcongr
    _ = _ := by norm_num [Finset.prod_range_succ, Nat.factorial]

end
end GRWTSK.RiemannHypothesis.EndpointBernoulliResidual
