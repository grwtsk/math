# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.BridgeAdmissibility.Varianta092b31d1dfe84ee6807910ec2b92c62b9990703ecb25b3cf3c207a5d84059e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddba167a7801a6436685e609bc62222a72d50494` · SHA-256 `fa39fe7533880056e341965ac6690c90c8dfb3d3635bf8d6e581c5f8aee7746d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicIntegrand.Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogarithmicIntegrand.Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7","mathematical_subject":"Analysis.Integration","original_sha256":"ad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SUCAS/BridgeAdmissibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.CorrelationAssembly
import FormalResearch.SUCAS.BridgeNormalization
import FormalResearch.SUCAS.BridgeFourier
import Mathlib.MeasureTheory.Function.L2Space

/-!
# The actual analytic admission gate for RH bridge Run 3

The domain is the real-representative specialization of RH-0010's complex
logarithmic domain. `MemLp` and genuine `Integrable` propositions are retained;
a totalized integral value is never evidence of membership. The arithmetic
form includes the pole term before using its independently checked vanishing.
No proposition at the end of this module is an axiom or an asserted inhabitant.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicIntegrand.Variantad204232499832cb672e6f9e6dbe665eebf30a95fe562456b060f40bf1a094d7

namespace FormalResearch.SUCAS.BridgeAdmissibility

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SUCAS.Realization
open FormalResearch.SUCAS.CorrelationRegularity

noncomputable section

/-- The precise logarithmic Fourier weight in RH-0010's domain, with its original convention. -/
def logarithmicIntegrand (f : ℝ → ℝ) (ξ : ℝ) : ℝ :=
  Real.log (1 + 4 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)

/-- Real representatives of the source's supported logarithmic `L²` domain. -/
def LogarithmicDomain (A : ℝ) (f : ℝ → ℝ) : Prop :=
  MemLp f 2 volume ∧
    (∀ᵐ x ∂volume, x ∉ Icc (-A) A → f x = 0) ∧
    Integrable (logarithmicIntegrand f) volume

/-- The archimedean constant in RH-0002 equation (10), using the actual digamma. -/
def archimedeanConstant : ℝ :=
  Real.log Real.pi - (Complex.digamma (1 / 4)).re

/-- The source's exact two-sided multiplier estimate, still an open analytic lemma. -/
def MultiplierEstimateObligation : Prop :=
  ∀ ξ : ℝ,
    0 ≤ archimedeanMultiplier ξ + archimedeanConstant -
      Real.log (1 + 4 * ξ ^ 2) / 2 ∧
    archimedeanMultiplier ξ + archimedeanConstant -
      Real.log (1 + 4 * ξ ^ 2) / 2 ≤ 4

/-- The actual Fourier-domain proposition, proved below by Fourier decay. -/
def LogarithmicIntegrabilityObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    Integrable (logarithmicIntegrand (normalizedTest explicitSecondDerivative A)) volume

/-- Exact remaining analytic well-formedness of the already implemented scalar. -/
def ArchimedeanIntegrabilityObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A → Integrable (archimedeanIntegrand explicitSecondDerivative A) volume

/-- The source pole contribution on a real test function. Complex conjugation is
trivial on this real specialization; neither exponential moment is omitted. -/
def realPoleContribution (f : ℝ → ℝ) : ℝ :=
  2 * (∫ x, Real.exp (x / 2) * f x) * (∫ x, Real.exp (-x / 2) * f x)

/-- RH-0010 equation (1) restricted to real representatives. Its value is an
analytic form only with the explicit domain/integrability conditions. -/
def realArithmeticForm (A : ℝ) (f : ℝ → ℝ) : ℝ :=
  (∫ ξ, archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) +
    realPoleContribution f -
    2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A)),
      ArithmeticFunction.vonMangoldt n / Real.sqrt n * (∫ x, f x * f (x - Real.log n))

/-- The concrete normalized polynomial belongs to actual `L²`, before Fourier admission. -/
theorem actual_memLp (A : ℝ) (hA : 1 ≤ A) :
    MemLp (normalizedTest explicitSecondDerivative A) 2 volume := by
  have hpos : 0 < A := by linarith
  have hc := (normalizedTest_contDiff A hpos).continuous
  apply (memLp_two_iff_integrable_sq hc.aestronglyMeasurable).2
  exact BridgeNormalization.normalized_square_integrable A hA

