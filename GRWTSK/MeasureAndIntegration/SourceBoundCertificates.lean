-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Archimedean.Variantb9bc5c94de376d958728bf117da4d59b215f90cba57cde919198bb9cea56a986","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9bc5c94de376d958728bf117da4d59b215f90cba57cde919198bb9cea56a986","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Archimedean.Variantb9bc5c94de376d958728bf117da4d59b215f90cba57cde919198bb9cea56a986","mathematical_subject":"Computation.DataStructures","original_sha256":"b9bc5c94de376d958728bf117da4d59b215f90cba57cde919198bb9cea56a986","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/SourceBoundCertificates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Certificates.Bound
import FormalResearch.MathematicalTooling.Certificates.Composition
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction

/-!
# Certificates for the actual source correction

The analytic correction's four actual contributions receive proved certificates.
Their product is applied to the existing signed-pairing tail adapter. The
signed arithmetic leaf remains a premise; no new RH bound is asserted.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Archimedean.Variantb9bc5c94de376d958728bf117da4d59b215f90cba57cde919198bb9cea56a986

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SourceBoundCertificates

open FormalResearch.MathematicalTooling.Certificates
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization
open EstimateTailReduction
open MeasureTheory

noncomputable section

/-- The independently bounded negative archimedean contribution. -/
def archimedean : BoundCertificate where
  function A := -archimedeanValue explicitSecondDerivative A
  constant := max 0 (-archimedeanMultiplier 0)
  radius := 1
  constant_nonneg := le_max_left _ _
  radius_one_le := le_rfl
  bound A hA := (neg_le_neg (SourceCorrectionEstimate.actual_archimedean_lower A hA)).trans
    (le_max_right _ _)

/-- Negative decaying interval term, retaining its actual integrand. -/
def decaying : BoundCertificate where
  function A := -(2 * ∫ t in 0..2 * A, Real.exp (-t / 2) *
    sourceCorrelation explicitSecondDerivative A t)
  constant := 4
  radius := 1
  constant_nonneg := by norm_num
  radius_one_le := le_rfl
  bound A hA := by linarith [SourceCorrectionEstimate.first_correction_lower A hA]

/-- Negative fixed initial interval term. -/
def initial : BoundCertificate where
  function A := -(2 * ∫ t in 0..lowerEndpoint, Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t)
  constant := 4 * (Real.sqrt 2 - 1)
  radius := 1
  constant_nonneg := by
    have h : 1 ≤ Real.sqrt 2 := by norm_num
    positivity
  radius_one_le := le_rfl
  bound A hA := by linarith [SourceCorrectionEstimate.second_correction_lower A hA]

/-- The signed prime-two endpoint atom is retained. -/
def endpoint : BoundCertificate where
  function A := -primeTwoBoundary explicitSecondDerivative A
  constant := 2 * Real.sqrt 2
  radius := 1
  constant_nonneg := by positivity
  radius_one_le := le_rfl
  bound A hA := (neg_le_abs _).trans (EstimateCorrelation.actual_prime_two_boundary_abs_le A hA)

/-- Complete certificate produced by composing all four actual source terms. -/
def correction : BoundCertificate := [archimedean, decaying, initial, endpoint].prod

theorem correction_function (A : ℝ) :
    correction.function A = -analyticCorrection explicitSecondDerivative A := by
  simp only [correction, BoundCertificate.prod_function, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil]
  simp only [archimedean, decaying, initial, endpoint, analyticCorrection]
  ring

theorem correction_constant : correction.constant =
    max 0 (-archimedeanMultiplier 0) + 6 * Real.sqrt 2 := by
  simp only [correction, BoundCertificate.prod_constant, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, archimedean, decaying, initial, endpoint]
  ring

theorem correction_radius : correction.radius = 1 := by
  simp [correction, archimedean, decaying, initial, endpoint]

