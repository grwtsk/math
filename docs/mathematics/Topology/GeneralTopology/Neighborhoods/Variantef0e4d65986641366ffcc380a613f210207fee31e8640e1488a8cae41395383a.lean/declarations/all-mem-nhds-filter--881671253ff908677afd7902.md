# all_mem_nhds_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bfc6cc6c85396ab77a34b0725508d165b3903f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f2c6ac-8491-4f61-51b8-9879acd26def",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11b2c6e3-8e98-34db-145b-b71304dd9b91",
  "kind": "theorem",
  "lexical_name": "all_mem_nhds_filter",
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
  "slug": "all-mem-nhds-filter--881671253ff908677afd7902",
  "source": {
    "blob": "8bfc6cc6c85396ab77a34b0725508d165b3903f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:881671253ff908677afd79023b995d858ca7ee716c8e18be1e5772c39e147906",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b2c6e3-8e98-34db-145b-b71304dd9b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_mem_nhds_filter (x : X) (f : Set X → Set α) (hf : ∀ s t, s ⊆ t → f s ⊆ f t)
    (l : Filter α) : (∀ s ∈ 𝓝 x, f s ∈ l) ↔ ∀ s, IsOpen s → x ∈ s → f s ∈ l :=
  all_mem_nhds _ _ fun s t ssubt h => mem_of_superset h (hf s t ssubt)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantef0e4d65986641366ffcc380a613f210207fee31e8640e1488a8cae41395383a.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bfc6cc6c85396ab77a34b0725508d165b3903f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
