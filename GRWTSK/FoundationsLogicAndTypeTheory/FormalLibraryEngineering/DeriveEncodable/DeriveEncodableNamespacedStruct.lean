-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Struct.Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Struct.Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/derive_encodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DeriveEncodable

/-!
# Tests for the `Encodable` deriving handler
-/

/-!
Structures
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Struct.Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b

structure Struct where
  x : Nat
  y : Bool
  deriving Encodable

example : Encodable Struct := inferInstance


/-!
Inductive types with parameters
-/

inductive T (α : Type) where
  | a (x : α) (y : Bool) (z : T α)
  | b
  deriving Encodable, Repr

example : Encodable (T Nat) := inferInstance
/--
error: failed to synthesize
  Encodable (ℕ → Bool)

Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in example : Encodable (Nat → Bool) := inferInstance

/-- info: 96964472478917 -/
#guard_msgs in
#eval Encodable.encode <| T.a 3 true T.b

/-- info: some (T.a 3 true (T.b)) -/
#guard_msgs in
#eval (Encodable.decode 96964472478917 : Option <| T Nat)


/-!
Mutually recursive types
-/
mutual
inductive T1 where
  | a
  | b (x : T1) (y : T2)
  deriving Encodable
inductive T2 where
  | c (n : Nat)
  | d (x y : T1)
  deriving Encodable
end

example : Encodable T1 := inferInstance
example : Encodable T2 := inferInstance


/-!
Not supported: indexed types
-/
/-- error: default handlers have not been implemented yet, class: 'Encodable' types: [Idx] -/
#guard_msgs in
inductive Idx : Nat → Type where
  | a (i : Nat) (j : Nat) : Idx (i + j)
  deriving Encodable

/-!
Not supported: nested inductive types
-/
/-- error: default handlers have not been implemented yet, class: 'Encodable' types: [Nested] -/
#guard_msgs in
inductive Nested where
  | mk (xs : List Nested)
  deriving Encodable

/-!
Not supported: reflexive inductive types
-/
/-- error: default handlers have not been implemented yet, class: 'Encodable' types: [Reflex] -/
#guard_msgs in
inductive Reflex where
  | mk (f : Bool → Reflex)
  deriving Encodable
