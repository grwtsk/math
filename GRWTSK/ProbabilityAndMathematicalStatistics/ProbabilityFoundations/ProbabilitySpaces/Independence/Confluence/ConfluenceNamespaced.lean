-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CompatibleReduction.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.CompatibleReduction.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","mathematical_subject":"Probability.Independence","original_sha256":"185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Confluence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Certified compatible reduction

Order independence is admitted only for handlers carrying an exact commuting
proof.  Noncommuting handlers require branching or quarantine.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.CompatibleReduction.Variant185e4f1792133a7568b3eaf1a81b9785ae5151dcd608934436e38425bdc3b1f7

namespace Mathematics.Mutation

structure CompatibleReduction (State Event : Type) where
  apply : Event → State → State
  commute :
    ∀ left right state,
      apply left (apply right state) =
        apply right (apply left state)

theorem compatible_reduction_confluent
    (reduction : CompatibleReduction State Event)
    (left right : Event)
    (state : State) :
    reduction.apply left (reduction.apply right state) =
      reduction.apply right (reduction.apply left state) :=
  reduction.commute left right state

end Mathematics.Mutation
