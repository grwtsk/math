# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PolynomialCorrection.Variant21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06162b3e39a6c3bc5028be005ab91fdd65d9e049` · SHA-256 `21c11e534cbad2fd5a1b4d91096f27c17fbc28bcd0cc72bcb4f105e2a135a83c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Landau.Correction

/-!
# A fixed-degree polynomial correction of the actual Landau source

The unchanged weighted source is corrected by `C * A^m` inside the quadratic
value. Its genuine Laplace correction uses exactly `J_(m+17)`, `J_(m+15)`, and
`J_(m+13)`. This finite correction is analytic away from zero and preserves the
existing continuation's positive-half-plane meromorphy.

The degree-zero definitions agree with the original correction. Positivity
requires the displayed lower bound for the unchanged source quadratic value;
this module does not assert that arithmetic estimate or RH.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
open FormalResearch.RiemannHypothesis.Laplace
open Laplace.Algebra Laplace.Kernel Laplace.Expansion
open Laplace.InitialFormula Laplace.Continuation Laplace.Assembly

noncomputable section

/-- The three actual normalization terms after a degree-`m` correction. -/
def normalizationPolynomial (m : ℕ) (A : ℝ) : ℝ :=
  (65536 / 109395 : ℝ) / 16 * A ^ (m + 17) +
    (131072 / 45045 : ℝ) / 2 * A ^ (m + 15) +
    (196608 / 5005 : ℝ) * A ^ (m + 13)

/-- Clearing the source normalization retains every power and coefficient. -/
theorem normalizationPolynomial_eq (m : ℕ) (A : ℝ) (hA : A ≠ 0) :
    normalizationPolynomial m A = A ^ 17 * sourceNormalization A * A ^ m := by
  calc
    _ = A ^ m * Correction.normalizationPolynomial A := by
      dsimp [normalizationPolynomial, Correction.normalizationPolynomial]
      simp only [pow_add]
      ring
    _ = _ := by rw [Correction.normalizationPolynomial_eq A hA]; ring

/-- The degree-zero normalization polynomial is the original one. -/
theorem normalizationPolynomial_zero (A : ℝ) :
    normalizationPolynomial 0 A = Correction.normalizationPolynomial A := by
  simp only [normalizationPolynomial, Correction.normalizationPolynomial, Nat.zero_add]

/-- The actual quadratic source with one fixed polynomial correction. -/
def correctedSource (m : ℕ) (C A : ℝ) : ℝ :=
  A ^ 17 * sourceNormalization A *
    (sourceQuadraticValue Realization.explicitSecondDerivative A + C * A ^ m)

/-- The original degree-zero corrected source is preserved exactly. -/
theorem correctedSource_zero (C A : ℝ) :
    correctedSource 0 C A = Correction.correctedSource C A := by
  simp only [correctedSource, Correction.correctedSource, pow_zero, mul_one]

/-- Pointwise decomposition into the original weighted source and its correction. -/
theorem corrected_source_eq (m : ℕ) (C A : ℝ) (hA : A ≠ 0) :
    correctedSource m C A = weightedSource A + C * normalizationPolynomial m A := by
  rw [normalizationPolynomial_eq m A hA]
  unfold correctedSource weightedSource
  ring

/-- A proved polynomial lower bound gives positivity without clipping the source. -/
theorem nonnegative_corrected_source_of_lower (m : ℕ) (C : ℝ)
    (h : ∀ A : ℝ, 1 ≤ A →
      0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A + C * A ^ m) :
    ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A := by
  intro A hA
  exact mul_nonneg
    (mul_nonneg (pow_nonneg (by linarith) 17) (source_normalization_pos A hA).le)
    (h A hA)

/-- The finite transform correction with the three shifted natural degrees. -/
def correctionKernel (m : ℕ) (s : ℂ) : ℂ :=
  (65536 / 109395 : ℂ) / 16 * J (m + 17) s +
    (131072 / 45045 : ℂ) / 2 * J (m + 15) s +
    (196608 / 5005 : ℂ) * J (m + 13) s

/-- The degree-zero correction kernel is the original finite correction. -/
theorem correctionKernel_zero (s : ℂ) :
    correctionKernel 0 s = Correction.correctionKernel s := by
  simp only [correctionKernel, Correction.correctionKernel, Nat.zero_add]

