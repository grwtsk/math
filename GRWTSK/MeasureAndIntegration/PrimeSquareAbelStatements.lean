import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder

set_option autoImplicit false
namespace PrimeSquareAbelScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSquareCorrelation PrimeHarmonicPrefix PrimeHarmonicRemainder
open CorrelationSecondDerivative
noncomputable section

/-- Exact closed logarithmic thresholds in the fixed finite prime range. -/
theorem primeHarmonicPrefix_eq_threshold_sum (A u : ℝ) (hu : u ≤ A) :
    primeHarmonicPrefix u =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
        if Real.log (p : ℝ) ≤ u then Real.log (p : ℝ) / (p : ℝ) else 0 := by
  classical
  rw [primeHarmonicPrefix_eq_log_sum]
  have hs : (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime =
      ((Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime).filter
        (fun p : ℕ ↦ Real.log (p : ℝ) ≤ u) := by
    ext p
    simp only [Finset.mem_filter, Finset.mem_Icc]
    constructor
    · rintro ⟨⟨hp2, hpU⟩, hp⟩
      have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
      exact ⟨⟨⟨hp2, hpU.trans (Nat.floor_mono (Real.exp_le_exp.mpr hu))⟩, hp⟩,
        (Real.log_le_iff_le_exp hp0).mpr ((Nat.le_floor_iff (Real.exp_pos u).le).mp hpU)⟩
    · rintro ⟨⟨⟨hp2, _⟩, hp⟩, hpU⟩
      have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
      exact ⟨⟨hp2, (Nat.le_floor_iff (Real.exp_pos u).le).mpr
        ((Real.log_le_iff_le_exp hp0).mp hpU)⟩, hp⟩
  rw [hs, Finset.sum_filter]

/-- Every retained prime's log belongs to the exact finite integration interval. -/
theorem prime_log_mem_interval (A : ℝ) (p : ℕ)
    (hp : p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime) :
    Real.log (p : ℝ) ∈ Icc 0 A := by
  obtain ⟨hp, hpprime⟩ := Finset.mem_filter.mp hp
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hpprime.pos
  exact ⟨Real.log_nonneg (by exact_mod_cast hpprime.one_lt.le),
    (Real.log_le_iff_le_exp hp0).mpr
      ((Nat.le_floor_iff (Real.exp_pos A).le).mp (Finset.mem_Icc.mp hp).2)⟩

/-- A closed threshold tail is genuinely interval integrable. -/
theorem closed_tail_intervalIntegrable (g : ℝ → ℝ) (A r : ℝ) (hA : 0 ≤ A)
    (hg : IntegrableOn g (Icc 0 A)) :
    IntervalIntegrable (fun u ↦ if r ≤ u then g u else 0) volume 0 A := by
  apply (intervalIntegrable_iff_integrableOn_Icc_of_le hA).mpr
  have h : IntegrableOn ((Ici r).indicator g) (Icc 0 A) :=
    hg.indicator measurableSet_Ici
  exact h.congr_fun (fun u _ ↦ by simp only [indicator, mem_Ici]) measurableSet_Icc

/-- The closed point itself is a null singleton, not an omitted arithmetic weight. -/
theorem integral_closed_tail (g : ℝ → ℝ) (A r : ℝ) (hr : r ∈ Icc 0 A) :
    (∫ u in 0..A, if r ≤ u then g u else 0) = ∫ u in r..A, g u := by
  rw [intervalIntegral.integral_of_le (hr.1.trans hr.2),
    intervalIntegral.integral_of_le hr.2]
  change (∫ u in Ioc 0 A, (Ici r).indicator g u) = _
  rw [integral_indicator measurableSet_Ici, Measure.restrict_restrict measurableSet_Ici]
  apply setIntegral_congr_set
  filter_upwards [volume.ae_ne r] with u hu
  apply propext
  change (r ≤ u ∧ 0 < u ∧ u ≤ A) ↔ (r < u ∧ u ≤ A)
  constructor
  · rintro ⟨hru, _, huA⟩
    exact ⟨lt_of_le_of_ne hru (Ne.symm hu), huA⟩
  · rintro ⟨hru, huA⟩
    exact ⟨hru.le, hr.1.trans_lt hru, huA⟩

/-- The actual doubled correlation derivative is continuous across its support seams. -/
theorem sourceCorrelation_double_derivative_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))) := by
  have he : deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) =
      fun u ↦ 2 * deriv (sourceCorrelation explicitSecondDerivative A) (2 * u) :=
    funext (fun u ↦ (sourceCorrelation_double_hasDerivAt A u hA).deriv)
  rw [he]
  exact continuous_const.mul ((sourceCorrelation_derivative_contDiff A hA).continuous.comp
    (continuous_const.mul continuous_id))

