# exists_max_card_pool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3b82657452fc7b23c0abb71204c7226f303d6f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14f31437-ec54-bfb9-04ed-6904f7a5feda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91d81a4d-d232-c5af-0995-11a7683d000d",
  "kind": "lemma",
  "lexical_name": "exists_max_card_pool",
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
  "slug": "exists-max-card-pool--56afd7d7b18c3f4895c80de5",
  "source": {
    "blob": "a3b82657452fc7b23c0abb71204c7226f303d6f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56afd7d7b18c3f4895c80de5ed87c90b7b44cc979c4a190a28ff1576c86e594c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d81a4d-d232-c5af-0995-11a7683d000d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_max_card_pool : ∃ b N, ∀ t ≥ N, #(pool a t) = b :=
  converges_of_monotone_of_bounded (monotone_card_pool ha)
    (fun t ↦ by simpa using card_le_card (pool_subset_Icc ha))

end Pool

section Sums

variable {b N : ℕ} (hbN : ∀ t ≥ N, #(pool a t) = b) (ht : t ≥ N)

include ha hbN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b82657452fc7b23c0abb71204c7226f303d6f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
