/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilIntegerInventory
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeWeightSampling

/-!
# Support-safe integer inventories and their rounded sine samples

MSC2020: 11M06, 42A38, 65G20.
A superset of the active integer labels is exact on the physical window for
inputs vanishing outside the OPEN window. Both endpoints are included in this
vanishing assertion. It holds for the original zero-extended sine trials.
Extra EXACT translations vanish; their rounded replacements need not vanish.
The error below therefore pays EVERY label of the padded integer inventory.

Consumer: the existing signed-energy lower and complete residual-Gram sample
tables. No prime, pole, gamma, physical shift, or target form is redefined.
SOURCE_PROOF_CANDIDATE. All Lean execution and independent review NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SineInventoryPadding

open LowSchur OddRootProjection OddSineForm OddGammaOutput OddPrimePoleOutput
open GammaCutoffResidual GammaGeometricQuadrature FiniteSineOperator
open FiniteSineGammaQuadrature FiniteSineSpatialResidual IntegerInventory

/-- The endpoint condition needed for pointwise, not merely a.e., source return. -/
theorem finiteSine_zero_outside_open {M : ℕ} (T : ℝ) (hT : 0 < T)
    (c : Fin M → ℝ) {t : ℝ} (ht : t ≤ -T ∨ T ≤ t) : finiteSine T c t = 0 := by
  have hb (n : ℕ) : zeroExtendedSine T n t = 0 := by
    by_cases hm : t ∈ Icc (-T) T
    · have he : t = -T ∨ t = T := by
        rcases ht with hl | hu
        · exact Or.inl (le_antisymm hl hm.1)
        · exact Or.inr (le_antisymm hm.2 hu)
      rcases he with he | he
      · rw [zeroExtendedSine, if_pos hm, he]
        have hphase : Real.pi * (n : ℝ) * (-T) / T = -((n : ℝ) * Real.pi) := by
          field_simp [hT.ne']
          <;> ring
        rw [hphase, Real.sin_neg, Real.sin_nat_mul_pi]
        simp
      · rw [zeroExtendedSine, if_pos hm, he]
        have hphase : Real.pi * (n : ℝ) * T / T = (n : ℝ) * Real.pi := by
          field_simp [hT.ne']
          <;> ring
        rw [hphase, Real.sin_nat_mul_pi]
        simp
    · simp [zeroExtendedSine, hm]
  simp [finiteSine, hb]

/-- Equality at the full width is safe precisely because endpoint values vanish. -/
theorem paired_shift_zero {T r t : ℝ} {f : ℝ → ℝ}
    (hf : ∀ u, u ≤ -T ∨ T ≤ u → f u = 0)
    (ht : t ∈ Icc (-T) T) (hr : 2 * T ≤ r) :
    f (t + r) + f (t - r) = 0 := by
  rw [hf (t + r) (Or.inr (by linarith [ht.1])),
    hf (t - r) (Or.inl (by linarith [ht.2]))]
  ring

/-- An ordinary integer finite sum; it is a source output only after the return theorem. -/
def integerPrimeOutput (B : ℕ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 2 B,
    primeWeight q * (f (t + Real.log q) + f (t - Real.log q))

/-- Exact-inventory admission works for every input and every spatial point. -/
theorem primeOutput_eq_of_inventory {T : ℝ} {B : ℕ}
    (hI : activePrimePowers T = Finset.Icc 2 B) (f : ℝ → ℝ) (t : ℝ) :
    primeOutput T f t = integerPrimeOutput B f t := by
  simp only [primeOutput, integerPrimeOutput, hI]

/-- Padding is exact only on the physical window, with the stated endpoint condition. -/
theorem primeOutput_eq_padded {T : ℝ} {B : ℕ} {f : ℝ → ℝ}
    (hB : Real.exp (2 * T) ≤ (B : ℝ))
    (hf : ∀ u, u ≤ -T ∨ T ≤ u → f u = 0)
    {t : ℝ} (ht : t ∈ Icc (-T) T) :
    primeOutput T f t = integerPrimeOutput B f t := by
  unfold primeOutput integerPrimeOutput
  apply Finset.sum_subset (active_subset_Icc hB)
  intro q hq hnot
  have hq2 : 2 ≤ q := (Finset.mem_Icc.mp hq).1
  have hqe : Real.exp (2 * T) ≤ (q : ℝ) := by
    by_contra hn
    exact hnot ((mem_active_iff T q).2 ⟨hq2, lt_of_not_ge hn⟩)
  have hlog : 2 * T ≤ Real.log (q : ℝ) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos (2 * T)) hqe
  rw [paired_shift_zero hf ht hlog, mul_zero]

/-- Every positive integer source radius now has an admitted executable label list. -/
theorem integer_radius_output {M n : ℕ} (hn : 0 < n) (c : Fin M → ℝ)
    {t : ℝ} (ht : t ∈ Icc (-(n : ℝ)) (n : ℝ)) :
    primeOutput (n : ℝ) (finiteSine (n : ℝ) c) t =
      integerPrimeOutput (9 ^ n) (finiteSine (n : ℝ) c) t :=
  primeOutput_eq_padded (integer_exp_le_nine_pow n)
    (fun _ h => finiteSine_zero_outside_open (n : ℝ) (by exact_mod_cast hn) c h) ht

/-- Exact same weights/lags suppliers as before, now over a computable integer list. -/
def weightedIntegerOutput (B : ℕ) (orders : ℕ → ℕ) (D : ℕ)
    (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∑ q ∈ Finset.Icc 2 B, (RationalPrimeWeights.center q (orders q) D : ℝ) *
    (f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q))

private theorem paired_lag_bound {f : ℝ → ℝ} {K : ℝ≥0} (hf : LipschitzWith K f)
    (t r s : ℝ) :
    |(f (t + r) + f (t - r)) - (f (t + s) + f (t - s))| ≤
      2 * (K : ℝ) * |r - s| := by
  have hp := hf.norm_sub_le (t + r) (t + s)
  have hm := hf.norm_sub_le (t - r) (t - s)
  rw [show t + r - (t + s) = r - s by ring] at hp
  rw [show t - r - (t - s) = -(r - s) by ring, norm_neg] at hm
  simp only [Real.norm_eq_abs] at hp hm
  rw [show (f (t + r) + f (t - r)) - (f (t + s) + f (t - s)) =
    (f (t + r) - f (t + s)) + (f (t - r) - f (t - s)) by ring]
  linarith [abs_add (f (t + r) - f (t + s)) (f (t - r) - f (t - s))]

/-- The surcharge includes padded labels whose rounded shifts may re-enter the window. -/
theorem integer_output_error (B : ℕ) (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D)
    {f : ℝ → ℝ} {K : ℝ≥0} (hK : LipschitzWith K f)
    {A : ℝ} (hA : 0 ≤ A) (hamp : ∀ u, |f u| ≤ A) (t : ℝ) :
    |integerPrimeOutput B f t - weightedIntegerOutput B orders D f t| ≤
      (K : ℝ) * (PrimeLagSampling.budgetFor (Finset.Icc 2 B) orders : ℝ) +
        A * (PrimeWeightSampling.weightBudget (Finset.Icc 2 B) orders D : ℝ) := by
  have hterm (q : ℕ) (hq : q ∈ Finset.Icc 2 B) :
      |primeWeight q * (f (t + Real.log q) + f (t - Real.log q)) -
        (RationalPrimeWeights.center q (orders q) D : ℝ) *
          (f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q))| ≤
      2 * (K : ℝ) * (RationalLogarithms.upper (q : ℚ) (orders q) : ℝ) *
        (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) +
      2 * A * (RationalPrimeWeights.radius q (orders q) D : ℝ) := by
    have hq1 : 1 ≤ q := by have := (Finset.mem_Icc.mp hq).1; omega
    have hqQ : (1 : ℚ) ≤ (q : ℚ) := by exact_mod_cast hq1
    have hr : (0 : ℝ) ≤ (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) := by
      exact_mod_cast RationalLogarithms.radius_nonneg hqQ (orders q)
    have hs : (0 : ℝ) ≤ (RationalPrimeWeights.radius q (orders q) D : ℝ) := by
      exact_mod_cast RationalPrimeWeights.radius_nonneg hq1 hD (orders q)
    have hw0 := primeWeight_nonneg q
    have hw : primeWeight q ≤ (RationalLogarithms.upper (q : ℚ) (orders q) : ℝ) :=
      (PrimeLagSampling.primeWeight_le_log hq1).trans
        (by simpa only [Rat.cast_natCast] using (RationalLogarithms.log_enclosure hqQ (orders q)).2)
    have hp := (paired_lag_bound hK t (Real.log q) (PrimeLagSampling.lag orders q)).trans
      (mul_le_mul_of_nonneg_left (PrimeLagSampling.lag_error hq1 orders) (by positivity))
    have hc := RationalPrimeWeights.center_error hq1 hD (orders q)
    have hv : |f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q)| ≤
        2 * A := (abs_add _ _).trans (by linarith [hamp (t + PrimeLagSampling.lag orders q),
          hamp (t - PrimeLagSampling.lag orders q)])
    let u := f (t + Real.log q) + f (t - Real.log q)
    let v := f (t + PrimeLagSampling.lag orders q) + f (t - PrimeLagSampling.lag orders q)
    change |primeWeight q * u - (RationalPrimeWeights.center q (orders q) D : ℝ) * v| ≤ _
    rw [show primeWeight q * u - (RationalPrimeWeights.center q (orders q) D : ℝ) * v =
      primeWeight q * (u - v) +
        (primeWeight q - (RationalPrimeWeights.center q (orders q) D : ℝ)) * v by ring]
    have he := abs_add (primeWeight q * (u - v))
      ((primeWeight q - (RationalPrimeWeights.center q (orders q) D : ℝ)) * v)
    simp only [abs_mul, abs_of_nonneg hw0] at he
    have h1 := mul_le_mul_of_nonneg_left hp hw0
    have h2 := mul_le_mul_of_nonneg_right hw
      (show 0 ≤ 2 * (K : ℝ) * (RationalLogarithms.radius (q : ℚ) (orders q) : ℝ) by positivity)
    have h3 := mul_le_mul hc hv (abs_nonneg _) hs
    dsimp [u, v] at *
    nlinarith
  unfold integerPrimeOutput weightedIntegerOutput
  rw [← Finset.sum_sub_distrib]
  exact (Finset.abs_sum_le_sum_abs _ _).trans ((Finset.sum_le_sum hterm).trans_eq (by
    simp [PrimeLagSampling.budgetFor, PrimeWeightSampling.weightBudget,
      Finset.sum_add_distrib, Finset.mul_sum, mul_assoc, mul_comm, mul_left_comm]))

