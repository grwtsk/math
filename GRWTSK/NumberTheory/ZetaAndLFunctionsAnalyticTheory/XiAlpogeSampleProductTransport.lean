/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRoundedWindowCriterion

/-!
# Rounded ordinary-prime products on selected samples

A window's samples can comprise powers, its endpoints, or another specified
set. The cutoff and score comparison is uniform in the sampling set. Every
sample is required to lie at or beyond the start's integer lower bound.
Window geometry enters only when establishing a sampling theorem for the
centered principal ramp.
-/

noncomputable section
namespace GRWTSK.XiAlpogeSampleProductTransport

open XiAlpogeFiniteRampScore XiAlpogeFiniteWindowCriterion XiAlpogeOrdinaryRamp
open XiAlpogeRationalRampCenter XiAlpogeRationalRampWindow
open XiAlpogeRoundedProduct XiAlpogeRoundedWindowCriterion

/-- The centered power ceilings, restricted to the samples belonging to each start. -/
def SampleCeilings (sample : ℕ → ℕ → Prop) : Prop :=
  ∀ θ : ℝ, 1/2 < θ → ∀ L : ℕ, ∃ M ≥ L,
    ∀ n : ℕ, sample M n → centeredRamp n ≤ (n:ℝ)^θ

/-- The finite rational comparisons, with the identical sample mask. -/
def RoundedSampleWindows (sample : ℕ → ℕ → Prop) : Prop :=
  ∀ a b : ℕ, 0 < b → b < 2*a → ∀ L : ℕ, ∃ M ≥ L,
    ∀ n : ℕ, sample M n → roundedTest n (powerCutoff n a b)

private theorem rational_between {t : ℝ} (ht : 1/2 < t) :
    ∃ a b : ℕ, 0 < b ∧ b < 2*a ∧ (1/2:ℝ) < (a:ℝ)/b ∧ (a:ℝ)/b < t := by
  obtain ⟨q, hq, hqt⟩ := exists_rat_btwn ht
  have hq0 : 0 ≤ (q : ℝ) := by linarith
  have hq0' : (0:ℚ) ≤ q := by exact_mod_cast hq0
  have hn0 : 0 ≤ q.num := Rat.num_nonneg.mpr hq0'
  have hcast : (q.num.toNat : ℝ) / q.den = q := by
    rw [Rat.cast_def q]
    congr 1
    exact_mod_cast (Int.toNat_of_nonneg hn0)
  refine ⟨q.num.toNat, q.den, q.den_pos, ?_, hcast.symm ▸ hq, hcast.symm ▸ hqt⟩
  have hden : 0 < (q.den : ℝ) := by exact_mod_cast q.den_pos
  rw [← hcast, lt_div_iff₀ hden] at hq
  exact_mod_cast (show (q.den:ℝ) < 2 * (q.num.toNat : ℝ) by linarith)

/-- A late centered-ramp ceiling supplies a rounded test with any strictly
larger exponent. The required starting threshold is independent of the mask. -/
theorem rounded_of_ceiling {a b : ℕ} (hb : 0 < b) {s : ℝ}
    (hs : 1/2 < s) (hs1 : s ≤ 1) (hsq : s < (a:ℝ)/b) :
    ∃ K : ℕ, ∀ n ≥ K, centeredRamp n ≤ (n:ℝ)^s →
      roundedTest n (powerCutoff n a b) := by
  let C := ∑' k : PrimePowerIndex, weight k * site k ^ (-s)
  obtain ⟨T, hT⟩ := eventually_scaled_le hsq (1+C)
  obtain ⟨U, hU⟩ : ∃ U : ℕ, ∀ n ≥ U, 1 ≤ Real.log (n:ℝ) :=
    Filter.eventually_atTop.mp ((Real.tendsto_log_atTop.comp
      (tendsto_natCast_atTop_atTop (R := ℝ))).eventually_ge_atTop 1)
  refine ⟨max 2 (max ⌈T⌉₊ U), ?_⟩
  intro n hN hgrid
  have h2 := (Nat.le_max_left _ _).trans hN
  have hTc := ((Nat.le_max_left _ _).trans (Nat.le_max_right _ _)).trans hN
  have hUc := ((Nat.le_max_right _ _).trans (Nat.le_max_right _ _)).trans hN
  apply rounded_of_exact (show 0 < n by omega) _ (approxExp_pos n)
  apply rational_of_centeredRamp_le h2
  have hp := correction_le_power (x := (n:ℝ)) hs hs1 (Nat.cast_nonneg _)
  change correction n ≤ (n:ℝ)^s * C at hp
  have hbound := hT n ((Nat.le_ceil T).trans (by exact_mod_cast hTc))
  have hlog := hU n hUc
  have hpow : (n:ℝ)^((a:ℝ)/b) ≤ (powerCutoff n a b : ℝ) := by
    rw [powerCutoff_eq_ceil n a hb]; exact Nat.le_ceil _
  have hm : (powerCutoff n a b : ℝ) ≤ (powerCutoff n a b : ℝ)*Real.log n :=
    le_mul_of_one_le_right (Nat.cast_nonneg _) hlog
  linarith

