# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.FiniteFieldCohomology.Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58733c2c938c1dfb9a453f3170c4e6cdd760333b` · SHA-256 `d475e0ada14eb57531d78d7a93bc5975a6ffb4228d54a20fbd949a62f953428e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.FiniteFieldCohomologicalEligibility.Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.FiniteFieldCohomologicalEligibility.Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"a15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/FiniteFieldCohomology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.SpectralBound

/-!
# Finite-field cohomological square-root route

This is the restricted route identified by the research report.  It does not
derive étale geometry from labels: finite-type, constructibility, trace, and
purity hypotheses remain explicit proof-bearing fields.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.FiniteFieldCohomologicalEligibility.Varianta15dcdb99a065f70ef169d737f61da47d45f1b1e188d3044467563eba4093e32

namespace Mathematics.AbelReynolds

universe u v w

/-- Named geometric hypotheses required by the finite-field route. -/
structure FiniteFieldCohomologicalEligibility where
  finiteTypeClaim : Prop
  finiteType : finiteTypeClaim
  constructibleClaim : Prop
  constructible : constructibleClaim
  baseChangeClaim : Prop
  baseChange : baseChangeClaim
  weightTheoryClaim : Prop
  weightTheory : weightTheoryClaim

/--
An exact cohomological trace and purity control on the same spectrum, together
with one scale-independent coefficient bound.
-/
structure FiniteFieldSquareRootCertificate
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier) where
  eligibility : FiniteFieldCohomologicalEligibility
  cohomological : trace.kind = .cohomological
  control : SameSpectrumControl trace
  pure : control.boundKind = .purity
  uniformConstant : ℝ
  uniformConstant_nonnegative : 0 ≤ uniformConstant
  coefficient_control :
    control.coefficientMass + control.remainderCoefficient ≤
      uniformConstant

/-- Pointwise form of a uniform square-root/logarithmic norm certificate. -/
def HasUniformSquareRootLogBound
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : ExactDiscrepancyTrace Scale Spectrum Carrier) : Prop :=
  ∃ constant : ℝ, 0 ≤ constant ∧
    ∃ mass : Scale → ℝ, ∃ jordanOrder : Nat,
      ∀ scale,
        ‖trace.centeredDiscrepancy scale‖ ≤
          constant *
            (Real.sqrt (mass scale) *
              (1 + Real.log (mass scale)) ^ jordanOrder)

namespace FiniteFieldSquareRootCertificate

variable {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
  [Fintype Spectrum] [NormedAddCommGroup Carrier]
  {trace : ExactDiscrepancyTrace Scale Spectrum Carrier}

/--
The restricted certificate closes the centered square-root/logarithmic bound.
The theorem uses no automorphic, scheduling, or bitfield inference.
-/
theorem centered_bound
    (certificate : FiniteFieldSquareRootCertificate trace)
    (scale : Scale) :
    ‖trace.centeredDiscrepancy scale‖ ≤
      certificate.uniformConstant *
        (Real.sqrt (certificate.control.mass scale) *
          (1 + Real.log (certificate.control.mass scale)) ^
            certificate.control.jordanOrder) := by
  calc
    ‖trace.centeredDiscrepancy scale‖ ≤
        (certificate.control.coefficientMass +
            certificate.control.remainderCoefficient) *
          certificate.control.envelope scale :=
      certificate.control.centeredDiscrepancy_bound scale
    _ ≤ certificate.uniformConstant *
          certificate.control.envelope scale :=
      mul_le_mul_of_nonneg_right
        certificate.coefficient_control
        (certificate.control.envelope_nonnegative scale)
    _ = certificate.uniformConstant *
          (Real.sqrt (certificate.control.mass scale) *
            (1 + Real.log (certificate.control.mass scale)) ^
              certificate.control.jordanOrder) := by
      rw [certificate.control.envelope_exact]

/-- Package the pointwise theorem as one uniform existential certificate. -/
theorem hasUniformSquareRootLogBound
    (certificate : FiniteFieldSquareRootCertificate trace) :
    HasUniformSquareRootLogBound trace := by
  refine ⟨certificate.uniformConstant,
    certificate.uniformConstant_nonnegative,
    certificate.control.mass,
    certificate.control.jordanOrder, ?_⟩
  exact certificate.centered_bound

end FiniteFieldSquareRootCertificate

end Mathematics.AbelReynolds
```
