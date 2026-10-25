# proposalObservationJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2759e5fc67f794e31f787828bd861d36ca45b256fac2f35ce91715c9c2a42026",
  "kind": "def",
  "lexical_name": "proposalObservationJson",
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
  "slug": "proposalobservationjson--53555f2eafe0b0c3ea236932",
  "source": {
    "blob": "1a36fc46521ea4828cca3d6fb26bcef5c13d64d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53555f2eafe0b0c3ea23693209ab67f47375fc1481514d666ca32da8a3d06ad1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2759e5fc67f794e31f787828bd861d36ca45b256fac2f35ce91715c9c2a42026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proposalObservationJson
    (name : String)
    (result : VerificationResult FixtureHost FixtureEdgeId) : Json :=
  let (status, reason) := match verificationStatus result with
    | .accepted => ("ACCEPTED_NEWER", Json.null)
    | .replay => ("IDENTICAL_REPLAY", Json.null)
    | .rejected rejection =>
        ("REJECTED", toJson (proposalRejectionCode rejection))
  Json.mkObj [
    ("name", toJson name),
    ("status", toJson status),
    ("reason", reason)
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfaceXYZConformanceMain/Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a36fc46521ea4828cca3d6fb26bcef5c13d64d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
