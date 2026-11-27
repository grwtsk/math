/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeIntegerWindows
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAlpogeRampOscillation
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Finite ordinary-prime comparisons on the full three-halves windows

Exponent slack absorbs both the proper-prime-power correction and the
error of rounding real observation scales to integers. The resulting
condition quantifies over natural numerators, denominators, scales and
integer power thresholds and uses only a finite rational product.
-/

noncomputable section
namespace GRWTSK.XiAlpogeFiniteWindowCriterion
open XiAlpogeFiniteRampScore XiAlpogeRationalRampWindow XiAlpogeRationalRampCenter
open XiAlpogeOrdinaryRamp XiAlpogeIntegerWindows XiAlpogeRampOscillation

private def IntCeiling (a : ℝ) : Prop :=
  ∀ L : ℕ, ∃ M ≥ L, ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 → centeredRamp n ≤ (n:ℝ)^a

private theorem real_iff_sampled : WindowCeilings centeredRamp (3/2) ↔
    ∀ b : ℝ, 1/2 < b → IntCeiling b := by
  constructor
  · intro h b hb
    let a := (b+1/2)/2
    have ha : 1/2 < a := by dsimp [a]; linarith
    have hab : a < b := by dsimp [a]; linarith
    obtain ⟨K, _, hK⟩ := unit_sqrt_absorption (theta := a) (eta := b-a)
      ha.le (sub_pos.mpr hab) (by norm_num : (0:ℝ) ≤ 18)
    have e : a + (b-a) = b := by ring
    simpa only [e, IntCeiling] using
      same_power_integer_windows_of_real_windows centeredRamp (fun x => 18*Real.sqrt x)
        (theta := a) (eta := b-a) (M0 := max K 2) (sub_nonneg.mpr hab.le) (h a ha)
        (by
          intro n hn x hnx hxn
          have hn2 : 2 ≤ n := (Nat.le_max_right _ _).trans hn
          have hx2 : (2:ℝ) ≤ x := (show (2:ℝ) ≤ n by exact_mod_cast hn2).trans hnx
          have hw := (abs_le.mp (centeredRamp_unit hx2 (y := n) (by
            rw [abs_of_nonneg (sub_nonneg.mpr hnx)]; linarith))).1
          linarith)
        (fun n hn => hK n ((Nat.le_max_left _ _).trans hn))
  · intro h b hb
    let a := (b+1/2)/2
    have ha : 1/2 < a := by dsimp [a]; linarith
    have hab : a < b := by dsimp [a]; linarith
    obtain ⟨K, _, hK⟩ := unit_sqrt_absorption (theta := a) (eta := b-a)
      ha.le (sub_pos.mpr hab) (by norm_num : (0:ℝ) ≤ 18)
    have e : a + (b-a) = b := by ring
    have hw := real_windows_of_integer_windows centeredRamp (fun x => 18*Real.sqrt x)
      (theta := a) (eta := b-a) (M0 := max K 2) (by linarith) (h a ha)
      (by
        intro n hn x hnx hxn
        have hn2 : 2 ≤ n := (Nat.le_max_right _ _).trans hn
        have hx2 : (2:ℝ) ≤ x := (show (2:ℝ) ≤ n by exact_mod_cast hn2).trans hnx
        have hw := (abs_le.mp (centeredRamp_unit hx2 (y := n) (by
          rw [abs_of_nonneg (sub_nonneg.mpr hnx)]; linarith))).2
        linarith)
      (by
        intro x hx
        have hn := Nat.le_floor hx
        have hx0 : 0 ≤ x := (Nat.cast_nonneg _).trans hx
        have hf := Nat.floor_le hx0
        have hh := hK ⌊x⌋₊ ((Nat.le_max_left _ _).trans hn) x hf (Nat.lt_floor_add_one x)
        have hp := Real.rpow_le_rpow (Nat.cast_nonneg ⌊x⌋₊) hf (by linarith : 0 ≤ a+(b-a))
        linarith)
    intro y
    obtain ⟨M, hMy, hwM⟩ := hw y
    exact ⟨M, hMy, by simpa only [e] using hwM⟩


