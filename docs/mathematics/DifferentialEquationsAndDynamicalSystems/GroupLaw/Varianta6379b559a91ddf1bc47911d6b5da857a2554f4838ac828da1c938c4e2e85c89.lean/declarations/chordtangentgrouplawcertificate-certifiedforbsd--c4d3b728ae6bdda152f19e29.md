# ChordTangentGroupLawCertificate.certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a98e3ff983e2115535ec2d6095200fe2ab49099fdd4ac4cd4b6ffc4600e7c01",
  "kind": "def",
  "lexical_name": "ChordTangentGroupLawCertificate.certifiedForBSD",
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
  "slug": "chordtangentgrouplawcertificate-certifiedforbsd--c4d3b728ae6bdda152f19e29",
  "source": {
    "blob": "761140093e66cc83e6c64f13f018ada1046a2f3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1150,
    "line": 1102,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4d3b728ae6bdda152f19e296d7d6e962b5e3c6bfd1b86bb6a024d2e685f836f",
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

Occurrence: `declaration:5a98e3ff983e2115535ec2d6095200fe2ab49099fdd4ac4cd4b6ffc4600e7c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1102–1150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ChordTangentGroupLawCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    (T : ChordTangentGroupLawCertificate C G) :
    Prop :=
  T.projectiveClosure.certifiedForBSD ∧
  T.intersectionTheory.certifiedForBSD ∧
  T.associativityGeometry.certifiedForBSD ∧
  T.identityInverseCommutativityGeometry.certifiedForBSD ∧
  T.picardProvenance.certifiedForBSD ∧
  (∀ Q R : Point C.E,
    T.intersectionTheory.intersectionData.lineContains
      (T.operationData.chordLine Q R)
      (T.projectiveClosure.projectiveModel.fromCurvePoint Q)) ∧
  (∀ Q R : Point C.E,
    T.intersectionTheory.intersectionData.lineContains
      (T.operationData.chordLine Q R)
      (T.projectiveClosure.projectiveModel.fromCurvePoint R)) ∧
  (∀ Q : Point C.E,
    T.intersectionTheory.intersectionData.tangentAt Q
      (T.operationData.tangentLine Q)) ∧
  (∀ L : T.intersectionTheory.intersectionData.Line,
    T.intersectionTheory.intersectionData.intersectionLine
      (T.operationData.thirdIntersection L) = L) ∧
  (∀ L : T.intersectionTheory.intersectionData.Line,
    T.projectiveClosure.projectiveModel.projectiveEquation
      (T.intersectionTheory.intersectionData.toProjectivePoint
        (T.operationData.thirdIntersection L))) ∧
  (∀ Q : Point C.E,
    OnCurve C.E (T.operationData.reflection Q)) ∧
  (∀ Q : Point C.E,
    T.operationData.reflection Q = G.negPoint Q) ∧
  (∀ X : T.intersectionTheory.intersectionData.IntersectionPoint,
    OnCurve C.E (T.operationData.reflectedThirdIntersection X)) ∧
  (∀ Q R : Point C.E,
    G.addPoint Q R =
      T.operationData.reflectedThirdIntersection
        (T.operationData.thirdIntersection
          (T.operationData.chordLine Q R))) ∧
  (∀ Q : Point C.E,
    G.addPoint Q Q =
      T.operationData.reflectedThirdIntersection
        (T.operationData.thirdIntersection
          (T.operationData.tangentLine Q))) ∧
  T.addMatchesChordTangent ∧
  T.negMatchesGeometricReflection ∧
  T.zeroMatchesPointAtInfinity ∧
  T.closureOnSmoothCurve

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean#L1102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `761140093e66cc83e6c64f13f018ada1046a2f3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
