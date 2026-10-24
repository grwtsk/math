# isPrefix.filter_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ce0d4beb79bdd5d2fe955568d0a94be2dc8af10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8537ea8f-85da-369e-89bc-dd7234cd1297",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1d7d5a1-84e0-782e-94ed-ec5d665e87c9",
  "kind": "theorem",
  "lexical_name": "isPrefix.filter_map",
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
  "slug": "isprefix-filter-map--ef04570402d5012a2a2355cf",
  "source": {
    "blob": "2ce0d4beb79bdd5d2fe955568d0a94be2dc8af10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 290,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef04570402d5012a2a2355cf851dd5e674d8bbef19c11c5aee0cf6034c2fe30c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d7d5a1-84e0-782e-94ed-ec5d665e87c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrefix.filter_map (h : l₁ <+: l₂) (f : α → Option β) :
    l₁.filterMap f <+: l₂.filterMap f := by
  induction' l₁ with hd₁ tl₁ hl generalizing l₂
  · simp only [nil_prefix, filterMap_nil]
  · cases' l₂ with hd₂ tl₂
    · simpa only using eq_nil_of_prefix_nil h
    · rw [cons_prefix_iff] at h
      rw [← @singleton_append _ hd₁ _, ← @singleton_append _ hd₂ _, filterMap_append,
        filterMap_append, h.left, prefix_append_right_inj]
      exact hl h.right
#align list.is_prefix.filter_map List.isPrefix.filter_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Varianta4d356455ade7b32cbb2b32cfef8e6af129f55cce6a8c6d6611ca0d3cc455b3c.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ce0d4beb79bdd5d2fe955568d0a94be2dc8af10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
