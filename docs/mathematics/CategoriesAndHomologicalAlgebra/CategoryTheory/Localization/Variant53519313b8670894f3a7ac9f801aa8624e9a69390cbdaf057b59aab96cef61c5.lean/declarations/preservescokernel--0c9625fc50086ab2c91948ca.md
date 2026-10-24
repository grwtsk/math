# preservesCokernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53f99444-c09f-1d75-a3b2-d624306a5965",
  "kind": "lemma",
  "lexical_name": "preservesCokernel",
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
  "slug": "preservescokernel--0c9625fc50086ab2c91948ca",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9625fc50086ab2c91948caaf732358f2ac60f4a15141fac86cab70fb412f98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f99444-c09f-1d75-a3b2-d624306a5965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesCokernel {X Y : C} (f : X ⟶ Y) :
    PreservesColimit (parallelPair f 0) L := by
  have := preservesEpimorphisms L P
  have := Localization.essSurj L P.isoModSerre
  suffices ∀ (W : D) (z : L.obj Y ⟶ W) (hz : L.map f ≫ z = 0),
      ∃ (l : L.obj (cokernel f) ⟶ W), L.map (cokernel.π f) ≫ l = z from
    preservesColimit_of_preserves_colimit_cocone (cokernelIsCokernel f)
      ((CokernelCofork.isColimitMapCoconeEquiv _ L).2
        (Cofork.IsColimit.ofExistsUnique
          (fun s ↦ existsUnique_of_exists_of_unique
            (this _ _ (CokernelCofork.condition s))
            (fun _ _ h₁ h₂ ↦ by simpa [cancel_epi] using h₁.trans h₂.symm))))
  intro W w hw
  wlog hw' : ∃ (Z : C) (hZ : L.obj Z = W) (z : Y ⟶ Z), w = L.map z ≫ eqToHom hZ
      generalizing W
  · obtain ⟨φ, hφ⟩ := Localization.exists_leftFraction L P.isoModSerre
      (w ≫ (L.objObjPreimageIso W).inv)
    rw [← cancel_mono (L.map φ.s), Category.assoc,
      MorphismProperty.LeftFraction.map_comp_map_s] at hφ
    obtain ⟨l, hl⟩ := this _ (L.map φ.f) (by rw [← hφ, reassoc_of% hw, zero_comp]) ⟨_, rfl, by simp⟩
    exact ⟨l ≫ inv (L.map φ.s) ≫ (L.objObjPreimageIso W).hom, by simp [reassoc_of% hl, ← hφ]⟩
  obtain ⟨Z, rfl, z, rfl⟩ := hw'
  simp only [eqToHom_refl, Category.comp_id, ← L.map_comp,
    map_eq_zero_iff L P, ← exists_comp_isoModSerre_eq_zero_iff P] at hw
  obtain ⟨Z', t, ht, fac⟩ := hw
  rw [Category.assoc] at fac
  have := Localization.inverts L P.isoModSerre t ht
  exact ⟨L.map (cokernel.desc _ _ fac) ≫ inv (L.map t), by simp [← L.map_comp_assoc]⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
