-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalizationCertificate.Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalizationCertificate.Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20","mathematical_subject":"Foundations.Unclassified","original_sha256":"f0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Canonical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Gauge

/-!
# Canonical MPS representatives

Left-canonical form uses the sum over the physical and incoming virtual
indices.  Canonicalization is a gauge-certified representative choice, not a
new semantic state.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalizationCertificate.Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20

namespace Mathematics.TensorNetwork

open scoped BigOperators

/-- Exact left-canonical equation at one site. -/
def LeftCanonicalAt
    (network : OpenMPS N D)
    (site : Fin N) : Prop :=
  ∀ right right',
    (∑ physical : Fin D,
      ∑ left :
          Fin (network.bondProfile.dimension site.castSucc),
        star (network.core site left physical right) *
          network.core site left physical right') =
      if right = right' then 1 else 0

/-- Every local core satisfies the exact left-canonical equation. -/
def LeftCanonical
    (network : OpenMPS N D) : Prop :=
  ∀ site, LeftCanonicalAt network site

/-- Exact canonicalization certificate. -/
structure CanonicalizationCertificate
    (source : OpenMPS N D) where
  canonical : OpenMPS N D
  gauge : GaugeTransformation source canonical
  leftCanonical : LeftCanonical canonical
  normPreserved :
    tensorL1Distance canonical.contract 0 =
      tensorL1Distance source.contract 0

/-- Numerical residuals remain a distinct checked approximation channel. -/
structure ApproxCanonicalizationCertificate
    (network : OpenMPS N D) where
  residual : Fin N → ℝ
  residual_nonnegative : ∀ site, 0 ≤ residual site
  tolerance : ℝ
  tolerance_nonnegative : 0 ≤ tolerance
  bounded : ∀ site, residual site ≤ tolerance
  authority : String
  authority_is_checkedNumerical :
    authority = "checked-numerical"

/-- Exact canonicalization preserves the represented tensor state. -/
theorem CanonicalizationCertificate.contract_eq
    {source : OpenMPS N D}
    (certificate : CanonicalizationCertificate source) :
    certificate.canonical.contract = source.contract :=
  certificate.gauge.contractPreserved

end Mathematics.TensorNetwork
