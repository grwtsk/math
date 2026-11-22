/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPhysicalHalfCorrelation

/-!
# Half-energy allowance for omitted later primes in the 95-prime Weil return

Until the radius reaches log 503, all later prime powers shift by at least
the radius. The two supported arguments in the correlation then lie in
opposite halves, up to endpoints. The physical half-correlation theorem
bounds the translated product integral by half the total L² energy.
We keep the norm of the actual inverse-character factor term by term.

The bound concerns omission of later prime terms, with the original
conductor, parity, archimedean integral, and both pole weights retained.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection CharacterWindow SourcePrimeCorrelation WeilPhysicalHalfCorrelation

variable {q : ℕ}

theorem laterPower_log_ge {A : ℝ} {n : ℕ} (hn : n ∈ laterPowers A) :
    Real.log 503 ≤ Real.log (n : ℝ) := by
  have base := (Finset.mem_filter.mp hn).2
  have npos : 2 ≤ n := by
    have active := (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).1
    exact (Finset.mem_filter.mp active).2.1
  have bound : 503 ≤ n := base.trans (Nat.minFac_le (by omega))
  exact Real.log_le_log (by norm_num) (by exact_mod_cast bound)

/-- Character-sensitive later-prime budget for the original compact tests. -/
theorem abs_later_readout_le_half_energy (A : ℝ) (χ : DirichletCharacter ℂ q)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (radius : A ≤ Real.log 503) :
    |primeReadout (laterPowers A) (primeAtom χ (fun n => correlation f (Real.log n)))| ≤
      (∑ n ∈ laterPowers A, primeWeight n * ‖χ n‖) * energy f := by
  have hsupport : ∀ t : ℝ, t ∉ Icc (-A) A → f t = 0 := by
    intro t outside
    by_contra nonzero
    exact outside (support (subset_tsupport _ nonzero))
  unfold primeReadout
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ laterPowers A, |(primeAtom χ (fun n => correlation f (Real.log n)) n).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ laterPowers A, (primeWeight n * ‖χ n‖) * (energy f / 2) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      calc
        _ ≤ ‖primeAtom χ (fun n => correlation f (Real.log n)) n‖ :=
          Complex.abs_re_le_norm _
        _ = (primeWeight n * ‖χ n‖) * ‖correlation f (Real.log n)‖ := by
          rw [primeAtom, norm_mul, Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg (primeWeight_nonneg _), norm_mul, Complex.norm_conj, mul_assoc]
        _ ≤ _ := mul_le_mul_of_nonneg_left
          (norm_correlation_le_half_energy_of_support hf A _ (radius.trans (laterPower_log_ge hn)) hsupport)
          (mul_nonneg (primeWeight_nonneg _) (norm_nonneg _))
    _ = _ := by rw [← Finset.sum_mul]; ring