open Filter Real
theorem eventually_scaled_le {a b : ℝ} (hab : a < b) (C : ℝ) :
    ∃ T : ℝ, ∀ x ≥ T, C * x ^ a ≤ x ^ b := by
  apply eventually_atTop.mp
  filter_upwards [eventually_gt_atTop (0 : ℝ),
    (tendsto_rpow_atTop (sub_pos.mpr hab)).eventually_ge_atTop C] with x hx hC
  calc C * x ^ a ≤ x ^ (b-a) * x ^ a := mul_le_mul_of_nonneg_right hC (rpow_nonneg hx.le _)
       _ = x ^ b := by rw [← rpow_add hx, sub_add_cancel]

theorem eventually_ceil_log_le {a b : ℝ} (ha : 0 < a) (hab : a < b) :
    ∃ T : ℕ, ∀ n : ℕ, T ≤ n → (⌈(n:ℝ)^a⌉₊ : ℝ) * log n + 4 ≤ (n:ℝ) ^ b := by
  apply eventually_atTop.mp
  apply (tendsto_natCast_atTop_atTop (R := ℝ)).eventually (p := fun x : ℝ => (⌈x^a⌉₊ : ℝ) * log x + 4 ≤ x ^ b)
  have hε : (0:ℝ) < 1/4 := by norm_num
  filter_upwards [eventually_ge_atTop (1 : ℝ),
    (isLittleO_log_rpow_atTop (sub_pos.mpr hab)).bound hε,
    (tendsto_rpow_atTop (ha.trans hab)).eventually_ge_atTop 8] with x hx hl h8
  have hx0 := zero_lt_one.trans_le hx
  have hxa := rpow_nonneg hx0.le a
  have hxd := rpow_nonneg hx0.le (b-a)
  have hlog := log_nonneg hx
  have hlog' : log x ≤ 1/4 * x^(b-a) := by
    simpa only [Real.norm_eq_abs, abs_of_nonneg hlog, abs_of_nonneg hxd] using hl
  have hceil : (⌈x^a⌉₊ : ℝ) ≤ 2 * x^a := by
    have h := (Nat.ceil_lt_add_one hxa).le
    have h1 : 1 ≤ x^a := one_le_rpow hx ha.le
    linarith
  have hprod := mul_le_mul hceil hlog' hlog (by positivity : 0 ≤ 2*x^a)
  have hpow : x^a * x^(b-a) = x^b := by rw [← rpow_add hx0]; congr 1; ring
  change 8 ≤ x^b at h8
  linarith only [hprod,hpow,h8]


private theorem cutoff_witness (n a : ℕ) {b : ℕ} (hb : 0 < b) :
    ∃ t : ℕ, n ^ a ≤ t ^ b := by
  exact ⟨n^a+1, (Nat.le_succ _).trans (le_self_pow (by omega) (Nat.ne_of_gt hb))⟩

/-- The least integer whose b-th power reaches n^a. Only integer operations. -/
def powerCutoff (n a b : ℕ) : ℕ :=
  if h : 0 < b then Nat.find (cutoff_witness n a h) else 0

