# ofChosenFiniteProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11981ccf1bd2aacea7dbeade2a017d1590eab15d96d6452fcf8d9fb2a6c06d4a",
  "kind": "abbrev",
  "lexical_name": "ofChosenFiniteProducts",
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
  "slug": "ofchosenfiniteproducts--fb0e0f58f70b44139a8f9e4e",
  "source": {
    "blob": "0a2d1a1c033a248d70dd132d9e83bc614700180f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb0e0f58f70b44139a8f9e4e140daa5656ab2b0c7938568f332514f23fd866a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11981ccf1bd2aacea7dbeade2a017d1590eab15d96d6452fcf8d9fb2a6c06d4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofChosenFiniteProducts : CartesianMonoidalCategory C :=
  letI : MonoidalCategoryStruct C := {
    tensorUnit := 𝒯.cone.pt
    tensorObj := tensorObj ℬ
    tensorHom := tensorHom ℬ
    whiskerLeft X {_ _} g := tensorHom ℬ (𝟙 X) g
    whiskerRight {_ _} f Y := tensorHom ℬ f (𝟙 Y)
    associator := BinaryFan.associatorOfLimitCone ℬ
    leftUnitor X := BinaryFan.leftUnitor 𝒯.isLimit (ℬ 𝒯.cone.pt X).isLimit
    rightUnitor X := BinaryFan.rightUnitor 𝒯.isLimit (ℬ X 𝒯.cone.pt).isLimit
  }
  {
  toMonoidalCategory := .ofTensorHom
    (id_tensorHom_id := id_tensorHom_id ℬ)
    (tensorHom_comp_tensorHom := tensorHom_comp_tensorHom ℬ)
    (pentagon := pentagon ℬ)
    (triangle := triangle 𝒯 ℬ)
    (leftUnitor_naturality := leftUnitor_naturality 𝒯 ℬ)
    (rightUnitor_naturality := rightUnitor_naturality 𝒯 ℬ)
    (associator_naturality := associator_naturality ℬ)
  isTerminalTensorUnit :=
    .ofUniqueHom (𝒯.isLimit.lift <| asEmptyCone ·) fun _ _ ↦ 𝒯.isLimit.hom_ext (by simp)
  fst X Y := BinaryFan.fst (ℬ X Y).cone
  snd X Y := BinaryFan.snd (ℬ X Y).cone
  tensorProductIsBinaryProduct X Y := BinaryFan.IsLimit.mk _
    (fun f g ↦ (BinaryFan.IsLimit.lift' (ℬ X Y).isLimit f g).1)
    (fun f g ↦ (BinaryFan.IsLimit.lift' (ℬ X Y).isLimit f g).2.1)
    (fun f g ↦ (BinaryFan.IsLimit.lift' (ℬ X Y).isLimit f g).2.2)
    (fun f g m hf hg ↦
      BinaryFan.IsLimit.hom_ext (ℬ X Y).isLimit (by simpa using hf) (by simpa using hg))
  fst_def X Y := (((ℬ X 𝒯.cone.pt).isLimit.fac
    (BinaryFan.mk _ _) ⟨.left⟩).trans (Category.comp_id _)).symm
  snd_def X Y := (((ℬ 𝒯.cone.pt Y).isLimit.fac
    (BinaryFan.mk _ _) ⟨.right⟩).trans (Category.comp_id _)).symm
  }

omit 𝒯 in
/-- Constructs an instance of `CartesianMonoidalCategory C` given the existence of finite products
in `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantbfa2a22d62b0fb2925c810511bf6f86192cb4bf160c2b2452f43b82e2700d26d.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a2d1a1c033a248d70dd132d9e83bc614700180f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
