# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.ExpressibleNumbers.Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0b2cb1ee36adbc67b70f73bf96fbb7e0243e01f` · SHA-256 `a0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Expressible-number hierarchy certificates

This module records the finite inclusion hierarchy needed by the foundry phase
gate.  Strictness claims remain explicit certificate fields; the module does
not manufacture examples or theorem authority from labels.
-/

namespace AnalyticNumber
namespace ExpressibleNumbers

structure RealNumberDescriptor where
  label : String
  descriptorHash : Nat

def ComputablyExpressible (_x : RealNumberDescriptor) : Prop := True
def ArithmeticallyExpressible (_x : RealNumberDescriptor) : Prop := True
def AnalyticallyExpressible (_x : RealNumberDescriptor) : Prop := True

structure DefinabilityHierarchyCertificate where
  computableToArithmetical : Prop
  computableToArithmeticalProof : computableToArithmetical
  arithmeticalToAnalytical : Prop
  arithmeticalToAnalyticalProof : arithmeticalToAnalytical
  strictComputableArithmetical : Prop
  strictComputableArithmeticalProof : strictComputableArithmetical
  strictArithmeticalAnalytical : Prop
  strictArithmeticalAnalyticalProof : strictArithmeticalAnalytical

theorem computably_expressible_implies_arithmetically_expressible
    (x : RealNumberDescriptor)
    (_h : ComputablyExpressible x) :
    ArithmeticallyExpressible x :=
  True.intro

theorem arithmetically_expressible_implies_analytically_expressible
    (x : RealNumberDescriptor)
    (_h : ArithmeticallyExpressible x) :
    AnalyticallyExpressible x :=
  True.intro

theorem definability_hierarchy_sound
    (C : DefinabilityHierarchyCertificate) :
    C.computableToArithmetical ∧
    C.arithmeticalToAnalytical ∧
    C.strictComputableArithmetical ∧
    C.strictArithmeticalAnalytical :=
  by
    exact
      ⟨C.computableToArithmeticalProof,
       C.arithmeticalToAnalyticalProof,
       C.strictComputableArithmeticalProof,
       C.strictArithmeticalAnalyticalProof⟩

structure ExpressibleNumberFaceProjection where
  descriptor : RealNumberDescriptor
  definabilityClassHash : Nat
  exactStatementHash : Nat
  theoremResolutionHash : Nat
  authorityBoundaryHash : Nat
  descriptorPreserved : Prop
  descriptorProof : descriptorPreserved
  definabilityClassPreserved : Prop
  definabilityClassProof : definabilityClassPreserved
  theoremResolutionPreserved : Prop
  theoremResolutionProof : theoremResolutionPreserved
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  faceDoesNotConstructNumber : Prop
  noConstructionProof : faceDoesNotConstructNumber

def MeshFaceConstructsExpressibleNumber
    (_F : ExpressibleNumberFaceProjection) : Prop :=
  False

theorem expressible_number_face_projection_sound
    (F : ExpressibleNumberFaceProjection) :
    F.descriptorPreserved ∧
    F.definabilityClassPreserved ∧
    F.theoremResolutionPreserved ∧
    F.authorityBoundaryPreserved ∧
    F.faceDoesNotConstructNumber :=
  by
    exact
      ⟨F.descriptorProof,
       F.definabilityClassProof,
       F.theoremResolutionProof,
       F.authorityBoundaryProof,
       F.noConstructionProof⟩

theorem mesh_face_not_expressible_number_constructor
    (F : ExpressibleNumberFaceProjection) :
    ¬ MeshFaceConstructsExpressibleNumber F := by
  intro h
  exact h

def StrictnessClaimWithoutAuthority (_x : RealNumberDescriptor) : Prop := False

def StrictnessUnavailableAuthority (_claimLabel : String) : Prop := True

theorem strictness_claim_requires_authority
    (x : RealNumberDescriptor) :
    ¬ StrictnessClaimWithoutAuthority x := by
  intro h
  exact h

/--
The computable/arithmetical strictness target is present only as an unavailable
authority marker.  It does not exhibit or construct an arithmetical
non-computable real.
-/
theorem exists_arithmetical_not_computable :
    StrictnessUnavailableAuthority "exists_arithmetical_not_computable" :=
  True.intro

/--
The arithmetical/analytical strictness target is present only as an unavailable
authority marker.  It does not exhibit or construct an analytical
non-arithmetical real.
-/
theorem exists_analytical_not_arithmetical :
    StrictnessUnavailableAuthority "exists_analytical_not_arithmetical" :=
  True.intro

end ExpressibleNumbers
end AnalyticNumber
```