/-- Numerical column with integer labels; all non-prime terms are unchanged. -/
def integerSpatialColumn {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N B : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) (D : ℕ) (t : ℝ) : ℝ :=
  (Icc (-T) T).indicator (middleFunction T x N c) t +
    (2 * tailWeight (x N)) * finiteSine T c t +
    (Icc (-T) T).indicator (fun u =>
      (gammaConstant 1 0 - β) * finiteSine T c u -
      weightedIntegerOutput B orders D (finiteSine T c) u +
      polePort T c * Real.sinh (u / 2)) t - finiteSine T d t

/-- Feed an integer-inventory observation back to the unchanged exact spatialColumn. -/
theorem integer_sample_transfer {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N B : ℕ) (hB : Real.exp (2 * T) ≤ (B : ℝ))
    (c : Fin M → ℝ) (d : Fin K → ℝ) (orders : ℕ → ℕ) {D : ℕ} (hD : 0 < D)
    {t p e : ℝ} (ht : t ∈ Icc (-T) T)
    (hsample : |integerSpatialColumn T β x N B c d orders D t - p| ≤ e) :
    |spatialColumn T β x N c d t - p| ≤ e +
      (sineLipschitz T c : ℝ) * (PrimeLagSampling.budgetFor (Finset.Icc 2 B) orders : ℝ) +
      PrimeWeightSampling.amplitude T c *
        (PrimeWeightSampling.weightBudget (Finset.Icc 2 B) orders D : ℝ) := by
  have hid := primeOutput_eq_padded hB
    (fun _ h => finiteSine_zero_outside_open T hT c h) ht
  have he := integer_output_error B orders hD (finiteSine_lipschitz T hT c)
    (PrimeWeightSampling.amplitude_nonneg T c) (PrimeWeightSampling.finiteSine_abs_le T hT c) t
  have hdiff : spatialColumn T β x N c d t - integerSpatialColumn T β x N B c d orders D t =
      weightedIntegerOutput B orders D (finiteSine T c) t -
        integerPrimeOutput B (finiteSine T c) t := by
    simp only [spatialColumn, spatialOutput, primePoleOutput, integerSpatialColumn,
      indicator_of_mem ht, hid]
    ring
  have htriangle := abs_sub_le (spatialColumn T β x N c d t)
    (integerSpatialColumn T β x N B c d orders D t) p
  rw [hdiff] at htriangle
  rw [abs_sub_comm (integerPrimeOutput B (finiteSine T c) t)
    (weightedIntegerOutput B orders D (finiteSine T c) t)] at he
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.SineInventoryPadding