/-- The correction decomposes into the actual polynomial-exponential integrands. -/
theorem weighted_correction_eq (m : ℕ) (s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * (normalizationPolynomial m A : ℂ) =
      (65536 / 109395 : ℂ) / 16 * kernelIntegrand (m + 17) s A +
        (131072 / 45045 : ℂ) / 2 * kernelIntegrand (m + 15) s A +
        (196608 / 5005 : ℂ) * kernelIntegrand (m + 13) s A := by
  unfold normalizationPolynomial kernelIntegrand
  push_cast
  ring

/-- Genuine correction integrability on the full positive convergence half-plane. -/
theorem correction_integrable (m : ℕ) (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦ Complex.exp (-s * A) * (normalizationPolynomial m A : ℂ))
      (Ioi 1) := by
  simp_rw [weighted_correction_eq]
  exact (((kernelIntegrand_integrable (m + 17) s hs).const_mul _).add
    ((kernelIntegrand_integrable (m + 15) s hs).const_mul _)).add
    ((kernelIntegrand_integrable (m + 13) s hs).const_mul _)

/-- The genuine correction integral is exactly the finite `J_k` formula. -/
theorem integral_correction (m : ℕ) (s : ℂ) (hs : 0 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) * (normalizationPolynomial m A : ℂ)) =
      correctionKernel m s := by
  have h17 := (kernelIntegrand_integrable (m + 17) s hs).const_mul
    ((65536 / 109395 : ℂ) / 16)
  have h15 := (kernelIntegrand_integrable (m + 15) s hs).const_mul
    ((131072 / 45045 : ℂ) / 2)
  have h13 := (kernelIntegrand_integrable (m + 13) s hs).const_mul
    (196608 / 5005 : ℂ)
  have hsum : IntegrableOn
      (fun A : ℝ ↦ (65536 / 109395 : ℂ) / 16 * kernelIntegrand (m + 17) s A +
        (131072 / 45045 : ℂ) / 2 * kernelIntegrand (m + 15) s A) (Ioi 1) := h17.add h15
  simp_rw [weighted_correction_eq]
  rw [integral_add hsum h13, integral_add h17 h15]
  simp_rw [integral_const_mul]
  have hJ (k : ℕ) : (∫ A in Ioi (1 : ℝ), kernelIntegrand k s A) = J k s := by
    simpa [JIntegral, kernelIntegrand] using (j_integral_obligation k s hs).2
  rw [hJ, hJ, hJ]
  rfl

/-- Every fixed finite degree correction is analytic away from the origin. -/
theorem correctionKernel_analytic (m : ℕ) (s : ℂ) (hs : s ≠ 0) :
    AnalyticAt ℂ (correctionKernel m) s := by
  unfold correctionKernel
  exact ((analyticAt_const.mul (J_analytic (m + 17) s hs)).add
    (analyticAt_const.mul (J_analytic (m + 15) s hs))).add
    (analyticAt_const.mul (J_analytic (m + 13) s hs))

/-- The original continued transform plus the fixed polynomial correction. -/
def correctedTransform (m : ℕ) (C : ℝ) (s : ℂ) : ℂ :=
  continuedTransform s + (C : ℂ) * correctionKernel m s

/-- The degree-zero corrected transform agrees exactly with the old transform. -/
theorem correctedTransform_zero (C : ℝ) (s : ℂ) :
    correctedTransform 0 C s = Correction.correctedTransform C s := by
  rw [correctedTransform, correctionKernel_zero, Correction.correctedTransform]

/-- Weighted source decomposition on every actual support radius. -/
theorem weighted_corrected_source_eq (m : ℕ) (C : ℝ) (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    Complex.exp (-s * A) * (correctedSource m C A : ℂ) =
      Complex.exp (-s * A) * (weightedSource A : ℂ) +
        (C : ℂ) * (Complex.exp (-s * A) * (normalizationPolynomial m A : ℂ)) := by
  rw [corrected_source_eq m C A (by linarith)]
  push_cast
  ring

/-- The corrected source has a genuine initial-half-plane Laplace integral. -/
theorem corrected_source_integrable (m : ℕ) (C : ℝ) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦ Complex.exp (-s * A) * (correctedSource m C A : ℂ)) (Ioi 1) := by
  have hi := (weightedSource_laplace_integrable s hs).add
    ((correction_integrable m s (by linarith)).const_mul (C : ℂ))
  exact hi.congr_fun
    (fun A hA ↦ (weighted_corrected_source_eq m C s A hA.le).symm) measurableSet_Ioi

/-- Exact initial-domain agreement with the genuine corrected-source integral. -/
theorem integral_corrected_source (m : ℕ) (C : ℝ) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ), Complex.exp (-s * A) * (correctedSource m C A : ℂ)) =
      correctedTransform m C s := by
  have heq := setIntegral_congr_fun (μ := volume) measurableSet_Ioi
    (fun A hA ↦ weighted_corrected_source_eq m C s A hA.le)
  rw [heq, integral_add (weightedSource_laplace_integrable s hs)
    ((correction_integrable m s (by linarith)).const_mul (C : ℂ)),
    integral_const_mul, initial_agreement s hs, integral_correction m s (by linarith)]
  rfl

/-- Analyticity is preserved throughout the existing candidate-free domain. -/
theorem correctedTransform_analytic_on_domain (m : ℕ) (C : ℝ) (s : ℂ)
    (hs : s ∈ convergenceDomain) :
    AnalyticAt ℂ (correctedTransform m C) s := by
  have hs0 := ((mem_convergenceDomain_iff s).mp hs).2.1
  exact (continuedTransform_analytic s hs).add
    (analyticAt_const.mul (correctionKernel_analytic m s hs0))

/-- The correction preserves meromorphy on the whole positive half-plane. -/
theorem correctedTransform_meromorphic (m : ℕ) (C : ℝ) :
    MeromorphicOn (correctedTransform m C) {s : ℂ | 0 < s.re} := by
  intro s hs
  have hs0 : s ≠ 0 := by
    intro h
    simp [h] at hs
  exact (continuedTransform_meromorphic s hs).add
    (analyticAt_const.mul (correctionKernel_analytic m s hs0)).meromorphicAt

/-- The corrected continuation is analytic at every positive real point. -/
theorem correctedTransform_analytic_positive_real (m : ℕ) (C : ℝ)
    (σ : ℝ) (hσ : 0 < σ) :
    AnalyticAt ℂ (correctedTransform m C) (σ : ℂ) := by
  exact (continuedTransform_analytic_positive_real σ hσ).add
    (analyticAt_const.mul
      (correctionKernel_analytic m (σ : ℂ) (by exact_mod_cast hσ.ne')))

end
end FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection
```
