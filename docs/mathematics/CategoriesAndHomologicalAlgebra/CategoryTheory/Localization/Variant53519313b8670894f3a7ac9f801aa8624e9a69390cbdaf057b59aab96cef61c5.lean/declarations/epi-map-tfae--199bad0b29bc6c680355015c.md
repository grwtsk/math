# epi_map_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba754170-df82-48f7-2c6e-a009d37c72bd",
  "kind": "lemma",
  "lexical_name": "epi_map_tfae",
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
  "slug": "epi-map-tfae--199bad0b29bc6c680355015c",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199bad0b29bc6c680355015c6fcc9e7cb9003e71574c2b52417f9c82d2050835",
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

Occurrence: `result:ba754170-df82-48f7-2c6e-a009d37c72bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_map_tfae {X Y : C} (f : X ⟶ Y) :
    List.TFAE [Epi (L.map f),
      P.epiModSerre f,
      ∀ ⦃Z : C⦄ (z : Y ⟶ Z), L.map f ≫ L.map z = 0 → L.map z = 0] := by
  have := Localization.essSurj L P.isoModSerre
  tfae_have 1 → 2 := fun _ ↦ by
    have hf : L.map (cokernel.π f) = 0 := by
      rw [← cancel_epi (L.map f), comp_zero, ← L.map_comp,
        cokernel.condition, L.map_zero]
    simpa [hf] using! map_comp_eq_zero_iff_of_epi_mono L P (cokernel.π f) (𝟙 _)
  tfae_have 2 → 3 := fun hf ↦ by
    intro Z z hz
    rw [← L.map_comp] at hz
    rw [map_eq_zero_iff L P, ← exists_epiModSerre_comp_eq_zero_iff P] at hz ⊢
    obtain ⟨W, s, hs, eq⟩ := hz
    refine ⟨_, s ≫ f, MorphismProperty.comp_mem _ _ _ hs hf, by simpa⟩
  tfae_have 3 → 1 := fun hf ↦ by
    rw [Preadditive.epi_iff_cancel_zero]
    intro W z hz
    obtain ⟨φ, hφ⟩ := Localization.exists_leftFraction L P.isoModSerre
      (z ≫ (L.objObjPreimageIso W).inv)
    rw [← cancel_mono (L.objObjPreimageIso W).inv, zero_comp, hφ,
      ← cancel_mono (L.map φ.s), zero_comp,
      MorphismProperty.LeftFraction.map_comp_map_s]
    apply hf φ.f
    have : L.map φ.f = z ≫ (L.objObjPreimageIso W).inv ≫ L.map φ.s := by
      simp [reassoc_of% hφ]
    rw [this, reassoc_of% hz, zero_comp]
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
