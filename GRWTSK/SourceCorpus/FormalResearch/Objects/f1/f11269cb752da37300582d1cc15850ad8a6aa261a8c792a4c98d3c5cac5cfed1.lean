import FormalResearch.RiemannHypothesis.Laplace.Assembly
import FormalResearch.MathematicalTooling.Laplace.Continuation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly

/-!
# B3.4 corrected nonnegative source and exact Laplace correction

This module performs the source-specific correction required before applying the
generic positive-Laplace Landau theorem.

A supplied all-scale lower bound
`lower ≤ Q(A)` is converted to one nonnegative constant
`C = max 0 (-lower)`.  The corrected source is

`A^17 * Z_A * (Q(A) + C)`.

Because the exact source normalization has three rational terms, clearing the
source scale gives precisely degrees `17`, `15`, and `13`. Their genuine
Laplace transform is therefore a finite combination of the already proved
exact kernels `J_17`, `J_15`, and `J_13`.

The corrected continuation is the completed B3.3 continuation plus this finite
correction.  This module proves positivity, genuine initial-half-plane
integrability/equality, positive-real analyticity, and positive-half-plane
meromorphy.  Transfer of the exact off-line pole and the final Landau
contradiction are subsequent B3.4 steps.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Landau.Correction

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
open FormalResearch.RiemannHypothesis.Laplace
open Laplace.Algebra Laplace.Kernel Laplace.Expansion
open Laplace.InitialFormula Laplace.Continuation Laplace.Assembly

noncomputable section

/-- The exact source normalization after multiplication by `A^17`. -/
def normalizationPolynomial (A : ℝ) : ℝ :=
  (65536 / 109395 : ℝ) / 16 * A ^ 17 +
    (131072 / 45045 : ℝ) / 2 * A ^ 15 +
    (196608 / 5005 : ℝ) * A ^ 13

/-- Clearing the exact source normalization gives exactly the three displayed
polynomial degrees. -/
theorem normalizationPolynomial_eq
    (A : ℝ) (hA : A ≠ 0) :
    normalizationPolynomial A =
      A ^ 17 * sourceNormalization A := by
  unfold normalizationPolynomial sourceNormalization
  field_simp [hA]
  ring

/-- B3.4's degree-zero corrected arithmetic source. -/
def correctedSource (C A : ℝ) : ℝ :=
  A ^ 17 * sourceNormalization A *
    (sourceQuadraticValue Realization.explicitSecondDerivative A + C)

/-- Exact pointwise decomposition into the B3.3 weighted source and the finite
normalization correction. -/
theorem corrected_source_eq
    (C A : ℝ) (hA : A ≠ 0) :
    correctedSource C A =
      weightedSource A + C * normalizationPolynomial A := by
  rw [normalizationPolynomial_eq A hA]
  unfold correctedSource weightedSource
  ring

/-- One all-scale lower bound supplies one nonnegative correction constant and
a nonnegative corrected source at every admitted radius. -/
theorem nonnegative_corrected_source_of_uniform
    (h : UniformLowerBound) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A := by
  obtain ⟨lower, hlower⟩ := h
  refine ⟨max 0 (-lower), le_max_left _ _, ?_⟩
  intro A hA
  have hC : -lower ≤ max 0 (-lower) :=
    le_max_right _ _
  have hq :
      0 ≤ sourceQuadraticValue
        Realization.explicitSecondDerivative A +
          max 0 (-lower) := by
    linarith [hlower A hA]
  unfold correctedSource
  exact mul_nonneg
    (mul_nonneg
      (pow_nonneg (by linarith) 17)
      (source_normalization_pos A hA).le)
    hq

/-- Exact finite correction of the B3.3 continued transform. -/
def correctionKernel (s : ℂ) : ℂ :=
  (65536 / 109395 : ℂ) / 16 * J 17 s +
    (131072 / 45045 : ℂ) / 2 * J 15 s +
    (196608 / 5005 : ℂ) * J 13 s

