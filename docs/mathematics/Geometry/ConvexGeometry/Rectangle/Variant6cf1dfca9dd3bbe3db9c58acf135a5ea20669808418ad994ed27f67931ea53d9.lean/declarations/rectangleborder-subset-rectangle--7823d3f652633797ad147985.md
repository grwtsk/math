# rectangleBorder_subset_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbb1fb510c9ec1697495975294055607e5d38d9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:269e9e01-fe1b-a9f5-d9c2-4d87644e829c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99302e94-7540-ba7b-719f-fa229a989caf",
  "kind": "lemma",
  "lexical_name": "rectangleBorder_subset_rectangle",
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
  "slug": "rectangleborder-subset-rectangle--7823d3f652633797ad147985",
  "source": {
    "blob": "fbb1fb510c9ec1697495975294055607e5d38d9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7823d3f652633797ad147985ca6c6adc321a1e9e1f92012b76a025c246aae44f",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99302e94-7540-ba7b-719f-fa229a989caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rectangleBorder_subset_rectangle (z w : ℂ) : RectangleBorder z w ⊆ Rectangle z w := by
  intro x hx
  obtain ⟨⟨h | h⟩ | h⟩ | h := hx
  · exact ⟨h.1, h.2 ▸ left_mem_uIcc⟩
  · exact ⟨h.1 ▸ left_mem_uIcc, h.2⟩
  · exact ⟨h.1, h.2 ▸ right_mem_uIcc⟩
  · exact ⟨h.1 ▸ right_mem_uIcc, h.2⟩

/-- Note: try using `by simp` for `h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbb1fb510c9ec1697495975294055607e5d38d9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
