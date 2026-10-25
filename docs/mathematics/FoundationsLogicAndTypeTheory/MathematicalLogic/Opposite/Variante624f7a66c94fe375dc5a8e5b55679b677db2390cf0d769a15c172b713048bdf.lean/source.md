# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variante624f7a66c94fe375dc5a8e5b55679b677db2390cf0d769a15c172b713048bdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74e3ca3b4e5e9c9ad2b06d93a0bd8a527c6c19f3` · SHA-256 `980353a31c8309cd3f35bbb3e1074f861f13495e89894f2acd08e2f6aff4d319`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Opposite.Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d","mathematical_subject":"Logic.Foundations","original_sha256":"ba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Reid Barton, Simon Hudon, Kenny Lau
-/
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Small.Defs

/-!
# Opposites

In this file we define a structure `Opposite α` containing a single field of type `α` and
two bijections `op : α → αᵒᵖ` and `unop : αᵒᵖ → α`. If `α` is a category, then `αᵒᵖ` is the
opposite category, with all arrows reversed.

-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d

universe v u

-- morphism levels before object levels. See note [CategoryTheory universes].
variable (α : Sort u)

/-- The type of objects of the opposite of `α`; used to define the opposite category.

Now that Lean 4 supports definitional eta equality for records,
both `unop (op X) = X` and `op (unop X) = X` are definitional equalities.
-/
structure Opposite where
  /-- The canonical map `α → αᵒᵖ`. -/
  op ::
  /-- The canonical map `αᵒᵖ → α`. -/
  unop : α

attribute [pp_nodot] Opposite.unop

/-- Make sure that `Opposite.op a` is pretty-printed as `op a` instead of `{ unop := a }` or
`⟨a⟩`. -/
@[app_unexpander Opposite.op]
protected def Opposite.unexpander_op : Lean.PrettyPrinter.Unexpander
  | s => pure s

@[inherit_doc]
notation:max -- Use a high right binding power (like that of postfix ⁻¹) so that, for example,
-- `Presheaf Cᵒᵖ` parses as `Presheaf (Cᵒᵖ)` and not `(Presheaf C)ᵒᵖ`.
α "ᵒᵖ" => Opposite α

namespace Opposite

variable {α}

theorem op_injective : Function.Injective (op : α → αᵒᵖ) := fun _ _ => congr_arg Opposite.unop

theorem unop_injective : Function.Injective (unop : αᵒᵖ → α) := fun ⟨_⟩⟨_⟩ => by simp

@[simp]
theorem op_unop (x : αᵒᵖ) : op (unop x) = x :=
  rfl

theorem unop_op (x : α) : unop (op x) = x :=
  rfl

-- We could prove these by `Iff.rfl`, but that would make these eligible for `dsimp`. That would be
-- a bad idea because `Opposite` is irreducible.
theorem op_inj_iff (x y : α) : op x = op y ↔ x = y :=
  op_injective.eq_iff

@[simp]
theorem unop_inj_iff (x y : αᵒᵖ) : unop x = unop y ↔ x = y :=
  unop_injective.eq_iff

/-- The type-level equivalence between a type and its opposite. -/
def equivToOpposite : α ≃ αᵒᵖ where
  toFun := op
  invFun := unop
  left_inv := unop_op
  right_inv := op_unop

theorem op_surjective : Function.Surjective (op : α → αᵒᵖ) := equivToOpposite.surjective

theorem unop_surjective : Function.Surjective (unop : αᵒᵖ → α) := equivToOpposite.symm.surjective

@[simp]
theorem equivToOpposite_coe : (equivToOpposite : α → αᵒᵖ) = op :=
  rfl

@[simp]
theorem equivToOpposite_symm_coe : (equivToOpposite.symm : αᵒᵖ → α) = unop :=
  rfl

theorem op_eq_iff_eq_unop {x : α} {y} : op x = y ↔ x = unop y :=
  equivToOpposite.apply_eq_iff_eq_symm_apply

theorem unop_eq_iff_eq_op {x} {y : α} : unop x = y ↔ x = op y :=
  equivToOpposite.symm.apply_eq_iff_eq_symm_apply

instance [Inhabited α] : Inhabited αᵒᵖ :=
  ⟨op default⟩

instance [Nonempty α] : Nonempty αᵒᵖ := Nonempty.map op ‹_›

instance [Subsingleton α] : Subsingleton αᵒᵖ := unop_injective.subsingleton

/-- A deprecated alias for `Opposite.rec`. -/
@[deprecated Opposite.rec (since := "2025-04-04")]
protected def rec' {F : αᵒᵖ → Sort v} (h : ∀ X, F (op X)) : ∀ X, F X := fun X => h (unop X)

/-- If `X` is `u`-small, also `Xᵒᵖ` is `u`-small.
Note: This is not an instance, because it tends to mislead typeclass search. -/
lemma small {X : Type v} [Small.{u} X] : Small.{u} Xᵒᵖ := by
  obtain ⟨S, ⟨e⟩⟩ := Small.equiv_small (α := X)
  exact ⟨S, ⟨equivToOpposite.symm.trans e⟩⟩

end Opposite
```
