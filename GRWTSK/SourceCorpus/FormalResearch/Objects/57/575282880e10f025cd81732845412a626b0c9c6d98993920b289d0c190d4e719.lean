import scratch.common_mean_20261004.FiveModeZeroHead
import Zeta23.Statement

/-!
Exact external zero-count and strict Stieltjes obligations, together with a
proved actual-source conditional absolute-tail transport. Defining these
propositions does not prove Bellotti--Wong, its Stieltjes adapter, or a uniform
arithmetic estimate. The corrected arXiv:2412.15470v2 Theorem 1.1 has no 7/8
shift in its main term. The closed count N(T) includes an ordinate exactly T;
the omitted occurrence tail excludes it, retaining the negative endpoint term.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Actual open-strip zeros in (0,t], each weighted by its analytic order. -/
def actualPositiveZeroCount (t : ℝ) : ℝ := (Zeta23.Ncount 0 t : ℝ)

def zeroCountMain (t : ℝ) : ℝ :=
  t / (2 * Real.pi) * Real.log (t / (2 * Real.pi * Real.exp 1))

/-- Literal corrected v2 second branch, with exact terminating rationals. -/
def correctedBellottiWongError (t : ℝ) : ℝ :=
  (11200/100000 : ℝ) * Real.log t + (12567/100000 : ℝ) * Real.log (Real.log t) +
    (377417/100000 : ℝ)

/-- No accepted Lean proof of this literature input is supplied by this module. -/
def CorrectedBellottiWongCount : Prop :=
  ∀ t : ℝ, Real.exp 1 ≤ t →
    |actualPositiveZeroCount t - zeroCountMain t| ≤ correctedBellottiWongError t

/-- The actual multiplicity occurrence carrier agrees with the counting carrier. -/
theorem positive_count_carrier_eq (t : ℝ) :
    Zeta23.zerosIn 0 t =
      {ρ : ℂ | riemannZeta ρ = 0 ∧ 0 < ρ.re ∧ ρ.re < 1 ∧ 0 < ρ.im ∧ ρ.im ≤ t} := by
  ext ρ
  simp only [Zeta23.zerosIn, Zeta23.IsNontrivialZero, Set.mem_ofPred_eq]
  tauto

/-- No zero simplicity is assumed when comparing multiplicities. -/
theorem positive_count_multiplicity_eq (p : ZeroObject.ZeroPoint) :
    Zeta23.zeroMult p.val = ZeroObject.multiplicity p := rfl

def positiveSixthPowerWeight (T : ℝ) (o : zeroPositiveStrictTailSet T) : ℝ :=
  1 / (ZeroObject.shiftedValue o.val).im ^ 6

def actualPositiveSixthPowerTail (T : ℝ) : ℝ :=
  ∑' o : zeroPositiveStrictTailSet T, positiveSixthPowerWeight T o

/-- The strict positive-ordinate sixth-power Stieltjes identity is an explicit
remaining adapter. Count convergence, integral convergence, and the boundary
subtraction are all retained, even when T is a zero ordinate. -/
def PositiveSixthPowerStieltjes (T : ℝ) : Prop :=
  Summable (positiveSixthPowerWeight T) ∧
  IntegrableOn (fun t : ℝ => actualPositiveZeroCount t / t ^ 7) (Ioi T) ∧
  actualPositiveSixthPowerTail T =
    -actualPositiveZeroCount T / T ^ 6 +
      6 * ∫ t : ℝ in Ioi T, actualPositiveZeroCount t / t ^ 7

/-- Exact error-integral budget obtained on paper from the corrected count. -/
def positiveSixthPowerCountEnvelope (T : ℝ) : ℝ :=
  (1 / T ^ 5) / (2 * Real.pi) *
      (Real.log (T / (2 * Real.pi)) / 5 + 1/25) +
    (1 / T ^ 6) * (2 * correctedBellottiWongError T +
      (11200/100000 : ℝ)/6 + (12567/100000 : ℝ)/(6 * Real.log T))

/-- Polynomial numerator triangle budget c(x), preserving all five terms. -/
def sourceTransformPolynomialBudget (x : ℝ) : ℝ :=
  384 * (1 + 10/x + 45/x^2 + 105/x^3 + 105/x^4)

