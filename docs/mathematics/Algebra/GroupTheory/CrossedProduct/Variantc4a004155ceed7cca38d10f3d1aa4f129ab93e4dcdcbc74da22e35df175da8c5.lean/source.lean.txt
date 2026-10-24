import Mathematics.ConnesBitfield.System

/-!
# Finite bitfield crossed-product data

`C(B) ⋊ G` is represented by finitely supported coefficient functions on the
finite group.  Associativity and involution laws remain explicit certificate
fields for the selected action and convention.
-/

namespace Mathematics.ConnesBitfield

open scoped BigOperators

universe u

structure BitfieldAutomorphismAction
    (system : RandomBitfieldSystem)
    (Automorphism : Type*)
    [Fintype Automorphism]
    [Group Automorphism] where
  act :
    Automorphism →
      Bitfield system.bits →
      Bitfield system.bits
  identity :
    ∀ state,
      act 1 state = state
  compatible :
    ∀ left right state,
      act (left * right) state =
        act left (act right state)
  metricInvariant :
    ∀ automorphism left right,
      system.metric.distance
          (act automorphism left)
          (act automorphism right) =
        system.metric.distance left right
  lawInvariant :
    ∀ automorphism state,
      system.law.weight (act automorphism state) =
        system.law.weight state
  admissibilityInvariant :
    ∀ automorphism {state},
      system.admissible state →
      system.admissible
        (act automorphism state)
  phaseCompatible :
    ∀ automorphism state,
      act automorphism (system.phase state) =
        system.phase (act automorphism state)

abbrev CrossedProductElement
    (system : RandomBitfieldSystem)
    (Automorphism : Type*) :=
  Automorphism → Bitfield system.bits → ℂ

noncomputable def crossedProductMultiply
    {system : RandomBitfieldSystem}
    {Automorphism : Type*}
    [Fintype Automorphism]
    [Group Automorphism]
    (action :
      BitfieldAutomorphismAction system Automorphism)
    (left right :
      CrossedProductElement system Automorphism) :
    CrossedProductElement system Automorphism :=
  by
    classical
    exact fun automorphism state =>
      ∑ middle,
        left middle state *
          right (middle⁻¹ * automorphism)
            (action.act middle⁻¹ state)

noncomputable def crossedProductStar
    {system : RandomBitfieldSystem}
    {Automorphism : Type*}
    [Group Automorphism]
    (action :
      BitfieldAutomorphismAction system Automorphism)
    (element :
      CrossedProductElement system Automorphism) :
    CrossedProductElement system Automorphism :=
  fun automorphism state =>
    star
      (element automorphism⁻¹
        (action.act automorphism⁻¹ state))

/--
Canonical finite crossed-product trace: only the identity coefficient
survives, integrated against the invariant boundary law.
-/
noncomputable def canonicalCrossedProductTrace
    {system : RandomBitfieldSystem}
    {Automorphism : Type*}
    [Group Automorphism]
    (element :
      CrossedProductElement system Automorphism) : ℂ :=
  system.law.expectation
    (fun state => element 1 state)

structure CrossedProductLawCertificate
    (system : RandomBitfieldSystem)
    (Automorphism : Type*)
    [Fintype Automorphism]
    [Group Automorphism]
    (action :
      BitfieldAutomorphismAction system Automorphism) where
  associative :
    ∀ left middle right :
        CrossedProductElement system Automorphism,
      crossedProductMultiply action
          (crossedProductMultiply action left middle)
          right =
        crossedProductMultiply action left
          (crossedProductMultiply action middle right)
  starReverses :
    ∀ left right :
        CrossedProductElement system Automorphism,
      crossedProductStar action
          (crossedProductMultiply action left right) =
        crossedProductMultiply action
          (crossedProductStar action right)
          (crossedProductStar action left)
  starInvolutive :
    Function.Involutive (crossedProductStar action)
  canonicalTraceCyclic :
    ∀ left right :
        CrossedProductElement system Automorphism,
      canonicalCrossedProductTrace
          (crossedProductMultiply action left right) =
        canonicalCrossedProductTrace
          (crossedProductMultiply action right left)

