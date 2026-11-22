/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationCellEvaluation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilExponentialBumpGamma

/-!
# Direct prime-correlation cells for the original smooth exponential bump

MSC2020: 11M26, 11M41, 65D30, 65G20.
The samples are finite binomial expressions inside the support and exactly zero
at and outside its endpoints. The old global regularity theorem supplies the
between-sample variation. Lag uncertainty is charged separately, so rational
sample locations need not be falsely identified with logarithms of integers.

The final return is to primitiveArithmeticValue, with the original signed
prime inventory, conductor and gamma parity. The finite-lag gamma integral and
its scalar coefficient remain unevaluated; no zero data or sign is assumed.
Conductor-one zeta and determining-test coverage remain separate obligations.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent individual argument/provenance records.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection CharacterWindow LowSchur CorrelationCells
open GRWTSK.MeasureAndIntegration.ExponentialBumpCells
open GRWTSK.MeasureAndIntegration.RawMomentQuadrature

/-- A data value, not a new test function. The endpoint branch is exactly zero. -/
def fullBumpSample (T t : ℝ) (n : ℕ) : ℂ :=
  if |t| < T then (bumpSampleCenter T t n : ℂ) else 0

def fullBumpRadius (T t : ℝ) (n : ℕ) : ℝ :=
  if |t| < T then bumpSampleRadius T t n else 0

/-- EBP-1. No interior inverse-gap estimate is used beyond the support. -/
theorem fullBumpSample_error (T : ℝ) (hT : 0 ≤ T) (t : ℝ) (n : ℕ)
    (horder : |t| < T → 0 < n ∧ (T ^ 2 - t ^ 2)⁻¹ ≤ (n : ℝ)) :
    0 ≤ fullBumpRadius T t n ∧
      ‖liftReal (oddExpBump T) t - fullBumpSample T t n‖ ≤ fullBumpRadius T t n := by
  by_cases ht : |t| < T
  · simpa only [fullBumpRadius, fullBumpSample, if_pos ht, liftReal] using
      oddExpBump_sample_error ht (horder ht).1 (horder ht).2
  · have hz := oddExpBump_zero_of_le_abs T hT t (le_of_not_gt ht)
    simp only [fullBumpRadius, fullBumpSample, if_neg ht, liftReal, hz,
      Complex.ofReal_zero, sub_zero, norm_zero, le_refl, and_self]

/-- EBP-2. Expose the same sup bound already used internally by EBG-4. -/
theorem norm_lift_oddExpBump_le (T : ℝ) (hT : 0 ≤ T) (t : ℝ) :
    ‖liftReal (oddExpBump T) t‖ ≤ T := by
  have hphi (u : ℝ) : expNegInvGlue u ≤ 1 := by
    by_cases hu : u ≤ 0
    · simp [expNegInvGlue.zero_of_nonpos hu]
    · simp only [expNegInvGlue, if_neg hu]
      exact Real.exp_le_one_iff.mpr (neg_nonpos.mpr (inv_nonneg.mpr (le_of_not_ge hu)))
  by_cases ht : |t| ≤ T
  · change ‖((t * expNegInvGlue (T ^ 2 - t ^ 2) : ℝ) : ℂ)‖ ≤ T
    rw [Complex.norm_real, Real.norm_eq_abs, abs_mul, abs_of_nonneg (expNegInvGlue.nonneg _)]
    exact (mul_le_of_le_one_right (abs_nonneg t) (hphi _)).trans ht
  · simp only [liftReal, oddExpBump_zero_of_le_abs T hT t (le_of_not_ge ht),
      Complex.ofReal_zero, norm_zero]
    exact hT

def bumpSampleTable (T : ℝ) (x : ℕ → ℝ) (p : ℕ → ℕ) (s : ℝ) (j : ℕ) : ℂ :=
  fullBumpSample T ((x j + x (j + 1)) / 2 + s) (p j)

def bumpRadiusTable (T : ℝ) (x : ℕ → ℝ) (p : ℕ → ℕ) (s : ℝ) (j : ℕ) : ℝ :=
  fullBumpRadius T ((x j + x (j + 1)) / 2 + s) (p j)

