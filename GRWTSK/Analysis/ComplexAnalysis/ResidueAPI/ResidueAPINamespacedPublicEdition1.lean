-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.HasResidueCoefficientAt.Variant495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.HasResidueCoefficientAt.Variant495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ComplexAnalysis/ResidueAPI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.PrincipalPart

/-!
# Incubating Surface API for local logarithmic-derivative residues

Downstream Surface modules should import this file rather than the incubating
implementation files.  The public statements deliberately use a
punctured-limit residue coefficient and a normalized small-circle integral:
pinned mathlib does not yet expose a general Laurent-residue object.

The signatures are not yet frozen: that gate requires a real downstream
contour-shift consumer and an upstream-oriented API review.  After upstream
merge, the declarations here become one-line adapters without changing
downstream imports.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.HasResidueCoefficientAt.Variant495b5ebfa72e433cdb33b74446ab2b0cc27480a3dab1f119b558fea968a80210

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- Incubating project-facing name for a simple-pole coefficient defined through
the punctured-neighborhood limit. -/
abbrev HasResidueCoefficientAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  HasSimplePoleResidueAt h z r

/-- Checked incubating alias for the exact local principal-part decomposition. -/
@[surface_novel]
theorem logDeriv_eventuallyEq_order_div_sub_add_regular
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ g : ℂ → ℂ,
      AnalyticAt ℂ g z ∧ g z ≠ 0 ∧
        logDeriv f =ᶠ[𝓝[≠] z]
          fun w ↦ (n : ℂ) / (w - z) + logDeriv g w :=
  AnalyticAt.logDeriv_eventuallyEq_principalPart hf hn

/-- Checked incubating alias identifying the logarithmic-derivative coefficient with
analytic multiplicity. -/
@[surface_novel]
theorem logDeriv_hasResidueCoefficientAt_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasResidueCoefficientAt (logDeriv f) z (n : ℂ) :=
  AnalyticAt.hasSimplePoleResidueAt_logDeriv hf hn

/-- Checked incubating alias for the exact sufficiently-small-circle multiplicity
integral. -/
@[surface_novel]
theorem logDeriv_smallCircle_normalizedIntegral_eq_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        normalizedResidueCircleIntegral (logDeriv f) z r = (n : ℂ) :=
  AnalyticAt.exists_smallCircle_normalizedIntegral_logDeriv_eq_order hf hn

end


end Surface.Core.ComplexAnalysis
