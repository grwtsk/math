-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSoninHorizonAmbient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteSoninHorizonAmbient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP1/SoninHorizon/Ambient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP1.SoninHorizon.Carrier

/-!
# Common ambient-carrier primitive
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSoninHorizonAmbient.Variantea10de3e79fa787a78f9833fae08230bafb099fdbd3e08432fe002cdd458f439

namespace Mathematics.SemiLocalDefect.SoninCore

abbrev FiniteSoninHorizon.Ambient
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :=
  H.Sonin (topCut U)

def FiniteSoninHorizon.toTop
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    H.Sonin S →L[ℂ] H.Ambient :=
  H.connector
    (Finset.subset_univ S)

theorem FiniteSoninHorizon.toTop_injective
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Function.Injective (H.toTop S) :=
  H.connector_injective
    (Finset.subset_univ S)

end Mathematics.SemiLocalDefect.SoninCore
