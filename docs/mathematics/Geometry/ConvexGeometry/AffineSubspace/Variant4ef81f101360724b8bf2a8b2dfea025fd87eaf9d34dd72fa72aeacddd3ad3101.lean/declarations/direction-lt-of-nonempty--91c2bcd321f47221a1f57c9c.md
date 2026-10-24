# direction_lt_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 944,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06c75676-12a0-b868-7306-31f29c59f276",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4bb41c3-276b-b6ab-e85b-9f7609eacf15",
  "kind": "theorem",
  "lexical_name": "direction_lt_of_nonempty",
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
  "slug": "direction-lt-of-nonempty--91c2bcd321f47221a1f57c9c",
  "source": {
    "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 957,
    "line": 944,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c2bcd321f47221a1f57c9cb0c0d326537fc3ae13e881457001978913a07203",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4bb41c3-276b-b6ab-e85b-9f7609eacf15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 944–957.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direction_lt_of_nonempty {s1 s2 : AffineSubspace k P} (h : s1 < s2)
    (hn : (s1 : Set P).Nonempty) : s1.direction < s2.direction := by
  cases' hn with p hp
  rw [lt_iff_le_and_exists] at h
  rcases h with ⟨hle, p2, hp2, hp2s1⟩
  rw [SetLike.lt_iff_le_and_exists]
  use direction_le hle, p2 -ᵥ p, vsub_mem_direction hp2 (hle hp)
  intro hm
  rw [vsub_right_mem_direction_iff_mem hp p2] at hm
  exact hp2s1 hm
#align affine_subspace.direction_lt_of_nonempty AffineSubspace.direction_lt_of_nonempty

/-- The sup of the directions of two affine subspaces is less than or equal to the direction of
their sup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean#L944).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa37fec91ccf232a951e4526b4d13d6283bc3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
