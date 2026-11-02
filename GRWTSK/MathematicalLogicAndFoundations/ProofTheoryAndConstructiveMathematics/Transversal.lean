/- Copyright (c) 2026 grwtsk contributors. MIT.

Typed, source-covered mathematical transversals. A relation is an explicit
mathematical premise, not a similarity score or an inferred proof.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, and transitive
axiom audit: NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification

set_option autoImplicit false

namespace GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics

universe u v w x y

/-- A certified mathematical transversal is a typed span restricted to valid
witnesses. Its relation is supplied by the actual source mathematics.

Source coverage is required. Target coverage, injectivity, reconstruction,
and exact source fidelity are NOT consequences of these fields. -/
structure Transversal (A : Type u) (B : Type v)
    (HA : A → Prop) (HB : B → Prop) (R : A → B → Prop) where
  Bridge : Type w
  source : Bridge → A
  target : Bridge → B
  valid : Bridge → Prop
  source_valid : ∀ p, valid p → HA (source p)
  target_valid : ∀ p, valid p → HB (target p)
  covers_source : ∀ a, HA a → ∃ p, valid p ∧ source p = a
  certified : ∀ p, valid p → R (source p) (target p)

namespace Transversal

/-- A genuinely relation-preserving function supplies a canonical span.
This construction alone does not establish that the function is injective,
surjective, or an equivalence. -/
def ofFunction {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop} {R : A → B → Prop}
    (f : A → B)
    (htarget : ∀ a, HA a → HB (f a))
    (hrelation : ∀ a, HA a → R a (f a)) :
    Transversal.{u, v, u} A B HA HB R where
  Bridge := A
  source := id
  target := f
  valid := HA
  source_valid := by
    intro a ha
    exact ha
  target_valid := htarget
  covers_source := by
    intro a ha
    exact ⟨a, ha, rfl⟩
  certified := hrelation

/-- Source coverage and certification produce an actual related target. -/
theorem exists_related {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop} {R : A → B → Prop}
    (t : Transversal.{u, v, w} A B HA HB R)
    (a : A) (ha : HA a) :
    ∃ b, HB b ∧ R a b := by
  obtain ⟨p, hp, hpa⟩ := t.covers_source a ha
  refine ⟨t.target p, t.target_valid p hp, ?_⟩
  simpa only [hpa] using t.certified p hp

/-- Transporting a universally quantified target property requires target
coverage in addition to source coverage and relation preservation. -/
theorem forall_target_of_target_coverage
    {A : Type u} {B : Type v}
    {HA : A → Prop} {HB : B → Prop} {R : A → B → Prop}
    (t : Transversal.{u, v, w} A B HA HB R)
    (P : A → Prop) (Q : B → Prop)
    (hcover : ∀ b, HB b → ∃ p, t.valid p ∧ t.target p = b)
    (hpreserve : ∀ a b, HA a → HB b → R a b → P a → Q b)
    (hsource : ∀ a, HA a → P a) :
    ∀ b, HB b → Q b := by
  intro b hb
  obtain ⟨p, hp, hpb⟩ := hcover b hb
  have hq : Q (t.target p) :=
    hpreserve (t.source p) (t.target p)
      (t.source_valid p hp) (t.target_valid p hp)
      (t.certified p hp) (hsource (t.source p) (t.source_valid p hp))
  simpa only [hpb] using hq

/-- Two certified spans compose only with a proof that their relations
compose. The bridge is an exact fiber product of compatible witnesses;
neither joint validity condition may be omitted. -/
def comp {A : Type u} {B : Type v} {C : Type x}
    {HA : A → Prop} {HB : B → Prop} {HC : C → Prop}
    {R : A → B → Prop} {S : B → C → Prop} {U : A → C → Prop}
    (first : Transversal.{u, v, w} A B HA HB R)
    (second : Transversal.{v, x, y} B C HB HC S)
    (hcompose : ∀ a b c, R a b → S b c → U a c) :
    Transversal.{u, x, max w y} A C HA HC U where
  Bridge := { p : first.Bridge × second.Bridge //
    first.target p.1 = second.source p.2 }
  source := fun p => first.source p.1.1
  target := fun p => second.target p.1.2
  valid := fun p => first.valid p.1.1 ∧ second.valid p.1.2
  source_valid := by
    intro p hp
    exact first.source_valid p.1.1 hp.1
  target_valid := by
    intro p hp
    exact second.target_valid p.1.2 hp.2
  covers_source := by
    intro a ha
    obtain ⟨p, hp, hpa⟩ := first.covers_source a ha
    obtain ⟨q, hq, hqb⟩ := second.covers_source (first.target p)
      (first.target_valid p hp)
    exact ⟨⟨(p, q), hqb.symm⟩, ⟨hp, hq⟩, hpa⟩
  certified := by
    intro p hp
    have hr : R (first.source p.1.1) (first.target p.1.1) :=
      first.certified p.1.1 hp.1
    have hs : S (first.target p.1.1) (second.target p.1.2) := by
      rw [p.2]
      exact second.certified p.1.2 hp.2
    exact hcompose _ _ _ hr hs

end Transversal

/-- Convert the existing exact-representation structure to a transversal.
The relation explicitly identifies the target as the actual encoded source. -/
def transversalOfExactRepresentation
    {A : Type u} {B : Type v}
    (r : TheoreticalQualification.ExactRepresentation A B) :
    Transversal.{u, v, u} A B (fun _ => True) (fun _ => True)
      (fun a b => r.encode a = b) :=
  Transversal.ofFunction r.encode
    (by intro _ _; trivial)
    (by intro _ _; rfl)

/-- The source round trip is inherited from the actual representation's
decoder theorem, not from the transversal axioms alone. -/
theorem transversalOfExactRepresentation_decodes
    {A : Type u} {B : Type v}
    (r : TheoreticalQualification.ExactRepresentation A B) (a : A) :
    r.decode ((transversalOfExactRepresentation r).target a) = a := by
  change r.decode (r.encode a) = a
  exact r.decode_encode a

/-- A source-covered transversal may omit a target object. This finite
counterexample blocks invalid universal transport without target coverage. -/
theorem source_coverage_does_not_force_target_coverage :
    ∃ t : Transversal.{0, 0, 0} Unit Bool
        (fun _ => True) (fun _ => True) (fun _ _ => True),
      ¬ (∀ b : Bool, ∃ p : t.Bridge, t.valid p ∧ t.target p = b) := by
  let t : Transversal.{0, 0, 0} Unit Bool
      (fun _ => True) (fun _ => True) (fun _ _ => True) :=
    Transversal.ofFunction (fun _ : Unit => true)
      (by intro _ _; trivial)
      (by intro _ _; trivial)
  refine ⟨t, ?_⟩
  intro hc
  obtain ⟨p, _, hp⟩ := hc false
  have hbad : (true : Bool) = false := hp
  cases hbad

end GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics
