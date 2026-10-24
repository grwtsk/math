-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EigenvalueMultiplicity.Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EigenvalueMultiplicity.Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/SpectralMeasure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.OperatorPurity

/-!
# Empirical and invariant ensemble spectral functionals

Eigenvalues are indexed with repetition, so algebraic multiplicity is
retained without choosing an ordering of the distinct spectrum.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EigenvalueMultiplicity.Variant15ad90ece2f651eb61f20eb65603e5a6e52cc8189963246a3b898b0929ea6ca9

namespace Mathematics.ConnesBitfield

open scoped BigOperators

noncomputable def eigenvalueMultiplicity
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (state : Bitfield system.bits)
    (value : ℝ) : Nat := by
  classical
  exact
    (Finset.univ.filter
      (fun index =>
        purity.eigenvalue state index = value)).card

/--
Integration against the normalized empirical spectral measure
`m⁻¹ ∑ᵢ δ_{λᵢ}`.
-/
noncomputable def empiricalSpectralIntegral
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (state : Bitfield system.bits)
    (test : ℝ → ℂ) : ℂ :=
  (spectral.dim : ℂ)⁻¹ *
    ∑ index : Fin spectral.dim,
      test (purity.eigenvalue state index)

/-- Expectation of the empirical spectral functional under the finite law. -/
noncomputable def invariantEnsembleSpectralIntegral
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    (purity : OperatorPurityCertificate spectral)
    (test : ℝ → ℂ) : ℂ :=
  system.law.expectation
    (fun state =>
      empiricalSpectralIntegral purity state test)

end Mathematics.ConnesBitfield
