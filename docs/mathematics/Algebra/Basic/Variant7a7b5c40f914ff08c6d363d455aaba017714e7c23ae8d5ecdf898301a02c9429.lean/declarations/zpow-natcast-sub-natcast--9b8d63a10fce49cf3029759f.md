# zpow_natCast_sub_natCast₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3148d9bd8bac8cbc1c64edf40b1c0bbb61f2916",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 403,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d560a522-a5c7-fe1f-330d-432b53280d44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5feff9a-5c31-54ac-371a-4b5c31896e6b",
  "kind": "lemma",
  "lexical_name": "zpow_natCast_sub_natCast₀",
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
  "slug": "zpow-natcast-sub-natcast--9b8d63a10fce49cf3029759f",
  "source": {
    "blob": "b3148d9bd8bac8cbc1c64edf40b1c0bbb61f2916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 403,
    "path": "GRWTSK/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b8d63a10fce49cf3029759f0a358850b3b08aa02280322677c90606a1798957",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5feff9a-5c31-54ac-371a-4b5c31896e6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zpow_natCast_sub_natCast₀ (ha : a ≠ 0) (m n : ℕ) : a ^ (m - n : ℤ) = a ^ m / a ^ n := by
  simpa using zpow_sub₀ ha m n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7a7b5c40f914ff08c6d363d455aaba017714e7c23ae8d5ecdf898301a02c9429.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3148d9bd8bac8cbc1c64edf40b1c0bbb61f2916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