/-- Signed correlation at a sampled lag; it is not an absolute square unless s = 0
and the two sample tables coincide. -/
def bumpCorrelationEstimate (T : ℝ) (x : ℕ → ℝ) (p w : ℕ → ℕ) (N : ℕ) (s : ℝ) : ℂ :=
  correlationCellEstimate x (bumpSampleTable T x p 0) (bumpSampleTable T x w s) N

def bumpCorrelationBudget (T : ℝ) (x : ℕ → ℝ) (p w : ℕ → ℕ)
    (N : ℕ) (s δ : ℝ) : ℝ :=
  let K := bumpDerivativeBound T
  let e := bumpRadiusTable T x p 0
  let B₀ := cellL1Budget x (bumpSampleTable T x p 0) (midpointCellError x (fun _ => K) e) N
  K * B₀ * δ + correlationCellBudget T K x e (bumpRadiusTable T x w s) N

/-- EBP-3. Actual correlation from finite cells, including uncertainty in the lag.
All regularity and sample estimates are derived for the original smooth bump. -/
theorem norm_correlation_oddExpBump_sub_cells_le
    (T : ℝ) (hT : 0 ≤ T) (x : ℕ → ℝ) (p w : ℕ → ℕ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (r s δ : ℝ) (hshift : |r - s| ≤ δ)
    (hp : ∀ j < N, |(x j + x (j + 1)) / 2| < T →
      0 < p j ∧ (T ^ 2 - ((x j + x (j + 1)) / 2) ^ 2)⁻¹ ≤ (p j : ℝ))
    (hw : ∀ j < N, |(x j + x (j + 1)) / 2 + s| < T →
      0 < w j ∧ (T ^ 2 - ((x j + x (j + 1)) / 2 + s) ^ 2)⁻¹ ≤ (w j : ℝ)) :
    ‖correlation (liftReal (oddExpBump T)) r - bumpCorrelationEstimate T x p w N s‖ ≤
      bumpCorrelationBudget T x p w N s δ := by
  let g := liftReal (oddExpBump T)
  have hsm : ContDiff ℝ ∞ g := Complex.ofRealCLM.contDiff.comp (oddExpBump_contDiff T)
  have hc : HasCompactSupport g :=
    (oddExpBump_hasCompactSupport T hT).comp_left Complex.ofReal_zero
  have hi : Integrable g volume := hsm.continuous.integrable_of_hasCompactSupport hc
  have hlp : MemLp g 2 volume := hsm.continuous.memLp_of_hasCompactSupport hc
  have hs (t : ℝ) (ht : T < |t|) : g t = 0 := by
    simp only [g, liftReal, oddExpBump_zero_of_le_abs T hT t ht.le, Complex.ofReal_zero]
  have hleft (j : ℕ) (hj : j < N) :
      0 ≤ bumpRadiusTable T x p 0 j ∧
      ‖g ((x j + x (j + 1)) / 2) - bumpSampleTable T x p 0 j‖ ≤ bumpRadiusTable T x p 0 j := by
    simpa only [g, bumpRadiusTable, bumpSampleTable, add_zero] using
      fullBumpSample_error T hT ((x j + x (j + 1)) / 2) (p j) (hp j hj)
  have hright (j : ℕ) (hj : j < N) :
      0 ≤ bumpRadiusTable T x w s j ∧
      ‖g ((x j + x (j + 1)) / 2 + s) - bumpSampleTable T x w s j‖ ≤
        bumpRadiusTable T x w s j :=
    fullBumpSample_error T hT ((x j + x (j + 1)) / 2 + s) (w j) (hw j hj)
  have h := norm_correlation_sub_cells_of_shift_error_le T hT hi hlp hs
    T (bumpDerivativeBound T) hT (by unfold bumpDerivativeBound; positivity)
    (norm_lift_oddExpBump_le T hT) (lift_oddExpBump_global_lipschitz T hT)
    r s δ hshift x (bumpSampleTable T x p 0) (bumpSampleTable T x w s)
    (bumpRadiusTable T x p 0) (bumpRadiusTable T x w s) N hx0 hxN hgeom
    (fun j hj => (hleft j hj).1) (fun j hj => (hright j hj).1)
    (fun j hj => (hleft j hj).2) (fun j hj => (hright j hj).2)
  simpa only [g, bumpCorrelationEstimate, bumpCorrelationBudget] using h

/-- EBP-4. Return the mass and ALL signed prime-correlation cells to exactly
primitiveArithmeticValue. The middle gamma integral and its coefficient remain
exact, unevaluated terms. There is no zero-location/count input or sign premise. -/
theorem primitiveArithmeticValue_oddExpBump_primeCells_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprim : χ.IsPrimitive) (hnon : χ ≠ 1)
    {T eta R : ℝ} (hT : 0 < T) (heta : 0 < eta) (heta1 : eta ≤ 1) (hR : 1 ≤ R)
    (x : ℕ → ℝ) (p : ℕ → ℕ) (w : ℕ → ℕ → ℕ) (N : ℕ) (s δ : ℕ → ℝ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (hp : ∀ j < N, |(x j + x (j + 1)) / 2| < T →
      0 < p j ∧ (T ^ 2 - ((x j + x (j + 1)) / 2) ^ 2)⁻¹ ≤ (p j : ℝ))
    (hw : ∀ n ∈ activePrimePowers T, ∀ j < N, |(x j + x (j + 1)) / 2 + s n| < T →
      0 < w n j ∧ (T ^ 2 - ((x j + x (j + 1)) / 2 + s n) ^ 2)⁻¹ ≤ (w n j : ℝ))
    (hlog : ∀ n ∈ activePrimePowers T, |Real.log (n : ℝ) - s n| ≤ δ n) :
    let g := liftReal (oddExpBump T)
    let A := fun n => bumpCorrelationEstimate T x p (w n) N (s n)
    let e := fun n => bumpCorrelationBudget T x p (w n) N (s n) (δ n)
    let a₀ := bumpCorrelationEstimate T x p p N 0
    let e₀ := bumpCorrelationBudget T x p p N 0 0
    let c := gammaConstant q (gammaParity χ)
    let V := c * a₀.re + (∫ r in eta..R, gammaCorrectionDensity (gammaParity χ) g r) -
      twistedPrime T χ A
    let E := |c| * e₀ + primeCorrelationError T e
    -E ≤ primitiveArithmeticValue χ hprim hnon T g - V ∧
      primitiveArithmeticValue χ hprim hnon T g - V ≤ oddExpBumpGammaCutoffBudget T eta R + E := by
  intro g A e a₀ e₀ c V E
  have hzero : ‖correlation g 0 - a₀‖ ≤ e₀ :=
    norm_correlation_oddExpBump_sub_cells_le T hT.le x p p N hx0 hxN hgeom
      0 0 0 (by norm_num) hp (by simpa only [add_zero] using hp)
  have henergy := energy_error_of_correlation_zero hzero
  have hcorr (n : ℕ) (hn : n ∈ activePrimePowers T) :
      ‖correlation g (Real.log (n : ℝ)) - A n‖ ≤ e n :=
    norm_correlation_oddExpBump_sub_cells_le T hT.le x p (w n) N hx0 hxN hgeom
      (Real.log (n : ℝ)) (s n) (δ n) (hlog n hn) hp (hw n hn)
  have hprime := abs_twistedPrime_sub_le T χ
    (fun n => correlation g (Real.log (n : ℝ))) A e hcorr
  have hmass : |c * (energy g - a₀.re)| ≤ |c| * e₀ := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left henergy (abs_nonneg c)
  have hgamma := gammaCorrectionDensity_oddExpBump_cutoff_error
    (gammaParity χ) hT.le heta heta1 hR
  have hid : primitiveArithmeticValue χ hprim hnon T g - V =
      c * (energy g - a₀.re) +
        ((∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) g r) -
          (∫ r in eta..R, gammaCorrectionDensity (gammaParity χ) g r)) -
        (twistedPrime T χ (fun n => correlation g (Real.log (n : ℝ))) - twistedPrime T χ A) := by
    dsimp only [primitiveArithmeticValue, V, c]
    ring
  rw [hid]
  dsimp only [E, g] at *
  have hm := abs_le.mp hmass
  have hpr := abs_le.mp hprime
  constructor <;> linarith [hm.1, hm.2, hpr.1, hpr.2, hgamma.1, hgamma.2]

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
