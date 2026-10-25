# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Varianta7e607949992123b8d8b4374fff335641edc568bdc08b6164592a3fb3f6fe837

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b60353e8ab020d8f5f1d48a5cdf83fe17b94961c` · SHA-256 `3296650a7bd31c98e0583677fe0fc829fdeb7fbb851efc190cbd7a9a4018dad7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Fix.Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/Fix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Data.Part
import Mathlib.Data.Nat.Find
import Mathlib.Data.Nat.Upto
import Mathlib.Data.Stream.Defs
import Mathlib.Tactic.Common

/-!
# Fixed point

This module defines a generic `fix` operator for defining recursive
computations that are not necessarily well-founded or productive.
An instance is defined for `Part`.

## Main definition

* class `Fix`
* `Part.fix`
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variant1c6d323505db8d1fb89b13baf78238977aab59667c034a379dc81f5432c741cb

universe u v

variable {α : Type*} {β : α → Type*}

/-- `Fix α` provides a `fix` operator to define recursive computation
via the fixed point of function of type `α → α`. -/
class Fix (α : Type*) where
  /-- `fix f` represents the computation of a fixed point for `f`. -/
  fix : (α → α) → α

namespace Part

open Part Nat Nat.Upto

section Basic

variable (f : (∀ a, Part (β a)) → (∀ a, Part (β a)))

/-- A series of successive, finite approximation of the fixed point of `f`, defined by
`approx f n = f^[n] ⊥`. The limit of this chain is the fixed point of `f`. -/
def Fix.approx : Stream' (∀ a, Part (β a))
  | 0 => ⊥
  | Nat.succ i => f (Fix.approx i)

/-- loop body for finding the fixed point of `f` -/
def fixAux {p : ℕ → Prop} (i : Nat.Upto p) (g : ∀ j : Nat.Upto p, i < j → ∀ a, Part (β a)) :
    ∀ a, Part (β a) :=
  f fun x : α => (assert ¬p i.val) fun h : ¬p i.val => g (i.succ h) (Nat.lt_succ_self _) x

/-- The least fixed point of `f`.

If `f` is a continuous function (according to complete partial orders),
it satisfies the equations:

  1. `fix f = f (fix f)`          (is a fixed point)
  2. `∀ X, f X ≤ X → fix f ≤ X`   (least fixed point)
-/
protected def fix (x : α) : Part (β x) :=
  (Part.assert (∃ i, (Fix.approx f i x).Dom)) fun h =>
    WellFounded.fix.{1} (Nat.Upto.wf h) (fixAux f) Nat.Upto.zero x

open Classical in
protected theorem fix_def {x : α} (h' : ∃ i, (Fix.approx f i x).Dom) :
    Part.fix f x = Fix.approx f (Nat.succ (Nat.find h')) x := by
  let p := fun i : ℕ => (Fix.approx f i x).Dom
  have : p (Nat.find h') := Nat.find_spec h'
  generalize hk : Nat.find h' = k
  replace hk : Nat.find h' = k + (@Upto.zero p).val := hk
  rw [hk] at this
  revert hk
  dsimp [Part.fix]; rw [assert_pos h']; revert this
  generalize Upto.zero = z; intro _this hk
  suffices ∀ x' hwf,
    WellFounded.fix hwf (fixAux f) z x' = Fix.approx f (succ k) x'
    from this _ _
  induction k generalizing z with
  | zero =>
    intro x' _
    rw [Fix.approx, WellFounded.fix_eq, fixAux]
    congr
    ext x : 1
    rw [assert_neg]
    · rfl
    · rw [Nat.zero_add] at _this
      simpa only [not_not, Coe]
  | succ n n_ih =>
    intro x' _
    rw [Fix.approx, WellFounded.fix_eq, fixAux]
    congr
    ext : 1
    have hh : ¬(Fix.approx f z.val x).Dom := by
      apply Nat.find_min h'
      rw [hk, Nat.succ_add_eq_add_succ]
      apply Nat.lt_of_succ_le
      apply Nat.le_add_left
    rw [succ_add_eq_add_succ] at _this hk
    rw [assert_pos hh, n_ih (Upto.succ z hh) _this hk]

theorem fix_def' {x : α} (h' : ¬∃ i, (Fix.approx f i x).Dom) : Part.fix f x = none := by
  dsimp [Part.fix]
  rw [assert_neg h']

end Basic

end Part

namespace Part

instance hasFix : Fix (Part α) :=
  ⟨fun f => Part.fix (fun x u => f (x u)) ()⟩

end Part

open Sigma

namespace Pi

instance Part.hasFix {β} : Fix (α → Part β) :=
  ⟨Part.fix⟩

end Pi
```
