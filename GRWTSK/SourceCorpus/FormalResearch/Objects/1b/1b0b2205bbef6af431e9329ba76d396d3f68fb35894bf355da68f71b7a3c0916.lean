import Mathlib.LinearAlgebra.Matrix.Trace
import Mathematics.ConnesBitfield.CrossedProduct

/-!
# Matrix-fiber crossed product and canonical trace

The scalar bitfield action is lifted explicitly to
`C(B, Mᵣ(ℂ)) ⋊ G` by unitary conjugation on the matrix fiber.  The accepted
law certificate contains the unital star-algebra laws and proves that the
coefficient-at-identity functional is normalized, cyclic, star preserving,
and positive.
-/

namespace Mathematics.ConnesBitfield

open scoped BigOperators ComplexConjugate

universe u

abbrev MatrixFiberObservable
    (system : RandomBitfieldSystem)
    (rank : Nat) :=
  Bitfield system.bits →
    Matrix (Fin rank) (Fin rank) ℂ

abbrev MatrixFiberCrossedProductElement
    (system : RandomBitfieldSystem)
    (Automorphism : Type*)
    (rank : Nat) :=
  Automorphism →
    MatrixFiberObservable system rank

noncomputable def normalizedMatrixTrace
    {Index : Type*}
    [Fintype Index]
    [DecidableEq Index]
    (operator :
      Matrix Index Index ℂ) : ℂ :=
  (Fintype.card Index : ℂ)⁻¹ *
    Matrix.trace operator

structure MatrixFiberAction
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    (rank : Nat) where
  transport :
    model.Automorphism →
      Matrix (Fin rank) (Fin rank) ℂ
  transportIdentity :
    transport 1 = 1
  transportMultiplicative :
    ∀ left right,
      transport (left * right) =
        transport left * transport right
  transportUnitaryLeft :
    ∀ automorphism,
      (transport automorphism)ᴴ *
          transport automorphism =
        1
  transportUnitaryRight :
    ∀ automorphism,
      transport automorphism *
          (transport automorphism)ᴴ =
        1
  normalizedTraceConjugationInvariant :
    ∀ automorphism operator,
      normalizedMatrixTrace
          (transport automorphism *
            operator *
            (transport automorphism)ᴴ) =
        normalizedMatrixTrace operator

noncomputable def matrixFiberAct
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (fiber : MatrixFiberAction model rank)
    (automorphism : model.Automorphism)
    (observable : MatrixFiberObservable system rank) :
    MatrixFiberObservable system rank :=
  fun state =>
    fiber.transport automorphism *
      observable
        (model.action.act automorphism⁻¹ state) *
      (fiber.transport automorphism)ᴴ

noncomputable def matrixFiberCrossedProductMultiply
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (fiber : MatrixFiberAction model rank)
    (left right :
      MatrixFiberCrossedProductElement
        system model.Automorphism rank) :
    MatrixFiberCrossedProductElement
      system model.Automorphism rank := by
  classical
  exact fun automorphism state =>
    ∑ middle,
      left middle state *
        matrixFiberAct fiber middle
          (right (middle⁻¹ * automorphism))
          state

noncomputable def matrixFiberCrossedProductStar
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (fiber : MatrixFiberAction model rank)
    (element :
      MatrixFiberCrossedProductElement
        system model.Automorphism rank) :
    MatrixFiberCrossedProductElement
      system model.Automorphism rank :=
  fun automorphism =>
    matrixFiberAct fiber automorphism
      (fun state =>
        (element automorphism⁻¹ state)ᴴ)

noncomputable def matrixFiberCrossedProductUnit
    {system : RandomBitfieldSystem}
    (Automorphism : Type*)
    [Group Automorphism]
    (rank : Nat) :
    MatrixFiberCrossedProductElement
      system Automorphism rank := by
  classical
  exact fun automorphism _ =>
    if automorphism = 1 then 1 else 0

noncomputable def matrixFiberGroupElement
    {system : RandomBitfieldSystem}
    (Automorphism : Type*)
    [Group Automorphism]
    (rank : Nat)
    (selected : Automorphism) :
    MatrixFiberCrossedProductElement
      system Automorphism rank := by
  classical
  exact fun automorphism _ =>
    if automorphism = selected then 1 else 0

/--
The canonical crossed-product trace integrates the normalized matrix trace of
the identity coefficient against the invariant finite law.
-/
noncomputable def canonicalMatrixFiberCrossedProductTrace
    {system : RandomBitfieldSystem}
    {Automorphism : Type*}
    [Group Automorphism]
    {rank : Nat}
    (element :
      MatrixFiberCrossedProductElement
        system Automorphism rank) : ℂ :=
  system.law.expectation
    (fun state =>
      normalizedMatrixTrace (element 1 state))