/-- The weighted correction splits into the three exact polynomial-exponential
kernel integrands. -/
theorem weighted_correction_eq
    (s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) *
        (normalizationPolynomial A : ℂ) =
      (65536 / 109395 : ℂ) / 16 *
          kernelIntegrand 17 s A +
        (131072 / 45045 : ℂ) / 2 *
          kernelIntegrand 15 s A +
        (196608 / 5005 : ℂ) *
          kernelIntegrand 13 s A := by
  unfold normalizationPolynomial kernelIntegrand
  push_cast
  ring

/-- The correction is genuinely integrable on every positive half-plane
parameter, not merely at the initial B3.3 abscissa. -/
theorem correction_integrable
    (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦
        Complex.exp (-s * A) *
          (normalizationPolynomial A : ℂ))
      (Ioi 1) := by
  simp_rw [weighted_correction_eq]
  exact
    (((kernelIntegrand_integrable 17 s hs).const_mul _).add
      ((kernelIntegrand_integrable 15 s hs).const_mul _)).add
      ((kernelIntegrand_integrable 13 s hs).const_mul _)

/-- The genuine correction integral equals the exact finite `J_k` formula. -/
theorem integral_correction
    (s : ℂ) (hs : 0 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (normalizationPolynomial A : ℂ)) =
      correctionKernel s := by
  have h17 :=
    (kernelIntegrand_integrable 17 s hs).const_mul
      ((65536 / 109395 : ℂ) / 16)
  have h15 :=
    (kernelIntegrand_integrable 15 s hs).const_mul
      ((131072 / 45045 : ℂ) / 2)
  have h13 :=
    (kernelIntegrand_integrable 13 s hs).const_mul
      (196608 / 5005 : ℂ)
  have hsum :
      IntegrableOn
        (fun A : ℝ ↦
          (65536 / 109395 : ℂ) / 16 *
              kernelIntegrand 17 s A +
            (131072 / 45045 : ℂ) / 2 *
              kernelIntegrand 15 s A)
        (Ioi 1) :=
    h17.add h15
  simp_rw [weighted_correction_eq]
  rw [integral_add hsum h13, integral_add h17 h15]
  simp_rw [integral_const_mul]
  have hJ17 :
      (∫ A in Ioi (1 : ℝ), kernelIntegrand 17 s A) =
        J 17 s := by
    simpa [JIntegral, kernelIntegrand] using
      (j_integral_obligation 17 s hs).2
  have hJ15 :
      (∫ A in Ioi (1 : ℝ), kernelIntegrand 15 s A) =
        J 15 s := by
    simpa [JIntegral, kernelIntegrand] using
      (j_integral_obligation 15 s hs).2
  have hJ13 :
      (∫ A in Ioi (1 : ℝ), kernelIntegrand 13 s A) =
        J 13 s := by
    simpa [JIntegral, kernelIntegrand] using
      (j_integral_obligation 13 s hs).2
  rw [hJ17, hJ15, hJ13]
  rfl

/-- The finite correction is analytic at every nonzero complex parameter. -/
theorem correctionKernel_analytic
    (s : ℂ) (hs : s ≠ 0) :
    AnalyticAt ℂ correctionKernel s := by
  unfold correctionKernel
  exact
    ((analyticAt_const.mul (J_analytic 17 s hs)).add
      (analyticAt_const.mul (J_analytic 15 s hs))).add
      (analyticAt_const.mul (J_analytic 13 s hs))

/-- The complete corrected continuation. -/
def correctedTransform (C : ℝ) (s : ℂ) : ℂ :=
  continuedTransform s + (C : ℂ) * correctionKernel s

