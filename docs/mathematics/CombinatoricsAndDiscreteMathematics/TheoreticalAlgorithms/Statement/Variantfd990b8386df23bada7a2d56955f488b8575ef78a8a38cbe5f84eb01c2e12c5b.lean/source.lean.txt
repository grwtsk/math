-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Assumptions.Variant3ed684d8bc5af1a3baa473f278a85748051b5f1fbc01a11c40146bc08e2d6a13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ed684d8bc5af1a3baa473f278a85748051b5f1fbc01a11c40146bc08e2d6a13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Assumptions.Variant3ed684d8bc5af1a3baa473f278a85748051b5f1fbc01a11c40146bc08e2d6a13","mathematical_subject":"Computation.DataStructures","original_sha256":"3ed684d8bc5af1a3baa473f278a85748051b5f1fbc01a11c40146bc08e2d6a13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Statement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.LFunction
import Surface.Arithmetic.EllipticCurve.MordellWeil


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Assumptions.Variant3ed684d8bc5af1a3baa473f278a85748051b5f1fbc01a11c40146bc08e2d6a13

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Statement

What is formalized:
Core BSD statement, component-status, and first/second part interfaces.

What is certificate-gated:
All declarations in this component remain theorem-facing interfaces or conditional
unpackers. They do not construct BSD, analytic continuation, Mordell-Weil finite
generation, Sha finiteness, automorphy, or local arithmetic geometry.

What is not claimed:
No theorem in this file proves the Birch and Swinnerton-Dyer conjecture.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

variable {K : FieldLike.{u}}
variable {E : ShortWeierstrass K}

/-- Assumptions needed to state BSD for a curve and its L-function. -/
structure Assumptions
    (L : HasseWeilLFunction K E)
    (MW : MordellWeilGroup.{u}) where
  analyticContinuation? : Option (AnalyticContinuationCertificate L)
  functionalEquation? : Option (FunctionalEquationCertificate L)
  mordellWeil? : Option (FinitelyGeneratedAbelianCertificate MW)
  orderCertificate? : Option (OrderOfVanishingCertificate L)
  boundary : List String

/-- First part: algebraic rank equals analytic order of vanishing. -/
structure FirstPartStatement
    (L : HasseWeilLFunction K E)
    (MW : MordellWeilGroup.{u}) where
  rankCertificate : FinitelyGeneratedAbelianCertificate MW
  orderCertificate : OrderOfVanishingCertificate L
  boundary : List String

/-- The proposition expressed by BSD first part. -/
def firstPart
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    (S : FirstPartStatement L MW) :
    Prop :=
  rank S.rankCertificate =
    orderOfVanishing S.orderCertificate

/-- Typed status for a BSD leading-coefficient component. -/
inductive BSDComponentStatus where
  | suppliedByCertificate
  | finiteExamplePlaceholder
  | unspecified
deriving Repr, DecidableEq

/-- Typed component data for the BSD leading-coefficient identity. -/
structure LeadingCoefficientIdentityData where
  leadingCoefficient : BSDComponentStatus
  period : BSDComponentStatus
  regulator : BSDComponentStatus
  sha : BSDComponentStatus
  tamagawaFactors : BSDComponentStatus
  torsionOrder : BSDComponentStatus
  boundary : List String
deriving Repr

/-- All typed components of the BSD leading-coefficient identity are supplied. -/
def LeadingCoefficientIdentityData.componentsSupplied
    (D : LeadingCoefficientIdentityData) :
    Prop :=
  D.leadingCoefficient = BSDComponentStatus.suppliedByCertificate ∧
  D.period = BSDComponentStatus.suppliedByCertificate ∧
  D.regulator = BSDComponentStatus.suppliedByCertificate ∧
  D.sha = BSDComponentStatus.suppliedByCertificate ∧
  D.tamagawaFactors = BSDComponentStatus.suppliedByCertificate ∧
  D.torsionOrder = BSDComponentStatus.suppliedByCertificate

/-- Second part: leading-coefficient identity metadata. -/
structure SecondPartStatement
    (L : HasseWeilLFunction K E)
    (MW : MordellWeilGroup.{u}) where
  identityData : LeadingCoefficientIdentityData
  leadingCoefficientIdentityWellFormed : Prop
  boundary : List String

/-- The proposition expressed by the current second-part identity interface. -/
def secondPart
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    (S : SecondPartStatement L MW) :
    Prop :=
  S.leadingCoefficientIdentityWellFormed

/-- The second BSD part uses only supplied component data. -/
def SecondPartStatement.componentsSupplied
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    (S : SecondPartStatement L MW) :
    Prop :=
  S.identityData.componentsSupplied
end BSD
end EllipticCurve
end Surface.Arithmetic

