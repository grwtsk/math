-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NeronTateHeightPairingData.Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NeronTateHeightPairingData.Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a","mathematical_subject":"Computation.DataStructures","original_sha256":"27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Heights.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Statement


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NeronTateHeightPairingData.Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Heights

What is formalized:
Neron-Tate height-pairing certificate interfaces for BSD.

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
Typed Neron-Tate height-pairing data on the free part of a smooth
Mordell-Weil interface.

The pairing value type, pairing function, free basis, and matrix entries are
explicit data.  The analytic and algebraic properties of the pairing remain
certificate obligations.
-/
structure NeronTateHeightPairingData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  HeightValue : Type u
  pairing :
    MordellWeilGenerator → MordellWeilGenerator → HeightValue
  freeBasis :
    List MordellWeilGenerator
  freeBasis_eq_certificate :
    freeBasis = M.finiteGeneration.freeGenerators
  matrixEntry :
    Nat → Nat → HeightValue
  matrixEntriesMatchPairing : Prop
  matrixEntriesMatchPairingCertified :
    matrixEntriesMatchPairing
  boundary : List String

/--
Neron-Tate height-pairing certificate on the free part of the smooth
Mordell-Weil interface.

This remains certificate-gated: it does not construct the canonical height or
prove bilinearity. It now carries typed pairing and matrix data.
-/
structure NeronTateHeightPairingCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  pairingData :
    NeronTateHeightPairingData M
  symmetricOnFreePart : Prop
  symmetricOnFreePartCertified :
    symmetricOnFreePart
  bilinearOnFreePart : Prop
  bilinearOnFreePartCertified :
    bilinearOnFreePart
  positiveDefiniteModuloTorsion : Prop
  positiveDefiniteModuloTorsionCertified :
    positiveDefiniteModuloTorsion
  generatorMatrixMatchesFreeGenerators : Prop
  generatorMatrixMatchesFreeGeneratorsCertified :
    generatorMatrixMatchesFreeGenerators
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Height-pairing quality required by theorem-facing BSD input. -/
def NeronTateHeightPairingCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : NeronTateHeightPairingCertificate M) :
    Prop :=
  H.pairingData.matrixEntriesMatchPairing ∧
  H.symmetricOnFreePart ∧
  H.bilinearOnFreePart ∧
  H.positiveDefiniteModuloTorsion ∧
  H.pairingData.freeBasis = M.finiteGeneration.freeGenerators ∧
  H.generatorMatrixMatchesFreeGenerators ∧
  H.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem NeronTateHeightPairingCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : NeronTateHeightPairingCertificate M)
    (hsource :
      H.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    H.certifiedForBSD := by
  constructor
  · exact H.pairingData.matrixEntriesMatchPairingCertified
  · constructor
    · exact H.symmetricOnFreePartCertified
    · constructor
      · exact H.bilinearOnFreePartCertified
      · constructor
        · exact H.positiveDefiniteModuloTorsionCertified
        · constructor
          · exact H.pairingData.freeBasis_eq_certificate
          · constructor
            · exact H.generatorMatrixMatchesFreeGeneratorsCertified
            · exact hsource
end BSD
end EllipticCurve
end Surface.Arithmetic

