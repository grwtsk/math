# exists_distinguished_triangle_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee49efb3a75e36d68f20ae42bdeb3a9f26972b41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 270,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:478d6a19-b484-ec45-38a4-8c7be7483299",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ca4e443-a975-0dbf-6778-b7743eda73de",
  "kind": "lemma",
  "lexical_name": "exists_distinguished_triangle_of_epi",
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
  "slug": "exists-distinguished-triangle-of-epi--4b178b9e7c8d6764b3814ba9",
  "source": {
    "blob": "ee49efb3a75e36d68f20ae42bdeb3a9f26972b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b178b9e7c8d6764b3814ba922fd91cc8f7433094613030583ee72c3c6c96d57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ca4e443-a975-0dbf-6778-b7743eda73de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_distinguished_triangle_of_epi {X₂ X₃ : A} (π : X₂ ⟶ X₃) [Epi π] :
    ∃ (X₁ : A) (i : X₁ ⟶ X₂) (δ : ι.obj X₃ ⟶ (ι.obj X₁)⟦(1 : ℤ)⟧),
      Triangle.mk (ι.map i) (ι.map π) δ ∈ distTriang C := by
  obtain ⟨X₁, f₂, f₃, hT⟩ := distinguished_cocone_triangle (ι.map π)
  have : admissibleMorphism ι π := by simp [hA]
  obtain ⟨K, Q, α, β, γ, hT'⟩ := this f₂ f₃ hT
  have hQ : 𝟙 Q = 0 :=
    Cofork.IsColimit.hom_ext (isColimitCokernelCofork hι hT hT') (by
      dsimp
      rw [comp_id, comp_zero, ← cancel_epi π, comp_zero, mor₁_πQ hT β])
  have : IsIso α := (Triangle.isZero₃_iff_isIso₁ _ hT').1 (by
    dsimp
    rw [IsZero.iff_id_eq_zero, ← ι.map_id, hQ, ι.map_zero])
  refine ⟨K, -ιK f₃ α, f₂ ≫ inv α, ?_⟩
  rw [rotate_distinguished_triangle]
  refine isomorphic_distinguished _ hT _ ?_
  exact Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) (asIso α)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable (ι) in
/-- Let `ι : A ⥤ C` be a fully faithful additive functor where `A` is
an additive category and `C` is a triangulated category. The category `A`
is abelian if the following conditions are satisfied:
* For any object `X` and `Y` in `A`, there is no nonzero morphism
  `ι.obj X ⟶ (ι.obj Y)⟦n⟧` when `n < 0`.
* Any morphism `f₁ : X₁ ⟶ X₂` in `A` is admissible, i.e. when
  we complete `ι.obj f₁` in a distinguished triangle
  `ι.obj X₁ ⟶ ι.obj X₂ ⟶ X₃ ⟶ (ι.obj X₁)⟦1⟧`, there exists objects `K`
  and `Q`, and a distinguished triangle `(ι.obj K)⟦1⟧ ⟶ X₃ ⟶ (ι.obj Q) ⟶ ...`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee49efb3a75e36d68f20ae42bdeb3a9f26972b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
