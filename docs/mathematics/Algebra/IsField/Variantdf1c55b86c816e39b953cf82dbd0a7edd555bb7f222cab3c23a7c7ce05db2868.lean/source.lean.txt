-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsField.Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsField.Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"af7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Field/IsField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Leonardo de Moura, Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Algebra.Field.Defs
public import Mathlib.Tactic.Common

/-!
# `IsField` predicate

Predicate on a (semi)ring that it is a (semi)field, i.e. that the multiplication is
commutative, that it has more than one element and that all non-zero elements have a
multiplicative inverse. In contrast to `Field`, which contains the data of a function associating
to an element of the field its multiplicative inverse, this predicate only assumes the existence
and can therefore more easily be used to e.g. transfer along ring isomorphisms.
-/


namespace GRWTSK.Algebra.IsField.Variantaf7410dfe3cb641433a14a8256670560934f11908b6f9bcb70523f2a5271ee18

@[expose] public section

universe u

section IsField

/-- A predicate to express that a (semi)ring is a (semi)field.

This is mainly useful because such a predicate does not contain data,
and can therefore be easily transported along ring isomorphisms.
Additionally, this is useful when trying to prove that
a particular ring structure extends to a (semi)field. -/
structure IsField (R : Type u) [Semiring R] : Prop where
  /-- For a semiring to be a field, it must have two distinct elements. -/
  exists_pair_ne : ∃ x y : R, x ≠ y
  /-- Fields are commutative. -/
  mul_comm : ∀ x y : R, x * y = y * x
  /-- Nonzero elements have multiplicative inverses. -/
  mul_inv_cancel : ∀ {a : R}, a ≠ 0 → ∃ b, a * b = 1

/-- Transferring from `Semifield` to `IsField`. -/
theorem Semifield.toIsField (R : Type u) [Semifield R] : IsField R where
  __ := ‹Semifield R›
  mul_inv_cancel {a} ha := ⟨a⁻¹, mul_inv_cancel₀ ha⟩

/-- Transferring from `Field` to `IsField`. -/
theorem Field.toIsField (R : Type u) [Field R] : IsField R :=
  Semifield.toIsField _

@[simp]
theorem IsField.nontrivial {R : Type u} [Semiring R] (h : IsField R) : Nontrivial R :=
  ⟨h.exists_pair_ne⟩

lemma IsField.isDomain {R : Type u} [Semiring R] (h : IsField R) : IsDomain R where
  mul_left_cancel_of_ne_zero ha _ _ hb := by
    obtain ⟨x, hx⟩ := h.mul_inv_cancel ha
    simpa [← mul_assoc, h.mul_comm, hx] using congr_arg (x * ·) hb
  mul_right_cancel_of_ne_zero ha _ _ hb := by
    obtain ⟨x, hx⟩ := h.mul_inv_cancel ha
    simpa [mul_assoc, hx] using congr_arg (· * x) hb
  exists_pair_ne := h.exists_pair_ne

instance {R : Type u} [Semifield R] : IsDomain R :=
  (Semifield.toIsField _).isDomain

@[simp]
theorem not_isField_of_subsingleton (R : Type u) [Semiring R] [Subsingleton R] : ¬IsField R :=
  fun h =>
  let ⟨_, _, h⟩ := h.exists_pair_ne
  h (Subsingleton.elim _ _)

open scoped Classical in
/-- Transferring from `IsField` to `Semifield`. -/
@[instance_reducible]
noncomputable def IsField.toSemifield {R : Type u} [Semiring R] (h : IsField R) : Semifield R where
  __ := ‹Semiring R›
  __ := h
  inv a := if ha : a = 0 then 0 else Classical.choose (h.mul_inv_cancel ha)
  inv_zero := dite_eq_left rfl
  mul_inv_cancel a ha := by
    convert! Classical.choose_spec (h.mul_inv_cancel ha)
    exact dite_eq_right ha
  nnqsmul := _
  nnqsmul_def _ _ := rfl

/-- Transferring from `IsField` to `Field`. -/
@[instance_reducible]
noncomputable def IsField.toField {R : Type u} [Ring R] (h : IsField R) : Field R where
  __ := (‹Ring R› :) -- this also works without the `( :)`, but it's slow
  __ := h.toSemifield
  qsmul := _
  qsmul_def := fun _ _ => rfl

/-- For each field, and for each nonzero element of said field, there is a unique inverse.
Since `IsField` doesn't remember the data of an `inv` function and as such,
a lemma that there is a unique inverse could be useful.
-/
theorem uniq_inv_of_isField (R : Type u) [Ring R] (hf : IsField R) :
    ∀ x : R, x ≠ 0 → ∃! y : R, x * y = 1 := by
  intro x hx
  apply existsUnique_of_exists_of_unique
  · exact hf.mul_inv_cancel hx
  · intro y z hxy hxz
    calc
      y = y * (x * z) := by rw [hxz, mul_one]
      _ = x * y * z := by rw [← mul_assoc, hf.mul_comm y x]
      _ = z := by rw [hxy, one_mul]

end IsField
