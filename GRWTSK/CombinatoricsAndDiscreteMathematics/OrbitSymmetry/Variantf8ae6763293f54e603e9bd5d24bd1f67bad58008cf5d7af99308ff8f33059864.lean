import Mathematics.ConnesBitfield.Equivariance

/-!
# Orbit, stabilizer, and Reynolds symmetry

The orbit quotient remembers invariant observables.  The crossed product
remembers those observables together with the transformations joining their
representatives.  This module makes that separation explicit and records the
finite Reynolds and orbit--stabilizer laws as certificate fields.
-/

namespace Mathematics.ConnesBitfield

open scoped BigOperators

abbrev BitfieldObservable
    (system : RandomBitfieldSystem) :=
  Bitfield system.bits → ℂ

def bitfieldObservableAction
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (automorphism : model.Automorphism)
    (observable : BitfieldObservable system) :
    BitfieldObservable system :=
  fun state =>
    observable
      (model.action.act automorphism⁻¹ state)

def AutomorphismInvariantObservable
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system) : Prop :=
  ∀ automorphism state,
    observable
        (model.action.act automorphism state) =
      observable state

noncomputable def reynoldsProjection
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system) :
    BitfieldObservable system := by
  classical
  exact fun state =>
    (Fintype.card model.Automorphism : ℂ)⁻¹ *
      ∑ automorphism,
        bitfieldObservableAction
          model automorphism observable state

noncomputable def nontrivialSymmetryComponent
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system) :
    BitfieldObservable system :=
  fun state =>
    observable state -
      reynoldsProjection model observable state

def OrbitEquivalent
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (left right : Bitfield system.bits) : Prop :=
  ∃ automorphism,
    model.action.act automorphism left = right

def bitfieldOrbitSetoid
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) :
    Setoid (Bitfield system.bits) where
  r := OrbitEquivalent model
  iseqv := by
    constructor
    · intro state
      exact ⟨1, model.action.identity state⟩
    · intro left right related
      rcases related with
        ⟨automorphism, transformed⟩
      refine ⟨automorphism⁻¹, ?_⟩
      rw [← transformed,
        ← model.action.compatible,
        inv_mul,
        model.action.identity]
    · intro first second third
        firstRelated secondRelated
      rcases firstRelated with
        ⟨firstAutomorphism, firstTransformed⟩
      rcases secondRelated with
        ⟨secondAutomorphism, secondTransformed⟩
      refine
        ⟨secondAutomorphism * firstAutomorphism, ?_⟩
      rw [model.action.compatible,
        firstTransformed,
        secondTransformed]

abbrev BitfieldOrbitQuotient
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) :=
  Quotient (bitfieldOrbitSetoid model)

noncomputable def automorphismOrbit
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (state : Bitfield system.bits) :
    Finset (Bitfield system.bits) := by
  classical
  exact
    Finset.univ.image
      (fun automorphism =>
        model.action.act automorphism state)

noncomputable def automorphismStabilizer
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (state : Bitfield system.bits) :
    Finset model.Automorphism := by
  classical
  exact
    Finset.univ.filter
      (fun automorphism =>
        model.action.act automorphism state = state)

/--
A semantic or arithmetic label that is constant on automorphism orbits.
This is the exact form of the claim that an automorphism changes a
presentation without changing its registered role.
-/
structure AutomorphismInvariantLabel
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (Label : Type*) where
  label : Bitfield system.bits → Label
  invariant :
    ∀ automorphism state,
      label (model.action.act automorphism state) =
        label state

noncomputable def descendInvariantObservable
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system)
    (invariant :
      AutomorphismInvariantObservable
        model observable) :
    BitfieldOrbitQuotient model → ℂ :=
  Quotient.lift observable (by
    intro left right related
    rcases related with
      ⟨automorphism, transformed⟩
    rw [← transformed]
    exact (invariant automorphism left).symm)

@[simp] theorem descendInvariantObservable_mk
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (observable : BitfieldObservable system)
    (invariant :
      AutomorphismInvariantObservable
        model observable)
    (state : Bitfield system.bits) :
    descendInvariantObservable
        model observable invariant
        (Quotient.mk
          (bitfieldOrbitSetoid model) state) =
      observable state :=
  rfl

/--
The finite symmetry laws needed to identify quotient observables, separate
nontrivial modes, and retain local stabilizer data.
-/
structure OrbitReynoldsCertificate
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) where
  reynoldsInvariant :
    ∀ observable,
      AutomorphismInvariantObservable
        model
        (reynoldsProjection model observable)
  reynoldsIdempotent :
    ∀ observable,
      reynoldsProjection model
          (reynoldsProjection model observable) =
        reynoldsProjection model observable
  reynoldsFixesInvariant :
    ∀ observable,
      AutomorphismInvariantObservable
          model observable →
      reynoldsProjection model observable =
        observable
  complementProjectsToZero :
    ∀ observable,
      reynoldsProjection model
          (nontrivialSymmetryComponent
            model observable) =
        0
  expectationInvariant :
    ∀ automorphism observable,
      system.law.expectation
          (bitfieldObservableAction
            model automorphism observable) =
        system.law.expectation observable
  reynoldsPreservesExpectation :
    ∀ observable,
      system.law.expectation
          (reynoldsProjection model observable) =
        system.law.expectation observable
  quotientObservableCharacterization :
    ∀ observable,
      AutomorphismInvariantObservable
          model observable ↔
        ∀ left right,
          OrbitEquivalent model left right →
          observable left = observable right
  orbitStabilizer :
    ∀ state,
      (automorphismOrbit model state).card *
          (automorphismStabilizer model state).card =
        Fintype.card model.Automorphism

end Mathematics.ConnesBitfield
