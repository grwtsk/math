-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Syntax.Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/LeanSearchClient/LeanSearchClientTest/StateSearchExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import LeanSearchClient.Syntax


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variant7cdc5e20f9758dadfc167432a10077f73776277613e8446b429ed5be8004aa72

public meta section

/-!
# LeanStateSearch Examples

Examples of using LeanStateSearch API. The search is triggered by the
tactic `#statesearch`.
-/

set_option statesearch.queries 1 -- set the number of results to 6
set_option statesearch.revision "v4.22.0" -- set the revision to v4.16.0

/--
info: Try these:
  • #check zero_lt_one -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 0 < 1 := by
  #statesearch
  sorry

set_option statesearch.queries 6

/--
info: Try these:
  • #check zero_lt_one -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check one_pos -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check zero_lt_one' -- ∀ (α : Type u_1) [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check ONote.zero_lt_one -- (0 : ONote) < (1 : ONote)
    ⏎
  • #check ONote.lt_def -- ∀ {x y : ONote}, x < y ↔ x.repr < y.repr
    ⏎
  • #check inv_lt_one_of_one_lt₀ -- ∀ {G₀ : Type u_3} [inst : GroupWithZero G₀] [inst_1 : PartialOrder G₀] [PosMulReflectLT G₀] {a : G₀} [ZeroLEOneClass G₀], (1 : G₀) < a → a⁻¹ < (1 : G₀)
    ⏎
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 0 < 1 := by
  #statesearch
  sorry

set_option statesearch.revision "v4.15.0"

/-- error: error: "Invalid parameter value"
description: "Lean State Search does not support the specified revision"
-/
#guard_msgs in
example : 0 ≤ 1 := by
  #statesearch

/-!
Tests using `search` with `statesearch` as the backend.
-/
set_option statesearch.queries 1 -- set the number of results to 6
set_option statesearch.revision "v4.22.0" -- set the revision to v4.16.0


/--
info: Try these:
  • #check zero_lt_one -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 0 < 1 := by
  #search
  sorry

set_option statesearch.queries 6

/--
info: Try these:
  • #check zero_lt_one -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check one_pos -- ∀ {α : Type u_1} [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check zero_lt_one' -- ∀ (α : Type u_1) [inst : Zero α] [inst_1 : One α] [inst_2 : PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)], (0 : α) < (1 : α)
    ⏎
  • #check ONote.zero_lt_one -- (0 : ONote) < (1 : ONote)
    ⏎
  • #check ONote.lt_def -- ∀ {x y : ONote}, x < y ↔ x.repr < y.repr
    ⏎
  • #check inv_lt_one_of_one_lt₀ -- ∀ {G₀ : Type u_3} [inst : GroupWithZero G₀] [inst_1 : PartialOrder G₀] [PosMulReflectLT G₀] {a : G₀} [ZeroLEOneClass G₀], (1 : G₀) < a → a⁻¹ < (1 : G₀)
    ⏎
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 0 < 1 := by
  #search
  sorry

set_option statesearch.revision "v4.15.0"

/-- error: error: "Invalid parameter value"
description: "Lean State Search does not support the specified revision"
-/
#guard_msgs in
example : 0 ≤ 1 := by
  #search
