# Complete source: GRWTSK.Analysis.ComplexAnalysis.ResidueAPI.Variantc1f6d51df53c17c7934a0122f9388b50934fdedb1b0c092d0b3d0d59b86ea8f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5badb16c75e193c932421e24af4b7b1980a117d8` · SHA-256 `8fe0c8ca552e890138d6a174c422d3e2bf1907c0bcd7321ed1e733c7c0c416a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.HasResidueCoefficientAt.Variant9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.HasResidueCoefficientAt.Variant9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:1be2adb07e850a21a2cfc98e/workspace/lib/Surface/Core/ComplexAnalysis/ResidueAPI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ComplexAnalysis.PrincipalPart

/-!
# Frozen Surface API for local logarithmic-derivative residues

Downstream Surface modules should import this file rather than the incubating
implementation files.  The public statements deliberately use a
punctured-limit residue coefficient and a normalized small-circle integral:
pinned mathlib does not yet expose a general Laurent-residue object.

After an upstream mathlib theorem is merged, the declarations here become
one-line adapters to the upstream names without changing downstream imports.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.HasResidueCoefficientAt.Variant9e1fcd110bbeb1c7b2b2c3844849af0f4271b3b73f68da3a0c3849dfc4f92e03

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Filter Set
open scoped Topology

/-- Frozen project-facing name for a simple-pole coefficient defined through
the punctured-neighborhood limit. -/
abbrev HasResidueCoefficientAt
    (h : ℂ → ℂ) (z r : ℂ) : Prop :=
  HasSimplePoleResidueAt h z r

/-- Stable adapter for the exact local principal-part decomposition. -/
@[surface_adapter, surface_published]
theorem logDeriv_eventuallyEq_order_div_sub_add_regular
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ g : ℂ → ℂ,
      AnalyticAt ℂ g z ∧ g z ≠ 0 ∧
        logDeriv f =ᶠ[𝓝[≠] z]
          fun w ↦ (n : ℂ) / (w - z) + logDeriv g w :=
  AnalyticAt.logDeriv_eventuallyEq_principalPart hf hn

/-- Stable adapter identifying the logarithmic-derivative coefficient with
analytic multiplicity. -/
@[surface_adapter, surface_published]
theorem logDeriv_hasResidueCoefficientAt_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    HasResidueCoefficientAt (logDeriv f) z (n : ℂ) :=
  AnalyticAt.hasSimplePoleResidueAt_logDeriv hf hn

/-- Stable adapter for the exact sufficiently-small-circle multiplicity
integral. -/
@[surface_adapter, surface_published]
theorem logDeriv_smallCircle_normalizedIntegral_eq_order
    {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {n : ℕ} (hn : analyticOrderAt f z = n) :
    ∃ R : ℝ, 0 < R ∧
      ∀ r : ℝ, 0 < r → r < R →
        normalizedResidueCircleIntegral (logDeriv f) z r = (n : ℂ) :=
  AnalyticAt.exists_smallCircle_normalizedIntegral_logDeriv_eq_order hf hn

end


end Surface.Core.ComplexAnalysis
```
