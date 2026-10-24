# isSheafFor_over_map_op_comp_ofArrows_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 900,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47ebf581-51fe-4d62-1fd1-b8ff77a63a16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d1dd084-2c60-9ccd-4c3f-3fa92754cb41",
  "kind": "lemma",
  "lexical_name": "isSheafFor_over_map_op_comp_ofArrows_iff",
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
  "slug": "issheaffor-over-map-op-comp-ofarrows-iff--5af16f8fda4581981ac23cef",
  "source": {
    "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 927,
    "line": 900,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5af16f8fda4581981ac23cef383958514cb53208cb02114704abbc462bbceb5d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d1dd084-2c60-9ccd-4c3f-3fa92754cb41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–927.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheafFor_over_map_op_comp_ofArrows_iff
    {B B' : C} (p : B ⟶ B') (P : (Over B')ᵒᵖ ⥤ Type w)
    {X : Over B} {Y : I → Over B} (f : ∀ i, Y i ⟶ X) :
    IsSheafFor ((Over.map p).op ⋙ P) (Presieve.ofArrows _ f) ↔
      IsSheafFor P (Presieve.ofArrows _ (fun i ↦ (Over.map p).map (f i))) := by
  let e : Subtype (Arrows.Compatible ((Over.map p).op ⋙ P) f) ≃
      Subtype (Arrows.Compatible P (fun i ↦ (Over.map p).map (f i))) :=
    { toFun s := ⟨fun i ↦ s.val i, fun i₁ i₂ Z g₁ g₂ h ↦ by
        replace h := (Over.forget _).congr_map h
        dsimp at h
        have := s.property i₁ i₂ (Over.mk (g₁.left ≫ (f i₁).left ≫ X.hom))
          (Over.homMk g₁.left) (Over.homMk g₂.left (by
            have := Over.w (f i₂)
            dsimp at this ⊢
            rw [reassoc_of% h, this])) (by cat_disch)
        let φ : Z ⟶ (Over.map p).obj (Over.mk (g₁.left ≫ (f i₁).left ≫ X.hom)) :=
          Over.homMk (𝟙 _) (by simpa using Over.w g₁)
        replace this := congr_arg (P.map φ.op) this
        dsimp at this
        simp only [← comp_apply, ← Functor.map_comp, ← op_comp] at this
        convert! this <;> cat_disch⟩
      invFun s := ⟨fun i ↦ s.val i, fun i₁ i₂ Z g₁ g₂ h ↦
        s.property i₁ i₂ _ ((Over.map p).map g₁) ((Over.map p).map g₂)
          (by simp only [← Functor.map_comp, h])⟩ }
  simp only [isSheafFor_ofArrows_iff_bijective_toCompabible,
    ← e.bijective.of_comp_iff']
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29282f11fe49113589d0cb5a6a936553ba03522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
