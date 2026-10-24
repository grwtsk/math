# mapBifunctorMapHomotopy₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ead740c1d907c6f0bf4836f736f9b1f54458cd67229c9c76aa5e37a051044d7c",
  "kind": "def",
  "lexical_name": "mapBifunctorMapHomotopy₂",
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
  "slug": "mapbifunctormaphomotopy--d900b12c776c370808f5d671",
  "source": {
    "blob": "4a0d2257078bcb230e5ebf9f7b474431886cfd5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d900b12c776c370808f5d6713b2783ff6cb75370ab76bc1c0210e3daa2c2f13e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ead740c1d907c6f0bf4836f736f9b1f54458cd67229c9c76aa5e37a051044d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorMapHomotopy₂ :
    Homotopy (mapBifunctorMap f₁ f₂ F c) (mapBifunctorMap f₁ f₂' F c) :=
  letI : TotalComplexShape c₂ c₁ c := TotalComplexShape.symm c₁ c₂ c
  letI : TotalComplexShapeSymmetry c₁ c₂ c := TotalComplexShape.symmSymmetry c₁ c₂ c
  haveI : F.flip.Additive := { }
  haveI (X₁ : C₂) : (F.flip.obj X₁).Additive := { }
  letI H : Homotopy (mapBifunctorMap f₁ f₂ F c) (mapBifunctorMap f₁ f₂' F c) :=
    (Homotopy.ofEq (by simp)).trans
      ((((mapBifunctorMapHomotopy₁ h₂ f₁ F.flip c).compRight
        (mapBifunctorFlipIso L₁ L₂ F c).hom).compLeft
          ((mapBifunctorFlipIso K₁ K₂ F c).inv)).trans (Homotopy.ofEq (by simp)))
  haveI hom₂_eq : hom₂ f₁ h₂ F c = H.hom := by
    ext j j' i₁ i₂ hj
    dsimp [H, mapBifunctorMapHomotopy₁]
    rw [add_zero, zero_add, ι_mapBifunctorFlipIso_inv_assoc, Linear.units_smul_comp,
      ιMapBifunctor_hom₁_assoc h₂ f₁ F.flip c _ i₂ i₁ j j'
        (by rw [ComplexShape.π_symm c₁ c₂ c i₁ i₂, hj]) rfl,
      ιMapBifunctor_hom₂ f₁ h₂ F c i₁ _ i₂ j j' hj rfl]
    dsimp
    simp only [NatTrans.naturality_assoc, Linear.units_smul_comp, assoc]
    by_cases hj' : c₁.π c₂ c (i₁, c₂.prev i₂) = j'
    · rw [ιMapBifunctorOrZero_eq _ _ _ _ _ _ _ hj',
        ιMapBifunctorOrZero_eq _ _ _ _ _ _ _ (by rwa [ComplexShape.π_symm c₁ c₂ c]),
        ι_mapBifunctorFlipIso_hom, Linear.comp_units_smul, Linear.comp_units_smul,
        smul_smul, smul_smul]
      by_cases hi₂ : c₂.Rel (c₂.prev i₂) i₂
      · congr 1
        nth_rw 2 [mul_comm]
        rw [← ComplexShape.σ_ε₂ c₁ c i₁ hi₂, mul_comm, ← mul_assoc,
          Int.units_mul_self, one_mul]
      · rw [h₂.zero _ _ hi₂, Functor.map_zero, zero_comp, comp_zero, smul_zero, smul_zero]
    · rw [ιMapBifunctorOrZero_eq_zero _ _ _ _ _ _ _ hj',
        ιMapBifunctorOrZero_eq_zero _ _ _ _ _ _ _ (by rwa [ComplexShape.π_symm c₁ c₂ c]),
        comp_zero, comp_zero, smul_zero, zero_comp, comp_zero,
        comp_zero, smul_zero, smul_zero]
  { hom := hom₂ f₁ h₂ F c
    zero j j' h := by simpa only [hom₂_eq] using H.zero j j' h
    comm j := by simpa only [hom₂_eq] using H.comm j }

end HomologicalComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0d2257078bcb230e5ebf9f7b474431886cfd5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
