import ComplexBoundaryAsymptotic

/-! Quantitative complex amplitude control for the literal source.
grwtsk contributors's originating direction; OpenAI Codex scratch proof construction.
The actual normalization and both endpoints remain. No arithmetic witness. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryRate
open Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open ContinuousResearch.ComplexBoundaryAsymptotic

/-- Error polynomial for the relative endpoint expansion in a positive half-plane. -/
def errorPolynomial (delta : ℝ) : ℝ :=
  10/delta+45/delta^2+105/delta^3+105/delta^4

/-- The literal normalization ratio, separate from the transform ratio. -/
def normalizationRatio (A : ℝ) : ℝ :=
  Real.sqrt (4096/109395 : ℝ)/Real.sqrt (sourceNormalization A)

def positiveEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1-10/((A : ℂ)*z)+45/((A : ℂ)*z)^2-
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

def reflectedEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1+10/((A : ℂ)*z)+45/((A : ℂ)*z)^2+
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

theorem errorPolynomial_nonneg {delta : ℝ} (hdelta : 0 < delta) :
    0 ≤ errorPolynomial delta := by unfold errorPolynomial; positivity

theorem normalization_bounds {A : ℝ} (hA : 1 ≤ A) :
    (4096/109395 : ℝ) ≤ sourceNormalization A ∧
      sourceNormalization A-(4096/109395 : ℝ) ≤
        (65536/45045+196608/5005)/A^2 := by
  have hp : 0 < A := by linarith
  have h2 : 1 ≤ A^2 := one_le_pow₀ hA
  have h4 : A^2 ≤ A^4 := by nlinarith [sq_nonneg (A^2-1)]
  have ht : (196608/5005 : ℝ)/A^4 ≤ (196608/5005 : ℝ)/A^2 := by
    gcongr
  unfold sourceNormalization
  constructor
  · have hfirst : (0 : ℝ) ≤ (131072/45045)/(2*A^2) := by positivity
    have hlast : (0 : ℝ) ≤ (196608/5005)/A^4 := by positivity
    norm_num only [show (65536/109395 : ℝ)/16 = 4096/109395 by norm_num]
    linarith
  · have he : (65536/109395 : ℝ)/16=4096/109395 := by norm_num
    rw [he]
    have he2 : (131072/45045 : ℝ)/(2*A^2)=(65536/45045 : ℝ)/A^2 := by ring
    rw [he2]
    calc
      _ = (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^4 := by ring
      _ ≤ (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^2 := add_le_add_right ht _
      _ = _ := by ring

theorem normalizationRatio_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ normalizationRatio A ∧ normalizationRatio A ≤ 1 := by
  have hz : 0 < (4096/109395 : ℝ) := by norm_num
  have hp := source_normalization_pos A hA
  have hs := Real.sqrt_le_sqrt (normalization_bounds hA).1
  unfold normalizationRatio
  constructor
  · positivity
  · exact (div_le_one (Real.sqrt_pos.mpr hp)).mpr hs

theorem normalizationRatio_deficit {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤
      (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
  let s := Real.sqrt (sourceNormalization A)
  let s0 := Real.sqrt (4096/109395 : ℝ)
  have hs : 0 < s := Real.sqrt_pos.mpr (source_normalization_pos A hA)
  have hs0 : 0 < s0 := Real.sqrt_pos.mpr (by norm_num)
  have hss : s0 ≤ s := Real.sqrt_le_sqrt (normalization_bounds hA).1
  have hsq : s^2 = sourceNormalization A := Real.sq_sqrt (source_normalization_pos A hA).le
  have hsq0 : s0^2 = (4096/109395 : ℝ) := Real.sq_sqrt (by norm_num)
  have hden : 2*(4096/109395 : ℝ) ≤ s*(s+s0) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hss) hs0.le]
  have he : 1-normalizationRatio A =
      (sourceNormalization A-(4096/109395 : ℝ))/(s*(s+s0)) := by
    unfold normalizationRatio
    change 1-s0/s = _
    rw [← hsq,← hsq0]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ (sourceNormalization A-(4096/109395 : ℝ))/(2*(4096/109395)) := by
      apply div_le_div_of_nonneg_left
      · exact sub_nonneg.mpr (normalization_bounds hA).1
      · norm_num
      · exact hden
    _ ≤ ((65536/45045+196608/5005)/A^2)/(2*(4096/109395)) := by
      gcongr
      exact (normalization_bounds hA).2
    _ = _ := by ring

end ContinuousResearch.ComplexBoundaryRate
