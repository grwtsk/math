# ChordTangentIdentityInverseCommutativityData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a284eead939cb08f091a6972bba23ce2adb6395f328e82379c5b333c570b36d1",
  "kind": "structure",
  "lexical_name": "ChordTangentIdentityInverseCommutativityData",
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
  "slug": "chordtangentidentityinversecommutativitydata--83fbed21df8478ebcb7e7c12",
  "source": {
    "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 559,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83fbed21df8478ebcb7e7c1229a8c40b92ae6f3917bd8a1b69330f8a3e7f7262",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a284eead939cb08f091a6972bba23ce2adb6395f328e82379c5b333c570b36d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ChordTangentIdentityInverseCommutativityData
    (C : LawfulShortWeierstrass.{u})
    (G : GroupLawCertificate C.E)
    (P : ProjectiveWeierstrassClosureCertificate C)
    (I : ProjectiveLineCubicIntersectionCertificate C P) where
  identityLine :
    Point C.E → I.intersectionData.Line
  identityLine_contains_point :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (identityLine Q)
        (P.projectiveModel.fromCurvePoint Q)
  identityLine_contains_infinity :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (identityLine Q)
        P.projectiveModel.pointAtInfinity
  pointAtInfinityIdentity :
    ∀ Q : Point C.E,
      G.addPoint Point.infinity Q = Q ∧
      G.addPoint Q Point.infinity = Q
  inverseReflectionLine :
    Point C.E → I.intersectionData.Line
  inverseLine_contains_point :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (inverseReflectionLine Q)
        (P.projectiveModel.fromCurvePoint Q)
  inverseLine_contains_inverse :
    ∀ Q : Point C.E,
      I.intersectionData.lineContains
        (inverseReflectionLine Q)
        (P.projectiveModel.fromCurvePoint (G.negPoint Q))
  inverseReflection :
    ∀ Q : Point C.E,
      G.addPoint (G.negPoint Q) Q = G.zero
  chordLine :
    Point C.E → Point C.E → I.intersectionData.Line
  chordLine_contains_left :
    ∀ Q R : Point C.E,
      I.intersectionData.lineContains
        (chordLine Q R)
        (P.projectiveModel.fromCurvePoint Q)
  chordLine_contains_right :
    ∀ Q R : Point C.E,
      I.intersectionData.lineContains
        (chordLine Q R)
        (P.projectiveModel.fromCurvePoint R)
  chordSymmetry :
    ∀ Q R : Point C.E,
      chordLine Q R = chordLine R Q
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
