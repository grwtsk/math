# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variant9d562eb149c6658d9603cef82d3122ef33fd118f675bf251017a78e26a353b3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bff860fd7742a7d8ab962178719c76b7512d3f9` · SHA-256 `65b1588c77a75a61ddc0a23ee81cfe0ea8585fe1a6a87c186302c99ca2ab5125`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Fix.Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Control/Fix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Data.Part
import Mathlib.Data.Nat.Upto
import Mathlib.Data.Stream.Defs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fix.Variantb1185b7645a6c885e42964ec44e962626409e24abbdc998ac373d9ed7296a6ef

#align_import control.fix from "leanprover-community/mathlib"@"207cfac9fcd06138865b5d04f7091e46d9320432"

/-!
# Fixed point

This module defines a generic `fix` operator for defining recursive
computations that are not necessarily well-founded or productive.
An instance is defined for `Part`.

## Main definition

 * class `Fix`
 * `Part.fix`
-/


universe u v

open Classical

variable {α : Type*} {β : α → Type*}

/-- `Fix α` provides a `fix` operator to define recursive computation
via the fixed point of function of type `α → α`. -/
class Fix (α : Type*) where
  /-- `fix f` represents the computation of a fixed point for `f`.-/
  fix : (α → α) → α
#align has_fix Fix

namespace Part

open Part Nat Nat.Upto

section Basic

variable (f : (∀ a, Part (β a)) → (∀ a, Part (β a)))

/-- A series of successive, finite approximation of the fixed point of `f`, defined by
`approx f n = f^[n] ⊥`. The limit of this chain is the fixed point of `f`. -/
def Fix.approx : Stream' (∀ a, Part (β a))
  | 0 => ⊥
  | Nat.succ i => f (Fix.approx i)
#align part.fix.approx Part.Fix.approx

/-- loop body for finding the fixed point of `f` -/
def fixAux {p : ℕ → Prop} (i : Nat.Upto p) (g : ∀ j : Nat.Upto p, i < j → ∀ a, Part (β a)) :
    ∀ a, Part (β a) :=
  f fun x : α => (assert ¬p i.val) fun h : ¬p i.val => g (i.succ h) (Nat.lt_succ_self _) x
#align part.fix_aux Part.fixAux

/-- The least fixed point of `f`.

If `f` is a continuous function (according to complete partial orders),
it satisfies the equations:

  1. `fix f = f (fix f)`          (is a fixed point)
  2. `∀ X, f X ≤ X → fix f ≤ X`   (least fixed point)
-/
protected def fix (x : α) : Part (β x) :=
  (Part.assert (∃ i, (Fix.approx f i x).Dom)) fun h =>
    WellFounded.fix.{1} (Nat.Upto.wf h) (fixAux f) Nat.Upto.zero x
#align part.fix Part.fix

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
  suffices : ∀ x',
    WellFounded.fix (Part.fix.proof_1 f x h') (fixAux f) z x' = Fix.approx f (succ k) x'
  exact this _
  induction k generalizing z with
  | zero =>
    intro x'
    rw [Fix.approx, WellFounded.fix_eq, fixAux]
    congr
    ext x: 1
    rw [assert_neg]
    rfl
    rw [Nat.zero_add] at _this
    simpa only [not_not, Coe]
  | succ n n_ih =>
    intro x'
    rw [Fix.approx, WellFounded.fix_eq, fixAux]
    congr
    ext : 1
    have hh : ¬(Fix.approx f z.val x).Dom := by
      apply Nat.find_min h'
      rw [hk, Nat.succ_add, ← Nat.add_succ]
      apply Nat.lt_of_succ_le
      apply Nat.le_add_left
    rw [succ_add_eq_succ_add] at _this hk
    rw [assert_pos hh, n_ih (Upto.succ z hh) _this hk]
#align part.fix_def Part.fix_def

theorem fix_def' {x : α} (h' : ¬∃ i, (Fix.approx f i x).Dom) : Part.fix f x = none := by
  dsimp [Part.fix]
  rw [assert_neg h']
#align part.fix_def' Part.fix_def'

end Basic

end Part

namespace Part

instance hasFix : Fix (Part α) :=
  ⟨fun f => Part.fix (fun x u => f (x u)) ()⟩
#align part.has_fix Part.hasFix

end Part

open Sigma

namespace Pi

instance Part.hasFix {β} : Fix (α → Part β) :=
  ⟨Part.fix⟩
#align pi.part.has_fix Pi.Part.hasFix

end Pi
```
