# preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73d519ebd521915fed9e46ce91a3241ab5af183a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9622ed87-d866-00b6-c575-286d8a0310e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:611df4c1-6938-0b40-29e9-3b8a593b552c",
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
  "slug": "preservescoequalizers-of-preservespushouts-and-binarycoproducts--55d51952c3e739c5ea591296",
  "source": {
    "blob": "73d519ebd521915fed9e46ce91a3241ab5af183a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d51952c3e739c5ea5912963b804f56e8582eb3d768aed69320866843edbb46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:611df4c1-6938-0b40-29e9-3b8a593b552c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–217.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d519ebd521915fed9e46ce91a3241ab5af183a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
