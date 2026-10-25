# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.ExpressibleNumbersExamples.Variantaf7a1afb095368dc181fa243b36d4e3ea956d14d493d373912b3ef6effc6fc45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d105652d140eea32c0f60195097efa83ac4ff3c` · SHA-256 `af7a1afb095368dc181fa243b36d4e3ea956d14d493d373912b3ef6effc6fc45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.ExpressibleNumbers

/-!
# Expressible-number hierarchy examples

These examples exercise the finite hierarchy and face-projection certificates.
They deliberately do not exhibit a specific uncomputable real number: strictness
remains a theorem-resolution obligation until the required authority is routed.
-/

namespace AnalyticNumber
namespace ExpressibleNumbersExamples

open ExpressibleNumbers

def toyRealDescriptor : RealNumberDescriptor where
  label := "toy-real-descriptor"
  descriptorHash := 17

theorem toy_computable_implies_arithmetical :
    ComputablyExpressible toyRealDescriptor →
    ArithmeticallyExpressible toyRealDescriptor :=
  computably_expressible_implies_arithmetically_expressible toyRealDescriptor

theorem toy_arithmetical_implies_analytical :
    ArithmeticallyExpressible toyRealDescriptor →
    AnalyticallyExpressible toyRealDescriptor :=
  arithmetically_expressible_implies_analytically_expressible toyRealDescriptor

def toyDefinabilityHierarchyCertificate : DefinabilityHierarchyCertificate where
  computableToArithmetical := True
  computableToArithmeticalProof := trivial
  arithmeticalToAnalytical := True
  arithmeticalToAnalyticalProof := trivial
  strictComputableArithmetical := True
  strictComputableArithmeticalProof := trivial
  strictArithmeticalAnalytical := True
  strictArithmeticalAnalyticalProof := trivial

theorem toy_definability_hierarchy_sound :
    toyDefinabilityHierarchyCertificate.computableToArithmetical ∧
    toyDefinabilityHierarchyCertificate.arithmeticalToAnalytical ∧
    toyDefinabilityHierarchyCertificate.strictComputableArithmetical ∧
    toyDefinabilityHierarchyCertificate.strictArithmeticalAnalytical :=
  definability_hierarchy_sound toyDefinabilityHierarchyCertificate

def toyExpressibleFaceProjection : ExpressibleNumberFaceProjection where
  descriptor := toyRealDescriptor
  definabilityClassHash := 31
  exactStatementHash := 32
  theoremResolutionHash := 33
  authorityBoundaryHash := 34
  descriptorPreserved := True
  descriptorProof := trivial
  definabilityClassPreserved := True
  definabilityClassProof := trivial
  theoremResolutionPreserved := True
  theoremResolutionProof := trivial
  authorityBoundaryPreserved := True
  authorityBoundaryProof := trivial
  faceDoesNotConstructNumber := True
  noConstructionProof := trivial

theorem toy_expressible_face_projection_sound :
    toyExpressibleFaceProjection.descriptorPreserved ∧
    toyExpressibleFaceProjection.definabilityClassPreserved ∧
    toyExpressibleFaceProjection.theoremResolutionPreserved ∧
    toyExpressibleFaceProjection.authorityBoundaryPreserved ∧
    toyExpressibleFaceProjection.faceDoesNotConstructNumber :=
  expressible_number_face_projection_sound toyExpressibleFaceProjection

theorem toy_strictness_claim_without_authority_rejected :
    ¬ StrictnessClaimWithoutAuthority toyRealDescriptor :=
  strictness_claim_requires_authority toyRealDescriptor

theorem toy_computable_arithmetical_strictness_is_unavailable_authority :
    StrictnessUnavailableAuthority "exists_arithmetical_not_computable" :=
  exists_arithmetical_not_computable

theorem toy_arithmetical_analytical_strictness_is_unavailable_authority :
    StrictnessUnavailableAuthority "exists_analytical_not_arithmetical" :=
  exists_analytical_not_arithmetical

end ExpressibleNumbersExamples
end AnalyticNumber
```
