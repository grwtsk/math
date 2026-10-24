# disjoint_interior_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd85f7db-6641-2013-e603-63c427f6bf32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f29a18d-ed43-71ed-222b-72d9886f12fb",
  "kind": "lemma",
  "lexical_name": "disjoint_interior_boundary",
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
  "slug": "disjoint-interior-boundary--cb9818d35928fb58cdfe17af",
  "source": {
    "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 129,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb9818d35928fb58cdfe17afd5aa2d0deac5636071341de1660d6cbc6cbfc34c",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f29a18d-ed43-71ed-222b-72d9886f12fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjoint_interior_boundary : Disjoint (I.interior M) (I.boundary M) := by
  by_contra h
  -- Choose some x in the intersection of interior and boundary.
  obtain ⟨x, h1, h2⟩ := not_disjoint_iff.mp h
  rw [← mem_empty_iff_false (extChartAt I x x),
    ← disjoint_iff_inter_eq_empty.mp disjoint_interior_frontier, mem_inter_iff]
  exact ⟨h1, h2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44227a5404371d3fbe4b9cdd473abc69f26c393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
