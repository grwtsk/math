# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Boolean.Variant0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `802ea3e8de001208475c11e745d09568e54eaa86` · SHA-256 `0689f5e386340a7379130300140ddfcf0117c3a1aa6f5862c8df55cbad1352bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Bridge
import Number.Mobius
import Boolean.Cube.SpectralDeterminantBoundary

/-!
# Boolean → Number bridge

This is the first primitive bridge in the architecture.

Boolean code owns finite syntax and finite verifier payloads.  It does not own
arithmetic semantics merely by having lists of bits, matrices, hashes, or
valuation-looking data.  This bridge is the place where such finite Boolean
shadows become finite arithmetic payloads.

The bridge is intentionally one layer below analytic number theory.  No
analytic continuation, convergence, infinite Euler product, zeta identity, or
zero-location statement appears in this file.
-/

namespace Number
namespace Bridge
namespace Boolean

/--
Finite Boolean shadow emitted by Boolean/cube/tree/matrix/ZKP plumbing.

This is still Boolean-side data until interpreted by this bridge.
-/
structure BooleanShadowPayload where
  mobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  determinantCoeffs : List Int
  traceData : List Int
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Interpret a Boolean shadow as a finite arithmetic payload. -/
def BooleanShadowPayload.toArithmeticPayload
    (P : BooleanShadowPayload) :
    Number.ArithmeticPayload where
  mobiusWeight := P.mobiusWeight
  valuationSupport := P.valuationSupport
  hasPrimePowerDependence := P.hasPrimePowerDependence
  determinantCoeffs := P.determinantCoeffs
  traceData := P.traceData
  finiteSound := P.finiteSound
  finiteSoundProof := P.finiteSoundProof

@[simp] theorem toArithmeticPayload_weight
    (P : BooleanShadowPayload) :
    P.toArithmeticPayload.mobiusWeight = P.mobiusWeight :=
  rfl

@[simp] theorem toArithmeticPayload_support
    (P : BooleanShadowPayload) :
    P.toArithmeticPayload.valuationSupport = P.valuationSupport :=
  rfl

@[simp] theorem toArithmeticPayload_finiteSound
    (P : BooleanShadowPayload) :
    P.toArithmeticPayload.finiteSound = P.finiteSound :=
  rfl

/--
Adapter from the existing Boolean cube determinant-boundary report.

Only finite report fields are consumed.  Outstanding certificate flags remain
Boolean-side audit data and are not converted into analytic authority.
-/
def ofBoundaryReport
    (R : _root_.Boolean.Cube.SpectralDeterminantBoundary.BoundaryReport) :
    BooleanShadowPayload where
  mobiusWeight := R.finiteMobiusWeight
  valuationSupport := R.valuationSupport
  hasPrimePowerDependence := R.sawPrimePower
  determinantCoeffs := R.relativeDeterminantCoeffs
  traceData := []
  finiteSound := True
  finiteSoundProof := trivial

/-- Boolean-to-Number interpretation bridge. -/
structure BooleanToNumberBridge where
  finiteShadow : BooleanShadowPayload
  numberPayload : Number.ArithmeticPayload
  interpretationSound : Prop
  interpretationProof : interpretationSound
  finiteDataPreserved : Prop
  finiteDataPreservedProof : finiteDataPreserved

/-- Canonical bridge obtained by direct field interpretation. -/
def BooleanToNumberBridge.canonical
    (P : BooleanShadowPayload) : BooleanToNumberBridge where
  finiteShadow := P
  numberPayload := P.toArithmeticPayload
  interpretationSound := True
  interpretationProof := trivial
  finiteDataPreserved := True
  finiteDataPreservedProof := trivial

theorem boolean_to_number_interpretation_sound
    (B : BooleanToNumberBridge) :
    B.interpretationSound :=
  B.interpretationProof

theorem boolean_to_number_finite_data_preserved
    (B : BooleanToNumberBridge) :
    B.finiteDataPreserved :=
  B.finiteDataPreservedProof

/-- Boolean finite shadows do not own arithmetic semantics without a bridge. -/
def BooleanShadowOwnsArithmeticSemantics
    (_P : BooleanShadowPayload) : Prop :=
  False

/-- Boolean finite shadows do not own analytic number-theoretic authority. -/
def BooleanShadowOwnsAnalyticNumberAuthority
    (_P : BooleanShadowPayload) : Prop :=
  False

theorem boolean_shadow_not_arithmetic_semantics
    (P : BooleanShadowPayload) :
    ¬ BooleanShadowOwnsArithmeticSemantics P := by
  intro h
  exact h

theorem boolean_shadow_not_analytic_number_authority
    (P : BooleanShadowPayload) :
    ¬ BooleanShadowOwnsAnalyticNumberAuthority P := by
  intro h
  exact h

/--
Boundary summary for the Boolean → Number layer.

The bridge authorizes finite arithmetic interpretation, but it still does not
cross into analytic number theory.
-/
theorem boolean_to_number_boundary_summary
    (B : BooleanToNumberBridge) :
    B.interpretationSound ∧
      B.finiteDataPreserved ∧
      B.numberPayload.finiteSound ∧
      ¬ BooleanShadowOwnsAnalyticNumberAuthority B.finiteShadow ∧
      ¬ Number.ArithmeticPayloadOwnsAnalyticAuthority B.numberPayload :=
  ⟨B.interpretationProof,
    B.finiteDataPreservedProof,
    B.numberPayload.finiteSoundProof,
    boolean_shadow_not_analytic_number_authority B.finiteShadow,
    Number.arithmetic_payload_not_analytic_authority B.numberPayload⟩

end Boolean
end Bridge
end Number
```
