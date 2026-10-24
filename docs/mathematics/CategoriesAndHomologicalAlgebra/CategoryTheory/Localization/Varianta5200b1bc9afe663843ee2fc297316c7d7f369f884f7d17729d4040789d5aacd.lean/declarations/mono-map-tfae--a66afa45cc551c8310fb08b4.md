# mono_map_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85e94ad0bc3ac78a8786f5199047bb0146874193",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86993321-06dc-13b9-52a2-b1cf9128ec08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3170e1b4-a4ce-2310-4c7b-a3889e6ed269",
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
  "slug": "mono-map-tfae--a66afa45cc551c8310fb08b4",
  "source": {
    "blob": "85e94ad0bc3ac78a8786f5199047bb0146874193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a66afa45cc551c8310fb08b478e70d8eb8c26c2f5eeab1514b15f0722d83cf2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3170e1b4-a4ce-2310-4c7b-a3889e6ed269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–181.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e94ad0bc3ac78a8786f5199047bb0146874193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
