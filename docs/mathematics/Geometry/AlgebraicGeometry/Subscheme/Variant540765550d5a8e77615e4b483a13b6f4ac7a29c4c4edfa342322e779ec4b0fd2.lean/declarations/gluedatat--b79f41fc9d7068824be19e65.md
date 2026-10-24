# glueDataT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3b6e7dfb1fd95b97819c84ab50f780fbe4dc6fe99c5ad47e8e1312d6e7d1486",
  "kind": "def",
  "lexical_name": "glueDataT",
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
  "slug": "gluedatat--b79f41fc9d7068824be19e65",
  "source": {
    "blob": "694fe45fcdcccce46e4dc883f56b70c042fb362a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 184,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b79f41fc9d7068824be19e658471546ec2e173f540aae26ff3eed1f5eda4be62",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3b6e7dfb1fd95b97819c84ab50f780fbe4dc6fe99c5ad47e8e1312d6e7d1486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def glueDataT (U V : X.affineOpens) :
    I.glueDataObjPullback U V ⟶ I.glueDataObjPullback V U := by
  letI F := pullback.snd (I.glueDataObjι U) (X.homOfLE (inf_le_left (b := V.1)))
  refine pullback.lift ((F ≫ X.homOfLE inf_le_right ≫
    V.2.isoSpec.hom).liftQuotient _ ?_) (F ≫ X.homOfLE (by simp)) ?_
  · intro x hx
    simp only [comp_app, comp_coeBase, TopologicalSpace.Opens.map_comp_obj,
      TopologicalSpace.Opens.map_top, homOfLE_app, homOfLE_leOfHom, Category.assoc,
      ← CommRingCat.hom_comp, RingHom.mem_ker, ← RingHom.comp_apply, Function.comp_apply]
    convert_to (U.1.ι.app V.1 ≫ (F ≫ X.homOfLE inf_le_left).appLE (U.1.ι ⁻¹ᵁ V.1) ⊤
      (by rw [← Scheme.preimage_comp, Category.assoc, X.homOfLE_ι]
          exact fun x _ ↦ by simpa using (F.base x).2.2)).hom x = 0 using 3
    · simp only [homOfLE_leOfHom, Opens.ι_app, comp_appLE, homOfLE_app]
      have H : ⊤ ≤ X.homOfLE (inf_le_left (b := V.1)) ⁻¹ᵁ U.1.ι ⁻¹ᵁ V.1 := by
        rw [← Scheme.preimage_comp, X.homOfLE_ι]; exact fun x _ ↦ by simpa using x.2.2
      rw [← F.map_appLE (show ⊤ ≤ F ⁻¹ᵁ ⊤ from le_rfl) (homOfLE H).op]
      simp only [homOfLE_leOfHom, Opens.toScheme_presheaf_map, Quiver.Hom.unop_op,
        Hom.opensFunctor_map_homOfLE, ← Functor.map_comp_assoc, IsAffineOpen.isoSpec_hom_appTop,
        Opens.topIso_inv, eqToHom_op, homOfLE_leOfHom, Category.assoc,
        Iso.inv_hom_id_assoc, F.app_eq_appLE]
      rfl
    · have : (U.1.ι.app V.1 ≫ (I.glueDataObjι U).app (U.1.ι ⁻¹ᵁ V.1)).hom x = 0 :=
        I.ideal_le_ker_glueDataObjι U V hx
      simp_rw [F, ← pullback.condition]
      simp only [Scheme.Opens.ι_app, CommRingCat.hom_comp, RingHom.coe_comp,
        Function.comp_apply, Scheme.Hom.appLE, Scheme.comp_app, Category.assoc, F] at this ⊢
      simp only [this, map_zero]
  · conv_lhs => enter [2]; rw [glueDataObjι]
    rw [Scheme.Hom.liftQuotient_comp_assoc, Category.assoc, Category.assoc, Iso.hom_inv_id,
      Category.comp_id, Category.assoc, X.homOfLE_homOfLE]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Subscheme/Variant540765550d5a8e77615e4b483a13b6f4ac7a29c4c4edfa342322e779ec4b0fd2.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694fe45fcdcccce46e4dc883f56b70c042fb362a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
