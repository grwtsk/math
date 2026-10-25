# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivingCountable.Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b0e421ae24ba8075bb7d96eb2294c071267edac` · SHA-256 `efe40a5089d4a23c1312bf2cad3ce4b757ad01603a054a0bd9aa322f9ade5e26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.S.Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/deriving_countable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.DeriveCountable
import Mathlib.Data.Countable.Basic
import Mathlib.Logic.Equiv.List

/-!
# Tests of the `Countable` deriving handler
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1

namespace Test

/-!
Structure
-/
structure S (α β : Type*) where
  x : α
  y : List β
  deriving Countable

example : Countable (S Nat Bool) := inferInstance

/-!
Recursive inductive type, no indices
-/
inductive T (α : Type)
  | a (n : Option α)
  | b (n m : α) (t : T α)
  | c
  deriving Countable

example : Countable (T Nat) := inferInstance

/-!
Motivating example for writing the deriving handler
-/
inductive PreCantor' : Type
  | zero : PreCantor'
  | oadd : PreCantor' → ℕ+ → PreCantor' → PreCantor'
  deriving Countable

example : Countable PreCantor' := inferInstance

/-!
Sort
-/
inductive PList (α : Sort _) where
  | nil
  | cons (x : α) (xs : PList α)
  deriving Countable

example : Countable (PList (1 = 2)) := inferInstance

/-!
Recursive type with indices
-/

inductive I : Nat → Type
  | a (n : Nat) : I n
  | b (n : Nat) (x : Nat) (c : I x) : I (n + 1)
  deriving Countable

example : Countable (I 37) := inferInstance
example : Countable (Σ i, I i) := inferInstance

/-!
Mutually recursive types
-/
mutual
inductive T1 where
  | a
  | b (x : T1) (y : T2)
  deriving Countable
inductive T2 where
  | c (n : Nat)
  | d (x y : T1)
  deriving Countable
end

example : Countable T1 := inferInstance
example : Countable T2 := inferInstance


/-!
Not supported: nested inductive types
-/
/--
error: default handlers have not been implemented yet, class: 'Countable' types: [Test.Nested]
-/
#guard_msgs in
inductive Nested where
  | mk (xs : List Nested)
  deriving Countable

/-!
Not supported: reflexive inductive types
-/
/--
error: default handlers have not been implemented yet, class: 'Countable' types: [Test.Reflex]
-/
#guard_msgs in
inductive Reflex where
  | mk (f : Bool → Reflex)
  deriving Countable
```
