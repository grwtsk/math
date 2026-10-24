-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Alg03PolarizedCompleteness.Variant4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Alg03PolarizedCompleteness.Variant4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3","mathematical_subject":"Foundations.Unclassified","original_sha256":"4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/ALG03_PolarizedCompleteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.ALG01_PolarizedEffectivity
import FCRS.Algebraization.Theorems.ALG02_ProperGAGA


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Alg03PolarizedCompleteness.Variant4da745df1509e0c05fa6ce9ae4197bfefa7b2e92d2f194fa3da3818e49808dc3

namespace FCRS.Algebraization.Theorems

/--
Polarized algebraization completeness:
fullness and faithfulness come from proper GAGA, while essential
surjectivity comes from polarized effectivity.
-/
theorem alg03_polarizedCompleteness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.polarizedProfile) :
    EquivalenceWitness S.functors.PolAn := by
  have hEffectivity :=
    (alg01_polarizedEffectivity S registry) hProfile
  have hGAGA :=
    (alg02_properGAGA S registry) hProfile
  exact {
    full := hGAGA.full
    faithful := hGAGA.faithful
    essentiallySurjective := hEffectivity.essentiallySurjective
  }

end FCRS.Algebraization.Theorems
