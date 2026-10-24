# preservesLimit_flip_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "771f77080123c68bfe2bf1766a3484c07603fe5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/deaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9b49866-083b-e0cd-958b-a6a7a4656a7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0949c44a-ceb2-83c8-86e8-520a4de49a10",
  "kind": "lemma",
  "lexical_name": "preservesLimit_flip_obj",
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
  "slug": "preserveslimit-flip-obj--12f7850e9acc76d679661c7b",
  "source": {
    "blob": "771f77080123c68bfe2bf1766a3484c07603fe5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12f7850e9acc76d679661c7b2670c6c41a73dbb392bd5470757116e32e53cdaa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0949c44a-ceb2-83c8-86e8-520a4de49a10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLimit_flip_obj (P : J ⥤ C₁ᵒᵖ)
    [∀ (X₂ : C₂), PreservesColimit P.leftOp (F.flip.obj X₂)] (X₃ : C₃) :
    PreservesLimit P (G.flip.obj X₃) where
  preserves {c} hc := ⟨by
    let cocone (s : Cone (P ⋙ G.flip.obj X₃)) :
        Cocone (P.leftOp ⋙ F.flip.obj s.pt) :=
      { pt := X₃
        ι.app j := adj₂.homEquiv.symm (s.π.app j.unop)
        ι.naturality _ _ f := by
          simp [← s.w f.unop, dsimp% adj₂.homEquiv_symm_naturality_one (P.map f.unop).unop] }
    let hc' (s : Cone (P ⋙ G.flip.obj X₃)) :=
      isColimitOfPreserves (F.flip.obj s.pt) (isColimitCoconeLeftOpOfCone _ hc)
    exact {
      lift s := adj₂.homEquiv ((hc' s).desc (cocone s))
      fac s j := by
        dsimp
        rw [← dsimp% adj₂.homEquiv_naturality_one (c.π.app j).unop,
          dsimp% (hc' s).fac (cocone s) (op j)]
        simp [cocone]
      uniq s m hm := adj₂.homEquiv.symm.injective (by
        simp only [op_unop, Equiv.symm_apply_apply]
        refine (hc' s).uniq (cocone s) _ (fun j ↦ ?_)
        simp [cocone, ← hm,
          dsimp% adj₂.homEquiv_symm_naturality_one (c.π.app j.unop).unop]) }⟩

variable (J) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ParametrizedLimits/Variantdeaec9e9b2c3c306efd39694dea944bcd8e93a26509abdc0c9ea0f628ebff8e0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771f77080123c68bfe2bf1766a3484c07603fe5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