/-- Two-sided allowance for inexact retained atoms and deleted later powers.
The first-window error is still measured against the exact signed atoms. -/
theorem abs_firstOnly_error_le_half_energy (χ : DirichletCharacter ℂ q) (A : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (radius : A ≤ Real.log 503) (observed : ℕ → ℂ) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    |primeReadout (firstPowers A) observed - signedWindowValue χ A f -
      primeReadout (laterPowers A) a| ≤
      2 * (∑ n ∈ firstPowers A, ‖observed n - a n‖) +
      (∑ n ∈ laterPowers A, primeWeight n * ‖(χ⁻¹) n‖) * energy f := by
  intro a
  calc
    _ ≤ |primeReadout (firstPowers A) observed - signedWindowValue χ A f| +
        |primeReadout (laterPowers A) a| := abs_sub _ _
    _ ≤ _ := add_le_add (abs_primeReadout_sub_le _ _ _)
      (abs_later_readout_le_half_energy A χ⁻¹ hf support radius)

/-- Immediately above the first window, the whole deleted inventory is
the single prime 503. The next prime is excluded even at the endpoint. -/
theorem laterPowers_eq_singleton_503 {A : ℝ}
    (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    laterPowers A = {503} := by
  ext n
  rw [Finset.mem_singleton]
  constructor
  · intro hn
    obtain ⟨p, m, hp, hm, rfl⟩ :=
      (isPrimePow_nat_iff _).1 (Finset.mem_filter.mp (Finset.mem_filter.mp hn).1).2
    obtain ⟨base, lt⟩ := (pow_mem_laterPowers_iff hp hm).1 hn
    have small : p ^ m < 509 := by exact_mod_cast lt.trans_le hi
    have exponent : m = 1 := by
      by_contra notOne
      have sq := Nat.pow_le_pow_right hp.pos (show 2 ≤ m by omega)
      have lower : 503 ^ 2 ≤ p ^ 2 := Nat.pow_le_pow_left base 2
      omega
    subst m
    simp only [pow_one] at small ⊢
    interval_cases p <;> norm_num at *
  · rintro rfl
    simpa using (pow_mem_laterPowers_iff (by norm_num : Nat.Prime 503)
      (by decide : 0 < (1 : ℕ))).2 ⟨le_rfl, by simpa using lo⟩

/-- In the singleton interval the signed error of an exact first-window
report is the negative of the original inverse-character atom at 503. -/
theorem physicalValue_sub_exactFirstOnly_at_503
    (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (lo : 503 < Real.exp (2 * A)) (hi : Real.exp (2 * A) ≤ 509) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    physicalValue χ A f -
        (windowValue χ A f (signedWindowValue χ A f) + ((2 * (a 503).re : ℝ) : ℂ)) =
      ((-(2 * (a 503).re) : ℝ) : ℂ) := by
  simpa [laterPowers_eq_singleton_503 lo hi, primeReadout] using
    physicalValue_sub_firstOnly χ A f (signedWindowValue χ A f)

<<<<<<< HEAD
=======

/-- Energy at the two endpoints of the physical support overlap for
a nonnegative shift. The set integrals use the original Lebesgue measure. -/
def overlapEnergy (A r : ℝ) (f : ℝ → ℂ) : ℝ :=
  (∫ t in Icc (-A) (A - r), ‖f t‖ ^ 2) +
    (∫ t in Icc (-A + r) A, ‖f t‖ ^ 2)

/-- Charge only source energy at points that can participate in the shifted
correlation. No lower bound on shift relative to the radius is required. -/
theorem norm_correlation_le_overlapEnergy (A r : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A) :
    ‖correlation f r‖ ≤ overlapEnergy A r f / 2 := by
  let square (t : ℝ) := ‖f t‖ ^ 2
  let left := (Icc (-A) (A - r)).indicator square
  let right := (Icc (-A + r) A).indicator square
  have hint : Integrable square volume := hf.integrable_norm_pow (p := 2) (by norm_num)
  have hl : Integrable left volume := hint.indicator measurableSet_Icc
  have hr : Integrable right volume := hint.indicator measurableSet_Icc
  have ht : Integrable (fun t => right (t + r)) volume :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hr
  have point (t : ℝ) :
      ‖star (f t) * f (t + r)‖ ≤ (left t + right (t + r)) / 2 := by
    by_cases h : f t = 0 ∨ f (t + r) = 0
    · have zero : star (f t) * f (t + r) = 0 := by
        rcases h with h | h <;> simp [h]
      rw [zero, norm_zero]
      apply div_nonneg _ (by norm_num)
      exact add_nonneg (indicator_nonneg (fun _ _ => sq_nonneg _) _)
        (indicator_nonneg (fun _ _ => sq_nonneg _) _)
    · push Not at h
      have source := support (subset_tsupport _ h.1)
      have dest := support (subset_tsupport _ h.2)
      have a : t ∈ Icc (-A) (A - r) := ⟨source.1, by linarith [dest.2]⟩
      have b : t + r ∈ Icc (-A + r) A := ⟨by linarith [source.1], dest.2⟩
      simp only [left, right, indicator_of_mem a, indicator_of_mem b, square,
        norm_mul, norm_star]
      nlinarith [sq_nonneg (‖f t‖ - ‖f (t + r)‖)]
  have estimate := norm_integral_le_of_norm_le ((hl.add ht).div_const 2)
    (Filter.Eventually.of_forall point)
  change ‖correlation f r‖ ≤ ∫ t : ℝ, (left t + right (t + r)) / 2 at estimate
  rw [integral_div, integral_add hl ht, integral_add_right_eq_self right r] at estimate
  simpa only [left, right, integral_indicator measurableSet_Icc, square, overlapEnergy]
    using estimate

/-- At shifts at least the radius, the charged intervals have disjoint
interiors, so the overlap budget improves the whole-energy allowance. -/
theorem overlapEnergy_le_energy (A r : ℝ) (shift : A ≤ r)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    overlapEnergy A r f ≤ energy f := by
  let square (t : ℝ) := ‖f t‖ ^ 2
  let left := Icc (-A) (A - r)
  let right := Icc (-A + r) A
  have hint : Integrable square volume := hf.integrable_norm_pow (p := 2) (by norm_num)
  have hl := hint.indicator (s := left) measurableSet_Icc
  have hr := hint.indicator (s := right) measurableSet_Icc
  have nonzero : ∀ᵐ t : ℝ ∂volume, t ≠ 0 := by
    rw [ae_iff]
    simp
  have bound : ∀ᵐ t : ℝ ∂volume, left.indicator square t + right.indicator square t ≤ square t := by
    filter_upwards [nonzero] with t ht
    by_cases inLeft : t ∈ left
    · have notRight : t ∉ right := by
        intro inRight
        have lo : -A + r ≤ t := inRight.1
        have hi : t ≤ A - r := inLeft.2
        exact ht (by linarith)
      simp [indicator_of_mem inLeft, indicator_of_notMem notRight]
    · by_cases inRight : t ∈ right
      · simp [indicator_of_notMem inLeft, indicator_of_mem inRight]
      · simp [indicator_of_notMem inLeft, indicator_of_notMem inRight, square]
  have value := integral_mono_ae (hl.add hr) hint bound
  change (∫ t : ℝ, left.indicator square t + right.indicator square t) ≤ (∫ t : ℝ, square t) at value
  rw [integral_add hl hr, integral_indicator measurableSet_Icc,
    integral_indicator measurableSet_Icc] at value
  exact value

/-- At or beyond twice the radius both overlap intervals have zero measure. -/
theorem overlapEnergy_eq_zero_of_width (A r : ℝ) (width : 2 * A ≤ r)
    (f : ℝ → ℂ) : overlapEnergy A r f = 0 := by
  have left : volume (Icc (-A) (A - r)) = 0 := by
    rw [Real.volume_Icc, ENNReal.ofReal_eq_zero]
    linarith
  have right : volume (Icc (-A + r) A) = 0 := by
    rw [Real.volume_Icc, ENNReal.ofReal_eq_zero]
    linarith
  simp [overlapEnergy, Measure.restrict_eq_zero.mpr left, Measure.restrict_eq_zero.mpr right]

/-- Radius-sensitive omission budget with the original character norm
and the two source overlap intervals for each later prime power. -/
theorem abs_later_readout_le_overlapEnergy (A : ℝ) (χ : DirichletCharacter ℂ q)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A) :
    |primeReadout (laterPowers A) (primeAtom χ (fun n => correlation f (Real.log n)))| ≤
      ∑ n ∈ laterPowers A, (primeWeight n * ‖χ n‖) * overlapEnergy A (Real.log n) f := by
  unfold primeReadout
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ laterPowers A, |(primeAtom χ (fun n => correlation f (Real.log n)) n).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ laterPowers A, (primeWeight n * ‖χ n‖) *
        (overlapEnergy A (Real.log n) f / 2) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      calc
        _ ≤ ‖primeAtom χ (fun n => correlation f (Real.log n)) n‖ := Complex.abs_re_le_norm _
        _ = (primeWeight n * ‖χ n‖) * ‖correlation f (Real.log n)‖ := by
          rw [primeAtom, norm_mul, Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg (primeWeight_nonneg _), norm_mul, Complex.norm_conj, mul_assoc]
        _ ≤ _ := mul_le_mul_of_nonneg_left
          (norm_correlation_le_overlapEnergy A _ hf support)
          (mul_nonneg (primeWeight_nonneg _) (norm_nonneg _))
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      ring

/-- The first-only residual keeps the signed inverse-character atom and
charges later powers by their individually supported overlaps. -/
theorem abs_firstOnly_error_le_overlapEnergy (χ : DirichletCharacter ℂ q) (A : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (observed : ℕ → ℂ) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    |primeReadout (firstPowers A) observed - signedWindowValue χ A f -
      primeReadout (laterPowers A) a| ≤
      2 * (∑ n ∈ firstPowers A, ‖observed n - a n‖) +
      ∑ n ∈ laterPowers A, (primeWeight n * ‖(χ⁻¹) n‖) * overlapEnergy A (Real.log n) f := by
  intro a
  exact (abs_sub _ _).trans (add_le_add (abs_primeReadout_sub_le _ _ _)
    (abs_later_readout_le_overlapEnergy A χ⁻¹ hf support))


/-- The two overlap masses enter through their geometric mean. -/
def overlapGeometric (A r : ℝ) (f : ℝ → ℂ) : ℝ :=
  Real.sqrt (∫ t in Icc (-A) (A - r), ‖f t‖ ^ 2) *
    Real.sqrt (∫ t in Icc (-A + r) A, ‖f t‖ ^ 2)

/-- Cauchy–Schwarz on the two restricted source norms, after translating
the second norm without changing its Lebesgue mass. -/
theorem norm_correlation_le_overlapGeometric (A r : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A) :
    ‖correlation f r‖ ≤ overlapGeometric A r f := by
  let left := (Icc (-A) (A - r)).indicator (fun t => ‖f t‖)
  let right := (Icc (-A + r) A).indicator (fun t => ‖f t‖)
  have hleft : MemLp left 2 volume := hf.norm.indicator measurableSet_Icc
  have hright : MemLp right 2 volume := hf.norm.indicator measurableSet_Icc
  have ht : MemLp (fun t => right (t + r)) 2 volume :=
    hright.comp_measurePreserving (measurePreserving_add_right volume r)
  have point (t : ℝ) :
      ‖star (f t) * f (t + r)‖ = left t * right (t + r) := by
    by_cases zero : f t = 0 ∨ f (t + r) = 0
    · rcases zero with zero | zero
      · by_cases h : t ∈ Icc (-A) (A - r) <;> simp [left, zero, h]
      · by_cases h : t + r ∈ Icc (-A + r) A <;> simp [right, zero, h]
    · push Not at zero
      have source := support (subset_tsupport _ zero.1)
      have target := support (subset_tsupport _ zero.2)
      have a : t ∈ Icc (-A) (A - r) := ⟨source.1, by linarith [target.2]⟩
      have b : t + r ∈ Icc (-A + r) A := ⟨by linarith [source.1], target.2⟩
      simp only [left, right, indicator_of_mem a, indicator_of_mem b, norm_mul, norm_star]
  have bound := integral_mul_le_Lp_mul_Lq_of_nonneg Real.HolderConjugate.two_two
    (Filter.Eventually.of_forall fun t => indicator_nonneg (fun _ _ => norm_nonneg _) t)
    (Filter.Eventually.of_forall fun t => indicator_nonneg (fun _ _ => norm_nonneg _) (t + r))
    (by simpa using hleft) (by simpa using ht)
  change (∫ t : ℝ, left t * right (t + r)) ≤ _ at bound
  have squares (s : Set ℝ) (t : ℝ) :
      (s.indicator (fun u => ‖f u‖) t) ^ 2 = s.indicator (fun u => ‖f u‖ ^ 2) t := by
    by_cases h : t ∈ s <;> simp [h]
  calc
    _ ≤ ∫ t : ℝ, ‖star (f t) * f (t + r)‖ := norm_integral_le_integral_norm _
    _ = ∫ t : ℝ, left t * right (t + r) := integral_congr_ae (Filter.Eventually.of_forall point)
    _ ≤ _ := by
      rw [integral_add_right_eq_self (fun t => right t ^ (2 : ℝ)) r] at bound
      simp_rw [Real.rpow_two, left, right, squares, integral_indicator measurableSet_Icc,
        ← Real.sqrt_eq_rpow] at bound
      exact bound

/-- The geometric allowance always improves or matches the previous half-sum. -/
theorem overlapGeometric_le_half_overlapEnergy (A r : ℝ) (f : ℝ → ℂ) :
    overlapGeometric A r f ≤ overlapEnergy A r f / 2 := by
  let a := ∫ t in Icc (-A) (A - r), ‖f t‖ ^ 2
  let b := ∫ t in Icc (-A + r) A, ‖f t‖ ^ 2
  have ha : 0 ≤ a := integral_nonneg fun _ => sq_nonneg _
  have hb : 0 ≤ b := integral_nonneg fun _ => sq_nonneg _
  change Real.sqrt a * Real.sqrt b ≤ (a + b) / 2
  nlinarith [Real.sq_sqrt ha, Real.sq_sqrt hb, sq_nonneg (Real.sqrt a - Real.sqrt b)]

/-- An empty destination overlap in L² eliminates the actual correlation,
even if the retained source overlap has positive energy. -/
theorem correlation_eq_zero_of_right_overlap_zero (A r : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (zero : (∫ t in Icc (-A + r) A, ‖f t‖ ^ 2) = 0) :
    correlation f r = 0 := by
  apply norm_le_zero_iff.mp
  simpa [overlapGeometric, zero] using norm_correlation_le_overlapGeometric A r hf support

/-- Radius-sensitive omission budget with the original character norm
and the two source overlap intervals for each later prime power. -/
theorem abs_later_readout_le_overlapGeometric (A : ℝ) (χ : DirichletCharacter ℂ q)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A) :
    |primeReadout (laterPowers A) (primeAtom χ (fun n => correlation f (Real.log n)))| ≤
      2 * ∑ n ∈ laterPowers A, (primeWeight n * ‖χ n‖) * overlapGeometric A (Real.log n) f := by
  unfold primeReadout
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ laterPowers A, |(primeAtom χ (fun n => correlation f (Real.log n)) n).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ n ∈ laterPowers A, (primeWeight n * ‖χ n‖) *
        (overlapGeometric A (Real.log n) f) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      calc
        _ ≤ ‖primeAtom χ (fun n => correlation f (Real.log n)) n‖ := Complex.abs_re_le_norm _
        _ = (primeWeight n * ‖χ n‖) * ‖correlation f (Real.log n)‖ := by
          rw [primeAtom, norm_mul, Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg (primeWeight_nonneg _), norm_mul, Complex.norm_conj, mul_assoc]
        _ ≤ _ := mul_le_mul_of_nonneg_left
          (norm_correlation_le_overlapGeometric A _ hf support)
          (mul_nonneg (primeWeight_nonneg _) (norm_nonneg _))

/-- The first-only residual keeps the signed inverse-character atom and
charges later powers by their individually supported overlaps. -/
theorem abs_firstOnly_error_le_overlapGeometric (χ : DirichletCharacter ℂ q) (A : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) (support : tsupport f ⊆ Icc (-A) A)
    (observed : ℕ → ℂ) :
    let a := primeAtom χ⁻¹ (fun n => correlation f (Real.log (n : ℝ)))
    |primeReadout (firstPowers A) observed - signedWindowValue χ A f -
      primeReadout (laterPowers A) a| ≤
      2 * (∑ n ∈ firstPowers A, ‖observed n - a n‖) +
      2 * ∑ n ∈ laterPowers A, (primeWeight n * ‖(χ⁻¹) n‖) * overlapGeometric A (Real.log n) f := by
  intro a
  exact (abs_sub _ _).trans (add_le_add (abs_primeReadout_sub_le _ _ _)
    (abs_later_readout_le_overlapGeometric A χ⁻¹ hf support))

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
