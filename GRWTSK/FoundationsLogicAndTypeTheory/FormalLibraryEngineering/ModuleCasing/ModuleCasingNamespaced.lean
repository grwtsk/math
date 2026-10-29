-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestModulesNotUpperCamelCase.Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestModulesNotUpperCamelCase.Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"da33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ModuleCasing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.TextBased

/-!
Unit tests for the module name case check in the text-based linters.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestModulesNotUpperCamelCase.Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee

open Mathlib.Linter.TextBased

/-- Some unit tests for `modulesNotUpperCamelCase` -/
def testModulesNotUpperCamelCase : IO Unit := do
  -- Explicitly enable the linter, although it is enabled by default.
  let opts : Lean.Options := linter.modulesUpperCamelCase.set {} true

  assert!((← modulesNotUpperCamelCase opts #[]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.Fine]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.AlsoFine_]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.NotFine_.Foo]) == 1)

  assert!((← modulesNotUpperCamelCase opts #[`bad_module]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`GoodName, `bad_module, `bad_module]) == 2)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.BadModule__]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.lowerCase]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.snake_case]) == 1)

/--
info: error: module name 'Mathlib.NotFine_.Foo' is not in 'UpperCamelCase': it should be 'Mathlib.NotFine.Foo' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'Mathlib.BadModule__' is not in 'UpperCamelCase': it should be 'Mathlib.BadModule_' instead
error: module name 'Mathlib.lowerCase' is not in 'UpperCamelCase': it should be 'Mathlib.LowerCase' instead
error: module name 'Mathlib.snake_case' is not in 'UpperCamelCase': it should be 'Mathlib.SnakeCase' instead
-/
#guard_msgs in
#eval testModulesNotUpperCamelCase
