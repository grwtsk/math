# isColimitGluedCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60ad326b17f133e23b9dd34fce82213264b52456e935b715ccb9986510d02d5f",
  "kind": "def",
  "lexical_name": "isColimitGluedCocone",
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
  "slug": "iscolimitgluedcocone--bf4c1cd62262a0f54e19e108",
  "source": {
    "blob": "b03377d4b45ff784031d97243abc82352ecb9aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf4c1cd62262a0f54e19e108fa9f350fb2b9eb61abd9d2c4539fb474535135d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60ad326b17f133e23b9dd34fce82213264b52456e935b715ccb9986510d02d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitGluedCocone : IsColimit d.gluedCocone := by
  letI 𝒱 : d.glued.left.OpenCover := d.relativeGluingData.cover
  refine { desc s := ?_, fac := ?_, uniq := ?_ }
  · refine ⟨𝒱.glueMorphismsOverOfLocallyDirected ?_ ?_ ?_, trivial, trivial⟩
    · intro i
      exact ((d.isColimit i).desc (Functor.mapCocone _ s)).left ≫ pullback.fst _ _
    · intro i j hij
      simp only [Functor.mapCocone_pt, MorphismProperty.Over.pullback_obj_left,
        Functor.id_obj, Functor.const_obj_obj]
      change (d.transitionMap hij).left ≫ _ ≫ _ = _
      have : d.transitionMap hij ≫ (d.isColimit j).desc ((Over.pullback P ⊤ (𝒰.f j)).mapCocone s) =
          (Over.map ⊤ (d.prop_trans hij)).map
            ((d.isColimit i).desc ((MorphismProperty.Over.pullback P ⊤ (𝒰.f i)).mapCocone s)) ≫
          (Over.pullbackMapHomPullback _ (d.prop_trans hij) trivial _ _).app _ := by
        apply (isColimitOfPreserves (Over.map ⊤ <| d.prop_trans _) (d.isColimit i)).hom_ext
        intro
        ext
        apply pullback.hom_ext <;> simp [cocone_ι_transitionMap_assoc, ← Functor.map_comp_assoc]
      rw [← Over.comp_left_assoc, ← Comma.comp_hom, this]
      simp
    · intro i
      have : _ ≫ pullback.snd _ _ = _ := Over.w ((d.isColimit i).desc (Functor.mapCocone _ s))
      simp only [glued, Category.assoc, 𝒱, pullback.condition]
      rw [reassoc_of% this]
      simp
  · intro s a
    let 𝒲 (a : J) : (D.obj a).left.OpenCover := 𝒰.pullback₁ (D.obj a).hom
    ext
    refine (𝒲 a).hom_ext _ _ fun i ↦ ?_
    dsimp
    simp only [Precoverage.ZeroHypercover.pullback₁_toPreZeroHypercover,
      PreZeroHypercover.pullback₁_f, 𝒲, fst_gluedCocone_ι_assoc]
    change _ ≫ 𝒱.f _ ≫ _ = _
    rw [Scheme.OpenCover.map_glueMorphismsOverOfLocallyDirected_left, ← Over.comp_left_assoc,
      ← Comma.comp_hom]
    simp
  · intro s m hm
    ext
    refine 𝒱.hom_ext _ _ fun i ↦ ?_
    have : (d.pullbackGluedIso i).inv ≫ (Over.pullback P ⊤ (𝒰.f i)).map m =
        (d.isColimit i).desc ((Over.pullback P ⊤ (𝒰.f i)).mapCocone s) := by
      refine (d.isColimit i).hom_ext fun a ↦ ?_
      rw [IsColimit.fac]
      ext
      apply pullback.hom_ext
      · dsimp
        simp only [Category.assoc, limit.lift_π, PullbackCone.mk_π_app,
          pullbackGluedIso_inv_fst_assoc]
        rw [← congr($(hm a).left)]
        simp [fst_gluedCocone_ι_assoc]
      · simp
    rw [Scheme.OpenCover.map_glueMorphismsOverOfLocallyDirected_left]
    simp [𝒱, ← this]

end ColimitGluingData

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03377d4b45ff784031d97243abc82352ecb9aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
