# ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acf62e89afcc4a7b573d6820bff4cdcfcef4983e5f39a11c4bfe0faa8f2eb2e4",
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
  "slug": "chordtangentidentityinversecommutativitycertificate-certifiedforbsd--9ba5964ed174ed9dd2a7e41d",
  "source": {
    "blob": "54b92f8d00b3e14abcb71f17b945439a113d6c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 655,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ba5964ed174ed9dd2a7e41d81c49de2652bb98a7bd6942851df398e190db838",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acf62e89afcc4a7b573d6820bff4cdcfcef4983e5f39a11c4bfe0faa8f2eb2e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–702.

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

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54b92f8d00b3e14abcb71f17b945439a113d6c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
