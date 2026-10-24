-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteLocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FiniteLocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","mathematical_subject":"Logic.Foundations","original_sha256":"4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/LocalRank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Finite local ranks

The ordering source is explicit and rank injectivity is proof-bearing.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteLocalRank.Variant4f8e1e1dd13cecbc4a02cd9566f7bd30ffcfdbaa365f43c30c1bec293ace854c

namespace Mathematics.StratifiedBoundary

structure FiniteLocalRank (Frontier : Type u) where
  orderingSourceRef : String
  rank : Frontier → Nat
  injective : Function.Injective rank

end Mathematics.StratifiedBoundary
