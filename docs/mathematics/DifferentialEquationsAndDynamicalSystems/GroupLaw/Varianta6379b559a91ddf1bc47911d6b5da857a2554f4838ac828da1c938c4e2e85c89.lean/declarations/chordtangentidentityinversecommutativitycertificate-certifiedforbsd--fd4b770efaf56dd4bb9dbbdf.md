# ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa2287ffc1e506c3754d012395fbfc86bff0a4b36253a142f9f2c9e42425a694",
  "kind": "def",
  "lexical_name": "ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "chordtangentidentityinversecommutativitycertificate-certifiedforbsd--fd4b770efaf56dd4bb9dbbdf",
  "source": {
    "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 647,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd4b770efaf56dd4bb9dbbdf3a79dbfcac680da4cfe1990b7c2c290045c9a99c",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa2287ffc1e506c3754d012395fbfc86bff0a4b36253a142f9f2c9e42425a694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I) :
    Prop :=
  P.certifiedForBSD ∧
  I.certifiedForBSD ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.identityLine Q)
      (P.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.identityLine Q)
      P.projectiveModel.pointAtInfinity) ∧
  (∀ Q : Point C.E,
    G.addPoint Point.infinity Q = Q ∧
    G.addPoint Q Point.infinity = Q) ∧
  A.leftIdentityMatchesSuppliedZeroAdd ∧
  A.rightIdentityMatchesSuppliedAddZero ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.inverseReflectionLine Q)
      (P.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.inverseReflectionLine Q)
      (P.projectiveModel.fromCurvePoint (G.negPoint Q))) ∧
  (∀ Q : Point C.E,
    G.addPoint (G.negPoint Q) Q = G.zero) ∧
  A.inverseMatchesSuppliedNegation ∧
  A.verticalLineInverseCasesCovered ∧
  (∀ Q R : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.chordLine Q R)
      (P.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q R : Point C.E,
    I.intersectionData.lineContains
      (A.identityInverseCommutativityData.chordLine Q R)
      (P.projectiveModel.fromCurvePoint R)) ∧
  (∀ Q R : Point C.E,
    A.identityInverseCommutativityData.chordLine Q R =
      A.identityInverseCommutativityData.chordLine R Q) ∧
  A.commutativityMatchesSuppliedAddComm ∧
  A.tangentAndInfinityExceptionalCasesCovered

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