structure MatrixFiberCrossedProductLawCertificate
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {rank : Nat}
    (fiber : MatrixFiberAction model rank) where
  fiberActionIdentity :
    ∀ observable,
      matrixFiberAct fiber 1 observable =
        observable
  fiberActionCompatible :
    ∀ left right observable,
      matrixFiberAct fiber (left * right)
          observable =
        matrixFiberAct fiber left
          (matrixFiberAct fiber right observable)
  fiberActionStarPreserving :
    ∀ automorphism observable,
      matrixFiberAct fiber automorphism
          (fun state => (observable state)ᴴ) =
        fun state =>
          (matrixFiberAct fiber automorphism
            observable state)ᴴ
  associative :
    ∀ left middle right :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductMultiply
            fiber left middle)
          right =
        matrixFiberCrossedProductMultiply fiber left
          (matrixFiberCrossedProductMultiply
            fiber middle right)
  leftUnit :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductUnit
            model.Automorphism rank)
          element =
        element
  rightUnit :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductMultiply fiber
          element
          (matrixFiberCrossedProductUnit
            model.Automorphism rank) =
        element
  starReverses :
    ∀ left right :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      matrixFiberCrossedProductStar fiber
          (matrixFiberCrossedProductMultiply
            fiber left right) =
        matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductStar fiber right)
          (matrixFiberCrossedProductStar fiber left)
  starInvolutive :
    Function.Involutive
      (matrixFiberCrossedProductStar fiber)
  canonicalTraceNormalized :
    canonicalMatrixFiberCrossedProductTrace
        (matrixFiberCrossedProductUnit
          model.Automorphism rank) =
      1
  canonicalTraceCyclic :
    ∀ left right :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply
            fiber left right) =
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply
            fiber right left)
  canonicalTraceInnerConjugationInvariant :
    ∀ automorphism
        (element :
          MatrixFiberCrossedProductElement
            system model.Automorphism rank),
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply fiber
            (matrixFiberCrossedProductMultiply fiber
              (matrixFiberGroupElement
                model.Automorphism rank automorphism)
              element)
            (matrixFiberGroupElement
              model.Automorphism rank
              automorphism⁻¹)) =
        canonicalMatrixFiberCrossedProductTrace
          element
  canonicalTraceStar :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductStar
            fiber element) =
        star
          (canonicalMatrixFiberCrossedProductTrace
            element)
  canonicalTracePositiveReal :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      0 ≤
        (canonicalMatrixFiberCrossedProductTrace
          (matrixFiberCrossedProductMultiply fiber
            (matrixFiberCrossedProductStar
              fiber element)
            element)).re
  canonicalTracePositiveImaginaryZero :
    ∀ element :
        MatrixFiberCrossedProductElement
          system model.Automorphism rank,
      (canonicalMatrixFiberCrossedProductTrace
        (matrixFiberCrossedProductMultiply fiber
          (matrixFiberCrossedProductStar
            fiber element)
          element)).im = 0

structure MatrixFiberCrossedProductModel
    {system : RandomBitfieldSystem}
    (base : FiniteCrossedProductModel system)
    (rank : Nat) where
  rankPositive : 0 < rank
  fiberAction :
    MatrixFiberAction base rank
  laws :
    MatrixFiberCrossedProductLawCertificate
      fiberAction

theorem canonicalMatrixFiberTrace_conjugationInvariant
    {system : RandomBitfieldSystem}
    {base : FiniteCrossedProductModel system}
    {rank : Nat}
    (model :
      MatrixFiberCrossedProductModel base rank)
    (automorphism : base.Automorphism)
    (element :
      MatrixFiberCrossedProductElement
        system base.Automorphism rank) :
    canonicalMatrixFiberCrossedProductTrace
        (matrixFiberCrossedProductMultiply
          model.fiberAction
          (matrixFiberCrossedProductMultiply
            model.fiberAction
            (matrixFiberGroupElement
              base.Automorphism rank automorphism)
            element)
          (matrixFiberGroupElement
            base.Automorphism rank
            automorphism⁻¹)) =
      canonicalMatrixFiberCrossedProductTrace
        element :=
  model.laws.canonicalTraceInnerConjugationInvariant
    automorphism element

/--
A proof-bearing representation of the matrix-fiber crossed product on the
supported finite Hilbert carrier.
-/
structure MatrixFiberCrossedProductRepresentation
    {system : RandomBitfieldSystem}
    {base : FiniteCrossedProductModel system}
    {rank : Nat}
    (model :
      MatrixFiberCrossedProductModel base rank) where
  represent :
    MatrixFiberCrossedProductElement
        system base.Automorphism rank →
      Matrix
        (BitfieldHilbertIndex system rank)
        (BitfieldHilbertIndex system rank)
        ℂ
  representsUnit :
    represent
        (matrixFiberCrossedProductUnit
          base.Automorphism rank) =
      1
  additive :
    ∀ left right,
      represent
          (fun automorphism state =>
            left automorphism state +
              right automorphism state) =
        represent left + represent right
  complexHomogeneous :
    ∀ scalar element,
      represent
          (fun automorphism state =>
            scalar • element automorphism state) =
        scalar • represent element
  multiplicative :
    ∀ left right,
      represent
          (matrixFiberCrossedProductMultiply
            model.fiberAction left right) =
        represent left * represent right
  starPreserving :
    ∀ element,
      represent
          (matrixFiberCrossedProductStar
            model.fiberAction element) =
        (represent element)ᴴ

end Mathematics.ConnesBitfield
