# eq_of_isType₂_δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 451,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a84b7d14-89be-797d-3276-527f877b2bd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5443c305-c596-de39-c1d6-bb055f5b4abb",
  "kind": "lemma",
  "lexical_name": "eq_of_isType₂_δ",
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
  "slug": "eq-of-istype--f3019a46290d7df3e5ca67e0",
  "source": {
    "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 451,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3019a46290d7df3e5ca67e089277f956793b9539a51b67ec7daeb9a71e40a91",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5443c305-c596-de39-c1d6-bb055f5b4abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_isType₂_δ {u : (Subcomplex.unionProd.{u} Λ[m + 1, k.castSucc] ∂Δ[n]).N}
    (hu : IsType₂ u) (i : Fin (d + 2))
    (hu' : S.mk u.simplex = S.mk (((Δ[m + 1] ⊗ Δ[n])).δ i (x.cast hd).simplex)) :
    i = l.castSucc ∨ i = l.succ := by
  obtain rfl : u.dim = d := congr_arg S.dim hu'
  rw [S.ext_iff] at hu'
  obtain hi | rfl | hi := lt_trichotomy i l.castSucc
  · obtain ⟨l, rfl⟩ := Fin.eq_succ_of_ne_zero (i := l) (by grind)
    refine (hu _ rfl l.succ ?_).elim
    simp [isIndex_succ, S.cast_simplex_rfl, hu', stdSimplex.δ_apply,
      Fin.succAbove_of_lt_succ i l.castSucc hi,
      Fin.succAbove_of_lt_succ i l.succ (by grind), hl.simplex_fst_succ,
      dsimp% hl.simplex_snd_succ, dsimp% hl.simplex_fst_castSucc]
  · exact Or.inl rfl
  · obtain rfl | hi := (Fin.castSucc_lt_iff_succ_le.1 hi).eq_or_lt
    · exact Or.inr rfl
    · obtain ⟨l, rfl⟩ := Fin.eq_castSucc_of_ne_last (x := l) (by grind)
      refine (hu _ rfl l.succ ?_).elim
      simp [isIndex_succ, hu', stdSimplex.δ_apply,
        Fin.succAbove_of_castSucc_lt i l.castSucc (by grind),
        Fin.succAbove_of_castSucc_lt i l.succ (by grind),
        hl.simplex_fst_castSucc, hl.simplex_snd_succ,
        hl.simplex_fst_succ]

end IsIndex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `befcd8a2916f87c43a0808772433669bb3e822aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
