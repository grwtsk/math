-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExclamation.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ClearExclamation.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Clear!.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ClearExclamation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExclamation.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933

set_option linter.unusedVariables false

-- Most basic test
example (delete_this : Nat) (_delete_this_dep : delete_this = delete_this) : Nat := by
  clear! delete_this
  fail_if_success assumption
  exact 0

-- Confirms clear! deletes class instances
example [delete_this : Inhabited Nat] : Inhabited Nat := by
  clear! delete_this
  fail_if_success assumption
  infer_instance

-- Confirms clear! can clear the dependencies of multiple hypotheses
example (delete_this : Nat) (delete_this2 : Nat) (_delete_this_dep : delete_this = delete_this2) :
    Nat := by
  clear! delete_this delete_this2
  fail_if_success assumption
  exact 0

-- Confirms that clear! does not delete independent hypotheses
example (delete_this : Nat) (dont_delete_this : Int) : Nat := by
  clear! delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clear! only deletes dependencies in the right direction
example (dont_delete_this : Nat) (delete_this : dont_delete_this = dont_delete_this) : Nat := by
  clear! delete_this
  assumption
