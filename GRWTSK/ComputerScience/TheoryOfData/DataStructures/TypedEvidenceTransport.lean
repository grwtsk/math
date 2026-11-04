/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.CategoryTheoryHomologicalAlgebra.TypedFunctionChains
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidenceProjection

/-!
# Typed evidence chains with contravariant obligations

Bundle existing evidence and validity data only to index the endpoints of a
comparison. Records travel forward; a target obligation translates backward.
The comparison is exact on encoded records. It neither supplies unseen records
nor asserts that all target records or source obligations have preimages.

The main result identifies completeness and the exact outstanding residual after
any typed comparison chain with the translated source obligations. Support uses
one actual observed record, avoiding the mixed-fiber witness error exhibited in
`EvidenceProjection`. Required source obligations are the existential image of
the independently supplied target inventory; they are not chosen by a candidate.

Primary argument: eliminate the actual image witness, apply the validity iff,
and reuse `residual_completion_iff`. Chains reuse `Quiver.Path`; their record and
query maps agree with the forward and backward typed interpreters respectively.
Faithful same-obligation projections embed without changing their semantics.

Consumers: representation changes between evidence stores and theorem consumers.
No rule authenticates a producer, establishes current permission, executes a
query, or admits an operational effect. Logical comparison is not runtime
refinement. Dependencies inspected at 7d33cee521e3f1c27ffce510a6894bf15b42c89b.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Evidence.Transport

universe u v

/-- Endpoint data, using the existing validity-relation semantics. -/
structure Presentation where
  Record : Type u
  Obligation : Type v
  valid : Record → Obligation → Prop

/-- Translation of obligations is contravariant to translation of records. -/
structure Comparison (source target : Presentation.{u, v}) where
  record : source.Record → target.Record
  query : target.Obligation → source.Obligation
  valid_iff : ∀ e o, target.valid (record e) o ↔ source.valid e (query o)

namespace Comparison

variable {A B C D : Presentation.{u, v}}

def identity (A : Presentation.{u, v}) : Comparison A A where
  record := id
  query := id
  valid_iff := fun _ _ => Iff.rfl

def comp (first : Comparison A B) (second : Comparison B C) : Comparison A C where
  record := fun e => second.record (first.record e)
  query := fun o => first.query (second.query o)
  valid_iff := fun e o =>
    (second.valid_iff (first.record e) o).trans (first.valid_iff e (second.query o))

@[simp] theorem identity_comp (f : Comparison A B) : (identity A).comp f = f := by
  cases f
  rfl

@[simp] theorem comp_identity (f : Comparison A B) : f.comp (identity B) = f := by
  cases f
  rfl

theorem comp_associative (f : Comparison A B) (g : Comparison B C)
    (h : Comparison C D) : (f.comp g).comp h = f.comp (g.comp h) := rfl

/-- Only records with an actual retained preimage are projected. -/
def records (f : Comparison A B) (observed : Collection A.Record) : Collection B.Record :=
  Projection.image f.record observed

/-- Source obligations needed for precisely the requested target questions. -/
def sourceRequirements (f : Comparison A B) (required : Collection B.Obligation) :
    Collection A.Obligation := Projection.image f.query required

/-- No unobserved representative may be used in place of the image witness. -/
theorem supported_iff (f : Comparison A B) (observed : Collection A.Record)
    (o : B.Obligation) :
    Supported B.valid (f.records observed) o ↔ Supported A.valid observed (f.query o) := by
  constructor
  · intro h
    obtain ⟨encoded, preimage, valid⟩ := h
    obtain ⟨e, he, present⟩ := preimage
    have atImage : B.valid (f.record e) o := he.symm ▸ valid
    exact ⟨e, present, (f.valid_iff e o).mp atImage⟩
  · intro h
    obtain ⟨e, present, valid⟩ := h
    exact ⟨f.record e, ⟨e, rfl, present⟩, (f.valid_iff e o).mpr valid⟩

/-- Obligation identification is explicit and may be noninjective. -/
theorem complete_iff (f : Comparison A B) (required : Collection B.Obligation)
    (observed : Collection A.Record) :
    Complete required B.valid (f.records observed) ↔
      Complete (f.sourceRequirements required) A.valid observed := by
  constructor
  · intro h o ho
    obtain ⟨target, ht, wanted⟩ := ho
    have supported := (f.supported_iff observed target).mp (h target wanted)
    exact ht ▸ supported
  · intro h o ho
    apply (f.supported_iff observed o).mpr
    exact h (f.query o) ⟨o, rfl, ho⟩

/-- Translate the missing target queries, not a newly weakened requirement set. -/
theorem residual_iff (f : Comparison A B) (required : Collection B.Obligation)
    (observed : Collection A.Record) (o : A.Obligation) :
    Projection.image f.query (Missing required B.valid (f.records observed)) o ↔
      Missing (f.sourceRequirements required) A.valid observed o := by
  constructor
  · intro h
    obtain ⟨target, ht, wanted, absent⟩ := h
    refine ⟨⟨target, ht, wanted⟩, ?_⟩
    intro supported
    apply absent
    apply (f.supported_iff observed target).mpr
    exact ht.symm ▸ supported
  · intro h
    obtain ⟨target, ht, wanted⟩ := h.1
    refine ⟨target, ht, wanted, ?_⟩
    intro supported
    apply h.2
    exact ht ▸ (f.supported_iff observed target).mp supported

theorem records_join (f : Comparison A B) (old fresh : Collection A.Record) :
    f.records (Collection.join old fresh) =
      Collection.join (f.records old) (f.records fresh) :=
  Projection.image_join f.record old fresh

