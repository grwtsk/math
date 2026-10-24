# card_pool_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd171ddd-1f59-412b-b6c6-c8842a12aee5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d45b04e-69cf-a80b-9426-58d9dceb7377",
  "kind": "lemma",
  "lexical_name": "card_pool_succ",
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
  "slug": "card-pool-succ--68b29da0b8af67587596bc7d",
  "source": {
    "blob": "dff4316401e74ec63ac264015bb26a0ea6ab3211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 101,
    "path": "GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68b29da0b8af67587596bc7d488ab1e864b03d0f8bcdcaff9efb7fdcbdb705a2",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d45b04e-69cf-a80b-9426-58d9dceb7377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_pool_succ : #(pool a (t + 1)) = #(pool a t) + if 0 ∈ pool a t then 0 else 1 := by
  have nms : a t ∉ (pool a t).erase 0 := by
    rw [mem_erase, not_and_or]; exact .inr (notMem_pool_self ha)
  rw [pool, card_map, card_insert_of_notMem nms, card_erase_eq_ite]
  split_ifs with h
  · have := card_pos.mpr ⟨0, h⟩; omega
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2015Q6/Variantad03deeb0947c3ae12bfc0f8c91598862ef97305c78494f1fc9d08068f1bd393.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff4316401e74ec63ac264015bb26a0ea6ab3211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
