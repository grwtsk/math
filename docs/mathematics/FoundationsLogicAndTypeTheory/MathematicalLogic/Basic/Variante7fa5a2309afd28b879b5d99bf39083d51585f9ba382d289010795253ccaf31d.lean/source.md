# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variante7fa5a2309afd28b879b5d99bf39083d51585f9ba382d289010795253ccaf31d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b22f9339fbe7d43c660c1b6ea1d3171857da0be` · SHA-256 `f54509a84cbbb9a02273fda7cd2a09087790f146a2ab6c0d865b8daf841c02fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Derangements.Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Derangements.Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef","mathematical_subject":"Logic.Foundations","original_sha256":"84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Combinatorics/Derangements/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Henry Swanson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henry Swanson
-/
import Mathlib.Dynamics.FixedPoints.Basic
import Mathlib.GroupTheory.Perm.Option
import Mathlib.Logic.Equiv.Defs
import Mathlib.Logic.Equiv.Option
import Mathlib.Tactic.ApplyFun

/-!
# Derangements on types

In this file we define `derangements α`, the set of derangements on a type `α`.

We also define some equivalences involving various subtypes of `Perm α` and `derangements α`:
* `derangementsOptionEquivSigmaAtMostOneFixedPoint`: An equivalence between
  `derangements (Option α)` and the sigma-type `Σ a : α, {f : Perm α // fixed_points f ⊆ a}`.
* `derangementsRecursionEquiv`: An equivalence between `derangements (Option α)` and the
  sigma-type `Σ a : α, (derangements (({a}ᶜ : Set α) : Type*) ⊕ derangements α)` which is later
  used to inductively count the number of derangements.

In order to prove the above, we also prove some results about the effect of `Equiv.removeNone`
on derangements: `RemoveNone.fiber_none` and `RemoveNone.fiber_some`.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Derangements.Variant84aa7ec15dfeea15b7a2dffb9ff3e377c3e63d3a406b68688d712f5137dc37ef

open Equiv Function

/-- A permutation is a derangement if it has no fixed points. -/
def derangements (α : Type*) : Set (Perm α) :=
  { f : Perm α | ∀ x : α, f x ≠ x }

variable {α β : Type*}

theorem mem_derangements_iff_fixedPoints_eq_empty {f : Perm α} :
    f ∈ derangements α ↔ fixedPoints f = ∅ :=
  Set.eq_empty_iff_forall_notMem.symm

/-- If `α` is equivalent to `β`, then `derangements α` is equivalent to `derangements β`. -/
def Equiv.derangementsCongr (e : α ≃ β) : derangements α ≃ derangements β :=
  e.permCongr.subtypeEquiv fun {f} => e.forall_congr <| by
   intro b; simp only [ne_eq, permCongr_apply, symm_apply_apply, EmbeddingLike.apply_eq_iff_eq]

namespace derangements

