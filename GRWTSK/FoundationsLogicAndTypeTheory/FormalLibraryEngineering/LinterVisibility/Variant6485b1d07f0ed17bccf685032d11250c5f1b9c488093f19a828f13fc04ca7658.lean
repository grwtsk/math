-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variantee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Lint.Variantee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/linterVisibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

-- import `Linter` into both private and public scopes for testing
import Batteries.Tactic.Lint.Basic
public import Batteries.Tactic.Lint.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variantee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83

open Batteries.Tactic.Lint

/--
error: Cannot add attribute `[env_linter]`: Declaration `foo` must be marked as `meta`
-/
#guard_msgs (error, drop warning) in
@[env_linter] def foo : Linter := sorry

/--
error: Cannot add attribute `[env_linter]`: Declaration `foo'` must be marked as `meta`
-/
#guard_msgs (error, drop warning) in
@[env_linter] public def foo' : Linter := sorry

/--
error: Cannot add attribute `[env_linter]`: Declaration `_private.BatteriesTest.linterVisibility.0.foo''` must be public
-/
#guard_msgs (error, drop warning) in
@[env_linter] meta def foo'' : Linter := sorry

/--
error: Invalid attribute scope: Attribute `[env_linter]` must be global, not `local`
-/
#guard_msgs (error, drop warning) in
@[local env_linter] public meta def foo''' : Linter := sorry

namespace Foo

/--
error: Invalid attribute scope: Attribute `[env_linter]` must be global, not `scoped`
-/
#guard_msgs (error, drop warning) in
@[scoped env_linter] public meta def foo'''' : Linter := sorry

end Foo
