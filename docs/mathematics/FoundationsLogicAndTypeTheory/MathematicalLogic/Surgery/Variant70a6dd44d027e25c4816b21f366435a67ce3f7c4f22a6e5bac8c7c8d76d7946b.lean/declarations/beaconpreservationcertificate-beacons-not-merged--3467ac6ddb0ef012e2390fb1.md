# BeaconPreservationCertificate.beacons_not_merged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d25b3970f9d6cf6a544861a8b77c28333c14d0fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de7b13aa-fa81-5b76-be81-dc441b26aa43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17c38bd1-191b-f88f-8066-3e7f36c58b29",
  "kind": "theorem",
  "lexical_name": "BeaconPreservationCertificate.beacons_not_merged",
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
  "slug": "beaconpreservationcertificate-beacons-not-merged--3467ac6ddb0ef012e2390fb1",
  "source": {
    "blob": "d25b3970f9d6cf6a544861a8b77c28333c14d0fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3467ac6ddb0ef012e2390fb1e6e7c891fccf10e6d72104f137bd2001690688e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c38bd1-191b-f88f-8066-3e7f36c58b29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BeaconPreservationCertificate.beacons_not_merged
    {sourceBeacon : SourceLabel → SourceState}
    {targetBeacon : TargetLabel → TargetState}
    {surgery : SourceState → TargetState}
    (certificate :
      BeaconPreservationCertificate
        sourceBeacon targetBeacon surgery)
    {left right : SourceLabel}
    (merged :
      surgery (sourceBeacon left) =
        surgery (sourceBeacon right)) :
    left = right := by
  rw [certificate.preserves, certificate.preserves] at merged
  exact
    certificate.labelContinuation.injective
      (certificate.targetBeacon_injective merged)

end Mathematics.Operational
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Surgery/Variant70a6dd44d027e25c4816b21f366435a67ce3f7c4f22a6e5bac8c7c8d76d7946b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d25b3970f9d6cf6a544861a8b77c28333c14d0fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
