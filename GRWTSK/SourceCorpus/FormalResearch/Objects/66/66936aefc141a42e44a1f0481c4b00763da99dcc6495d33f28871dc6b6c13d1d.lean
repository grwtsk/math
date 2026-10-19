import Mathematics.MobiusOntology.BehavioralEquivalence

/-!
# Minimal continuation-relative behavioral quotient

The quotient is finite only when a finite-index certificate is supplied.  Its
universal property says every behaviorally sound finite abstraction refines
this quotient.
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev BehavioralCompactification
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) :=
  Quotient (behavioralSetoid profile)

def behavioralProjection
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) :
    State → BehavioralCompactification profile :=
  Quotient.mk (behavioralSetoid profile)

/-- A finite code is exact precisely when it classifies behavioral classes. -/
structure FiniteBehavioralIndexCertificate
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) where
  width : Nat
  code : State → Fin width
  exact :
    ∀ left right,
      code left = code right ↔
        BehaviorallyEquivalent profile left right

def BehaviorallySoundAbstraction
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction) : Prop :=
  ∀ {left right},
    abstract left = abstract right →
      BehaviorallyEquivalent profile left right

noncomputable def behavioralAbstractionFactor
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract) :
    Set.range abstract → BehavioralCompactification profile :=
  fun represented =>
    behavioralProjection profile
      (Classical.choose represented.property)

theorem behavioralAbstractionFactor_commutes
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract)
    (state : State) :
    behavioralAbstractionFactor profile abstract sound
        ⟨abstract state, ⟨state, rfl⟩⟩ =
      behavioralProjection profile state := by
  apply Quotient.sound
  apply sound
  exact Classical.choose_spec
    (show ∃ source, abstract source = abstract state from ⟨state, rfl⟩)

theorem behavioral_compactification_universal
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract) :
    ∃ factor : Set.range abstract → BehavioralCompactification profile,
      ∀ state,
        factor ⟨abstract state, ⟨state, rfl⟩⟩ =
          behavioralProjection profile state :=
  ⟨behavioralAbstractionFactor profile abstract sound,
    behavioralAbstractionFactor_commutes profile abstract sound⟩

theorem behavioralAbstractionFactor_unique
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract)
    (candidate :
      Set.range abstract → BehavioralCompactification profile)
    (commutes :
      ∀ state,
        candidate ⟨abstract state, ⟨state, rfl⟩⟩ =
          behavioralProjection profile state) :
    candidate =
      behavioralAbstractionFactor profile abstract sound := by
  funext represented
  rcases represented with ⟨value, ⟨state, exactValue⟩⟩
  subst value
  rw [commutes]
  exact
    (behavioralAbstractionFactor_commutes
      profile abstract sound state).symm

/--
Auxiliary topological compactifications are independent of the behavioral
quotient and expose only separately certified properties.
-/
structure AuxiliaryCompactification
    (State : Type u) (Compact : Type v) where
  compactify : State → Compact

structure CompactificationContinuityCertificate
    {State : Type u} {Compact : Type v}
    (compactification : AuxiliaryCompactification State Compact) : Prop where
  continuityStatement : Prop
  proof : continuityStatement

structure CompactificationInjectivityCertificate
    {State : Type u} {Compact : Type v}
    (compactification : AuxiliaryCompactification State Compact) : Prop where
  injective : Function.Injective compactification.compactify

structure CompactificationExtensionCertificate
    {State : Type u} {Compact : Type v}
    (compactification : AuxiliaryCompactification State Compact)
    (transition : State → State) where
  extendedTransition : Compact → Compact
  commutes :
    ∀ state,
      extendedTransition (compactification.compactify state) =
        compactification.compactify (transition state)

end Mathematics.MobiusOntology
