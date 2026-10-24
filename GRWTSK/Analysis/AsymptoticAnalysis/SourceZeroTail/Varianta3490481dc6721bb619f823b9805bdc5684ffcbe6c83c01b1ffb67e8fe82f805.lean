import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent

/-!
Scratch research: preserve the scale denominator in the accepted actual-source
transform formula. This is a quantitative approximation lemma, not a signed
zero-sum lower witness or an RH theorem. grwtsk contributors's source program;
OpenAI Codex independent scale-bound derivation.
-/

set_option autoImplicit false

namespace ContinuousResearch.ScaleAwareZeroDecay

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets

noncomputable section

private theorem polynomial_norm_le (t : ℂ) (ht : 1 ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ 266 * ‖t‖ ^ 4 := by
  have h2 : ‖t‖ ≤ ‖t‖ ^ 2 := by nlinarith [norm_nonneg t]
  have h3 : ‖t‖ ^ 2 ≤ ‖t‖ ^ 3 := by nlinarith [sq_nonneg (‖t‖ - 1)]
  have h4 : ‖t‖ ^ 3 ≤ ‖t‖ ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) (pow_nonneg (norm_nonneg t) 3)]
  have hb : ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by norm_num [norm_mul, norm_pow]
  nlinarith

/-- The scale-aware constant retains A⁴/A^(17/2) from the exact source formula. -/
def decayConstant (A : ℝ) : ℝ :=
  408576 * (A ^ 4 / A ^ (17 / 2 : ℝ)) * Real.exp (A / 2)

/-- Positive radii make the retained scale ratio exactly A^(-9/2). -/
theorem decayConstant_eq_neg_nine_half {A : ℝ} (hA : 0 < A) :
    decayConstant A = 408576 * A ^ (-(9 / 2 : ℝ)) * Real.exp (A / 2) := by
  have hs : A ^ 4 / A ^ (17 / 2 : ℝ) = A ^ (-(9 / 2 : ℝ)) := by
    rw [← Real.rpow_natCast A 4, ← Real.rpow_sub hA]
    norm_num
  rw [decayConstant, hs]

/-- The actual unnormalized source transform has cubic frequency decay with its
full radius denominator. Every A and z is quantified in the stated domains. -/
theorem transform_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤ decayConstant A / ‖z‖ ^ 3 := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := by linarith
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : 1 ≤ ‖(A : ℂ) * z‖ := by
    rw [norm_mul, hnormA]
    nlinarith
  have hp := polynomial_norm_le ((A : ℂ) * z) hAz
  have hn := polynomial_norm_le (-((A : ℂ) * z)) (by simpa using hAz)
  simp only [norm_neg, norm_mul, hnormA, mul_pow] at hp hn
  have hepos : ‖Complex.exp ((A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    nlinarith [hzre.2]
  have heneg : ‖Complex.exp (-(A : ℂ) * z)‖ ≤ Real.exp (A / 2) := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im,
      Complex.ofReal_re, Complex.ofReal_im, neg_zero, zero_mul, sub_zero]
    nlinarith [hzre.1]
  have hfactor : ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ := norm_sub_le _ _
      _ ≤ _ := by norm_num [norm_pow]; nlinarith
  have hscale_norm : ‖((A ^ (17 / 2 : ℝ) : ℝ) : ℂ)‖ = A ^ (17 / 2 : ℝ) := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [norm_mul, norm_div, norm_mul, norm_mul, norm_pow, hscale_norm]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 * (2 * ‖z‖ ^ 2) / (A ^ (17 / 2 : ℝ) * ‖z‖ ^ 9)) *
        (Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4)) +
          Real.exp (A / 2) * (266 * (A ^ 4 * ‖z‖ ^ 4))) := by
      gcongr
      calc
        _ ≤ ‖Complex.exp ((A : ℂ) * z) * transformPolynomial ((A : ℂ) * z)‖ +
            ‖Complex.exp (-(A : ℂ) * z) * transformPolynomial (-(A : ℂ) * z)‖ :=
          norm_sub_le _ _
        _ ≤ _ := by
          simp only [norm_mul]
          gcongr
          simpa only [neg_mul] using hn
    _ = decayConstant A / ‖z‖ ^ 3 := by
      unfold decayConstant
      field_simp
      ring

/-- The radius exponent is explicit; the transform is still unnormalized. -/
theorem transform_norm_le_neg_nine_half (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤
      408576 * A ^ (-(9 / 2 : ℝ)) * Real.exp (A / 2) / ‖z‖ ^ 3 := by
  simpa only [decayConstant_eq_neg_nine_half (show 0 < A by linarith)] using
    transform_norm_le A hA z hzre hz

/-- The norm of an ordinary complex square supplies a tail majorant only. -/
theorem transform_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖bilateralTransform A z ^ 2‖ ≤ decayConstant A ^ 2 / ‖z‖ ^ 6 := by
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A z))
    (transform_norm_le A hA z hzre hz) 2
  simpa only [norm_pow, div_pow, ← pow_mul, Nat.mul_comm 3 2] using hs

#check decayConstant_eq_neg_nine_half
#check transform_norm_le
#check transform_norm_le_neg_nine_half
#check transform_square_norm_le
#print axioms decayConstant_eq_neg_nine_half
#print axioms transform_norm_le
#print axioms transform_norm_le_neg_nine_half
#print axioms transform_square_norm_le

end
end ContinuousResearch.ScaleAwareZeroDecay

namespace ContinuousResearch.SourceZeroTail

/-!
Scratch #311 assembly for the unchanged normalized source and analytic-multiplicity
occurrences. Ordinary complex squares remain the readout. Norms majorize only its
omitted tail. The growing-height path does not supply a signed lower witness or RH.
grwtsk contributors's source/problem direction; OpenAI Codex proof and review work.
-/

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroObject ZeroSummability ZeroSideTargets
open ContinuousResearch.ScaleAwareZeroDecay

noncomputable section

def Z0 : ℝ := 4096 / 109395

theorem Z0_pos : 0 < Z0 := by norm_num [Z0]

theorem normalization_lower (A : ℝ) : Z0 ≤ sourceNormalization A := by
  unfold sourceNormalization Z0
  have h1 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have h2 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  norm_num at *
  linarith

/-- The actual transform divided by the unchanged source normalization. -/
def normalizedTransform (A : ℝ) (z : ℂ) : ℂ :=
  bilateralTransform A z / (Real.sqrt (sourceNormalization A) : ℂ)

/-- Normalization preserves ordinary complex squares exactly. -/
theorem normalized_square_eq (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    normalizedTransform A z ^ 2 = bilateralTransform A z ^ 2 / (sourceNormalization A : ℂ) := by
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt (source_normalization_pos A hA).le
  simp only [normalizedTransform, div_pow, hs]

theorem normalized_squares_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ normalizedTransform A (shiftedValue o) ^ 2) := by
  simpa only [normalized_square_eq A hA] using
    (FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent.source_transform_squares_summable
      A hA).div_const (sourceNormalization A : ℂ)

theorem normalized_square_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence ↦ ‖normalizedTransform A (shiftedValue o) ^ 2‖) := by
  have hs := (FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent.source_transform_square_norms_summable
    A hA).div_const (sourceNormalization A)
  simpa only [normalized_square_eq A hA, norm_div, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (source_normalization_pos A hA)] using hs

theorem normalized_square_norm_le (A : ℝ) (hA : 1 ≤ A) (z : ℂ)
    (hzre : -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2) (hz : 1 ≤ ‖z‖) :
    ‖normalizedTransform A z ^ 2‖ ≤ (decayConstant A ^ 2 / Z0) / ‖z‖ ^ 6 := by
  rw [normalized_square_eq A hA, norm_div, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (source_normalization_pos A hA)]
  calc
    _ ≤ (decayConstant A ^ 2 / ‖z‖ ^ 6) / sourceNormalization A :=
      div_le_div_of_nonneg_right (transform_square_norm_le A hA z hzre hz)
        (source_normalization_pos A hA).le
    _ ≤ (decayConstant A ^ 2 / ‖z‖ ^ 6) / Z0 := by
      exact div_le_div_of_nonneg_left (by positivity) Z0_pos (normalization_lower A)
    _ = _ := by ring

/-- An elementary p-series tail, including the first term at N. -/
theorem pseries_tail_le (N : ℕ) (hN : 1 ≤ N) :
    (∑' j : ℕ, (j + N : ℝ) ^ (-2 : ℝ)) ≤ 2 / (N : ℝ) := by
  have hNpos : 0 < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le (by decide : 0 < 1) hN)
  have anti : AntitoneOn (fun x : ℝ ↦ x ^ (-2 : ℝ)) (Ici (N : ℝ)) := by
    intro x hx y _hy hxy
    exact Real.rpow_le_rpow_of_nonpos (hNpos.trans_le hx) hxy (by norm_num)
  have hi := anti.tsum_comp_add_le_integral N
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hNpos)
    (fun x hx ↦ Real.rpow_nonneg (hNpos.trans hx).le _)
  rw [integral_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) hNpos] at hi
  norm_num only [show (-2 : ℝ) + 1 = -1 by norm_num, Real.rpow_neg_one, neg_div_neg_eq, div_one] at hi
  have hh : Summable (fun j : ℕ ↦ (j + N : ℝ) ^ (-2 : ℝ)) := by
    simpa only [Nat.cast_add] using
      (summable_nat_add_iff N).mpr (Real.summable_nat_rpow.mpr (by norm_num : (-2 : ℝ) < -1))
  have hsplit := hh.sum_add_tsum_nat_add 1
  simp only [Finset.sum_range_one, Nat.cast_zero, zero_add] at hsplit
  have hfirst : (N : ℝ) ^ (-2 : ℝ) ≤ 1 / (N : ℝ) := by
    have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
    rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (le_of_lt hNpos),
      Real.rpow_natCast]
    simpa only [one_div] using
      one_div_le_one_div_of_le hNpos (show (N : ℝ) ≤ (N : ℝ) ^ 2 by nlinarith)
  calc
    _ = (N : ℝ) ^ (-2 : ℝ) + ∑' j : ℕ, ((j + 1 : ℕ) + N : ℝ) ^ (-2 : ℝ) := hsplit.symm
    _ ≤ 1 / (N : ℝ) + 1 / (N : ℝ) := by
      gcongr
      simpa only [Nat.cast_add, Nat.cast_one, add_assoc, add_comm (1 : ℝ), one_div] using hi
    _ = _ := by ring

