# filter_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79eb718980a22c47c2e0176617481b9f8039acc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:071b4a5b-57cc-f8f9-dff9-3bc5d23efa54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26f83702-e9ea-a24b-d9b7-ec54c4cabcb4",
  "kind": "theorem",
  "lexical_name": "filter_le",
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
  "slug": "filter-le--6b92ac4222c3f1e649a9c99f",
  "source": {
    "blob": "79eb718980a22c47c2e0176617481b9f8039acc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1486,
    "line": 1479,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b92ac4222c3f1e649a9c99f1da8a0ab8068575155dce23cdc017d3a970da2f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26f83702-e9ea-a24b-d9b7-ec54c4cabcb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1479–1486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_le [LE α] (le_refl : ∀ x : α, x ≤ x) {o : Option α} {p : α → Bool} : o.filter p ≤ o := by
  cases o with
  | none => simp
  | some _ =>
    simp only [filter_some]
    split <;> simp [le_refl]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantd74830daab8fc33c1a735a332119d931ad8a2da72f740cd0fdd41841e86869d3.lean#L1479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eb718980a22c47c2e0176617481b9f8039acc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
