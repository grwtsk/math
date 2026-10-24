# nonDegenerateEquiv'_symm_apply_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 696,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:602cde01-d11d-debc-77ec-16b3dc8aa710",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:458b6632-f052-9cf4-05ad-d764730f1912",
  "kind": "lemma",
  "lexical_name": "nonDegenerateEquiv'_symm_apply_mem",
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
  "slug": "nondegenerateequiv-symm-apply-mem--2fc84cf3c8d8dc927e0a4850",
  "source": {
    "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 696,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fc84cf3c8d8dc927e0a48505b3e97405582408b6e234b40bbced56b84ee602f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458b6632-f052-9cf4-05ad-d764730f1912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonDegenerateEquiv'_symm_apply_mem {n d : ℕ}
    (S : { S : Finset (Fin (n + 1)) | S.card = d + 1 }) (i : Fin (d + 1)) :
      (nonDegenerateEquiv'.{u}.symm S).val i ∈ S.val := by
  obtain ⟨f, rfl⟩ := nonDegenerateEquiv'.{u}.surjective S
  dsimp [nonDegenerateEquiv']
  simp only [Equiv.ofBijective_symm_apply_apply, Finset.mem_image, Finset.mem_univ, true_and]
  exact ⟨i, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98af9d488a3f7dec6733d001c95a893c9cf82f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