theorem powerCutoff_eq_ceil (n a : ℕ) {b : ℕ} (hb : 0 < b) :
    powerCutoff n a b = ⌈(n : ℝ)^((a : ℝ)/b)⌉₊ := by
  have hr : (0 : ℝ) < b := by exact_mod_cast hb
  have he : ((n : ℝ)^((a : ℝ)/b))^(b : ℝ) = (n : ℝ)^a := by
    rw [← Real.rpow_mul (Nat.cast_nonneg n), div_mul_cancel₀ _ hr.ne', Real.rpow_natCast]
  suffices hi : ∀ k : ℕ, powerCutoff n a b ≤ k ↔ n^a ≤ k^b by
    apply eq_of_forall_ge_iff
    intro k
    rw [hi, Nat.ceil_le]
    rw [← Real.rpow_le_rpow_iff (Real.rpow_nonneg (Nat.cast_nonneg n) _)
      (Nat.cast_nonneg k) hr, he, Real.rpow_natCast]
    exact_mod_cast Iff.rfl
  intro k
  simp only [powerCutoff, dite_eq_left hb]
  constructor
  · intro h
    exact (Nat.find_spec (cutoff_witness n a hb)).trans (Nat.pow_le_pow_left h _)
  · exact fun h => Nat.find_min' (cutoff_witness n a hb) h


/-- At each scale the score is tested by comparing positive rationals, with integer
power exponents and integer limits on both ends of each window. -/
def IntegerProductWindows : Prop :=
  ∀ a b : ℕ, 0 < b → b < 2*a → ∀ L : ℕ, ∃ M ≥ L,
    ∀ n : ℕ, M ≤ n → n^2 ≤ M^3 →
      value n (approxExp n) ≤ (n:ℚ)^(n.factorial * powerCutoff n a b)

private theorem exponent_between {t : ℝ} (ht : 1/2 < t) :
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

/-- The centered von Mangoldt ramp has arbitrarily late real three-halves
windows at every exponent above one half exactly when the finite product
condition holds. This theorem proves the equivalence without positing either side. -/
theorem centeredRamp_windows_iff_integerProducts :
    WindowCeilings centeredRamp (3/2) ↔ IntegerProductWindows := by
  rw [real_iff_sampled]
  constructor
  · intro h a b hb hab lower
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
    let C := ∑' k : PrimePowerIndex, weight k * site k ^ (-s)
    obtain ⟨T, hT⟩ := eventually_scaled_le hsq (1+C)
    obtain ⟨U, hU⟩ : ∃ U : ℕ, ∀ n ≥ U, 1 ≤ Real.log (n:ℝ) :=
      Filter.eventually_atTop.mp ((Real.tendsto_log_atTop.comp
        (tendsto_natCast_atTop_atTop (R := ℝ))).eventually_ge_atTop 1)
    obtain ⟨M,hM,hgrid⟩ := h s hs (max (max lower 2) (max ⌈T⌉₊ U))
    have hL : lower ≤ M := ((Nat.le_max_left _ _).trans (Nat.le_max_left _ _)).trans hM
    have h2 : 2 ≤ M := ((Nat.le_max_right _ _).trans (Nat.le_max_left _ _)).trans hM
    have hTc : ⌈T⌉₊ ≤ M := ((Nat.le_max_left _ _).trans (Nat.le_max_right _ _)).trans hM
    have hUc : U ≤ M := ((Nat.le_max_right _ _).trans (Nat.le_max_right _ _)).trans hM
    refine ⟨M,hL,?_⟩
    intro n hMn hend
    apply rational_of_centeredRamp_le (h2.trans hMn)
    have hp := correction_le_power (x := (n:ℝ)) hs hs1 (Nat.cast_nonneg _)
    change correction n ≤ (n:ℝ)^s * C at hp
    have hbound := hT n ((Nat.le_ceil T).trans (by exact_mod_cast hTc.trans hMn))
    have htest := hgrid n hMn hend
    have hlog := hU n (hUc.trans hMn)
    have hpow : (n:ℝ)^q ≤ (powerCutoff n a b : ℝ) := by
      rw [powerCutoff_eq_ceil n a hb]; exact Nat.le_ceil _
    have hm : (powerCutoff n a b : ℝ) ≤ (powerCutoff n a b : ℝ)*Real.log n :=
      le_mul_of_one_le_right (Nat.cast_nonneg _) hlog
    linarith
  · intro h t ht
    obtain ⟨a,b,hb,hab,hq,hqt⟩ := exponent_between ht
    obtain ⟨T,hT⟩ := eventually_ceil_log_le (by linarith : 0 < (a:ℝ)/b) hqt
    intro L
    obtain ⟨M,hM,hgrid⟩ := h a b hb hab (max L (max T 2))
    refine ⟨M, (Nat.le_max_left _ _).trans hM, ?_⟩
    intro n hMn hend
    have h2 : 2 ≤ n := (((Nat.le_max_right _ _).trans (Nat.le_max_right _ _)).trans hM).trans hMn
    have hTn : T ≤ n := (((Nat.le_max_left _ _).trans (Nat.le_max_right _ _)).trans hM).trans hMn
    have hu := centeredRamp_le_of_rational h2 (hgrid n hMn hend)
    rw [powerCutoff_eq_ceil n a hb] at hu
    exact hu.trans (hT n hTn)

end GRWTSK.XiAlpogeFiniteWindowCriterion