theorem records_comp (f : Comparison A B) (g : Comparison B C)
    (observed : Collection A.Record) :
    g.records (f.records observed) = (f.comp g).records observed :=
  Projection.image_composition f.record g.record observed

/-- The reversed query order agrees with sequential requirement translation. -/
theorem requirements_comp (f : Comparison A B) (g : Comparison B C)
    (required : Collection C.Obligation) :
    f.sourceRequirements (g.sourceRequirements required) =
      (f.comp g).sourceRequirements required :=
  Projection.image_composition g.query f.query required

/-- Finishing the old residual is necessary and sufficient after representation change. -/
theorem supplement_iff (f : Comparison A B) (required : Collection B.Obligation)
    (old fresh : Collection A.Record) :
    Complete required B.valid (Collection.join (f.records old) (f.records fresh)) ↔
      Complete (Missing (f.sourceRequirements required) A.valid old) A.valid fresh := by
  rw [← f.records_join old fresh]
  exact (f.complete_iff required (Collection.join old fresh)).trans
    (residual_completion_iff (f.sourceRequirements required) A.valid old fresh)

/-- Every translated question is constant on the encoding fibers. -/
theorem translated_question_determined (f : Comparison A B) (o : B.Obligation) :
    GRWTSK.Logic.Observation.Determined f.record (fun e => A.valid e (f.query o)) := by
  intro x y same
  exact (f.valid_iff x o).symm.trans
    ((Iff.of_eq (congrArg (fun e => B.valid e o) same)).trans (f.valid_iff y o))

/-- Covering all source questions recovers the earlier global faithfulness condition. -/
theorem faithful_of_query_surjective (f : Comparison A B)
    (covers : ∀ o, ∃ q, f.query q = o) : Projection.Faithful f.record A.valid := by
  intro o
  obtain ⟨q, hq⟩ := covers o
  rw [← hq]
  exact f.translated_question_determined q

/-- A mixed encoding fiber forbids any exact comparison for that translated query. -/
theorem no_mixed_fiber (f : Comparison A B) (o : B.Obligation)
    {x y : A.Record} (same : f.record x = f.record y)
    (hx : A.valid x (f.query o)) (hy : ¬ A.valid y (f.query o)) : False :=
  hy ((f.translated_question_determined o x y same).mp hx)

end Comparison

/-- This quiver's edges are proof-bearing comparisons, not arbitrary functions. -/
instance presentationQuiver : Quiver (Presentation.{u, v}) where
  Hom := Comparison

namespace Chain

open GRWTSK.CategoryTheory

variable {A B C : Presentation.{u, v}}

/-- Compile the existing typed path; endpoint matching is enforced by its indices. -/
def comparison : {A B : Presentation.{u, v}} → Quiver.Path A B → Comparison A B
  | _, _, .nil => Comparison.identity _
  | _, _, .cons prefix last => (comparison prefix).comp last

theorem comparison_comp (first : Quiver.Path A B) (second : Quiver.Path B C) :
    comparison (first.comp second) = (comparison first).comp (comparison second) := by
  induction second with
  | nil => exact (Comparison.comp_identity (comparison first)).symm
  | cons prefix last ih =>
      change (comparison (first.comp prefix)).comp last =
        (comparison first).comp ((comparison prefix).comp last)
      rw [ih]
      exact Comparison.comp_associative _ _ _

/-- Records use the common forward interpreter. -/
theorem record_evaluation (path : Quiver.Path A B) (e : A.Record) :
    (comparison path).record e =
      TypedChain.evaluate (fun P : Presentation.{u, v} => P.Record)
        (fun edge => edge.record) path e := by
  induction path with
  | nil => rfl
  | cons prefix last ih => exact congrArg last.record ih

/-- Questions use the common backward interpreter. -/
theorem query_transport (path : Quiver.Path A B) :
    ∀ o : B.Obligation, (comparison path).query o =
      TypedChain.pull (fun P : Presentation.{u, v} => P.Obligation)
        (fun edge => edge.query) path o := by
  induction path with
  | nil => intro o; rfl
  | cons prefix last ih => intro o; exact ih (last.query o)

/-- End-to-end validity has an exact source-level question and record. -/
theorem valid_iff (path : Quiver.Path A B) (e : A.Record) (o : B.Obligation) :
    B.valid ((comparison path).record e) o ↔ A.valid e ((comparison path).query o) :=
  (comparison path).valid_iff e o

theorem complete_iff (path : Quiver.Path A B) (required : Collection B.Obligation)
    (observed : Collection A.Record) :
    Complete required B.valid ((comparison path).records observed) ↔
      Complete ((comparison path).sourceRequirements required) A.valid observed :=
  (comparison path).complete_iff required observed

theorem supplement_iff (path : Quiver.Path A B) (required : Collection B.Obligation)
    (old fresh : Collection A.Record) :
    Complete required B.valid
        (Collection.join ((comparison path).records old) ((comparison path).records fresh)) ↔
      Complete (Missing ((comparison path).sourceRequirements required) A.valid old)
        A.valid fresh :=
  (comparison path).supplement_iff required old fresh

end Chain

/-- Reuse a faithful same-question projection as a special typed comparison. -/
def fromProjection {E F : Type u} {O : Type v}
    (encode : E → F) (valid : E → O → Prop)
    (faithful : Projection.Faithful encode valid) :
    Comparison ⟨E, O, valid⟩ ⟨F, O, Projection.validity encode valid⟩ where
  record := encode
  query := id
  valid_iff := Projection.validity_at_image_iff encode valid faithful

end GRWTSK.Evidence.Transport
