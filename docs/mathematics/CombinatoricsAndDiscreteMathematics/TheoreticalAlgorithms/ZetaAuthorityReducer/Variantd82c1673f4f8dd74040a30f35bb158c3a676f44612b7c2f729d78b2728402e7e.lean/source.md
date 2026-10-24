# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZetaAuthorityReducer.Variantd82c1673f4f8dd74040a30f35bb158c3a676f44612b7c2f729d78b2728402e7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52fb2f6527bd291a02b67c533cd280b3748a7e25` · SHA-256 `d82c1673f4f8dd74040a30f35bb158c3a676f44612b7c2f729d78b2728402e7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.TDARecoverabilityZKP

/-!
# Zeta authority reducer

This module is a finite consumer of certified trace-comparison output.  It
emits reducer-facing payload data: determinant coefficients, square-free Mobius
weight, valuation support, prime-power flags, and torsion/ZKP routing flags.

It does not generate prismatic geometry, spectral determinant validity,
zeta-function authority, functional-equation authority, or elliptic torsion
authority.  Those remain certificate-gated in downstream boundary modules.
-/

namespace Boolean
namespace Cube
namespace ZetaAuthorityReducer

/-- Existing public ZKP statement type. -/
abbrev PublicStatement :=
  TorsionBlindDataHomology.RecoverabilityZKP.PublicStatement

/-- Existing private ZKP witness type. -/
abbrev PrivateWitness :=
  TorsionBlindDataHomology.RecoverabilityZKP.PrivateWitness

/-- Existing ZKP relation type. -/
abbrev ZKPRelation :=
  TorsionBlindDataHomology.RecoverabilityZKP.ZKPRelation

/-- Existing field-only arithmetic algorithm type. -/
abbrev FieldOnlyArithmeticAlgorithm :=
  TorsionBlindDataHomology.FieldOnlyArithmeticAlgorithm

/-- Existing arithmetic collision type. -/
abbrev ArithmeticCollision :=
  TorsionBlindDataHomology.ArithmeticCollision

/--
Finite data emitted by a certified analytic-prime trace comparison.

The fields are reducer payload, not analytic authority.  Boolean flags say
whether corresponding external certificates or witnesses are present.
-/
structure AnalyticPrimeBridgeData where
  relativeDeterminantCoeffs : List Int
  squareFreeMobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  hasPrismaticCertificate : Bool
  hasSpectralCertificate : Bool
  needsTorsionWitness : Bool
  acceptedZKPWitness : Bool
deriving Repr, DecidableEq

/--
Certified trace-comparison output consumed by the finite reducer.

The proof fields are gates.  The reducer may emit `data`, but it does not
derive the prismatic, spectral, or torsion claims from that finite data.
-/
structure CertifiedTraceComparisonOutput where
  data : AnalyticPrimeBridgeData
  prismaticCertificateSound : Prop
  spectralCertificateSound : Prop
  torsionWitnessSound : Prop

/-- The reducer emits exactly the finite bridge payload from certified input. -/
def emitAnalyticPrimeBridgeData
    (output : CertifiedTraceComparisonOutput) : AnalyticPrimeBridgeData :=
  output.data

@[simp] theorem emitAnalyticPrimeBridgeData_eq
    (output : CertifiedTraceComparisonOutput) :
    emitAnalyticPrimeBridgeData output = output.data := rfl

/-- Reducer data does not manufacture analytic/prismatic authority. -/
def AnalyticPrimeBridgeDataManufacturesAuthority
    (_data : AnalyticPrimeBridgeData) : Prop :=
  False

/-- Finite bridge payloads do not create analytic/prismatic authority. -/
theorem analyticPrimeBridgeData_does_not_manufacture_authority
    (data : AnalyticPrimeBridgeData) :
    ¬ AnalyticPrimeBridgeDataManufacturesAuthority data := by
  intro h
  exact h

/-- Emitted reducer payloads remain finite metadata. -/
theorem emittedAnalyticPrimeBridgeData_is_finite_metadata
    (output : CertifiedTraceComparisonOutput) :
    ¬ AnalyticPrimeBridgeDataManufacturesAuthority
      (emitAnalyticPrimeBridgeData output) := by
  intro h
  exact h

/--
Field-only recovery cannot cross an arithmetic collision.

This keeps the existing torsion-blindness invariant visible at the authority
reducer boundary.
-/
theorem fieldOnly_recovery_blocked_by_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision C A

/-- A verified ZKP relation realizes the public torsion claim. -/
theorem verifiedZKP_torsion_sound
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    W.model.rationalTorsion = S.claim.claimedTorsion :=
  TorsionBlindDataHomology.RecoverabilityZKP.relation_torsion h

end ZetaAuthorityReducer
end Cube
end Boolean
```
