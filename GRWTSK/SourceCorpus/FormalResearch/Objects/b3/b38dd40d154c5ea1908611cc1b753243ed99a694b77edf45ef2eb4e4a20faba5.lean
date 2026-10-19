import Number.EulerProduct

/-!
# Finite Möbius windows

Finite Möbius data belongs to `Number`.

This layer may record square-free weights, valuation support, and finite
reduction soundness.  It still does not prove analytic identities involving
Dirichlet series or zeta functions.
-/

namespace Number

/-- Finite Möbius window over a finite prime window. -/
structure FiniteMobiusWindow where
  primeWindow : PrimeWindow
  squareFreeWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  finiteReductionSound : Prop
  finiteReductionProof : finiteReductionSound

theorem finite_mobius_window_sound
    (W : FiniteMobiusWindow) :
    W.finiteReductionSound :=
  W.finiteReductionProof

/-- Convert a finite Möbius window into the common arithmetic payload shape. -/
def FiniteMobiusWindow.toArithmeticPayload
    (W : FiniteMobiusWindow)
    (determinantCoeffs traceData : List Int) :
    ArithmeticPayload where
  mobiusWeight := W.squareFreeWeight
  valuationSupport := W.valuationSupport
  hasPrimePowerDependence := W.hasPrimePowerDependence
  determinantCoeffs := determinantCoeffs
  traceData := traceData
  finiteSound := W.finiteReductionSound
  finiteSoundProof := W.finiteReductionProof

@[simp] theorem finiteMobius_toPayload_weight
    (W : FiniteMobiusWindow)
    (det trace : List Int) :
    (W.toArithmeticPayload det trace).mobiusWeight =
      W.squareFreeWeight :=
  rfl

@[simp] theorem finiteMobius_toPayload_support
    (W : FiniteMobiusWindow)
    (det trace : List Int) :
    (W.toArithmeticPayload det trace).valuationSupport =
      W.valuationSupport :=
  rfl

/-- A finite Möbius window does not prove an analytic Möbius/zeta identity. -/
def FiniteMobiusWindowProvesAnalyticIdentity
    (_W : FiniteMobiusWindow) : Prop :=
  False

theorem finite_mobius_window_not_analytic_identity
    (W : FiniteMobiusWindow) :
    ¬ FiniteMobiusWindowProvesAnalyticIdentity W := by
  intro h
  exact h

end Number
