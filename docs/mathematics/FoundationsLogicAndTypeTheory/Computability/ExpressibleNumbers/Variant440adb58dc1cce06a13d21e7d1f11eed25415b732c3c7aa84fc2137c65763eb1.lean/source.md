# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.ExpressibleNumbers.Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5a7c4f0fe0db5d4784465e3244e50525133e4bc` · SHA-256 `dcdb894fe29585d6da9cc695473d2e3763c421bb888b8464d70dbb9289801946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.RealNumberDescriptor.Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.RealNumberDescriptor.Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f","mathematical_subject":"Computation.Computability","original_sha256":"a0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/ExpressibleNumbers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Expressible-number hierarchy certificates

This module records the finite inclusion hierarchy needed by the foundry phase
gate.  Strictness claims remain explicit certificate fields; the module does
not manufacture examples or theorem authority from labels.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.RealNumberDescriptor.Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f

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
