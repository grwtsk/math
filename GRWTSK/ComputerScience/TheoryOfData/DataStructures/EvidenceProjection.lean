/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.CacheFactorization
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidenceResidual
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationRefinement

/-!
# Faithful projection of evidence and verification residuals

A projection may merge evidence objects. Mere preservation of observed records
is therefore insufficient: validity for each consumed obligation must be constant
on the projection's fibers. Reuse `Determined`, `May`, `FiberConstant`, `Supported`,
`Missing`, and `Complete` instead of introducing another evidence ontology.

Primary argument: projected support supplies two witnesses in one fiber, one
observed and one valid. Fiber determination transports validity to the observed
witness. The converse simply projects one actual supporting record. Completeness
and the exact residual then agree pointwise. This also explains the explicit
counterexample: independently existentially projecting possession and validity
can combine facts about different records into a fabricated supporting witness.

Consumers: representation-independent evidence exchange and current residual
calculation. Neither a source identifier, projection, cache, nor completeness
proves operational permission or authenticates a producer. Theorems are relative
to the supplied validity relation; changes to that relation require new checks.
Dependencies inspected at 4cdadd06d6816c0ee853a13182b2295485e84407.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Evidence.Projection

universe u v w z
variable {E : Type u} {F : Type v} {O : Type w} {G : Type z}

open GRWTSK.Logic.Observation

/-- Existence of an actually retained preimage; no decoder or default is invented. -/
def image (encode : E → F) (observed : Collection E) : Collection F :=
  May encode observed

/-- Candidate projected validity; soundness requires the separate fiber premise. -/
def validity (encode : E → F) (valid : E → O → Prop) (f : F) (o : O) : Prop :=
  May encode (fun e => valid e o) f

/-- The same representation must not conflate validity for a consumed obligation. -/
def Faithful (encode : E → F) (valid : E → O → Prop) : Prop :=
  ∀ o, Determined encode (fun e => valid e o)

/-- Predicate equality and logical equivalence give the same sufficiency test. -/
theorem faithful_iff_cache_sufficient (encode : E → F) (valid : E → O → Prop) :
    Faithful encode valid ↔
      ∀ o, GRWTSK.Cache.FiberConstant encode (fun e => valid e o) := by
  constructor
  · intro h o x y hxy
    exact propext (h o x y hxy)
  · intro h o x y hxy
    exact Iff.of_eq (h o x y hxy)

/-- Realized projected records reflect their original validity exactly. -/
theorem validity_at_image_iff (encode : E → F) (valid : E → O → Prop)
    (faithful : Faithful encode valid) (e : E) (o : O) :
    validity encode valid (encode e) o ↔ valid e o := by
  constructor
  · intro h
    obtain ⟨other, same, holds⟩ := h
    exact (faithful o other e same).mp holds
  · intro h
    exact ⟨e, rfl, h⟩

/-- One supporting witness is retained; two unrelated witnesses are not merged. -/
theorem supported_iff (encode : E → F) (valid : E → O → Prop)
    (faithful : Faithful encode valid) (observed : Collection E) (o : O) :
    Supported (validity encode valid) (image encode observed) o ↔
      Supported valid observed o := by
  constructor
  · intro h
    obtain ⟨f, observedImage, validImage⟩ := h
    obtain ⟨e, he, present⟩ := observedImage
    obtain ⟨other, hother, holds⟩ := validImage
    exact ⟨e, present, (faithful o other e (hother.trans he.symm)).mp holds⟩
  · intro h
    obtain ⟨e, present, holds⟩ := h
    exact ⟨encode e, ⟨e, rfl, present⟩, ⟨e, rfl, holds⟩⟩

theorem complete_iff (encode : E → F) (valid : E → O → Prop)
    (faithful : Faithful encode valid) (required : Collection O)
    (observed : Collection E) :
    Complete required (validity encode valid) (image encode observed) ↔
      Complete required valid observed := by
  constructor
  · intro h o ho
    exact (supported_iff encode valid faithful observed o).mp (h o ho)
  · intro h o ho
    exact (supported_iff encode valid faithful observed o).mpr (h o ho)