/-- Strict omitted-height convention; all multiplicity slots remain present. -/
def HeightTail (T : ℝ) := {o : ZeroOccurrence // T < |(shiftedValue o).im|}

/-- Closed retained-height convention, complementary to the strict omitted tail. -/
def HeightRetained (T : ℝ) := {o : ZeroOccurrence // |(shiftedValue o).im| ≤ T}

theorem heightRetained_finite (T : ℝ) : Finite (HeightRetained T) := by
  have := zeroBallPoints_finite (T + 1)
  let B := Σ p : ZeroBallPoints (T + 1), Fin (multiplicity p.val)
  let f : HeightRetained T → B := fun o ↦ ⟨⟨o.val.1, by
    change ‖shiftedValue o.val‖ ≤ T + 1
    have hr : |(shiftedValue o.val).re| ≤ 1 / 2 :=
      abs_le.mpr ⟨(shiftedValue_strip o.val).1.le, (shiftedValue_strip o.val).2.le⟩
    have hi := o.property
    have hn := Complex.norm_le_abs_re_add_abs_im (shiftedValue o.val)
    linarith⟩, o.val.2⟩
  apply Finite.of_injective f
  intro o p h
  apply Subtype.ext
  exact congrArg (fun t : B ↦ (⟨t.1.val, t.2⟩ : ZeroOccurrence)) h

/-- Reindex the omitted occurrences by their radial shell offset. -/
def HeightShell (T : ℝ) (j : ℕ) : Type :=
  (fun o : HeightTail T ↦ shellIndex o.val - ⌊T⌋₊) ⁻¹' {j}

theorem tail_floor_le (T : ℝ) (o : HeightTail T) : ⌊T⌋₊ ≤ shellIndex o.val :=
  Nat.floor_mono (o.property.le.trans (Complex.abs_im_le_norm _))

theorem floor_half_le (T : ℝ) (hT : 2 ≤ T) : T / 2 ≤ (⌊T⌋₊ : ℝ) := by
  have hfloor := Nat.lt_floor_add_one T
  linarith

def heightShellToShell (T : ℝ) (j : ℕ) : HeightShell T j → ZeroShell (j + ⌊T⌋₊) :=
  fun o ↦ ⟨o.val.val, by
    have h := tail_floor_le T o.val
    have hj : shellIndex o.val.val - ⌊T⌋₊ = j := by simpa using o.property
    omega⟩

theorem heightShellToShell_injective (T : ℝ) (j : ℕ) :
    Function.Injective (heightShellToShell T j) := by
  intro o p h
  apply Subtype.ext
  apply Subtype.ext
  exact congrArg (fun x : ZeroShell (j + ⌊T⌋₊) ↦ x.val) h

theorem heightShell_finite (T : ℝ) (j : ℕ) : Finite (HeightShell T j) := by
  have := zeroShell_finite (j + ⌊T⌋₊)
  exact Finite.of_injective (heightShellToShell T j) (heightShellToShell_injective T j)

theorem heightShell_card_le (T : ℝ) (j : ℕ) :
    Nat.card (HeightShell T j) ≤ Nat.card (ZeroShell (j + ⌊T⌋₊)) := by
  have := zeroShell_finite (j + ⌊T⌋₊)
  exact Nat.card_le_card_of_injective (heightShellToShell T j) (heightShellToShell_injective T j)

/-- A restricted shell bound, retaining each analytic-multiplicity occurrence. -/
theorem heightShell_norm_sum_le (C A T : ℝ) (hC : 0 < C)
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4)
    (hA : 1 ≤ A) (hT : 2 ≤ T) (j : ℕ) :
    (∑' o : HeightShell T j, ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖) ≤
      (16 * C * (decayConstant A ^ 2 / Z0)) * (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ) := by
  have hZ := Z0_pos
  have hN : 1 ≤ ⌊T⌋₊ := (Nat.one_le_floor_iff T).mpr (by linarith)
  have hn : (1 : ℝ) ≤ (j + ⌊T⌋₊ : ℝ) := by exact_mod_cast (show 1 ≤ j + ⌊T⌋₊ by omega)
  have hnpos : (0 : ℝ) < (j + ⌊T⌋₊ : ℝ) := by linarith
  have hpoint (o : HeightShell T j) :
      ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖ ≤
        (decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6 := by
    have hb := Nat.floor_le (norm_nonneg (shiftedValue o.val.val))
    change (shellIndex o.val.val : ℝ) ≤ ‖shiftedValue o.val.val‖ at hb
    have ho : shellIndex o.val.val = j + ⌊T⌋₊ := (heightShellToShell T j o).property
    rw [ho, Nat.cast_add] at hb
    calc
      _ ≤ (decayConstant A ^ 2 / Z0) / ‖shiftedValue o.val.val‖ ^ 6 :=
        normalized_square_norm_le A hA _
          ⟨(shiftedValue_strip o.val.val).1.le, (shiftedValue_strip o.val.val).2.le⟩ (hn.trans hb)
      _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (pow_pos hnpos _)
        (pow_le_pow_left₀ (by positivity) hb 6)
  have hcard : (Nat.card (HeightShell T j) : ℝ) ≤ C * (j + ⌊T⌋₊ + 1 : ℝ) ^ 4 :=
    (show (Nat.card (HeightShell T j) : ℝ) ≤ Nat.card (ZeroShell (j + ⌊T⌋₊)) by
      exact_mod_cast heightShell_card_le T j).trans (by simpa only [Nat.cast_add] using hc (j + ⌊T⌋₊))
  have hp : (j + ⌊T⌋₊ + 1 : ℝ) ^ 4 ≤ 16 * (j + ⌊T⌋₊ : ℝ) ^ 4 := by
    calc
      _ ≤ (2 * (j + ⌊T⌋₊ : ℝ)) ^ 4 := pow_le_pow_left₀ (by positivity) (by linarith) 4
      _ = _ := by ring
  have := heightShell_finite T j
  let := Fintype.ofFinite (HeightShell T j)
  calc
    _ ≤ ∑' _o : HeightShell T j, (decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6 :=
      Summable.tsum_le_tsum hpoint Summable.of_finite Summable.of_finite
    _ = (Nat.card (HeightShell T j) : ℝ) * ((decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (C * (j + ⌊T⌋₊ + 1 : ℝ) ^ 4) * ((decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6) :=
      mul_le_mul_of_nonneg_right hcard (by positivity)
    _ ≤ (C * (16 * (j + ⌊T⌋₊ : ℝ) ^ 4)) * ((decayConstant A ^ 2 / Z0) / (j + ⌊T⌋₊ : ℝ) ^ 6) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hp hC.le) (by positivity)
    _ = _ := by
      rw [show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg hnpos.le, Real.rpow_natCast]
      field_simp

/-- The exact strict-height ordinary-square family is summable. -/
theorem height_tail_summable (A T : ℝ) (hA : 1 ≤ A) :
    Summable (fun o : HeightTail T ↦ normalizedTransform A (shiftedValue o.val) ^ 2) :=
  (normalized_squares_summable A hA).subtype _

/-- Absolute tail estimate before expanding the radius-dependent coefficient. -/
theorem height_tail_norms_le (C A T : ℝ) (hC : 0 < C)
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val) ^ 2‖) ≤
      64 * C * (decayConstant A ^ 2 / Z0) / T := by
  have hZ := Z0_pos
  have hN : 1 ≤ ⌊T⌋₊ := (Nat.one_le_floor_iff T).mpr (by linarith)
  have hNpos : 0 < (⌊T⌋₊ : ℝ) := by exact_mod_cast (show 0 < ⌊T⌋₊ by omega)
  have hs := (normalized_square_norms_summable A hA).subtype
    {o : ZeroOccurrence | T < |(shiftedValue o).im|}
  have hpart : HasSum
      (fun j : ℕ ↦ ∑' o : HeightShell T j, ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖)
      (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val) ^ 2‖) := by
    convert hs.hasSum.tsum_fiberwise (fun o : HeightTail T ↦ shellIndex o.val - ⌊T⌋₊) using 1 <;> rfl
  have hm : Summable
      (fun j : ℕ ↦ (16 * C * (decayConstant A ^ 2 / Z0)) * (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ)) := by
    have hh : Summable (fun j : ℕ ↦ (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ)) := by
      simpa only [Nat.cast_add] using (summable_nat_add_iff ⌊T⌋₊).mpr
        (Real.summable_nat_rpow.mpr (by norm_num : (-2 : ℝ) < -1))
    exact hh.mul_left _
  calc
    _ = ∑' j : ℕ, ∑' o : HeightShell T j, ‖normalizedTransform A (shiftedValue o.val.val) ^ 2‖ :=
      hpart.tsum_eq.symm
    _ ≤ ∑' j : ℕ, (16 * C * (decayConstant A ^ 2 / Z0)) * (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ) :=
      Summable.tsum_le_tsum (heightShell_norm_sum_le C A T hC hc hA hT) hpart.summable hm
    _ = (16 * C * (decayConstant A ^ 2 / Z0)) * ∑' j : ℕ, (j + ⌊T⌋₊ : ℝ) ^ (-2 : ℝ) :=
      tsum_mul_left
    _ ≤ (16 * C * (decayConstant A ^ 2 / Z0)) * (2 / (⌊T⌋₊ : ℝ)) :=
      mul_le_mul_of_nonneg_left (pseries_tail_le ⌊T⌋₊ hN) (by positivity)
    _ = 32 * C * (decayConstant A ^ 2 / Z0) / (⌊T⌋₊ : ℝ) := by ring
    _ ≤ 32 * C * (decayConstant A ^ 2 / Z0) / (T / 2) :=
      div_le_div_of_nonneg_left (by positivity) (by linarith) (floor_half_le T hT)
    _ = _ := by ring

/-- Norms majorize only the omitted ordinary-complex-square readout. -/
theorem height_tail_norm_le (C A T : ℝ) (hC : 0 < C)
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4)
    (hA : 1 ≤ A) (hT : 2 ≤ T) :
    ‖∑' o : HeightTail T, normalizedTransform A (shiftedValue o.val) ^ 2‖ ≤
      64 * C * (decayConstant A ^ 2 / Z0) / T :=
  (norm_tsum_le_tsum_norm ((normalized_square_norms_summable A hA).subtype _)).trans
    (height_tail_norms_le C A T hC hc hA hT)

/-- The full scale coefficient is A⁻⁹ exp(A), without an A-dependent loss. -/
theorem decayConstant_sq_eq (A : ℝ) (hA : 0 < A) :
    decayConstant A ^ 2 = (408576 : ℝ) ^ 2 * A ^ (-9 : ℝ) * Real.exp A := by
  have hp : (A ^ (-(9 / 2 : ℝ))) ^ 2 = A ^ (-9 : ℝ) := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul hA.le]
    norm_num
  have he : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [decayConstant_eq_neg_nine_half hA]
  simp only [mul_pow, hp, he]

/-- A chosen witness of the already-proved multiplicity-aware quartic count. -/
def shellConstant : ℝ := Classical.choose ZeroShellCount.quartic_count

theorem shellConstant_pos : 0 < shellConstant :=
  (Classical.choose_spec ZeroShellCount.quartic_count).1

theorem shellConstant_count (n : ℕ) :
    (Nat.card (ZeroShell n) : ℝ) ≤ shellConstant * (n + 1 : ℝ) ^ 4 :=
  (Classical.choose_spec ZeroShellCount.quartic_count).2 n

/-- One fixed tail constant for every radius and spectral height in the stated domains. -/
def tailConstant : ℝ := 64 * shellConstant * (408576 : ℝ) ^ 2 / Z0

theorem tailConstant_nonneg : 0 ≤ tailConstant := by
  have hC := shellConstant_pos
  have hZ := Z0_pos
  unfold tailConstant
  positivity

/-- The omitted readout retains ordinary complex squares. -/
def tailReadout (A T : ℝ) : ℂ :=
  ∑' o : HeightTail T, normalizedTransform A (shiftedValue o.val) ^ 2

def tailError (A T : ℝ) : ℝ := ‖tailReadout A T‖

/-- The retained readout is finite and continues to use ordinary complex squares. -/
def retainedReadout (A T : ℝ) : ℂ :=
  ∑' o : HeightRetained T, normalizedTransform A (shiftedValue o.val) ^ 2

/-- Exact closed/strict source partition; boundary occurrences are retained once. -/
theorem readout_partition (A T : ℝ) (hA : 1 ≤ A) :
    (∑' o : ZeroOccurrence, normalizedTransform A (shiftedValue o) ^ 2) =
      retainedReadout A T + tailReadout A T := by
  have hs := normalized_squares_summable A hA
  have hp := Summable.tsum_add_tsum_compl
    (s := {o : ZeroOccurrence | |(shiftedValue o).im| ≤ T}) (hs.subtype _) (hs.subtype _)
  have he : {o : ZeroOccurrence | |(shiftedValue o).im| ≤ T}ᶜ =
      {o : ZeroOccurrence | T < |(shiftedValue o).im|} := by
    ext o
    simp
  rw [he] at hp
  exact hp.symm

/-- The omitted readout is exactly the truncation difference. -/
theorem truncation_error_eq (A T : ℝ) (hA : 1 ≤ A) :
    ‖(∑' o : ZeroOccurrence, normalizedTransform A (shiftedValue o) ^ 2) - retainedReadout A T‖ =
      tailError A T := by
  rw [readout_partition A T hA, add_sub_cancel_left]
  rfl

/-- Unconditional actual-source tail estimate at every real admissible pair. -/
theorem actual_source_tail_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 2 ≤ T) :
    Summable (fun o : HeightTail T ↦ normalizedTransform A (shiftedValue o.val) ^ 2) ∧
      tailError A T ≤ tailConstant * A ^ (-9 : ℝ) * Real.exp A / T := by
  refine ⟨height_tail_summable A T hA, ?_⟩
  have hb := height_tail_norm_le shellConstant A T shellConstant_pos shellConstant_count hA hT
  rw [decayConstant_sq_eq A (by linarith)] at hb
  unfold tailError tailReadout tailConstant
  convert hb using 1
  ring

/-- Existential form of the requested fixed-constant truncation obligation. -/
theorem exists_uniform_tail_bound :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ A : ℝ, 1 ≤ A → ∀ T : ℝ, 2 ≤ T →
      Summable (fun o : HeightTail T ↦ normalizedTransform A (shiftedValue o.val) ^ 2) ∧
        tailError A T ≤ K * A ^ (-9 : ℝ) * Real.exp A / T :=
  ⟨tailConstant, tailConstant_nonneg, fun A hA T hT ↦ actual_source_tail_bound A T hA hT⟩

/-- The finite retained ordinary-square readout approximates the complete source sum. -/
theorem actual_source_truncation_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 2 ≤ T) :
    ‖(∑' o : ZeroOccurrence, normalizedTransform A (shiftedValue o) ^ 2) - retainedReadout A T‖ ≤
      tailConstant * A ^ (-9 : ℝ) * Real.exp A / T := by
  rw [truncation_error_eq A T hA]
  exact (actual_source_tail_bound A T hA hT).2

/-- The particular decoder height exp(A) resolves the source at all real A≥1. -/
theorem exponential_height_bound (A : ℝ) (hA : 1 ≤ A) :
    tailError A (Real.exp A) ≤ tailConstant * A ^ (-9 : ℝ) := by
  have hT : 2 ≤ Real.exp A := by linarith [Real.add_one_le_exp A]
  have hb := (actual_source_tail_bound A (Real.exp A) hA hT).2
  simpa only [mul_div_cancel_right₀ _ (Real.exp_ne_zero A)] using hb

/-- Uniform error control on every real radius tail; no sampled-scale restriction. -/
theorem exponential_height_uniform (R : ℝ) (hR : 1 ≤ R) (A : ℝ) (hRA : R ≤ A) :
    tailError A (Real.exp A) ≤ tailConstant * R ^ (-9 : ℝ) :=
  (exponential_height_bound A (hR.trans hRA)).trans
    (mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow_of_nonpos (by linarith) hRA (by norm_num)) tailConstant_nonneg)

/-- The actual error along exp(A) tends to zero as real A grows. -/
theorem exponential_height_tendsto_zero :
    Tendsto (fun A : ℝ ↦ tailError A (Real.exp A)) atTop (𝓝 0) := by
  apply squeeze_zero' (Eventually.of_forall (fun A ↦ norm_nonneg (tailReadout A (Real.exp A))))
    (eventually_ge_atTop 1 |>.mono (fun A hA ↦ exponential_height_bound A hA))
  simpa only [mul_zero] using
    (tendsto_rpow_neg_atTop (by norm_num : (0 : ℝ) < 9)).const_mul tailConstant

/-- The supremum of decoder error on A≥R has the same explicit decreasing bound. -/
theorem exponential_height_sup_bound (R : ℝ) (hR : 1 ≤ R) :
    sSup (Set.range (fun A : {A : ℝ // R ≤ A} ↦ tailError A.val (Real.exp A.val))) ≤
      tailConstant * R ^ (-9 : ℝ) := by
  apply csSup_le
  · exact ⟨tailError R (Real.exp R), ⟨⟨R, le_rfl⟩, rfl⟩⟩
  · intro x hx
    obtain ⟨A, rfl⟩ := hx
    exact exponential_height_uniform R hR A.val A.property

#check Z0_pos
#check normalization_lower
#check normalized_square_eq
#check normalized_squares_summable
#check normalized_square_norms_summable
#check normalized_square_norm_le
#check pseries_tail_le
#check heightRetained_finite
#check tail_floor_le
#check floor_half_le
#check heightShellToShell_injective
#check heightShell_finite
#check heightShell_card_le
#check heightShell_norm_sum_le
#check height_tail_summable
#check height_tail_norms_le
#check height_tail_norm_le
#check decayConstant_sq_eq
#check shellConstant_pos
#check shellConstant_count
#check tailConstant_nonneg
#check readout_partition
#check truncation_error_eq
#check actual_source_tail_bound
#check exists_uniform_tail_bound
#check actual_source_truncation_bound
#check exponential_height_bound
#check exponential_height_uniform
#check exponential_height_tendsto_zero
#check exponential_height_sup_bound
#print axioms Z0_pos
#print axioms normalization_lower
#print axioms normalized_square_eq
#print axioms normalized_squares_summable
#print axioms normalized_square_norms_summable
#print axioms normalized_square_norm_le
#print axioms pseries_tail_le
#print axioms heightRetained_finite
#print axioms tail_floor_le
#print axioms floor_half_le
#print axioms heightShellToShell_injective
#print axioms heightShell_finite
#print axioms heightShell_card_le
#print axioms heightShell_norm_sum_le
#print axioms height_tail_summable
#print axioms height_tail_norms_le
#print axioms height_tail_norm_le
#print axioms decayConstant_sq_eq
#print axioms shellConstant_pos
#print axioms shellConstant_count
#print axioms tailConstant_nonneg
#print axioms readout_partition
#print axioms truncation_error_eq
#print axioms actual_source_tail_bound
#print axioms exists_uniform_tail_bound
#print axioms actual_source_truncation_bound
#print axioms exponential_height_bound
#print axioms exponential_height_uniform
#print axioms exponential_height_tendsto_zero
#print axioms exponential_height_sup_bound

end
end ContinuousResearch.SourceZeroTail