/-- Finite-prefix multiplication is integrable before the finite interchange. -/
theorem primeHarmonicPrefix_mul_intervalIntegrable (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ primeHarmonicPrefix u * g u) volume 0 A := by
  classical
  let H := (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime
  let f (p : ℕ) (u : ℝ) := (Real.log (p : ℝ) / (p : ℝ)) *
    (if Real.log (p : ℝ) ≤ u then g u else 0)
  have hi (p : ℕ) : IntervalIntegrable (f p) volume 0 A :=
    (closed_tail_intervalIntegrable g A _ hA hg.integrableOn_Icc).const_mul _
  have hs : IntervalIntegrable (fun u ↦ ∑ p ∈ H, f p u) volume 0 A := by
    have he : (∑ p ∈ H, f p) = (fun u ↦ ∑ p ∈ H, f p u) :=
      funext (fun u ↦ Finset.sum_apply u H f)
    rw [← he]
    exact IntervalIntegrable.sum H (fun p _ ↦ hi p)
  apply hs.congr
  intro u hu
  rw [uIoc_of_le hA] at hu
  dsimp only
  symm
  rw [primeHarmonicPrefix_eq_threshold_sum A u hu.2, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  simp only [f]
  split_ifs <;> simp

/-- Exact finite logarithmic Abel summation for a differentiable weight vanishing at A. -/
theorem primeHarmonicPrefix_weighted_abel (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g)) (hgz : g A = 0) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
        -(∫ u in 0..A, primeHarmonicPrefix u * deriv g u) := by
  classical
  let H := (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime
  let f (p : ℕ) (u : ℝ) := (Real.log (p : ℝ) / (p : ℝ)) *
    (if Real.log (p : ℝ) ≤ u then deriv g u else 0)
  have hi (p : ℕ) : IntervalIntegrable (f p) volume 0 A :=
    (closed_tail_intervalIntegrable (deriv g) A _ hA hgd.integrableOn_Icc).const_mul _
  have he : (∫ u in 0..A, primeHarmonicPrefix u * deriv g u) =
      ∑ p ∈ H, ∫ u in 0..A, f p u := by
    calc
      _ = ∫ u in 0..A, ∑ p ∈ H, f p u := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hA] at hu
        dsimp only
        rw [primeHarmonicPrefix_eq_threshold_sum A u hu.2, Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro p _
        simp only [f]
        split_ifs <;> simp
      _ = _ := intervalIntegral.integral_finsetSum (fun p _ ↦ hi p)
  have hv (p : ℕ) (hp : p ∈ H) :
      (∫ u in 0..A, f p u) = -(Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) := by
    dsimp only [f]
    rw [intervalIntegral.integral_const_mul,
      integral_closed_tail _ A _ (prime_log_mem_interval A p hp),
      intervalIntegral.integral_deriv_eq_sub (fun u _ ↦ hg u) (hgd.intervalIntegrable _ _),
      hgz]
    ring
  rw [he]
  simp_rw [Finset.sum_congr rfl hv, Finset.sum_neg_distrib, neg_neg]
  rfl

/-- The independent theta moment input centers the exact prime prefix. -/
theorem primeHarmonicPrefix_centered (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u = u + thetaConstant + thetaRemainder u := by
  rw [primeHarmonicPrefix_formula u hu, centered_prefix_eq u hu]

/-- The centered remainder times any continuous weight is genuinely interval integrable. -/
theorem thetaRemainder_mul_intervalIntegrable (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ thetaRemainder u * g u) volume 0 A := by
  have hj := primeHarmonicPrefix_mul_intervalIntegrable A hA g hg
  have hc : IntervalIntegrable (fun u : ℝ ↦ (u + thetaConstant) * g u) volume 0 A :=
    ((continuous_id.add continuous_const).mul hg).intervalIntegrable 0 A
  apply (hj.sub hc).congr
  intro u hu
  rw [uIoc_of_le hA] at hu
  dsimp only
  rw [primeHarmonicPrefix_centered u hu.1.le]
  ring

/-- Centered finite Abel summation retains the actual lower endpoint constant. -/
theorem primeHarmonicPrefix_centered_abel (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g))
    (hgz : g A = 0) (hg0 : g 0 = 1) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
      (∫ u in 0..A, g u) + thetaConstant -
        ∫ u in 0..A, thetaRemainder u * deriv g u := by
  have hid : IntervalIntegrable (fun u : ℝ ↦ u * deriv g u) volume 0 A :=
    (continuous_id.mul hgd).intervalIntegrable 0 A
  have hic : IntervalIntegrable (fun u : ℝ ↦ thetaConstant * deriv g u) volume 0 A :=
    (continuous_const.mul hgd).intervalIntegrable 0 A
  have hir := thetaRemainder_mul_intervalIntegrable A hA (deriv g) hgd
  have hsplit : (∫ u in 0..A, primeHarmonicPrefix u * deriv g u) =
      (∫ u in 0..A, u * deriv g u) +
      thetaConstant * (∫ u in 0..A, deriv g u) +
      ∫ u in 0..A, thetaRemainder u * deriv g u := by
    calc
      _ = ∫ u in 0..A,
          (u * deriv g u + thetaConstant * deriv g u) + thetaRemainder u * deriv g u := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hA] at hu
        dsimp only
        rw [primeHarmonicPrefix_centered u hu.1]
        ring
      _ = _ := by
        rw [intervalIntegral.integral_add (hid.add hic) hir,
          intervalIntegral.integral_add hid hic, intervalIntegral.integral_const_mul]
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := (0 : ℝ)) (b := A) continuous_id.continuousOn hg.continuous.continuousOn
    (fun u _ ↦ hasDerivAt_id u) (fun u _ ↦ (hg u).hasDerivAt)
    intervalIntegrable_const (hgd.intervalIntegrable 0 A)
  simp only [id_eq, hgz, hg0, mul_zero, zero_mul, sub_zero, zero_sub, one_mul] at hparts
  have hd : (∫ u in 0..A, deriv g u) = -1 := by
    rw [intervalIntegral.integral_deriv_eq_sub (fun u _ ↦ hg u)
      (hgd.intervalIntegrable 0 A), hgz, hg0]
    norm_num
  rw [primeHarmonicPrefix_weighted_abel A hA g hg hgd hgz, hsplit, hparts, hd]
  ring

