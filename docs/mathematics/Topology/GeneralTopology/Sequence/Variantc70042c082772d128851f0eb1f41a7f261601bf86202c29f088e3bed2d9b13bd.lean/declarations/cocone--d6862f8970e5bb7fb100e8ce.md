# cocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fe313fd6b2f24fc3da2ab78529d277136e1d8a879b478b001513a04be719d06",
  "kind": "def",
  "lexical_name": "cocone",
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
  "slug": "cocone--d6862f8970e5bb7fb100e8ce",
  "source": {
    "blob": "6198ecf4cfe62253135d270015027baac93a152e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 205,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6862f8970e5bb7fb100e8ce4dbb7fd604b4c0c4fc7ee2aead8ac9be8d9a871f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fe313fd6b2f24fc3da2ab78529d277136e1d8a879b478b001513a04be719d06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
noncomputable def cocone {X : LightCondMod R} {S T : LightProfinite} (π : T ⟶ S ⊗ ℕ∪{∞})
    [Epi ((lightProfiniteToLightCondSet ⋙ free R).map <| cover π)]
    (g : ((lightProfiniteToLightCondSet ⋙ free R).obj T) ⟶ X)
    (r_inf : T ⟶ (LightProfinite.fibre ∞ (π ≫ snd _ _)))
    (σ : S ⟶ (LightProfinite.fibre ∞ (π ≫ snd _ _)))
    (hr : LightProfinite.fibreIncl ∞ (π ≫ snd _ _) ≫ r_inf =
      𝟙 (LightProfinite.fibre ∞ (π ≫ snd _ _))) :
    Cocone ((parallelPair (lightProfiniteToLightCondSet.map (CompHausLike.pullback.fst π π))
      (lightProfiniteToLightCondSet.map (pullback.snd π π))) ⋙ free R) := by
  refine Cocone.ofCofork (Cofork.ofπ (g -
    (lightProfiniteToLightCondSet ⋙ free R).map
      (r_inf ≫ LightProfinite.fibreIncl ∞ (π ≫ snd _ _)) ≫ g +
    (lightProfiniteToLightCondSet ⋙ free R).map
      (r_inf ≫ LightProfinite.fibreIncl ∞ (π ≫ snd _ _) ≫ π ≫ fst _ _ ≫ σ ≫
        LightProfinite.fibreIncl ∞ (π ≫ snd _ _)) ≫ g) ?_)
  rw [← cancel_epi ((lightProfiniteToLightCondSet ⋙ free R).map <| cover π)]
  apply (isColimitOfPreserves (lightProfiniteToLightCondSet ⋙ free R)
      (coproductIsColimit _ _)).hom_ext
  rintro ⟨⟨⟩ | ⟨⟩⟩
  · simp [← map_comp_assoc, ← Functor.map_comp]
    rfl
  · -- simp? [← map_comp_assoc, -Functor.map_comp] says:
    simp only [pair_obj_right, mapCocone_ι_app,
      Functor.comp_map, parallelPair_obj_zero, parallelPair_obj_one, parallelPair_map_left,
      Preadditive.comp_add, Preadditive.comp_sub, ← map_comp_assoc, parallelPair_map_right]
    have : cover π = (BinaryCofan.IsColimit.desc' (coproductIsColimit _ _)
        (CompHausLike.pullback.lift _ _ (𝟙 T) (𝟙 T) (by simp))
        (CompHausLike.pullback.lift _ _
          ((CompHausLike.pullback.fst _ _) ≫ LightProfinite.fibreIncl _ _)
          ((pullback.snd _ _) ≫ LightProfinite.fibreIncl _ _)
          (by simp [pullback.condition]))).val := rfl
    -- simp? [this, ← Functor.map_comp] says:
    simp only [this, pair_obj_left, pair_obj_right, BinaryCofan.IsColimit.desc'_coe,
      IsColimit.fac, BinaryCofan.mk_inr, ← Functor.map_comp,
      pullback.lift_fst, IsColimit.fac_assoc, assoc,
      pullback.lift_snd]
    -- simp? [-Functor.map_comp, ← assoc, hr] says:
    simp only [← assoc, hr, id_comp, sub_self, zero_add]
    simp [pullback.condition]

set_option backward.isDefEq.respectTransparency false in
/-- Given a surjective map of light profinite spaces `T ⟶ S ⊗ ℕ∪{∞}`,
construct a (non-cartesian) commutative square
```
T' -> S' ⨯ OnePoint X
|         |
v         v
T  -> S  ⨯ OnePoint X
```
where every map is epi. The map `(π ≫ Prod.snd) ⁻¹' ∞ ⟶ T' ⟶ S' ⨯ ℕ∪{∞}` is split epi and
`cover` is epi. `S'` is constructed as the pullback of all the fibres. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6198ecf4cfe62253135d270015027baac93a152e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
