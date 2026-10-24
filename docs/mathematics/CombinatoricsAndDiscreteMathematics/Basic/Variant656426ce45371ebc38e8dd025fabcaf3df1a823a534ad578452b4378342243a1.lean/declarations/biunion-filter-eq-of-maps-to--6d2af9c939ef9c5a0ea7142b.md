# biUnion_filter_eq_of_maps_to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60a6736418b9c5e151c6b7f62c270050b4963a2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3678,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6397fde-2b02-55b6-9090-199171845728",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b0c4cd8-c5a8-8d1b-2ed6-da0fd77ab53a",
  "kind": "theorem",
  "lexical_name": "biUnion_filter_eq_of_maps_to",
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
  "slug": "biunion-filter-eq-of-maps-to--6d2af9c939ef9c5a0ea7142b",
  "source": {
    "blob": "60a6736418b9c5e151c6b7f62c270050b4963a2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3682,
    "line": 3678,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d2af9c939ef9c5a0ea7142b73f9e46ce0748d9b23c8b69da2628af7ad511b0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b0c4cd8-c5a8-8d1b-2ed6-da0fd77ab53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3678–3682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biUnion_filter_eq_of_maps_to [DecidableEq α] {s : Finset α} {t : Finset β} {f : α → β}
    (h : ∀ x ∈ s, f x ∈ t) : (t.biUnion fun a => s.filter fun c => f c = a) = s := by
  simpa only [disjiUnion_eq_biUnion] using disjiUnion_filter_eq_of_maps_to h
#align finset.bUnion_filter_eq_of_maps_to Finset.biUnion_filter_eq_of_maps_to

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.lean#L3678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60a6736418b9c5e151c6b7f62c270050b4963a2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
