# sum_map_le_apply_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b6edf27-1eda-9e1b-d2ac-3a23dd380c29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e35f13a1-3f16-cc66-8995-838936dd83cf",
  "kind": "lemma",
  "lexical_name": "sum_map_le_apply_prod",
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
  "slug": "sum-map-le-apply-prod--bec3bac818e09a24fdabc9d3",
  "source": {
    "blob": "c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 189,
    "path": "GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bec3bac818e09a24fdabc9d309ff49ba23cde3c9ec321dbac8096ebd4d3c0132",
  "verification": {
    "reference": "docs/verification/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e35f13a1-3f16-cc66-8995-838936dd83cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_map_le_apply_prod (h_one : 0 ≤ f 1) (h_mul : ∀ (a b : α), f a + f b ≤ f (a * b)) :
    (m.map f).sum ≤ f m.prod :=
  m.apply_prod_le_sum_map (β := βᵒᵈ) f h_one h_mul

end ProdSum

end Multiset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
