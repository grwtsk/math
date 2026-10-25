# BeaconBoundaryDecision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6160aa896082e8a99145b7a89aad33c7fafe3805e8360974724a29c80bc87c9c",
  "kind": "inductive",
  "lexical_name": "BeaconBoundaryDecision",
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
  "slug": "beaconboundarydecision--728e4f22a9cb11b15f6846b0",
  "source": {
    "blob": "d25b3970f9d6cf6a544861a8b77c28333c14d0fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:728e4f22a9cb11b15f6846b0698a7e20d7b169e6b9c6395117120ddcc08cab75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6160aa896082e8a99145b7a89aad33c7fafe3805e8360974724a29c80bc87c9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive BeaconBoundaryDecision
    (boundary : Surgery.BoundaryObservation)
    (sourceBeacon : SourceLabel → SourceState)
    (targetBeacon : TargetLabel → TargetState)
    (surgery : SourceState → TargetState)
    where
  | continue
      (certificate :
        BeaconPreservationCertificate
          sourceBeacon targetBeacon surgery)
  | stop

/-- A fixed-beacon surgery is the identity-label special case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25b3970f9d6cf6a544861a8b77c28333c14d0fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
