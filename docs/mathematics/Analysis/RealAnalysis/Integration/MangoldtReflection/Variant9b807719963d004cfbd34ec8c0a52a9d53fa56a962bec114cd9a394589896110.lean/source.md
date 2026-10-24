# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.MangoldtReflection.Variant9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d916341e5b4a0cfbf75ae1de1064cdfd06d4a97` · SHA-256 `9b807719963d004cfbd34ec8c0a52a9d53fa56a962bec114cd9a394589896110`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.UpperObservation
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSign
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

set_option autoImplicit false
namespace MangoldtReflectionScratch
open MeasureTheory Finset
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity UpperObservation
noncomputable section

/-- The fixed positive Mangoldt coefficients applied to the unchanged normalized source. -/
def mangoldtObservation (A : ℝ) (T : Finset ℕ) (x : ℝ) : ℝ :=
  ∑ i ∈ T, ArithmeticFunction.vonMangoldt i / Real.sqrt i *
    normalizedTest explicitSecondDerivative A (x + Real.log i)

/-- Finite actual shifts preserve continuity. -/
theorem mangoldtObservation_continuous (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Continuous (mangoldtObservation A T) := by
  apply continuous_finsetSum
  intro i _
  exact continuous_const.mul ((normalizedTest_contDiff A (by linarith)).continuous.comp
    (continuous_id.add continuous_const))

/-- Finite actual shifts preserve compact support, independently of their signs. -/
theorem mangoldtObservation_hasCompactSupport (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    HasCompactSupport (mangoldtObservation A T) := by
  have hi (i : ℕ) : HasCompactSupport (fun x : ℝ ↦
      ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) :=
    ((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
      (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left
  have he : mangoldtObservation A T = ∑ i ∈ T, (fun x : ℝ ↦
      ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) := by
    funext x
    simp [mangoldtObservation]
  rw [he]
  exact HasCompactSupport.finset_sum (fun i (_ : i ∈ T) ↦ hi i)

/-- The observation has a genuinely integrable squared norm. -/
theorem mangoldtObservation_square_integrable (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (mangoldtObservation A T x) ^ 2) := by
  simp_rw [pow_two]
  change Integrable (mangoldtObservation A T * mangoldtObservation A T)
  exact ((mangoldtObservation_continuous A T hA).mul
      (mangoldtObservation_continuous A T hA)).integrable_of_hasCompactSupport
        (mangoldtObservation_hasCompactSupport A T hA).mul_right

/-- Every finite reflection product is genuinely integrable. -/
theorem mangoldtObservation_reflection_integrable (A c : ℝ) (T U : Finset ℕ)
    (hA : 1 ≤ A) :
    Integrable (fun x ↦ mangoldtObservation A T x * mangoldtObservation A U (c - x)) :=
  ((mangoldtObservation_continuous A T hA).mul
    ((mangoldtObservation_continuous A U hA).comp
      (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
        (mangoldtObservation_hasCompactSupport A T hA).mul_right

/-- Finite reflection observations retain the signed coefficients and actual correlation. -/
theorem mangoldtObservation_reflection_eq (A c : ℝ) (T U : Finset ℕ) (hA : 1 ≤ A) :
    (∫ x : ℝ, mangoldtObservation A T x * mangoldtObservation A U (c - x)) =
      ∑ i ∈ T, ∑ j ∈ U,
        (ArithmeticFunction.vonMangoldt i / Real.sqrt i) *
        (ArithmeticFunction.vonMangoldt j / Real.sqrt j) *
        sourceCorrelation explicitSecondDerivative A (c + Real.log i + Real.log j) := by
  have hi (i j : ℕ) : Integrable (fun x : ℝ ↦
      (ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) *
      (ArithmeticFunction.vonMangoldt j / Real.sqrt j *
        normalizedTest explicitSecondDerivative A (c - x + Real.log j))) := by
    have hc := (normalizedTest_contDiff A (by linarith)).continuous
    have hcont : Continuous (fun x : ℝ ↦
        (ArithmeticFunction.vonMangoldt i / Real.sqrt i *
          normalizedTest explicitSecondDerivative A (x + Real.log i)) *
        (ArithmeticFunction.vonMangoldt j / Real.sqrt j *
          normalizedTest explicitSecondDerivative A (c - x + Real.log j))) :=
      (continuous_const.mul (hc.comp (continuous_id.add continuous_const))).mul
      (continuous_const.mul (hc.comp
        ((continuous_const.sub continuous_id).add continuous_const)))
    exact hcont.integrable_of_hasCompactSupport
        (((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
          (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left).mul_right
  simp_rw [mangoldtObservation, sum_mul, mul_sum]
  rw [integral_finsetSum T (fun i _ ↦ integrable_finsetSum U (fun j _ ↦ hi i j))]
  apply sum_congr rfl
  intro i _
  rw [integral_finsetSum U (fun j _ ↦ hi i j)]
  apply sum_congr rfl
  intro j _
  rw [← shifted_source_reflection A (Real.log i) (Real.log j) c hA,
    ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with x
  ring


/-- A real compact observation has a signed even-minus-odd reflection decomposition. -/
theorem reflection_eq_even_square_sub_odd_square (f : ℝ → ℝ)
    (hf : Continuous f) (hcf : HasCompactSupport f) :
    (∫ x : ℝ, f x * f (-x)) =
      (∫ x : ℝ, ((f x + f (-x)) / 2) ^ 2) -
      (∫ x : ℝ, ((f x - f (-x)) / 2) ^ 2) := by
  have hn : Continuous (fun x : ℝ ↦ f (-x)) := hf.comp continuous_neg
  have hcn : HasCompactSupport (fun x : ℝ ↦ f (-x)) :=
    hcf.comp_homeomorph (Homeomorph.neg ℝ)
  have he : Integrable (fun x : ℝ ↦ ((f x + f (-x)) / 2) ^ 2) :=
    (((hf.add hn).div_const 2).pow 2).integrable_of_hasCompactSupport
      (by
        simp only [div_eq_mul_inv, pow_two]
        exact (hcf.add hcn).mul_right.mul_right)
  have ho : Integrable (fun x : ℝ ↦ ((f x - f (-x)) / 2) ^ 2) :=
    (((hf.sub hn).div_const 2).pow 2).integrable_of_hasCompactSupport
      (by
        simp only [div_eq_mul_inv, pow_two]
        exact (hcf.sub hcn).mul_right.mul_right)
  rw [← integral_sub he ho]
  apply integral_congr_ae
  filter_upwards [] with x
  ring

/-- The actual plus-shift kernel has a negative one-coordinate direction at every scale.
The shift is real; this theorem does not assert it is a prime logarithm. -/
theorem actual_shifted_reflection_negative (A : ℝ) (hA : 1 ≤ A) :
    ∃ a : ℝ, 0 < a ∧ a < A ∧
      (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
        normalizedTest explicitSecondDerivative A (-x + a)) < 0 := by
  obtain ⟨t, ht0, htA, ht⟩ := CorrelationSign.actual_correlation_negative_interior A hA
  refine ⟨t / 2, by linarith, by linarith, ?_⟩
  have hr := shifted_source_reflection A (t / 2) (t / 2) 0 hA
  simp only [zero_sub, zero_add] at hr
  rw [hr]
  convert ht using 1
  congr 1
  ring

end
end MangoldtReflectionScratch
```
