# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mobius.Variant77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `713236f41cba08ed1080e38831f186fc506ffb35` · SHA-256 `77a41fc0bd7d7d70a109ce59a74f4de0573bbe4ab8c993df50bfc8b85871197b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.EulerProduct

/-!
# Finite Möbius windows

Finite Möbius data belongs to `Number`.

This layer may record square-free weights, valuation support, and finite
reduction soundness. It still does not prove analytic identities involving
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
```
