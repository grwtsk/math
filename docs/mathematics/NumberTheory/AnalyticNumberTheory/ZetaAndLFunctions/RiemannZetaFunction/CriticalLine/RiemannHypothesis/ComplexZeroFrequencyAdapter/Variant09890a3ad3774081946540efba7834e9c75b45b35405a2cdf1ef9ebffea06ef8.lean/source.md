# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ComplexZeroFrequencyAdapter.Variant09890a3ad3774081946540efba7834e9c75b45b35405a2cdf1ef9ebffea06ef8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2af8886c1948591d1877b175df07bebbb097e6d` · SHA-256 `09890a3ad3774081946540efba7834e9c75b45b35405a2cdf1ef9ebffea06ef8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualComplexCorrelationMoment
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceMass

/-!
# The original source at complex zero frequency

Written direction 2026-10-09: grwtsk contributors. Local exact transform and
critical-strip consumer: OpenAI Codex. The upstream prescribed source and
correlation are used at their qualified identities. Real-axis tails do not
instantiate the supplied complex-frequency bound. This pointwise adapter
does not sum zeros, discard multiplicities/residues, or prove an explicit
formula and its full arithmetic return.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ComplexZeroFrequencyAdapter
open ActualComplexSourceMoment ActualComplexCorrelationMoment
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory
noncomputable section

/-- The complex angular transform in this module, with the following exact parameterization.

def complexAngularTransform (f : ℝ → ℝ) (w : ℂ) : ℂ := ∫ x : ℝ, Complex.exp ((-Complex.I * w)
* (x : ℂ)) * (f x : ℂ)
-/
def complexAngularTransform (f : ℝ → ℝ) (w : ℂ) : ℂ :=
  ∫ x : ℝ, Complex.exp ((-Complex.I * w) * (x : ℂ)) * (f x : ℂ)

/-- The zero argument in this module, with the following exact parameterization.

def zeroArgument (ρ : ℂ) : ℂ := ⟨ρ.im, 1 / 2 - ρ.re⟩
-/
def zeroArgument (ρ : ℂ) : ℂ := ⟨ρ.im, 1 / 2 - ρ.re⟩

theorem actual_source_complex_multiplier {A : ℝ} (hA : 1 ≤ A) (w : ℂ) :
    complexAngularTransform (prescribedSource A) w =
      -(w ^ 2 + 1 / 4) * complexBumpMoment A (-Complex.I * w) /
        (Real.sqrt (sourceZ A) : ℂ) := by
  rw [prescribedSource_eq A hA, sourceZ_eq A hA]
  change complexTestMoment A (-Complex.I * w) = _
  rw [complex_actual_normalized_laplace_multiplier hA]
  have he : (-Complex.I * w) ^ 2 - 1 / 4 = -(w ^ 2 + 1 / 4) := by
    rw [mul_pow, neg_sq, Complex.I_sq]
    ring
  rw [he]

theorem actual_correlation_complex_square {A : ℝ} (hA : 1 ≤ A) (w : ℂ) :
    complexAngularTransform (prescribedCorrelation A) w =
      complexAngularTransform (prescribedSource A) w ^ 2 := by
  rw [prescribedSource_eq A hA, prescribedCorrelation_eq A hA]
  exact complex_actual_full_correlation_moment hA (-Complex.I * w)

theorem complex_correlation_of_source_bound {A U : ℝ} (hA : 1 ≤ A) (w : ℂ)
    (hsource : ‖complexAngularTransform (prescribedSource A) w‖ ≤ U) :
    ‖complexAngularTransform (prescribedCorrelation A) w‖ ≤ U ^ 2 := by
  rw [actual_correlation_complex_square hA, norm_pow]
  exact pow_le_pow_left₀ (norm_nonneg _) hsource 2

theorem zeroArgument_coordinates (ρ : ℂ) :
    (zeroArgument ρ).re = ρ.im ∧ (zeroArgument ρ).im = 1 / 2 - ρ.re := ⟨rfl, rfl⟩

theorem zeroArgument_imaginary_strip {ρ : ℂ} (hρ : ρ.re ∈ Set.Icc 0 1) :
    |(zeroArgument ρ).im| ≤ (1 / 2 : ℝ) := by
  change |1 / 2 - ρ.re| ≤ (1 / 2 : ℝ)
  exact abs_le.mpr ⟨by linarith [hρ.2], by linarith [hρ.1]⟩

/-- The complex correlation allowance can contain exp(A) throughout the strip. -/
theorem critical_strip_exponential_allowance {A : ℝ} (hA : 0 ≤ A) {ρ : ℂ}
    (hρ : ρ.re ∈ Set.Icc 0 1) :
    Real.exp (2 * A * |(zeroArgument ρ).im|) ≤ Real.exp A := by
  apply Real.exp_le_exp.mpr
  have h := mul_le_mul_of_nonneg_left (zeroArgument_imaginary_strip hρ)
    (by positivity : 0 ≤ 2 * A)
  linarith

/-- A separate complex-source hypothesis pays the actual correlation mode.
The real-frequency profile estimate does not appear among the hypotheses. -/
theorem critical_strip_correlation_return {A B : ℝ} (hA : 1 ≤ A) (_hB : 0 ≤ B)
    {ρ : ℂ} (hρ : ρ.re ∈ Set.Icc 0 1)
    (hsource : ‖complexAngularTransform (prescribedSource A) (zeroArgument ρ)‖ ≤
      B * Real.exp (A * |(zeroArgument ρ).im|)) :
    ‖complexAngularTransform (prescribedCorrelation A) (zeroArgument ρ)‖ ≤
      B ^ 2 * Real.exp A := by
  have h := complex_correlation_of_source_bound hA (zeroArgument ρ) hsource
  have he : (B * Real.exp (A * |(zeroArgument ρ).im|)) ^ 2 =
      B ^ 2 * Real.exp (2 * A * |(zeroArgument ρ).im|) := by
    rw [mul_pow, ← Real.exp_nat_mul]
    congr 2
    norm_num only [Nat.cast_ofNat]
    ring
  rw [he] at h
  exact h.trans (mul_le_mul_of_nonneg_left
    (critical_strip_exponential_allowance (by linarith) hρ) (sq_nonneg B))

end
end GRWTSK.RiemannHypothesis.Conversation.ComplexZeroFrequencyAdapter
```