/--
Existentially bundled finite automorphism sector used by the complete closure
package.  The carrier and its instances remain inspectable.
-/
structure FiniteCrossedProductModel
    (system : RandomBitfieldSystem) where
  Automorphism : Type u
  finiteAutomorphism : Fintype Automorphism
  groupAutomorphism : Group Automorphism
  action :
    @BitfieldAutomorphismAction
      system Automorphism
      finiteAutomorphism groupAutomorphism
  laws :
    @CrossedProductLawCertificate
      system Automorphism
      finiteAutomorphism groupAutomorphism
      action

attribute [instance]
  FiniteCrossedProductModel.finiteAutomorphism
  FiniteCrossedProductModel.groupAutomorphism

/--
Arithmetic encoding with the complete admitted automorphism action, extending
the phase-only interface carried by `ArithmeticBitfieldEncoding`.
-/
structure EquivariantArithmeticBitfieldEncoding
    (ArithmeticState Scale : Type*)
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system) where
  base :
    ArithmeticBitfieldEncoding
      ArithmeticState Scale system
  arithmeticAction :
    model.Automorphism →
      ArithmeticState →
      ArithmeticState
  identity :
    ∀ state,
      arithmeticAction 1 state = state
  compatible :
    ∀ left right state,
      arithmeticAction (left * right) state =
        arithmeticAction left
          (arithmeticAction right state)
  equivariant :
    ∀ automorphism scale state,
      base.encode scale
          (arithmeticAction automorphism state) =
        model.action.act automorphism
          (base.encode scale state)

abbrev SupportedBitfield
    (system : RandomBitfieldSystem) :=
  { state : Bitfield system.bits //
    system.law.weight state ≠ 0 }

def supportedBitfieldAct
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (automorphism : model.Automorphism)
    (state : SupportedBitfield system) :
    SupportedBitfield system :=
  ⟨model.action.act automorphism state.1, by
    rw [model.action.lawInvariant]
    exact state.2⟩

abbrev BitfieldHilbertIndex
    (system : RandomBitfieldSystem)
    (rank : Nat) :=
  SupportedBitfield system × Fin rank

abbrev BitfieldHilbertVector
    (system : RandomBitfieldSystem)
    (rank : Nat) :=
  BitfieldHilbertIndex system rank → ℂ

noncomputable def weightedHilbertInner
    (system : RandomBitfieldSystem)
    (rank : Nat)
    (left right :
      BitfieldHilbertVector system rank) : ℂ := by
  classical
  exact
    ∑ state,
      (system.law.weight state.1 : ℂ) *
        ∑ index : Fin rank,
          star (left (state, index)) *
            right (state, index)

/--
Finite `ℓ²(B,ν) ⊗ ℂʳ` representation certificate for the crossed product.
The multiplication and star laws are preserved by explicit equalities.
-/
structure CrossedProductRepresentation
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (rank : Nat) where
  represent :
    CrossedProductElement
      system model.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  groupTransport :
    model.Automorphism →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  groupTransportUnitary :
    ∀ automorphism,
      (groupTransport automorphism)ᴴ *
          groupTransport automorphism =
        1
  innerPositiveDefinite :
    ∀ vector : BitfieldHilbertVector system rank,
      weightedHilbertInner
          system rank vector vector = 0 →
        vector = 0
  additive :
    ∀ left right,
      represent (fun automorphism state =>
          left automorphism state +
            right automorphism state) =
        represent left + represent right
  complexHomogeneous :
    ∀ scalar element,
      represent (fun automorphism state =>
          scalar * element automorphism state) =
        scalar • represent element
  multiplicative :
    ∀ left right,
      represent
          (@crossedProductMultiply
            system model.Automorphism
            model.finiteAutomorphism
            model.groupAutomorphism
            model.action
            left right) =
        represent left * represent right
  starPreserving :
    ∀ element,
      represent
          (@crossedProductStar
            system model.Automorphism
            model.groupAutomorphism
            model.action
            element) =
        (represent element)ᴴ

end Mathematics.ConnesBitfield