/-- The rounded product at an interior exponent gives any strictly larger
centered ceiling at the same tested integer. -/
theorem ceiling_of_rounded {a b : ℕ} (hb : 0 < b) (hab : b < 2*a) {t : ℝ}
    (hqt : (a:ℝ)/b < t) :
    ∃ T : ℕ, ∀ n ≥ T, roundedTest n (powerCutoff n (2*a+b) (4*b)) → centeredRamp n ≤ (n:ℝ)^t := by
  have hbR : 0 < (b:ℝ) := by exact_mod_cast hb
  have hqa : 1/2 < (a:ℝ)/b := by
    apply (lt_div_iff₀ hbR).2
    have : (b:ℝ) < 2*(a:ℝ) := by exact_mod_cast hab
    linarith
  obtain ⟨T,hT⟩ := eventually_ceil_log_le (by linarith : 0 < (a:ℝ)/b) hqt
  obtain ⟨U,hU⟩ := cutoff_midpoint_succ_le a b hb hab
  refine ⟨max 2 (max T U), ?_⟩
  intro n hN hgrid
  have h2 := (Nat.le_max_left _ _).trans hN
  have hTn := ((Nat.le_max_left _ _).trans (Nat.le_max_right _ _)).trans hN
  have hUn := ((Nat.le_max_right _ _).trans (Nat.le_max_right _ _)).trans hN
  have hpass := exact_succ_of_rounded (show 0 < n by omega) _ (approxExp_pos n) hgrid
  have hu := centeredRamp_le_of_rational h2 hpass
  have hstep : ((powerCutoff n (2*a+b) (4*b)+1 : ℕ):ℝ) ≤ (powerCutoff n a b : ℝ) := by
    exact_mod_cast hU n hUn
  have hlog := Real.log_nonneg (show 1 ≤ (n:ℝ) by exact_mod_cast (show 1 ≤ n by omega))
  have hmul := mul_le_mul_of_nonneg_right hstep hlog
  rw [powerCutoff_eq_ceil n a hb] at hmul
  linarith only [hu,hmul,hT n hTn]

/-- Equivalence on an arbitrary family of sample sets with arbitrarily late
lower support. Individual sets can include exceptional endpoints. -/
theorem sampleCeilings_iff_rounded {sample : ℕ → ℕ → Prop}
    (hsamples : ∀ M n : ℕ, sample M n → M ≤ n) :
    SampleCeilings sample ↔ RoundedSampleWindows sample := by
  constructor
  · intro h a b hb hab L
    let q := (a:ℝ)/b
    have hbR : 0 < (b:ℝ) := by exact_mod_cast hb
    have hq : 1/2 < q := by
      apply (lt_div_iff₀ hbR).2
      have : (b:ℝ) < 2*(a:ℝ) := by exact_mod_cast hab
      linarith
    let s := min 1 ((q+1/2)/2)
    have hs : 1/2 < s := lt_min (by norm_num) (by linarith)
    have hs1 : s ≤ 1 := min_le_left _ _
    have hsq : s < q := (min_le_right _ _).trans_lt (by linarith)
    obtain ⟨T,hT⟩ := rounded_of_ceiling (a := a) hb hs hs1 hsq
    obtain ⟨M,hM,hgrid⟩ := h s hs (max L T)
    refine ⟨M, (Nat.le_max_left _ _).trans hM, ?_⟩
    intro n hn
    exact hT n (((Nat.le_max_right _ _).trans hM).trans (hsamples M n hn)) (hgrid n hn)
  · intro h t ht L
    obtain ⟨a,b,hb,hab,hq,hqt⟩ := rational_between ht
    obtain ⟨T,hT⟩ := ceiling_of_rounded hb hab hqt
    obtain ⟨M,hM,hgrid⟩ := h (2*a+b) (4*b) (by omega) (by omega) (max L T)
    refine ⟨M,(Nat.le_max_left _ _).trans hM, ?_⟩
    intro n hn
    exact hT n (((Nat.le_max_right _ _).trans hM).trans (hsamples M n hn)) (hgrid n hn)

end GRWTSK.XiAlpogeSampleProductTransport