/-- Projection preserves the original requirement inventory and its exact residual. -/
theorem missing_iff (encode : E → F) (valid : E → O → Prop)
    (faithful : Faithful encode valid) (required : Collection O)
    (observed : Collection E) (o : O) :
    Missing required (validity encode valid) (image encode observed) o ↔
      Missing required valid observed o := by
  constructor
  · intro h
    exact ⟨h.1, fun supported => h.2
      ((supported_iff encode valid faithful observed o).mpr supported)⟩
  · intro h
    exact ⟨h.1, fun supported => h.2
      ((supported_iff encode valid faithful observed o).mp supported)⟩

theorem image_join (encode : E → F) (old fresh : Collection E) :
    image encode (Collection.join old fresh) =
      Collection.join (image encode old) (image encode fresh) := by
  funext f
  apply propext
  constructor
  · intro h
    obtain ⟨e, he, present⟩ := h
    cases present with
    | inl h => exact Or.inl ⟨e, he, h⟩
    | inr h => exact Or.inr ⟨e, he, h⟩
  · intro h
    cases h with
    | inl h =>
      obtain ⟨e, he, present⟩ := h
      exact ⟨e, he, Or.inl present⟩
    | inr h =>
      obtain ⟨e, he, present⟩ := h
      exact ⟨e, he, Or.inr present⟩

/-- The previous residual theorem survives a faithful representation change. -/
theorem projected_residual_completion_iff (encode : E → F)
    (valid : E → O → Prop) (faithful : Faithful encode valid)
    (required : Collection O) (old fresh : Collection E) :
    Complete required (validity encode valid)
        (Collection.join (image encode old) (image encode fresh)) ↔
      Complete (Missing required valid old) valid fresh := by
  rw [← image_join]
  exact (complete_iff encode valid faithful required (Collection.join old fresh)).trans
    (residual_completion_iff required valid old fresh)

/-- Composition of representations is exact at the collection level. -/
theorem image_composition (encode : E → F) (next : F → G)
    (observed : Collection E) :
    image next (image encode observed) = image (fun e => next (encode e)) observed := by
  funext g
  exact propext (may_comp_iff encode next observed g).symm

/-- Each representation change needs its own validity comparison. -/
theorem faithful_composition (encode : E → F) (next : F → G)
    (valid : E → O → Prop) (first : Faithful encode valid)
    (second : Faithful next (validity encode valid)) :
    Faithful (fun e => next (encode e)) valid := by
  intro o x y hxy
  exact (validity_at_image_iff encode valid first x o).symm.trans
    ((second o (encode x) (encode y) hxy).trans
      (validity_at_image_iff encode valid first y o))

/-- A finer representation preserves the same validity distinctions. -/
theorem faithful_refinement {encode : E → F} {fine : E → G}
    {valid : E → O → Prop} (faithful : Faithful encode valid)
    (refinement : Refines fine encode) : Faithful fine valid :=
  fun o => determined_of_refines refinement (faithful o)

/-- Projection can fabricate support when validity is not constant on fibers. -/
theorem mixed_fiber_can_fabricate_support :
    let encode : Bool → Unit := fun _ => ()
    let valid : Bool → Unit → Prop := fun b _ => b = true
    let observed : Collection Bool := fun b => b = false
    ¬ Supported valid observed () ∧
      Supported (validity encode valid) (image encode observed) () := by
  dsimp
  constructor
  · intro h
    obtain ⟨b, hb, hv⟩ := h
    have impossible : (false : Bool) = true := hb.symm.trans hv
    cases impossible
  · exact ⟨(), ⟨false, rfl, rfl⟩, ⟨true, rfl, rfl⟩⟩

/-- Evidence completeness alone has no implication to an independent permission. -/
theorem completeness_does_not_imply_permission :
    ∃ (required : Collection Unit) (valid : Unit → Unit → Prop)
      (observed : Collection Unit) (permission : Prop),
      Complete required valid observed ∧ ¬ permission := by
  refine ⟨fun _ => True, fun _ _ => True, fun _ => True, False, ?_, ?_⟩
  · intro o ho
    exact ⟨(), True.intro, True.intro⟩
  · intro impossible
    exact impossible

end GRWTSK.Evidence.Projection
