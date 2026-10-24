-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SameParity.Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SameParity.Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/symm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Relation.Symm
import Std.Tactic.RCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SameParity.Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72

set_option autoImplicit true
set_option linter.missingDocs false

-- testing that the attribute is recognized
@[symm] def eq_symm {α : Type} (a b : α) : a = b → b = a := Eq.symm

example (a b : Nat) : a = b → b = a := by intros; symm; assumption
example (a b : Nat) : a = b → True → b = a := by intro h _; symm at h; assumption

def sameParity : Nat → Nat → Prop
  | n, m => n % 2 = m % 2

@[symm] def sameParity_symm (n m : Nat) : sameParity n m → sameParity m n := Eq.symm

example (a b : Nat) : sameParity a b → sameParity b a := by intros; symm; assumption

def MyEq (n m : Nat) := ∃ k, n + k = m ∧ m + k = n

@[symm] theorem MyEq.symm {n m : Nat} (h : MyEq n m) : MyEq m n := by
  rcases h with ⟨k, h1, h2⟩
  exact ⟨k, h2, h1⟩

example {n m : Nat} (h : MyEq n m) : MyEq m n := by
  symm
  assumption