/-- This is an instantiated, unconditional bound on the actual correction. -/
theorem actual_correction_certificate (A : ℝ) (hA : 1 ≤ A) :
    -analyticCorrection explicitSecondDerivative A ≤
      max 0 (-archimedeanMultiplier 0) + 6 * Real.sqrt 2 := by
  simpa only [correction_function, correction_constant] using
    correction.bound A (by simpa only [correction_radius] using hA)

/-- Apply a supplied exact signed-pairing certificate to the existing all-real consumer. -/
theorem estimate_of_signed_certificate (c : BoundCertificate)
    (hc : c.function = fun A ↦ -signedPairing explicitSecondDerivative A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_quadratic_tail_lower_bound
  refine ⟨-correction.constant - 2 * c.constant, c.radius, c.radius_one_le, ?_⟩
  intro A hA
  have hb := c.bound A hA
  rw [hc] at hb
  have hcorr := correction.bound A (by
    rw [correction_radius]
    exact c.radius_one_le.trans hA)
  rw [correction_function] at hcorr
  rw [CorrelationAssembly.source_arithmetic_representation A (c.radius_one_le.trans hA)]
  linarith

/-- Scoped proof of the first actual source contribution. -/
def archimedeanProof : ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
    (fun g A ↦ -archimedeanValue g A ≤ archimedean.constant) :=
  .leaf (by intro A hA _; exact archimedean.bound A hA)

/-- Scoped proof of the second actual source contribution. -/
def decayingProof : ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
    (fun g A ↦ -(2 * ∫ t in 0..2 * A, Real.exp (-t / 2) *
      sourceCorrelation g A t) ≤ decaying.constant) :=
  .leaf (by intro A hA _; exact decaying.bound A hA)

/-- Scoped proof of the third actual source contribution. -/
def initialProof : ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
    (fun g A ↦ -(2 * ∫ t in 0..lowerEndpoint, Real.exp (t / 2) *
      sourceCorrelation g A t) ≤ initial.constant) :=
  .leaf (by intro A hA _; exact initial.bound A hA)

/-- Scoped proof of the actual endpoint atom. -/
def endpointProof : ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
    (fun g A ↦ -primeTwoBoundary g A ≤ endpoint.constant) :=
  .leaf (by intro A hA _; exact endpoint.bound A hA)

/-- AND consumes all four child proofs; implication consumes the actual reconstruction. -/
def correctionProof : ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
    (fun g A ↦ -analyticCorrection g A ≤ correction.constant) :=
  .implication (.and (.and (.and archimedeanProof decayingProof) initialProof) endpointProof)
    (by
      intro A _ _ h
      rcases h with ⟨⟨⟨ha, hd⟩, hi⟩, he⟩
      simp only [correction, BoundCertificate.prod_constant, List.map_cons, List.map_nil,
        List.sum_cons, List.sum_nil]
      unfold analyticCorrection
      linarith)

/-- The actual real ray is reconstructed from a bounded cell and an explicit tail. -/
def correctionRegionalProof :
    ScopedProof explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1)
      (fun g A ↦ -analyticCorrection g A ≤
        max (regionalMaximum [correction.constant]) correction.constant) :=
  regionalCoverTail explicitSecondDerivative (fun _ : ℝ ↦ True) (Set.Ici 1) (Set.Ici 2)
    (fun g A ↦ -analyticCorrection g A) (fun _ : Fin 1 ↦ Set.Icc 1 2)
    (fun _ ↦ correction.constant) correction.constant
    (by
      intro A hA
      by_cases h : A ≤ 2
      · exact .inl ⟨0, hA, h⟩
      · exact .inr (le_of_lt (lt_of_not_ge h)))
    (fun _ ↦ .restrict correctionProof (fun _ h ↦ h.1))
    (.restrict correctionProof (fun _ h ↦ (by norm_num : (1 : ℝ) ≤ 2).trans h))

theorem regional_correction_bound (A : ℝ) (hA : 1 ≤ A) :
    -analyticCorrection explicitSecondDerivative A ≤ correction.constant := by
  have h := correctionRegionalProof.sound A hA trivial
  simpa only [regionalMaximum, max_eq_left correction.constant_nonneg, max_self] using h

end
end SourceBoundCertificates
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