/-- Weighted pointwise source decomposition on the actual radius domain. -/
theorem weighted_corrected_source_eq
    (C : ℝ) (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    Complex.exp (-s * A) * (correctedSource C A : ℂ) =
      Complex.exp (-s * A) * (weightedSource A : ℂ) +
        (C : ℂ) *
          (Complex.exp (-s * A) *
            (normalizationPolynomial A : ℂ)) := by
  rw [corrected_source_eq C A (by linarith)]
  push_cast
  ring

/-- The corrected source has a genuine initial-half-plane Laplace integral. -/
theorem corrected_source_integrable
    (C : ℝ) (s : ℂ) (hs : 1 < s.re) :
    IntegrableOn
      (fun A : ℝ ↦
        Complex.exp (-s * A) *
          (correctedSource C A : ℂ))
      (Ioi 1) := by
  have hi :=
    (weightedSource_laplace_integrable s hs).add
      ((correction_integrable s (by linarith)).const_mul (C : ℂ))
  exact hi.congr_fun
    (fun A hA ↦
      (weighted_corrected_source_eq C s A hA.le).symm)
    measurableSet_Ioi

/-- Exact initial Laplace identity with the completed B3.3 continuation. -/
theorem integral_corrected_source
    (C : ℝ) (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (correctedSource C A : ℂ)) =
      correctedTransform C s := by
  have heq :=
    setIntegral_congr_fun
      (μ := volume) measurableSet_Ioi
      (fun A hA ↦
        weighted_corrected_source_eq C s A hA.le)
  rw [heq,
    integral_add
      (weightedSource_laplace_integrable s hs)
      ((correction_integrable s (by linarith)).const_mul (C : ℂ)),
    integral_const_mul,
    initial_agreement s hs,
    integral_correction s (by linarith)]
  rfl

/-- The finite correction preserves analyticity on the B3.3 candidate-free
domain. -/
theorem correctedTransform_analytic_on_domain
    (C : ℝ) (s : ℂ)
    (hs : s ∈ convergenceDomain) :
    AnalyticAt ℂ (correctedTransform C) s := by
  have hs0 := ((mem_convergenceDomain_iff s).mp hs).2.1
  exact
    (continuedTransform_analytic s hs).add
      (analyticAt_const.mul
        (correctionKernel_analytic s hs0))

/-- The corrected transform remains meromorphic on the whole positive
half-plane.  The correction itself has no nonzero singularity. -/
theorem correctedTransform_meromorphic
    (C : ℝ) :
    MeromorphicOn (correctedTransform C)
      {s : ℂ | 0 < s.re} := by
  intro s hs
  have hs0 : s ≠ 0 := by
    intro h
    simp [h] at hs
  exact
    (continuedTransform_meromorphic s hs).add
      (analyticAt_const.mul
        (correctionKernel_analytic s hs0)).meromorphicAt

/-- The corrected continuation is analytic at every positive real point. -/
theorem correctedTransform_analytic_positive_real
    (C : ℝ) (σ : ℝ) (hσ : 0 < σ) :
    AnalyticAt ℂ (correctedTransform C) (σ : ℂ) := by
  exact
    (continuedTransform_analytic_positive_real σ hσ).add
      (analyticAt_const.mul
        (correctionKernel_analytic (σ : ℂ)
          (by exact_mod_cast hσ.ne')))

/-- The complete correction data produced by the exact B3.4 uniform lower-bound
hypothesis.  No Landau contradiction is taken in this checkpoint. -/
def CorrectedSourceCheckpoint : Prop :=
  ∀ h : UniformLowerBound,
    ∃ C : ℝ, 0 ≤ C ∧
      (∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A) ∧
      (∀ s : ℂ, 1 < s.re →
        IntegrableOn
          (fun A : ℝ ↦
            Complex.exp (-s * A) *
              (correctedSource C A : ℂ))
          (Ioi 1) ∧
        (∫ A in Ioi (1 : ℝ),
          Complex.exp (-s * A) *
            (correctedSource C A : ℂ)) =
          correctedTransform C s) ∧
      MeromorphicOn (correctedTransform C)
        {s : ℂ | 0 < s.re} ∧
      (∀ σ : ℝ, 0 < σ →
        AnalyticAt ℂ (correctedTransform C) (σ : ℂ))

theorem corrected_source_checkpoint :
    CorrectedSourceCheckpoint := by
  intro h
  obtain ⟨C, hC, hpos⟩ :=
    nonnegative_corrected_source_of_uniform h
  exact ⟨C, hC, hpos,
    fun s hs ↦
      ⟨corrected_source_integrable C s hs,
        integral_corrected_source C s hs⟩,
    correctedTransform_meromorphic C,
    correctedTransform_analytic_positive_real C⟩

end
end FormalResearch.RiemannHypothesis.Landau.Correction
