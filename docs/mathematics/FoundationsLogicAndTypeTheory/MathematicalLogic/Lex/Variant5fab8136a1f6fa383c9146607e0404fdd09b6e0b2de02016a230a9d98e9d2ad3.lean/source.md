# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lex.Variant5fab8136a1f6fa383c9146607e0404fdd09b6e0b2de02016a230a9d98e9d2ad3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4ca914b0e603d15057f221b8719a09951ef433d` · SHA-256 `292ef264e1b246d56e98a0fa7a6250697dceab8d0ff8200d4b5587b3bba49b80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lex.Variant8cf96eec65b91cf991965c551b157e79e4e46bcfabd6f1eba2bf125cab82187f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cf96eec65b91cf991965c551b157e79e4e46bcfabd6f1eba2bf125cab82187f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Lex.Variant8cf96eec65b91cf991965c551b157e79e4e46bcfabd6f1eba2bf125cab82187f","mathematical_subject":"Logic.Foundations","original_sha256":"8cf96eec65b91cf991965c551b157e79e4e46bcfabd6f1eba2bf125cab82187f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Lex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin, Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Damiano Testa, Yaël Dillies
-/
module

public import Mathlib.Logic.Equiv.Defs

/-!
# Type synonyms

This file provides two type synonyms for order theory:

* `Lex α`: Type synonym of `α` to equip it with its lexicographic order. The precise meaning depends
  on the type we take the lex of. Examples include `Prod`, `Sigma`, `List`, `Finset`.
* `Colex α`: Type synonym of `α` to equip it with its colexicographic order. The precise meaning
  depends on the type we take the colex of. Examples include `Finset`, `DFinsupp`, `Finsupp`.

## Notation

The general rule for notation of `Lex` types is to append `ₗ` to the usual notation.

## Implementation notes

One should not abuse definitional equality between `α` and `αᵒᵈ`/`Lex α`. Instead, explicit
coercions should be inserted:

* `Lex`: `toLex : α → Lex α` and `ofLex : Lex α → α`.
* `Colex`: `toColex : α → Colex α` and `ofColex : Colex α → α`.

## See also

This file is similar to `Mathlib.Algebra.Group.TypeTags.Basic`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lex.Variant8cf96eec65b91cf991965c551b157e79e4e46bcfabd6f1eba2bf125cab82187f

@[expose] public section

assert_not_exists OrderDual

variable {α : Type*}

/-! ### Lexicographic order -/


/-- A type synonym to equip a type with its lexicographic order. -/
def Lex (α : Type*) :=
  α

/-- `toLex` is the identity function to the `Lex` of a type. -/
@[match_pattern]
def toLex : α ≃ Lex α :=
  Equiv.refl _

/-- `ofLex` is the identity function from the `Lex` of a type. -/
@[match_pattern]
def ofLex : Lex α ≃ α :=
  Equiv.refl _

@[simp]
theorem toLex_symm_eq : (@toLex α).symm = ofLex :=
  rfl

@[simp]
theorem ofLex_symm_eq : (@ofLex α).symm = toLex :=
  rfl

@[simp]
theorem toLex_ofLex (a : Lex α) : toLex (ofLex a) = a :=
  rfl

@[simp]
theorem ofLex_toLex (a : α) : ofLex (toLex a) = a :=
  rfl

theorem toLex_inj {a b : α} : toLex a = toLex b ↔ a = b := by simp

theorem ofLex_inj {a b : Lex α} : ofLex a = ofLex b ↔ a = b := by simp

instance (α : Type*) [BEq α] : BEq (Lex α) where
  beq a b := ofLex a == ofLex b

instance (α : Type*) [BEq α] [LawfulBEq α] : LawfulBEq (Lex α) := inferInstanceAs <| LawfulBEq α
instance (α : Type*) [DecidableEq α] : DecidableEq (Lex α) := inferInstanceAs <| DecidableEq α

