# BinaryCofan.isVanKampen_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 480,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a225173-8443-b86b-ce4a-303956df5597",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38370a81-ea51-5752-719c-46a26e55cd75",
  "kind": "theorem",
  "lexical_name": "BinaryCofan.isVanKampen_mk",
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
  "slug": "binarycofan-isvankampen-mk--da9a2e52632e4fa5137d215a",
  "source": {
    "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 480,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da9a2e52632e4fa5137d215aa989d1c27f62b5f138e9fced8f43005bfeb3f6f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38370a81-ea51-5752-719c-46a26e55cd75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BinaryCofan.isVanKampen_mk {X Y : C} (c : BinaryCofan X Y)
    (cofans : ∀ X Y : C, BinaryCofan X Y) (colimits : ∀ X Y, IsColimit (cofans X Y))
    (cones : ∀ {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z), PullbackCone f g)
    (limits : ∀ {X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z), IsLimit (cones f g))
    (h₁ : ∀ {X' Y' : C} (αX : X' ⟶ X) (αY : Y' ⟶ Y) (f : (cofans X' Y').pt ⟶ c.pt)
      (_ : αX ≫ c.inl = (cofans X' Y').inl ≫ f) (_ : αY ≫ c.inr = (cofans X' Y').inr ≫ f),
      IsPullback (cofans X' Y').inl αX f c.inl ∧ IsPullback (cofans X' Y').inr αY f c.inr)
    (h₂ : ∀ {Z : C} (f : Z ⟶ c.pt),
      IsColimit (BinaryCofan.mk (cones f c.inl).fst (cones f c.inr).fst)) :
    IsVanKampenColimit c := by
  rw [BinaryCofan.isVanKampen_iff]
  introv hX hY
  constructor
  · rintro ⟨h⟩
    let e := h.coconePointUniqueUpToIso (colimits _ _)
    obtain ⟨hl, hr⟩ := h₁ αX αY (e.inv ≫ f) (by simp [e, hX]) (by simp [e, hY])
    constructor
    · rw [← Category.id_comp αX, ← Iso.hom_inv_id_assoc e f]
      have : IsIso (𝟙 X') := inferInstance
      have : c'.inl ≫ e.hom = 𝟙 X' ≫ (cofans X' Y').inl := by
        dsimp [e]
        simp
      exact (IsPullback.of_vert_isIso ⟨this⟩).paste_vert hl
    · rw [← Category.id_comp αY, ← Iso.hom_inv_id_assoc e f]
      have : IsIso (𝟙 Y') := inferInstance
      have : c'.inr ≫ e.hom = 𝟙 Y' ≫ (cofans X' Y').inr := by
        dsimp [e]
        simp
      exact (IsPullback.of_vert_isIso ⟨this⟩).paste_vert hr
  · rintro ⟨H₁, H₂⟩
    refine ⟨IsColimit.ofIsoColimit ?_ <| (isoBinaryCofanMk _).symm⟩
    let e₁ : X' ≅ _ := H₁.isLimit.conePointUniqueUpToIso (limits _ _)
    let e₂ : Y' ≅ _ := H₂.isLimit.conePointUniqueUpToIso (limits _ _)
    have he₁ : c'.inl = e₁.hom ≫ (cones f c.inl).fst := by simp [e₁]
    have he₂ : c'.inr = e₂.hom ≫ (cones f c.inr).fst := by simp [e₂]
    rw [he₁, he₂]
    exact (BinaryCofan.mk _ _).isColimitCompRightIso e₂.hom
      ((BinaryCofan.mk _ _).isColimitCompLeftIso e₁.hom (h₂ f))

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ed4f5b6df0c6c186ae2aba4040fcf246f144b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