/-- Support is exact pointwise, and hence satisfies the source's essential-support condition. -/
theorem actual_support (A : ℝ) (hA : 1 ≤ A) :
    ∀ᵐ x ∂volume, x ∉ Icc (-A) A → normalizedTest explicitSecondDerivative A x = 0 := by
  filter_upwards [] with x hx
  rw [normalizedTest_eq_indicator A (by linarith)]
  exact indicator_of_notMem hx _

/-- Both source pole moments were proved integrable and zero before bridge work. -/
theorem actual_pole_contribution_zero (A : ℝ) (hA : 1 ≤ A) :
    realPoleContribution (normalizedTest explicitSecondDerivative A) = 0 := by
  rw [realPoleContribution, CorrelationMoment.positive_pole_zero A hA]
  ring

/-- Exact scalar agreement retains the strict cutoff and only removes the proved
zero pole term. This algebraic equality alone does not assert analytic admissibility. -/
theorem actual_form_eq_source_scalar (A : ℝ) (hA : 1 ≤ A) :
    realArithmeticForm A (normalizedTest explicitSecondDerivative A) =
      sourceQuadraticValue explicitSecondDerivative A := by
  rw [realArithmeticForm, actual_pole_contribution_zero A hA, add_zero]
  rfl

/-- The minimal missing domain component is explicit, rather than hidden in a realization record. -/
theorem actual_domain_iff_logarithmic_integrable (A : ℝ) (hA : 1 ≤ A) :
    LogarithmicDomain A (normalizedTest explicitSecondDerivative A) ↔
      Integrable (logarithmicIntegrand (normalizedTest explicitSecondDerivative A)) volume := by
  exact ⟨fun h ↦ h.2.2, fun h ↦ ⟨actual_memLp A hA, actual_support A hA, h⟩⟩

/-- Genuine logarithmic integrability for the actual family, with no analytic premise. -/
theorem actual_logarithmic_integrability : LogarithmicIntegrabilityObligation := by
  intro A hA
  exact BridgeFourier.actual_logarithmic_fourier_integrable A hA

/-- The actual source family lies in RH-0010's supported logarithmic domain. -/
theorem actual_logarithmic_domain (A : ℝ) (hA : 1 ≤ A) :
    LogarithmicDomain A (normalizedTest explicitSecondDerivative A) :=
  (actual_domain_iff_logarithmic_integrable A hA).2 (actual_logarithmic_integrability A hA)

/-- Full B3.1 admission: norm identity, source domain, genuine archimedean
integrability and exact scalar identification. No inhabitant is claimed. -/
def NormalizationAdmissibilityObligation : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    (∫ x, dilationTest explicitSecondDerivative A x ^ 2) = sourceNormalization A ∧
    LogarithmicDomain A (normalizedTest explicitSecondDerivative A) ∧
    Integrable (archimedeanIntegrand explicitSecondDerivative A) volume ∧
    realArithmeticForm A (normalizedTest explicitSecondDerivative A) =
      sourceQuadraticValue explicitSecondDerivative A

/-- Normalization and the real arithmetic transcription reduce B3.1 to its
two explicit analytic integrability components. -/
theorem normalization_admissibility_iff :
    NormalizationAdmissibilityObligation ↔
      LogarithmicIntegrabilityObligation ∧ ArchimedeanIntegrabilityObligation := by
  constructor
  · intro h
    exact ⟨fun A hA ↦ (h A hA).2.1.2.2, fun A hA ↦ (h A hA).2.2.1⟩
  · rintro ⟨hlog, harch⟩ A hA
    exact ⟨BridgeNormalization.explicit_normalization A hA,
      ⟨actual_memLp A hA, actual_support A hA, hlog A hA⟩,
      harch A hA, actual_form_eq_source_scalar A hA⟩

/-- With the logarithmic domain now proved, genuine archimedean integrability
is precisely the remaining B3.1 gate. This equivalence does not prove that gate. -/
theorem normalization_admissibility_iff_archimedean :
    NormalizationAdmissibilityObligation ↔ ArchimedeanIntegrabilityObligation := by
  rw [normalization_admissibility_iff]
  exact ⟨And.right, fun h ↦ ⟨actual_logarithmic_integrability, h⟩⟩

end

end FormalResearch.SUCAS.BridgeAdmissibility
```
