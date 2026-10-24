# natIsoOfNatIsoOnRepresentables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11fd9ddd7ab3f05c0adfff6a36eb9874ba671c06ea1439a0f87cbf5dd975c89c",
  "kind": "def",
  "lexical_name": "natIsoOfNatIsoOnRepresentables",
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
  "slug": "natisoofnatisoonrepresentables--df2bab758ad1438427250080",
  "source": {
    "blob": "1067050962b3ed8a1c422a4d1641abcce571a338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 390,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df2bab758ad1438427250080c0d16ca6eaaf0c4cef05732951bd8fc8380fb968",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11fd9ddd7ab3f05c0adfff6a36eb9874ba671c06ea1439a0f87cbf5dd975c89c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def natIsoOfNatIsoOnRepresentables (L₁ L₂ : (Cᵒᵖ ⥤ Type u₁) ⥤ ℰ)
    [PreservesColimits L₁] [PreservesColimits L₂] (h : yoneda ⋙ L₁ ≅ yoneda ⋙ L₂) : L₁ ≅ L₂ := by
  apply NatIso.ofComponents _ _
  · intro P
    refine'
      (isColimitOfPreserves L₁ (colimitOfRepresentable P)).coconePointsIsoOfNatIso
        (isColimitOfPreserves L₂ (colimitOfRepresentable P)) _
    apply Functor.associator _ _ _ ≪≫ _
    exact isoWhiskerLeft (CategoryOfElements.π P).leftOp h
  · intro P₁ P₂ f
    apply (isColimitOfPreserves L₁ (colimitOfRepresentable P₁)).hom_ext
    intro j
    dsimp only [id.def, IsColimit.comp_coconePointsIsoOfNatIso_hom, isoWhiskerLeft_hom]
    have :
      (L₁.mapCocone (coconeOfRepresentable P₁)).ι.app j ≫ L₁.map f =
        (L₁.mapCocone (coconeOfRepresentable P₂)).ι.app
          ((CategoryOfElements.map f).op.obj j) := by
      dsimp
      rw [← L₁.map_comp, coconeOfRepresentable_naturality]
      rfl
    erw [reassoc_of% this, IsColimit.ι_map_assoc, IsColimit.ι_map]
    dsimp
    rw [← L₂.map_comp, coconeOfRepresentable_naturality]
    rfl
#align category_theory.nat_iso_of_nat_iso_on_representables CategoryTheory.natIsoOfNatIsoOnRepresentables

variable [HasColimits ℰ]

/-- Show that `extendAlongYoneda` is the unique colimit-preserving functor which extends `A` to
the presheaf category.

The second part of [MM92], Chapter I, Section 5, Corollary 4.
See Property 3 of https://ncatlab.org/nlab/show/Yoneda+extension#properties.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3627c09933d584da7bbf062d102ba1c607c9727411df05c0f287dca3701fd269.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1067050962b3ed8a1c422a4d1641abcce571a338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
