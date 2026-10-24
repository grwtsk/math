# toNerve₂.mk_naturality_σ1i

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7daa28e2-8c1c-984e-7105-f8050bf81bff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:663889b1-dd76-5b0c-5383-bb453615c306",
  "kind": "lemma",
  "lexical_name": "toNerve₂.mk_naturality_σ1i",
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
  "slug": "tonerve-mk-naturality-1i--50d26dadf644fa2b932c54cc",
  "source": {
    "blob": "e824dadfad76cb70459b8b482c37ad831d1edadc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50d26dadf644fa2b932c54cc607b8b55825437267ceec8640f685015d93ff999",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:663889b1-dd76-5b0c-5383-bb453615c306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toNerve₂.mk_naturality_σ1i (i : Fin 2) : toNerve₂.mk.naturalityProperty F (σ₂ i) := by
  apply (cancel_mono (nerve₂.seagull _)).1
  simp only [nerve₂.seagull, prod.comp_lift, assoc]
  congr 1 <;> rw [← map_comp, ← op_comp]
  · unfold δ2₂
    rw [← toNerve₂.mk_naturality_δ1i F hyp, ← assoc, ← map_comp, ← op_comp]
    change toNerve₂.mk.naturalityProperty F (δ₂ 2 ≫ σ₂ i)
    fin_cases i
    · dsimp only [Fin.zero_eta]
      rw [δ₂_two_comp_σ₂_zero]
      exact (toNerve₂.mk.naturalityProperty F).comp_mem _ _
        (toNerve₂.mk_naturality_σ00 F) (toNerve₂.mk_naturality_δ0i F _)
    · dsimp only [Fin.mk_one]
      rw [δ₂_two_comp_σ₂_one]
      exact (toNerve₂.mk.naturalityProperty F).id_mem _
  · unfold δ0₂
    rw [← toNerve₂.mk_naturality_δ1i F hyp, ← assoc, ← map_comp, ← op_comp]
    change toNerve₂.mk.naturalityProperty F (δ₂ 0 ≫ σ₂ i)
    fin_cases i <;> dsimp only [Fin.zero_eta, Fin.isValue, Fin.mk_one]
    · rw [δ₂_zero_comp_σ₂_zero]
      exact (toNerve₂.mk.naturalityProperty F).id_mem _
    · rw [δ₂_zero_comp_σ₂_one]
      exact (toNerve₂.mk.naturalityProperty F).comp_mem _ _
        (toNerve₂.mk_naturality_σ00 F) (toNerve₂.mk_naturality_δ0i F _)

/-- A proof that the components defined by `toNerve₂.mk.app` are natural. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variant6870149eee4085afc5ea02773f377b3c767f99f60e2cc1306f9b8d7b41ed52c4.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e824dadfad76cb70459b8b482c37ad831d1edadc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
