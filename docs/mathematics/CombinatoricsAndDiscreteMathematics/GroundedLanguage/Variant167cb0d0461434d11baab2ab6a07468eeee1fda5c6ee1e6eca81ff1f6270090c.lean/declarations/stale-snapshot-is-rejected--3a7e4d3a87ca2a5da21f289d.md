# stale_snapshot_is_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46de24914dd25f20832dd0f05bfedd260246ffcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdfae2c1-d6dd-2b7c-a43e-892218daccec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab27f955-5148-1dfc-9d73-a997a3740c62",
  "kind": "theorem",
  "lexical_name": "stale_snapshot_is_rejected",
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
  "slug": "stale-snapshot-is-rejected--3a7e4d3a87ca2a5da21f289d",
  "source": {
    "blob": "46de24914dd25f20832dd0f05bfedd260246ffcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 394,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7e4d3a87ca2a5da21f289d970ae4ae55ffe202739c5f0eff8781d3cb15ca75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab27f955-5148-1dfc-9d73-a997a3740c62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stale_snapshot_is_rejected :
    ¬ Nonempty (CheckedTerrainLocator locatorContext staleLocator) := by
  rintro ⟨checked⟩
  simpa [staleLocator, staleSnapshotId, locatorContext, manifest, snapshotId]
    using checked.snapshotMatches

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GroundedLanguage/Variant167cb0d0461434d11baab2ab6a07468eeee1fda5c6ee1e6eca81ff1f6270090c.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46de24914dd25f20832dd0f05bfedd260246ffcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
