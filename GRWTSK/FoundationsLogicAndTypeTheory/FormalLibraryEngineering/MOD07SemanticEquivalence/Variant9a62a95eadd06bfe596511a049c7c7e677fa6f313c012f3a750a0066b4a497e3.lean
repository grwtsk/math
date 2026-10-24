-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Mod07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","mathematical_subject":"Foundations.Unclassified","original_sha256":"fede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/MOD07_SemanticEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.MOD06_ConditionalAlgebraization


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mod07SemanticEquivalence.Variantfede83d9b83bcf0a11ca693f761c4db23b6f4033710d2c4c7d0cacf5e7f05625

namespace FCRS.Algebraization.Theorems

/--
If semantic pullback is separately full and faithful, the ME1--ME8 target is
equivalent to the algebraic semantic category.
-/
theorem mod07_semanticEquivalence
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hSource : SemanticSourceEffective S) :
    EquivalenceWitness (semanticPullbackEff S hSource) := by
  have hFF := registry.modFullFaithful
  exact equivalenceRestrictCodomain
    S.functors.SemanticPullback
    (fun Y => ModuliEffectivityCertificate S.moduli Y)
    hSource
    hFF.1
    hFF.2
    (fun Y hY => registry.modPipeline Y hY)

end FCRS.Algebraization.Theorems
