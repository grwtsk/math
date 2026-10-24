# exposedPoints_subset_extremePoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdeb577ac628930e650069fff67d7e1228380155",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cea58955-d491-cf92-6944-6302eeb63a97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:386fe2ed-72c1-7fa1-a1fb-427aa859602b",
  "kind": "theorem",
  "lexical_name": "exposedPoints_subset_extremePoints",
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
  "slug": "exposedpoints-subset-extremepoints--dc269699e85a119701261ce7",
  "source": {
    "blob": "cdeb577ac628930e650069fff67d7e1228380155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc269699e85a119701261ce72dc534ce648b015be07d6900527bac5a1241d4a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:386fe2ed-72c1-7fa1-a1fb-427aa859602b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exposedPoints_subset_extremePoints : A.exposedPoints 𝕜 ⊆ A.extremePoints 𝕜 := fun _ hx =>
  mem_extremePoints_iff_extreme_singleton.2 (mem_exposedPoints_iff_exposed_singleton.1 hx).isExtreme
#align exposed_points_subset_extreme_points exposedPoints_subset_extremePoints

end LinearOrderedRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdeb577ac628930e650069fff67d7e1228380155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