/-- Exact prime-square weighted summation for the actual normalized source correlation. -/
theorem primeSquare_weighted_abel (A : ℝ) (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ))) =
      (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) + thetaConstant -
      ∫ u in 0..A, thetaRemainder u *
        deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u := by
  apply primeHarmonicPrefix_centered_abel A (by linarith)
    (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))
    (fun u ↦ (sourceCorrelation_double_hasDerivAt A u hA).differentiableAt)
    (sourceCorrelation_double_derivative_continuous A hA)
  · exact sourceCorrelation_upper_endpoint A (by linarith)
  · simpa only [mul_zero] using EstimateCorrelation.actual_correlation_at_zero A hA

end
end PrimeSquareAbelScratch

set_option autoImplicit false
section PrimeSquareAbelExactStatements
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSquareCorrelation PrimeHarmonicPrefix PrimeHarmonicRemainder
open CorrelationSecondDerivative
noncomputable section

open PrimeSquareAbelScratch

example (A u : ℝ) (hu : u ≤ A) :
    primeHarmonicPrefix u =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
        if Real.log (p : ℝ) ≤ u then Real.log (p : ℝ) / (p : ℝ) else 0 :=
  primeHarmonicPrefix_eq_threshold_sum A u hu

example (A : ℝ) (p : ℕ)
    (hp : p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime) :
    Real.log (p : ℝ) ∈ Icc 0 A :=
  prime_log_mem_interval A p hp

example (g : ℝ → ℝ) (A r : ℝ) (hA : 0 ≤ A)
    (hg : IntegrableOn g (Icc 0 A)) :
    IntervalIntegrable (fun u ↦ if r ≤ u then g u else 0) volume 0 A :=
  closed_tail_intervalIntegrable g A r hA hg

example (g : ℝ → ℝ) (A r : ℝ) (hr : r ∈ Icc 0 A) :
    (∫ u in 0..A, if r ≤ u then g u else 0) = ∫ u in r..A, g u :=
  integral_closed_tail g A r hr

example (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))) :=
  sourceCorrelation_double_derivative_continuous A hA

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ primeHarmonicPrefix u * g u) volume 0 A :=
  primeHarmonicPrefix_mul_intervalIntegrable A hA g hg

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g)) (hgz : g A = 0) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
        -(∫ u in 0..A, primeHarmonicPrefix u * deriv g u) :=
  primeHarmonicPrefix_weighted_abel A hA g hg hgd hgz

example (u : ℝ) (hu : 0 ≤ u) :
    primeHarmonicPrefix u = u + thetaConstant + thetaRemainder u :=
  primeHarmonicPrefix_centered u hu

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Continuous g) :
    IntervalIntegrable (fun u ↦ thetaRemainder u * g u) volume 0 A :=
  thetaRemainder_mul_intervalIntegrable A hA g hg

example (A : ℝ) (hA : 0 ≤ A)
    (g : ℝ → ℝ) (hg : Differentiable ℝ g) (hgd : Continuous (deriv g))
    (hgz : g A = 0) (hg0 : g 0 = 1) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) * g (Real.log (p : ℝ))) =
      (∫ u in 0..A, g u) + thetaConstant -
        ∫ u in 0..A, thetaRemainder u * deriv g u :=
  primeHarmonicPrefix_centered_abel A hA g hg hgd hgz hg0

example (A : ℝ) (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ))) =
      (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) + thetaConstant -
      ∫ u in 0..A, thetaRemainder u *
        deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u :=
  primeSquare_weighted_abel A hA

end
end PrimeSquareAbelExactStatements