/-- Derangements on a subtype are equivalent to permutations on the original type where points are
fixed iff they are not in the subtype. -/
protected def subtypeEquiv (p : α → Prop) [DecidablePred p] :
    derangements (Subtype p) ≃ { f : Perm α // ∀ a, ¬p a ↔ a ∈ fixedPoints f } :=
  calc
    derangements (Subtype p) ≃ { f : { f : Perm α // ∀ a, ¬p a → a ∈ fixedPoints f } //
        ∀ a, a ∈ fixedPoints f → ¬p a } := by
      refine (Perm.subtypeEquivSubtypePerm p).subtypeEquiv fun f => ⟨fun hf a hfa ha => ?_, ?_⟩
      · refine hf ⟨a, ha⟩ (Subtype.ext ?_)
        simp_rw [mem_fixedPoints, IsFixedPt, Perm.subtypeEquivSubtypePerm,
        Equiv.coe_fn_mk, Perm.ofSubtype_apply_of_mem _ ha] at hfa
        assumption
      rintro hf ⟨a, ha⟩ hfa
      refine hf _ ?_ ha
      simp only [Perm.subtypeEquivSubtypePerm_apply_coe, mem_fixedPoints]
      dsimp [IsFixedPt]
      simp_rw [Perm.ofSubtype_apply_of_mem _ ha, hfa]
    _ ≃ { f : Perm α // ∃ _h : ∀ a, ¬p a → a ∈ fixedPoints f, ∀ a, a ∈ fixedPoints f → ¬p a } :=
      subtypeSubtypeEquivSubtypeExists _ _
    _ ≃ { f : Perm α // ∀ a, ¬p a ↔ a ∈ fixedPoints f } :=
      subtypeEquivRight fun f => by
        simp_rw [exists_prop, ← forall_and, ← iff_iff_implies_and_implies]

universe u
/-- The set of permutations that fix either `a` or nothing is equivalent to the sum of:
    - derangements on `α`
    - derangements on `α` minus `a`. -/
def atMostOneFixedPointEquivSum_derangements [DecidableEq α] (a : α) :
    { f : Perm α // fixedPoints f ⊆ {a} } ≃ (derangements ({a}ᶜ : Set α)) ⊕ (derangements α) :=
  calc
    { f : Perm α // fixedPoints f ⊆ {a} } ≃
        { f : { f : Perm α // fixedPoints f ⊆ {a} } // a ∈ fixedPoints f } ⊕
          { f : { f : Perm α // fixedPoints f ⊆ {a} } // a ∉ fixedPoints f } :=
      (Equiv.sumCompl _).symm
    _ ≃ { f : Perm α // fixedPoints f ⊆ {a} ∧ a ∈ fixedPoints f } ⊕
          { f : Perm α // fixedPoints f ⊆ {a} ∧ a ∉ fixedPoints f } := by
      -- Porting note: `subtypeSubtypeEquivSubtypeInter` no longer works with placeholder `_`s.
      refine Equiv.sumCongr ?_ ?_
      · exact subtypeSubtypeEquivSubtypeInter
          (fun x : Perm α => fixedPoints x ⊆ {a})
          (a ∈ fixedPoints ·)
      · exact subtypeSubtypeEquivSubtypeInter
          (fun x : Perm α => fixedPoints x ⊆ {a})
          (a ∉ fixedPoints ·)
    _ ≃ { f : Perm α // fixedPoints f = {a} } ⊕ { f : Perm α // fixedPoints f = ∅ } := by
      refine Equiv.sumCongr (subtypeEquivRight fun f => ?_) (subtypeEquivRight fun f => ?_)
      · rw [Set.eq_singleton_iff_unique_mem, and_comm]
        rfl
      · rw [Set.eq_empty_iff_forall_notMem]
        exact ⟨fun h x hx => h.2 (h.1 hx ▸ hx), fun h => ⟨fun x hx => (h _ hx).elim, h _⟩⟩
    _ ≃ derangements ({a}ᶜ : Set α) ⊕ derangements α := by
      refine
        Equiv.sumCongr ((derangements.subtypeEquiv _).trans <|
            subtypeEquivRight fun x => ?_).symm
          (subtypeEquivRight fun f => mem_derangements_iff_fixedPoints_eq_empty.symm)
      rw [eq_comm, Set.ext_iff]
      simp_rw [Set.mem_compl_iff, Classical.not_not]

namespace Equiv

variable [DecidableEq α]

/-- The set of permutations `f` such that the preimage of `(a, f)` under
    `Equiv.Perm.decomposeOption` is a derangement. -/
def RemoveNone.fiber (a : Option α) : Set (Perm α) :=
  { f : Perm α | (a, f) ∈ Equiv.Perm.decomposeOption '' derangements (Option α) }

theorem RemoveNone.mem_fiber (a : Option α) (f : Perm α) :
    f ∈ RemoveNone.fiber a ↔
      ∃ F : Perm (Option α), F ∈ derangements (Option α) ∧ F none = a ∧ removeNone F = f := by
  simp [RemoveNone.fiber, derangements]

theorem RemoveNone.fiber_none : RemoveNone.fiber (@none α) = ∅ := by
  rw [Set.eq_empty_iff_forall_notMem]
  intro f hyp
  rw [RemoveNone.mem_fiber] at hyp
  rcases hyp with ⟨F, F_derangement, F_none, _⟩
  exact F_derangement none F_none

/-- For any `a : α`, the fiber over `some a` is the set of permutations
where `a` is the only possible fixed point. -/
theorem RemoveNone.fiber_some (a : α) :
    RemoveNone.fiber (some a) = { f : Perm α | fixedPoints f ⊆ {a} } := by
  ext f
  constructor
  · rw [RemoveNone.mem_fiber]
    rintro ⟨F, F_derangement, F_none, rfl⟩ x x_fixed
    rw [mem_fixedPoints_iff] at x_fixed
    apply_fun some at x_fixed
    rcases Fx : F (some x) with - | y
    · rwa [removeNone_none F Fx, F_none, Option.some_inj, eq_comm] at x_fixed
    · exfalso
      rw [removeNone_some F ⟨y, Fx⟩] at x_fixed
      exact F_derangement _ x_fixed
  · intro h_opfp
    use Equiv.Perm.decomposeOption.symm (some a, f)
    constructor
    · intro x
      apply_fun fun x => Equiv.swap none (some a) x
      simp only [Perm.decomposeOption_symm_apply, swap_apply_self, Perm.coe_mul]
      rcases x with - | x
      · simp
      simp only [comp, optionCongr_apply, Option.map_some, swap_apply_self]
      by_cases x_vs_a : x = a
      · rw [x_vs_a, swap_apply_right]
        apply Option.some_ne_none
      have ne_1 : some x ≠ none := Option.some_ne_none _
      have ne_2 : some x ≠ some a := (Option.some_injective α).ne_iff.mpr x_vs_a
      rw [swap_apply_of_ne_of_ne ne_1 ne_2, (Option.some_injective α).ne_iff]
      intro contra
      exact x_vs_a (h_opfp contra)
    · rw [apply_symm_apply]

end Equiv

section Option

variable [DecidableEq α]

/-- The set of derangements on `Option α` is equivalent to the union over `a : α`
    of "permutations with `a` the only possible fixed point". -/
def derangementsOptionEquivSigmaAtMostOneFixedPoint :
    derangements (Option α) ≃ Σa : α, { f : Perm α | fixedPoints f ⊆ {a} } := by
  have fiber_none_is_false : Equiv.RemoveNone.fiber (@none α) → False := by
    rw [Equiv.RemoveNone.fiber_none]
    exact IsEmpty.false
  calc
    derangements (Option α) ≃ Equiv.Perm.decomposeOption '' derangements (Option α) :=
      Equiv.image _ _
    _ ≃ Σa : Option α, ↥(Equiv.RemoveNone.fiber a) := setProdEquivSigma _
    _ ≃ Σa : α, ↥(Equiv.RemoveNone.fiber (some a)) :=
      sigmaOptionEquivOfSome _ fiber_none_is_false
    _ ≃ Σa : α, { f : Perm α | fixedPoints f ⊆ {a} } := by
      simp_rw [Equiv.RemoveNone.fiber_some]
      rfl

/-- The set of derangements on `Option α` is equivalent to the union over all `a : α` of
    "derangements on `α` ⊕ derangements on `{a}ᶜ`". -/
def derangementsRecursionEquiv :
    derangements (Option α) ≃
      Σa : α, derangements (({a}ᶜ : Set α) : Type _) ⊕ derangements α :=
  derangementsOptionEquivSigmaAtMostOneFixedPoint.trans
    (sigmaCongrRight atMostOneFixedPointEquivSum_derangements)

end Option

end derangements
```
