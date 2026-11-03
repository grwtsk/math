/- Copyright (c) 2026 grwtsk contributors. MIT.
Certified mathematical transversals: typed, source-covering proof-carrying spans.
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel checking, transitive axiom
audit: NOT_RUN. This source does not assert a general sofic fibration.
-/
import Init

set_option autoImplicit false

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal

universe u v w x y

/-- A typed correspondence with a fixed mathematical relation.
Every admissible source must have a valid witness; target coverage,
inverse laws and reconstruction must be separately established. -/
structure Transversal
    (A : Type u) (B : Type v)
    (HA : A → Prop) (HB : B → Prop)
    (R : A → B → Prop) where
  Bridge : Type w
  source : Bridge → A
  target : Bridge → B
  valid : Bridge → Prop
  source_valid : ∀ z, valid z → HA (source z)
  target_valid : ∀ z, valid z → HB (target z)
  covers_source : ∀ a, HA a →
    ∃ z, valid z ∧ source z = a
  certified : ∀ z, valid z → R (source z) (target z)

namespace Transversal

/-- A total map supplies a transversal only after target admissibility and
its declared mathematical relation have been proved on the source scope. -/
def ofFunction
    {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop}
    {R : A → B → Prop}
    (f : A → B)
    (hTarget : ∀ a, HA a → HB (f a))
    (hRelation : ∀ a, HA a → R a (f a)) :
    Transversal.{u, v, u} A B HA HB R where
  Bridge := A
  source := fun a => a
  target := f
  valid := HA
  source_valid := by
    intro a ha
    exact ha
  target_valid := by
    intro a ha
    exact hTarget a ha
  covers_source := by
    intro a ha
    exact ⟨a, ha, rfl⟩
  certified := by
    intro a ha
    exact hRelation a ha

/-- A nonempty admissible source supplies a genuine bridge witness. -/
theorem nonempty_bridge_of_source
    {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop}
    {R : A → B → Prop}
    (t : Transversal.{u, v, w} A B HA HB R)
    (a : A) (ha : HA a) : Nonempty t.Bridge := by
  cases t.covers_source a ha with
  | intro z hz =>
      exact ⟨z⟩

/-- A target theorem returns to the source ONLY with the additional proved
predicate-transport bridge for the fixed mathematical relation. -/
theorem source_property_of_target
    {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop}
    {R : A → B → Prop}
    (t : Transversal.{u, v, w} A B HA HB R)
    (P : A → Prop) (Q : B → Prop)
    (hReturn : ∀ a b, R a b → Q b → P a)
    (hTarget : ∀ b, HB b → Q b) :
    ∀ a, HA a → P a := by
  intro a ha
  cases t.covers_source a ha with
  | intro z hz =>
      have hp : P (t.source z) :=
        hReturn (t.source z) (t.target z)
          (t.certified z hz.1)
          (hTarget (t.target z) (t.target_valid z hz.1))
      exact hz.2 ▸ hp

/-- Pullback-witness composition requires an explicit relation-composition
theorem and retains both admissibility and intermediate endpoint equality. -/
def comp
    {A : Type u} {B : Type v} {C : Type w}
    {HA : A → Prop} {HB : B → Prop} {HC : C → Prop}
    {R : A → B → Prop} {S : B → C → Prop}
    {T : A → C → Prop}
    (f : Transversal.{u, v, x} A B HA HB R)
    (g : Transversal.{v, w, y} B C HB HC S)
    (hComp : ∀ a b c, R a b → S b c → T a c) :
    Transversal.{u, w, max x y} A C HA HC T where
  Bridge := {p : f.Bridge × g.Bridge //
    f.valid p.1 ∧ g.valid p.2 ∧ f.target p.1 = g.source p.2}
  source := fun p => f.source p.val.1
  target := fun p => g.target p.val.2
  valid := fun _ => True
  source_valid := by
    intro p _
    exact f.source_valid p.val.1 p.property.1
  target_valid := by
    intro p _
    exact g.target_valid p.val.2 p.property.2.1
  covers_source := by
    intro a ha
    cases f.covers_source a ha with
    | intro fx hfx =>
        cases g.covers_source (f.target fx) (f.target_valid fx hfx.1) with
        | intro gy hgy =>
            refine ⟨⟨(fx, gy), ?_⟩, True.intro, ?_⟩
            · exact ⟨hfx.1, hgy.1, hgy.2.symm⟩
            · exact hfx.2
  certified := by
    intro p _
    apply hComp (f.source p.val.1) (f.target p.val.1) (g.target p.val.2)
    · exact f.certified p.val.1 p.property.1
    · have hs : S (g.source p.val.2) (g.target p.val.2) :=
        g.certified p.val.2 p.property.2.1
      rw [p.property.2.2]
      exact hs

/-- Source coverage produces an admissible related target, without
asserting that every admissible target is reached. -/
theorem exists_related
    {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop}
    {R : A → B → Prop}
    (t : Transversal.{u, v, w} A B HA HB R)
    (a : A) (ha : HA a) :
    ∃ b, HB b ∧ R a b := by
  obtain ⟨z, hz, hza⟩ := t.covers_source a ha
  refine ⟨t.target z, t.target_valid z hz, ?_⟩
  simpa only [hza] using t.certified z hz

/-- Transporting a property from every admissible source to EVERY
admissible target requires separate target coverage. Source coverage
alone is insufficient, as the Boolean counterexample demonstrates. -/
theorem target_property_of_source_with_target_coverage
    {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop}
    {R : A → B → Prop}
    (t : Transversal.{u, v, w} A B HA HB R)
    (P : A → Prop) (Q : B → Prop)
    (hCover : ∀ b, HB b → ∃ z, t.valid z ∧ t.target z = b)
    (hForward : ∀ a b, R a b → P a → Q b)
    (hSource : ∀ a, HA a → P a) :
    ∀ b, HB b → Q b := by
  intro b hb
  obtain ⟨z, hz, hzb⟩ := hCover b hb
  have hq : Q (t.target z) :=
    hForward (t.source z) (t.target z)
      (t.certified z hz)
      (hSource (t.source z) (t.source_valid z hz))
  exact hzb ▸ hq

end Transversal

/-- A finite total observation may discard target information. -/
def lossyBooleanObservation :
    Transversal Unit Bool
      (fun _ => True) (fun _ => True) (fun _ _ => True) :=
  Transversal.ofFunction (fun _ : Unit => false)
    (by intro _ _; exact True.intro)
    (by intro _ _; exact True.intro)

/-- Source coverage never implies target coverage, even with finite
carriers and an everywhere-true declared relation. -/
theorem lossyBooleanObservation_not_target_covering :
    ¬ ∀ b : Bool, ∃ z : lossyBooleanObservation.Bridge,
      lossyBooleanObservation.valid z ∧
      lossyBooleanObservation.target z = b := by
  intro h
  cases h true with
  | intro z hz =>
      have hFalse : (false : Bool) = true := hz.2
      cases hFalse

end GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal
