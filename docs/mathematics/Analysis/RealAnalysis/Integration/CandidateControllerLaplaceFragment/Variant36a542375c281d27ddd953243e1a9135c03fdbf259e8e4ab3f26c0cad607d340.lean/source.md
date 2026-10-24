# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.CandidateControllerLaplaceFragment.Variant36a542375c281d27ddd953243e1a9135c03fdbf259e8e4ab3f26c0cad607d340

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a021e3aa22962c73e589944f8b8122cd488a0baf` · SHA-256 `6e1539172035f4b6403eb7a0b450d4ca505539cf019a1d2efc87a07847e0dfac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ControllerLaplaceIntegrable.Variant00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ControllerLaplaceIntegrable.Variant00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38","mathematical_subject":"Analysis.Integration","original_sha256":"00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CandidateControllerLaplaceFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Actual half-line-vector admission and exact full-line Fourier identification. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ControllerLaplaceIntegrable.Variant00264ee18f3211433710b3939fe51c81e51e4cc18c07eff43813a472cd9b4a38

set_option autoImplicit false
namespace CandidateControllerLaplaceScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality HalfLineExponential
open CandidateRealizationScratch CandidateInverseAdmissionScratch CandidateLaplaceScratch
noncomputable section

/-- The actual half-line Hilbert controller has a genuinely integrable Laplace integrand. -/
theorem controller_laplace_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) (Ioi 0) := by
  apply (candidate_boundaryInverse_laplace_integrable X hX ε h hε hh hh1 z hz).congr
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The actual controller's genuine Laplace transform is exactly its prescribed source candidate. -/
theorem controller_laplace (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) = candidate X ε h z := by
  rw [← candidate_boundaryInverse_laplace X hX ε h hε hh hh1 z hz]
  apply integral_congr_ae
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The admitted full-line inverse vector also has a genuine L1 representative. -/
theorem fullBoundaryVector_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x) :=
  (candidate_boundaryInverse_integrable X hX ε h hε hh hh1).congr
    (fullBoundaryVector_ae X hX ε h hε hh hh1).symm

/-- The actual full-line vector has the exact angular candidate as its pointwise Fourier transform. -/
theorem fullBoundaryVector_fourier (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (ξ : ℝ) :
    (𝓕 (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x)) ξ =
      candidate X ε h (((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
  rw [Real.fourier_congr_ae (fullBoundaryVector_ae X hX ε h hε hh hh1)]
  have he := candidate_boundaryInverse_fourier X hX ε h hε hh hh1 (2 * Real.pi * ξ)
  rw [Real.fourier_real_eq_integral_exp_smul]
  rw [← he]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [smul_eq_mul]
  congr 2
  push_cast
  ring

end
end CandidateControllerLaplaceScratch
```
