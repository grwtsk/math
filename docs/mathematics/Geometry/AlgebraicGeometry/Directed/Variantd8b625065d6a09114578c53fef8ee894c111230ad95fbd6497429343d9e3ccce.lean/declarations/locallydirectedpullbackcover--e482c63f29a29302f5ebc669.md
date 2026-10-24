# locallyDirectedPullbackCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ac2f7be9d672f829a72926c4abba3cd29a1d9b0482d1c4a363c598048b3d55",
  "kind": "instance",
  "lexical_name": "locallyDirectedPullbackCover",
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
  "slug": "locallydirectedpullbackcover--e482c63f29a29302f5ebc669",
  "source": {
    "blob": "92261c90d0fbb12e437bc43ac8ddb4076f2f47ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 167,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e482c63f29a29302f5ebc6699c985ef1560f8c8423301f6df7c93ec61700814b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ac2f7be9d672f829a72926c4abba3cd29a1d9b0482d1c4a363c598048b3d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance locallyDirectedPullbackCover : Cover.LocallyDirected (𝒰.pullback₁ f) where
  trans {i j} hij := pullback.map f (𝒰.f i) f (𝒰.f j) (𝟙 _) (𝒰.trans hij) (𝟙 _)
    (by simp) (by simp)
  trans_id i := by simp
  trans_comp hij hjk := by simp [pullback.map_comp]
  directed {i j} x := by
    dsimp at i j x ⊢
    let iso : pullback (pullback.fst f (𝒰.f i)) (pullback.fst f (𝒰.f j)) ≅
        pullback f (pullback.fst (𝒰.f i) (𝒰.f j) ≫ 𝒰.f i) :=
      pullbackRightPullbackFstIso _ _ _ ≪≫ pullback.congrHom pullback.condition rfl ≪≫
        pullbackAssoc ..
    have (k : 𝒰.I₀) (hki : k ⟶ i) (hkj : k ⟶ j) :
        (pullback.lift
          (pullback.map f (𝒰.f k) f (𝒰.f i) (𝟙 Y) (𝒰.trans hki) (𝟙 X) (by simp) (by simp))
          (pullback.map f (𝒰.f k) f (𝒰.f j) (𝟙 Y) (𝒰.trans hkj) (𝟙 X) (by simp) (by simp))
            (by simp)) =
          pullback.map _ _ _ _ (𝟙 Y) (pullback.lift (𝒰.trans hki) (𝒰.trans hkj) (by simp)) (𝟙 X)
            (by simp) (by simp) ≫ iso.inv := by
      apply pullback.hom_ext <;> apply pullback.hom_ext <;> simp [iso]
    obtain ⟨k, hki, hkj, yk, hyk⟩ := 𝒰.exists_lift_trans_eq ((iso.hom ≫ pullback.snd _ _) x)
    refine ⟨k, hki, hkj, show x ∈ Set.range _ from ?_⟩
    rw [this, Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, Pullback.range_map]
    use iso.hom x
    simp only [Hom.id_base, TopCat.hom_id, ContinuousMap.coe_id, Set.range_id, Set.preimage_univ,
      Set.univ_inter, Set.mem_preimage, Set.mem_range, hom_inv_apply, and_true]
    exact ⟨yk, hyk⟩
  property_trans {i j} hij := by
    let iso : pullback f (𝒰.f i) ≅ pullback (pullback.snd f (𝒰.f j)) (𝒰.trans hij) :=
      pullback.congrHom rfl (by simp) ≪≫ (pullbackLeftPullbackSndIso _ _ _).symm
    rw [← P.cancel_left_of_respectsIso iso.inv]
    simp only [Precoverage.ZeroHypercover.pullback₁_toPreZeroHypercover,
      PreZeroHypercover.pullback₁_X, Iso.trans_inv, Iso.symm_inv, pullback.congrHom_inv,
      Category.assoc, iso]
    convert! P.pullback_fst (pullback.snd f (𝒰.f j)) _ (𝒰.property_trans hij)
    apply pullback.hom_ext <;> simp [pullback.condition]

end BaseChange

end Cover

namespace OpenCover

variable (𝒰 : X.OpenCover) [Category* 𝒰.I₀] [𝒰.LocallyDirected]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92261c90d0fbb12e437bc43ac8ddb4076f2f47ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
