# mono_map_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b5afcfc-fa70-b7fd-94f5-d8fa3e5d36a5",
  "kind": "lemma",
  "lexical_name": "mono_map_tfae",
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
  "slug": "mono-map-tfae--ec643e463c9c6f2ea97a628b",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec643e463c9c6f2ea97a628b4c1e363242adb1e25c2af648b00bd448fd4a85ed",
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

Occurrence: `result:0b5afcfc-fa70-b7fd-94f5-d8fa3e5d36a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_map_tfae {X Y : C} (f : X ⟶ Y) :
    List.TFAE [Mono (L.map f),
      P.monoModSerre f,
      ∀ ⦃Z : C⦄ (z : Z ⟶ X), L.map z ≫ L.map f = 0 → L.map z = 0] := by
  have := Localization.essSurj L P.isoModSerre
  tfae_have 1 → 2 := fun _ ↦ by
    have hf : L.map (kernel.ι f) = 0 := by
      rw [← cancel_mono (L.map f), zero_comp, ← L.map_comp,
        kernel.condition, L.map_zero]
    simpa [hf] using! map_comp_eq_zero_iff_of_epi_mono L P (𝟙 _) (kernel.ι f)
  tfae_have 2 → 3 := fun hf ↦ by
    intro Z z hz
    rw [← L.map_comp] at hz
    rw [map_eq_zero_iff L P, ← exists_comp_monoModSerre_eq_zero_iff P] at hz ⊢
    obtain ⟨W, s, hs, eq⟩ := hz
    exact ⟨W, f ≫ s, MorphismProperty.comp_mem _ _ _ hf hs, by simpa using! eq⟩
  tfae_have 3 → 1 := fun hf ↦ by
    rw [Preadditive.mono_iff_cancel_zero]
    intro W z hz
    obtain ⟨φ, hφ⟩ := Localization.exists_rightFraction L P.isoModSerre
      ((L.objObjPreimageIso W).hom ≫ z)
    rw [← cancel_epi (L.objObjPreimageIso W).hom, comp_zero, hφ,
      ← cancel_epi (L.map φ.s), comp_zero,
      MorphismProperty.RightFraction.map_s_comp_map]
    apply hf φ.f
    have : L.map φ.s ≫ (L.objObjPreimageIso W).hom ≫ z = L.map φ.f := by cat_disch
    rw [← this, Category.assoc, Category.assoc, hz, comp_zero, comp_zero]
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