/-- The exact archived absolute envelope K(A,T), retaining original Z_A and
both exponential source terms. This is a definition, not a bound witness. -/
def sourceAbsoluteTailConstant (A T : ℝ) : ℝ :=
  (Real.exp A + 2 + Real.exp (-A)) * sourceTransformPolynomialBudget (A*T)^2 *
    (1 + 1/(4*T^2))^2 / (sourceNormalization A * A^9)

/-- Next source-specific pointwise analytic estimate; no RH premise is hidden. -/
def SourceAbsoluteTailMajorant (A T : ℝ) : Prop :=
  ∀ o : ZeroObject.ZeroOccurrence, T < |(ZeroObject.shiftedValue o).im| →
    actualZeroSquareNorm A o ≤
      sourceAbsoluteTailConstant A T / |(ZeroObject.shiftedValue o).im| ^ 6

theorem source_absolute_tail_constant_nonnegative (A T : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceAbsoluteTailConstant A T := by
  have hz := (source_normalization_pos A hA).le
  have ha : 0 ≤ A := by linarith
  unfold sourceAbsoluteTailConstant
  positivity

/-- Norm summation of actual ordinary-square terms, conditional on the exact
source pointwise bound and positive-ordinate inverse-sixth-power convergence. -/
theorem actual_positive_absolute_tail_le (A T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T)
    (hs : Summable (positiveSixthPowerWeight T))
    (hpoint : SourceAbsoluteTailMajorant A T) :
    actualPositiveAbsoluteZeroTail A T ≤
      sourceAbsoluteTailConstant A T * actualPositiveSixthPowerTail T := by
  unfold actualPositiveAbsoluteZeroTail actualPositiveSixthPowerTail
  rw [← tsum_mul_left]
  apply Summable.tsum_le_tsum
  · intro o
    have ho : T < (ZeroObject.shiftedValue o.val).im := o.property
    have hp : 0 < (ZeroObject.shiftedValue o.val).im := hT.trans_lt ho
    have hb := hpoint o.val (by simpa only [abs_of_pos hp] using ho)
    simpa only [positiveSixthPowerWeight, abs_of_pos hp, div_eq_mul_inv, one_mul] using hb
  · simpa only [Function.comp_def] using
      (actual_zero_square_norms_summable A hA).subtype (· ∈ zeroPositiveStrictTailSet T)
  · exact hs.mul_left _

/-- Both signs supply the factor two before any finite rational comparison. -/
theorem actual_absolute_tail_le_sixth_power (A T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T)
    (hs : Summable (positiveSixthPowerWeight T))
    (hpoint : SourceAbsoluteTailMajorant A T) :
    actualAbsoluteZeroTail A T ≤
      2 * sourceAbsoluteTailConstant A T * actualPositiveSixthPowerTail T := by
  rw [actual_absolute_tail_eq_two_positive A T hA hT]
  have h := mul_le_mul_of_nonneg_left (actual_positive_absolute_tail_le A T hA hT hs hpoint)
    (by norm_num : (0 : ℝ) ≤ 2)
  simpa only [mul_assoc] using h

/-- A future independently supplied counting bound controls the actual signed
strict tail. Its norm is used only here as an error estimate. -/
theorem actual_strict_tail_norm_le_of_count_bound (A T L : ℝ)
    (hA : 1 ≤ A) (hT : 0 ≤ T)
    (hs : Summable (positiveSixthPowerWeight T))
    (hpoint : SourceAbsoluteTailMajorant A T)
    (hcount : actualPositiveSixthPowerTail T ≤ L) :
    ‖actualZeroStrictTail A T‖ ≤ 2 * sourceAbsoluteTailConstant A T * L := by
  apply (actual_strict_tail_norm_le_absolute A T hA).trans
  apply (actual_absolute_tail_le_sixth_power A T hA hT hs hpoint).trans
  exact mul_le_mul_of_nonneg_left hcount
    (mul_nonneg (by norm_num) (source_absolute_tail_constant_nonnegative A T hA))

end CommonMeanScratch
