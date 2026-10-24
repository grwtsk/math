# eq_option_embedding_update_none_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb22c7bb0aa43b606848cc0702206a326da41479",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 777,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f27d8472-a6f4-c1de-b154-d5b908250930",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ef74734-dcf8-fd02-2064-65ff9e0995cc",
  "kind": "theorem",
  "lexical_name": "eq_option_embedding_update_none_iff",
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
  "slug": "eq-option-embedding-update-none-iff--cc36783e9fa003543d4d721c",
  "source": {
    "blob": "cb22c7bb0aa43b606848cc0702206a326da41479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 777,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc36783e9fa003543d4d721c9864d8dd356459193d181ac94c8f70cb51a39af2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef74734-dcf8-fd02-2064-65ff9e0995cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_option_embedding_update_none_iff [Zero M] {n : Option α →₀ M} {m : α →₀ M} {i : M} :
    (n = (embDomain Embedding.some m).update none i) ↔
      n none = i ∧ n.some = m := by
  classical
  rw [Finsupp.ext_iff, Option.forall, Finsupp.ext_iff]
  apply and_congr
  · simp
  · apply forall_congr'
    intro
    simp only [coe_update, ne_eq, reduceCtorEq, not_false_eq_true, update_of_ne, some_apply]
    rw [← Embedding.some_apply, embDomain_apply, Embedding.some_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d453eb4cb7ccde0c481ea1993edd80e0fc0d50b5ae5fb5003a8e162aa976ed3.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb22c7bb0aa43b606848cc0702206a326da41479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
