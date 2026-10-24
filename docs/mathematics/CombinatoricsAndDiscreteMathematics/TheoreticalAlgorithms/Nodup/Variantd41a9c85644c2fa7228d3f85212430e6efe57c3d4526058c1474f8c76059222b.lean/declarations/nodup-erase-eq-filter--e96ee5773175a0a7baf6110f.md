# Nodup.erase_eq_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4cff93e484b6b0e7305eafd778cfcced2582a41a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d41a9c85644c2fa7228d3f85212430e6efe57c3d4526058c1474f8c76059222b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac94925c-9582-0006-8929-f5a21cc4eca6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96f0a60d-50ec-3561-4954-cf4a17d8b3db",
  "kind": "theorem",
  "lexical_name": "Nodup.erase_eq_filter",
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
  "slug": "nodup-erase-eq-filter--e96ee5773175a0a7baf6110f",
  "source": {
    "blob": "4cff93e484b6b0e7305eafd778cfcced2582a41a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variantd41a9c85644c2fa7228d3f85212430e6efe57c3d4526058c1474f8c76059222b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96ee5773175a0a7baf6110f3cda2aa1a71e0de3f6298cd45a1a6a36da31e4e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variantd41a9c85644c2fa7228d3f85212430e6efe57c3d4526058c1474f8c76059222b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96f0a60d-50ec-3561-4954-cf4a17d8b3db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.erase_eq_filter [DecidableEq α] {l} (d : Nodup l) (a : α) :
    l.erase a = l.filter (· ≠ a) := by
  induction' d with b l m _ IH; · rfl
  by_cases h : b = a
  · subst h
    rw [erase_cons_head, filter_cons_of_neg _ (by simp)]
    symm
    rw [filter_eq_self]
    simpa [@eq_comm α] using m
  · rw [erase_cons_tail _ h, filter_cons_of_pos, IH]
    simp [h]
#align list.nodup.erase_eq_filter List.Nodup.erase_eq_filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variantd41a9c85644c2fa7228d3f85212430e6efe57c3d4526058c1474f8c76059222b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variantd41a9c85644c2fa7228d3f85212430e6efe57c3d4526058c1474f8c76059222b.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cff93e484b6b0e7305eafd778cfcced2582a41a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
