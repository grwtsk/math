# karoubi_PInfty_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d2644d1ca7d9cff776cfecede2519579b6c8a29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/137e27c31da164f56fef557a425946ddf963ebed3d9e3b92bf800ecdab736997.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff936023-ed9a-f820-2913-7a664e48adc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5571190-b294-ecfe-e6a9-37e5147a0e53",
  "kind": "theorem",
  "lexical_name": "karoubi_PInfty_f",
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
  "slug": "karoubi-pinfty-f--17ab6d2e480f6260c8ab0f38",
  "source": {
    "blob": "6d2644d1ca7d9cff776cfecede2519579b6c8a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 158,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant137e27c31da164f56fef557a425946ddf963ebed3d9e3b92bf800ecdab736997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17ab6d2e480f6260c8ab0f385aebfb02725442612b1e0d57039b368d6fb53194",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant137e27c31da164f56fef557a425946ddf963ebed3d9e3b92bf800ecdab736997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5571190-b294-ecfe-e6a9-37e5147a0e53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem karoubi_PInfty_f {Y : Karoubi (SimplicialObject C)} (n : ℕ) :
    ((PInfty : K[(karoubiFunctorCategoryEmbedding _ _).obj Y] ⟶ _).f n).f =
      Y.p.app (op ⦋n⦌) ≫ (PInfty : K[Y.X] ⟶ _).f n := by
  -- We introduce P_infty endomorphisms P₁, P₂, P₃, P₄ on various objects Y₁, Y₂, Y₃, Y₄.
  let Y₁ := (karoubiFunctorCategoryEmbedding _ _).obj Y
  let Y₂ := Y.X
  let Y₃ := ((whiskering _ _).obj (toKaroubi C)).obj Y.X
  let Y₄ := (karoubiFunctorCategoryEmbedding _ _).obj ((toKaroubi _).obj Y.X)
  let P₁ : K[Y₁] ⟶ _ := PInfty
  let P₂ : K[Y₂] ⟶ _ := PInfty
  let P₃ : K[Y₃] ⟶ _ := PInfty
  let P₄ : K[Y₄] ⟶ _ := PInfty
  -- The statement of lemma relates P₁ and P₂.
  change (P₁.f n).f = Y.p.app (op ⦋n⦌) ≫ P₂.f n
  -- The proof proceeds by obtaining relations h₃₂, h₄₃, h₁₄.
  have h₃₂ : (P₃.f n).f = P₂.f n := Karoubi.hom_ext_iff.mp (map_PInfty_f (toKaroubi C) Y₂ n)
  have h₄₃ : P₄.f n = P₃.f n := by
    have h := Functor.congr_obj (toKaroubi_comp_karoubiFunctorCategoryEmbedding _ _) Y₂
    simp only [P₃, P₄, ← natTransPInfty_f_app]
    congr 1
  have h₁₄ := Idempotents.natTrans_eq
    ((𝟙 (karoubiFunctorCategoryEmbedding SimplexCategoryᵒᵖ C)) ◫
      (natTransPInfty_f (Karoubi C) n)) Y
  dsimp [natTransPInfty_f] at h₁₄
  rw [id_comp, id_comp, comp_id, comp_id] at h₁₄
  -- We use the three equalities h₃₂, h₄₃, h₁₄.
  rw [← h₃₂, ← h₄₃, h₁₄]
  simp only [KaroubiFunctorCategoryEmbedding.map_app_f, Karoubi.decompId_p_f,
    Karoubi.decompId_i_f, Karoubi.comp_f]
  let π : Y₄ ⟶ Y₄ := (toKaroubi _ ⋙ karoubiFunctorCategoryEmbedding _ _).map Y.p
  have eq := Karoubi.hom_ext_iff.mp (PInfty_f_naturality n π)
  simp only [Karoubi.comp_f] at eq
  dsimp [π] at eq
  rw [← eq, app_idem_assoc Y (op ⦋n⦌)]

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant137e27c31da164f56fef557a425946ddf963ebed3d9e3b92bf800ecdab736997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PInfty/Variant137e27c31da164f56fef557a425946ddf963ebed3d9e3b92bf800ecdab736997.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2644d1ca7d9cff776cfecede2519579b6c8a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
