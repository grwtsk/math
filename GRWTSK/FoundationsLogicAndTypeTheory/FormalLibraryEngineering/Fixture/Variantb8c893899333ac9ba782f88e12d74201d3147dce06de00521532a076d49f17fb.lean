-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Token.Variant99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Token.Variant99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/phase1-consolidation/artifacts/state-phase1-focused/independent-replay/repositories/3e651afbc2c79beb7dc21a67b2d8d224284894ad372066edf4b5b0305a6def4d/FormalResearch/Fixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Token.Variant99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b

namespace FormalResearch.Fixture
inductive Token where
  | atom
  | pair (left right : Token)
private def hidden : Nat := 7
def value : Nat := 1
theorem changed : (1 : Nat) = 1 := rfl
theorem same : True := And.left (And.intro True.intro True.intro)
theorem source : True := True.intro
theorem target : True ∧ True := ⟨True.intro, True.intro⟩
theorem transport : True → (True ∧ True) := fun h => ⟨h, h⟩
theorem equivalence : True ↔ (True ∧ True) := ⟨fun h => ⟨h, h⟩, And.left⟩
theorem freshA : True := True.intro
theorem freshB : True ∧ True := ⟨True.intro, True.intro⟩
end FormalResearch.Fixture
