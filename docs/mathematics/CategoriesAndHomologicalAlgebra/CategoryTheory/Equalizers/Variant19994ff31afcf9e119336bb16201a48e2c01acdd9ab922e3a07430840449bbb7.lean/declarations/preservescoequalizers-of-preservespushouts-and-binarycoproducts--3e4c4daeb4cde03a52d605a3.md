# preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee7127f8-9b17-1b5e-a0f0-eecde7a55fe4",
  "kind": "lemma",
  "lexical_name": "preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts",
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
  "slug": "preservescoequalizers-of-preservespushouts-and-binarycoproducts--3e4c4daeb4cde03a52d605a3",
  "source": {
    "blob": "7ea0877f19c4562bd25dd1cd4f758a4c9450416c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e4c4daeb4cde03a52d605a3067df113c52211068f8eaa1b25ecaafabdd70843",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee7127f8-9b17-1b5e-a0f0-eecde7a55fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts [HasBinaryCoproducts C]
    [HasPushouts C] [PreservesColimitsOfShape (Discrete WalkingPair) G]
    [PreservesColimitsOfShape WalkingSpan G] : PreservesColimitsOfShape WalkingParallelPair G :=
  ⟨fun {K} =>
    preservesColimit_of_preserves_colimit_cocone (coequalizerCoconeIsColimit K) <|
      { desc := fun c => by
          refine (PreservesPushout.iso _ _ _).inv ≫ pushout.desc ?_ ?_ ?_
          · exact c.ι.app WalkingParallelPair.one
          · exact c.ι.app WalkingParallelPair.one
          apply (mapIsColimitOfPreservesOfIsColimit G _ _ (coprodIsCoprod _ _)).hom_ext
          rintro (_ | _)
          · simp only [BinaryCofan.ι_app_left, BinaryCofan.mk_inl, Category.assoc, ←
              G.map_comp_assoc, coprod.inl_desc]
          · simp only [BinaryCofan.ι_app_right, BinaryCofan.mk_inr, Category.assoc, ←
              G.map_comp_assoc, coprod.inr_desc]
            exact
              (c.ι.naturality WalkingParallelPairHom.left).trans
                (c.ι.naturality WalkingParallelPairHom.right).symm
        fac := fun c j => by
          rcases j with (_ | _) <;>
            simp only [Functor.mapCocone_ι_app, Cocone.ofCofork_ι, Category.id_comp,
              eqToHom_refl, Category.assoc, Functor.map_comp, Cofork.ofπ_ι_app, pushout.inl_desc,
              PreservesPushout.inl_iso_inv_assoc]
          exact (c.ι.naturality WalkingParallelPairHom.left).trans (Category.comp_id _)
        uniq := fun s m h => by
          rw [Iso.eq_inv_comp]
          have := h WalkingParallelPair.one
          dsimp [coequalizerCocone] at this
          ext <;>
            simp only [PreservesPushout.inl_iso_hom_assoc, Category.id_comp, pushout.inl_desc,
              pushout.inr_desc, PreservesPushout.inr_iso_hom_assoc, ← pushoutInl_eq_pushout_inr, ←
              this] }⟩

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea0877f19c4562bd25dd1cd4f758a4c9450416c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
