# inter_nonempty_of_nonempty_of_sup_direction_eq_top

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
      "line": 991,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbf1c76a-182d-beb5-d2c0-6bda780db8ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a340d91d-0bf9-714a-14ec-b775daa90de9",
  "kind": "theorem",
  "lexical_name": "inter_nonempty_of_nonempty_of_sup_direction_eq_top",
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
  "slug": "inter-nonempty-of-nonempty-of-sup-direction-eq-top--e5557e0482ea30d171c8cd0a",
  "source": {
    "blob": "bfa37fec91ccf232a951e4526b4d13d6283bc3fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 991,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5557e0482ea30d171c8cd0a1289cf68228e14784377f4ca5116f6dd0ae1cdbc",
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

Occurrence: `result:a340d91d-0bf9-714a-14ec-b775daa90de9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_nonempty_of_nonempty_of_sup_direction_eq_top {s1 s2 : AffineSubspace k P}
    (h1 : (s1 : Set P).Nonempty) (h2 : (s2 : Set P).Nonempty)
    (hd : s1.direction ⊔ s2.direction = ⊤) : ((s1 : Set P) ∩ s2).Nonempty := by
  by_contra h
  rw [Set.not_nonempty_iff_eq_empty] at h
  have hlt := sup_direction_lt_of_nonempty_of_inter_empty h1 h2 h
  rw [hd] at hlt
  exact not_top_lt hlt
#align affine_subspace.inter_nonempty_of_nonempty_of_sup_direction_eq_top AffineSubspace.inter_nonempty_of_nonempty_of_sup_direction_eq_top

/-- If the directions of two nonempty affine subspaces are complements of each other, they intersect
in exactly one point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant4ef81f101360724b8bf2a8b2dfea025fd87eaf9d34dd72fa72aeacddd3ad3101.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa37fec91ccf232a951e4526b4d13d6283bc3fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
