# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Regulator.Variantb87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79f92e6ded6b351608553ab3cd412bceef929b03` · SHA-256 `b87ed2d2d9b2a179dd3c1653387715f8d78de653d4a11b1898ba626d6edbf5bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.BSD.Heights

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Regulator

What is formalized:
Regulator and canonical-height compatibility certificate interfaces.

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
Regulator certificate for the BSD leading-coefficient identity.

This is still an interface certificate. It does not construct the canonical
height pairing or prove the determinant formula.
-/
structure RegulatorData
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    (H : NeronTateHeightPairingCertificate M) where
  RegulatorValue : Type u
  determinant :
    RegulatorValue
  determinantFromMatrix :
    H.pairingData.HeightValue → RegulatorValue
  determinantConstructionAppliesToMatrix : Prop
  determinantConstructionAppliesToMatrixCertified :
    determinantConstructionAppliesToMatrix
  boundary : List String

structure RegulatorCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    {L : HasseWeilLFunction C.K.field C.E}
    (S : SecondPartStatement L M.MW) where
  heightPairing : NeronTateHeightPairingCertificate M
  heightPairingCertified :
    heightPairing.certifiedForBSD
  regulatorStatusSupplied :
    S.identityData.regulator =
      BSDComponentStatus.suppliedByCertificate
  regulatorData :
    RegulatorData heightPairing
  determinantMatchesHeightPairing : Prop
  determinantMatchesHeightPairingCertified :
    determinantMatchesHeightPairing
  regulatorMatchesSecondPart : Prop
  regulatorMatchesSecondPartCertified :
    regulatorMatchesSecondPart
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- Regulator quality required by theorem-facing BSD input. -/
def RegulatorCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (R : RegulatorCertificate M S) :
    Prop :=
  R.heightPairing.certifiedForBSD ∧
  S.identityData.regulator =
    BSDComponentStatus.suppliedByCertificate ∧
  R.regulatorData.determinantConstructionAppliesToMatrix ∧
  R.determinantMatchesHeightPairing ∧
  R.regulatorMatchesSecondPart ∧
  R.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem RegulatorCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    (R : RegulatorCertificate M S)
    (hsource :
      R.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    R.certifiedForBSD := by
  constructor
  · exact R.heightPairingCertified
  · constructor
    · exact R.regulatorStatusSupplied
    · constructor
      · exact R.regulatorData.determinantConstructionAppliesToMatrixCertified
      · constructor
        · exact R.determinantMatchesHeightPairingCertified
        · constructor
          · exact R.regulatorMatchesSecondPartCertified
          · exact hsource

/--
Compatibility between the BSD regulator height pairing and the canonical height
used in Mordell-Weil height descent.

This is still an interface certificate. It does not construct the canonical
height, prove the Neron-Tate pairing formula, or compute the regulator
determinant.
-/
structure RegulatorCanonicalHeightCompatibilityCertificate
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C)
    {L : HasseWeilLFunction C.K.field C.E}
    (S : SecondPartStatement L M.MW)
    (P : MordellWeilFiniteGenerationProvenanceCertificate M)
    (R : RegulatorCertificate M S) where
  finiteGenerationProvenanceCertified :
    P.certifiedForBSD
  regulatorCertified :
    R.certifiedForBSD
  canonicalHeightCertified :
    P.heightDescentProvenance.canonicalHeight.certifiedForBSD
  regulatorHeightPairingCertified :
    R.heightPairing.certifiedForBSD
  canonicalHeightMatchesPairingQuadraticForm : Prop
  canonicalHeightMatchesPairingQuadraticFormCertified :
    canonicalHeightMatchesPairingQuadraticForm
  pairingBilinearizationMatchesCanonicalHeight : Prop
  pairingBilinearizationMatchesCanonicalHeightCertified :
    pairingBilinearizationMatchesCanonicalHeight
  regulatorMatrixUsesGeneratedFreePart : Prop
  regulatorMatrixUsesGeneratedFreePartCertified :
    regulatorMatrixUsesGeneratedFreePart
  determinantUsesCanonicalHeightPairing : Prop
  determinantUsesCanonicalHeightPairingCertified :
    determinantUsesCanonicalHeightPairing
  compatibleWithFiniteGenerationRank : Prop
  compatibleWithFiniteGenerationRankCertified :
    compatibleWithFiniteGenerationRank
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
Regulator/canonical-height compatibility required by theorem-facing BSD input.
-/
def RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    {R : RegulatorCertificate M S}
    (Q : RegulatorCanonicalHeightCompatibilityCertificate M S P R) :
    Prop :=
  P.certifiedForBSD ∧
  R.certifiedForBSD ∧
  P.heightDescentProvenance.canonicalHeight.certifiedForBSD ∧
  R.heightPairing.certifiedForBSD ∧
  Q.canonicalHeightMatchesPairingQuadraticForm ∧
  Q.pairingBilinearizationMatchesCanonicalHeight ∧
  Q.regulatorMatrixUsesGeneratedFreePart ∧
  Q.determinantUsesCanonicalHeightPairing ∧
  Q.compatibleWithFiniteGenerationRank ∧
  Q.sourceStatus = AnalyticCertificateSourceStatus.suppliedByCertificate

theorem RegulatorCanonicalHeightCompatibilityCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {M : SmoothMordellWeilInterface C}
    {L : HasseWeilLFunction C.K.field C.E}
    {S : SecondPartStatement L M.MW}
    {P : MordellWeilFiniteGenerationProvenanceCertificate M}
    {R : RegulatorCertificate M S}
    (Q : RegulatorCanonicalHeightCompatibilityCertificate M S P R)
    (hsource :
      Q.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    Q.certifiedForBSD := by
  exact
    ⟨Q.finiteGenerationProvenanceCertified,
      Q.regulatorCertified,
      Q.canonicalHeightCertified,
      Q.regulatorHeightPairingCertified,
      Q.canonicalHeightMatchesPairingQuadraticFormCertified,
      Q.pairingBilinearizationMatchesCanonicalHeightCertified,
      Q.regulatorMatrixUsesGeneratedFreePartCertified,
      Q.determinantUsesCanonicalHeightPairingCertified,
      Q.compatibleWithFiniteGenerationRankCertified,
      hsource⟩
end BSD
end EllipticCurve
end Surface.Arithmetic

```
