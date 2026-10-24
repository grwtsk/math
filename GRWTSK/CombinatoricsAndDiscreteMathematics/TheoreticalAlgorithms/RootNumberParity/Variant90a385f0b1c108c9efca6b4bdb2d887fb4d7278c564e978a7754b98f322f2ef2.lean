-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BSDRootNumberParityData.Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BSDRootNumberParityData.Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12","mathematical_subject":"Computation.DataStructures","original_sha256":"90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/RootNumberParity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Statement


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BSDRootNumberParityData.Variant90f2c191ef2378b5779ecdcf9484d1bfb8e91480a3f596dce323da6fc3345c12

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD RootNumberParity

What is formalized:
Root-number and central-order parity compatibility interfaces.

What is certificate-gated:
All declarations in this component remain theorem-facing interfaces or conditional
unpackers. They do not construct BSD, analytic continuation, Mordell-Weil finite
generation, Sha finiteness, automorphy, or local arithmetic geometry.

What is not claimed:
No theorem in this file proves the Birch and Swinnerton-Dyer conjecture.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/--
Compatibility between the completed functional-equation root number and the
parity of the central order of vanishing.

This is an interface certificate. It records that the root-number sign supplied
by the completed functional-equation package is compatible with the central
zero order used in the BSD first part. It does not prove analytic continuation,
the functional equation, the parity theorem, modularity, automorphy, local
Langlands compatibility, or BSD.
-/
structure BSDRootNumberParityData
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    (F : FirstPartStatement L M.MW) where
  rootNumberSign : Int
  centralOrderParity : Nat
  parity_eq_order_mod_two :
    centralOrderParity = F.orderCertificate.order % 2
  signIsPlusOrMinusOne : Prop
  signIsPlusOrMinusOneCertified :
    signIsPlusOrMinusOne
  boundary : List String

structure BSDRootNumberParityCompatibilityCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (F : FirstPartStatement L M.MW) where
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquationCertified :
    completedFunctionalEquation.certifiedForBSD
  orderCertificateCertified :
    F.orderCertificate.certifiedForBSD
  completedCentralPointMatchesOrderPoint : Prop
  completedCentralPointMatchesOrderPointCertified :
    completedCentralPointMatchesOrderPoint
  parityData :
    BSDRootNumberParityData F
  orderParityMatchesRootNumberSign : Prop
  orderParityMatchesRootNumberSignCertified :
    orderParityMatchesRootNumberSign
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for root-number/order-parity compatibility. -/
def BSDRootNumberParityCompatibilityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {F : FirstPartStatement L M.MW}
    (R : BSDRootNumberParityCompatibilityCertificate L M N P F) :
    Prop :=
  R.completedFunctionalEquation.certifiedForBSD ∧
  F.orderCertificate.certifiedForBSD ∧
  R.completedFunctionalEquation.centralPointIsSEqOne ∧
  R.completedFunctionalEquation.rootNumber.sign =
    R.completedFunctionalEquation.functionalEquation.sign ∧
  R.completedFunctionalEquation.rootNumber.unitNorm ∧
  R.completedCentralPointMatchesOrderPoint ∧
  R.parityData.signIsPlusOrMinusOne ∧
  R.parityData.centralOrderParity = F.orderCertificate.order % 2 ∧
  R.orderParityMatchesRootNumberSign ∧
  R.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDRootNumberParityCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {F : FirstPartStatement L M.MW}
    (R : BSDRootNumberParityCompatibilityCertificate L M N P F)
    (hsource :
      R.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  exact
    ⟨R.completedFunctionalEquationCertified,
      R.orderCertificateCertified,
      R.completedFunctionalEquation.centralPointIsSEqOneCertified,
      R.completedFunctionalEquation.rootNumber.sign_eq_functionalEquation,
      R.completedFunctionalEquation.rootNumber.unitNormCertified,
      R.completedCentralPointMatchesOrderPointCertified,
      R.parityData.signIsPlusOrMinusOneCertified,
      R.parityData.parity_eq_order_mod_two,
      R.orderParityMatchesRootNumberSignCertified,
      hsource⟩

end BSD
end EllipticCurve
end Surface.Arithmetic