instance (α : Type*) [Inhabited α] : Inhabited (Lex α) := inferInstanceAs <| Inhabited α
instance (α : Type*) [Nonempty α] : Nonempty (Lex α) := inferInstanceAs <| Nonempty α
instance (α : Type*) [Nontrivial α] : Nontrivial (Lex α) := inferInstanceAs <| Nontrivial α
instance (α : Type*) [Unique α] : Unique (Lex α) := inferInstanceAs <| Unique α

instance {α γ} [H : CoeFun α γ] : CoeFun (Lex α) γ where
  coe f := H.coe (ofLex f)

/-- A recursor for `Lex`. Use as `induction x`. -/
@[elab_as_elim, induction_eliminator, cases_eliminator]
protected def Lex.rec {β : Lex α → Sort*} (h : ∀ a, β (toLex a)) : ∀ a, β a := fun a => h (ofLex a)

@[simp] lemma Lex.forall {p : Lex α → Prop} : (∀ a, p a) ↔ ∀ a, p (toLex a) := Iff.rfl
@[simp] lemma Lex.exists {p : Lex α → Prop} : (∃ a, p a) ↔ ∃ a, p (toLex a) := Iff.rfl

/-! ### Colexicographic order -/


/-- A type synonym to equip a type with its lexicographic order. -/
def Colex (α : Type*) :=
  α

/-- `toColex` is the identity function to the `Colex` of a type. -/
@[match_pattern]
def toColex : α ≃ Colex α :=
  Equiv.refl _

/-- `ofColex` is the identity function from the `Colex` of a type. -/
@[match_pattern]
def ofColex : Colex α ≃ α :=
  Equiv.refl _

@[simp]
theorem toColex_symm_eq : (@toColex α).symm = ofColex :=
  rfl

@[simp]
theorem ofColex_symm_eq : (@ofColex α).symm = toColex :=
  rfl

@[simp]
theorem toColex_ofColex (a : Colex α) : toColex (ofColex a) = a :=
  rfl

@[simp]
theorem ofColex_toColex (a : α) : ofColex (toColex a) = a :=
  rfl

theorem toColex_inj {a b : α} : toColex a = toColex b ↔ a = b := by simp

theorem ofColex_inj {a b : Colex α} : ofColex a = ofColex b ↔ a = b := by simp

instance (α : Type*) [BEq α] : BEq (Colex α) where
  beq a b := ofColex a == ofColex b

instance (α : Type*) [BEq α] [LawfulBEq α] : LawfulBEq (Colex α) := inferInstanceAs <| LawfulBEq α
instance (α : Type*) [DecidableEq α] : DecidableEq (Colex α) := inferInstanceAs <| DecidableEq α

instance (α : Type*) [Inhabited α] : Inhabited (Colex α) := inferInstanceAs <| Inhabited α
instance (α : Type*) [Nonempty α] : Nonempty (Colex α) := inferInstanceAs <| Nonempty α
instance (α : Type*) [Nontrivial α] : Nontrivial (Colex α) := inferInstanceAs <| Nontrivial α
instance (α : Type*) [Unique α] : Unique (Colex α) := inferInstanceAs <| Unique α

instance {α γ} [H : CoeFun α γ] : CoeFun (Colex α) γ where
  coe f := H.coe (ofColex f)

/-- A recursor for `Colex`. Use as `induction x`. -/
@[elab_as_elim, induction_eliminator, cases_eliminator]
protected def Colex.rec {β : Colex α → Sort*} (h : ∀ a, β (toColex a)) : ∀ a, β a :=
  fun a => h (ofColex a)

@[simp] lemma Colex.forall {p : Colex α → Prop} : (∀ a, p a) ↔ ∀ a, p (toColex a) := Iff.rfl
@[simp] lemma Colex.exists {p : Colex α → Prop} : (∃ a, p a) ↔ ∃ a, p (toColex a) := Iff.rfl
```
