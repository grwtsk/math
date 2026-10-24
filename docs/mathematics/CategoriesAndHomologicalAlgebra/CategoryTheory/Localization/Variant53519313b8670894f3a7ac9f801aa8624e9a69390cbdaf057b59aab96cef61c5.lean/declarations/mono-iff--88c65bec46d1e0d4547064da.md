# mono_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcac36a0-9374-091a-33bc-166f3ed8393e",
  "kind": "lemma",
  "lexical_name": "mono_iff",
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
  "slug": "mono-iff--88c65bec46d1e0d4547064da",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88c65bec46d1e0d4547064da3916a3ecd034e43cc105692926aafd84bd75eb5f",
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

Occurrence: `result:bcac36a0-9374-091a-33bc-166f3ed8393e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_iff {X Y : D} (f : X ⟶ Y) :
    Mono f ↔ ∃ (X' Y' : C) (f' : X' ⟶ Y') (_ : Mono f'),
      Nonempty (Arrow.mk (L.map f') ≅ Arrow.mk f) := by
  have := preservesMonomorphisms L P
  have := Localization.essSurj_mapArrow L P.isoModSerre
  refine ⟨fun _ ↦ ?_, ?_⟩
  · suffices ∀ ⦃X Y : C⦄ (f : X ⟶ Y) (_ : Mono (L.map f)),
      ∃ (X' Y' : C) (f' : X' ⟶ Y') (_ : Mono f'),
          Nonempty (Arrow.mk (L.map f') ≅ Arrow.mk (L.map f)) by
        let e := L.mapArrow.objObjPreimageIso (Arrow.mk f)
        obtain ⟨X', Y', f', _, ⟨e'⟩⟩ := this _
          (((MorphismProperty.monomorphisms D).arrow_iso_iff e).2 (.infer_property f))
        exact ⟨_, _, f', inferInstance, ⟨e' ≪≫ e⟩⟩
    intro X Y f hf
    rw [mono_map_iff L P] at hf
    refine ⟨_, _, Abelian.image.ι f, inferInstance, ⟨Iso.symm ?_⟩⟩
    have := Localization.inverts L P.isoModSerre _ hf.isoModSerre_factorThruImage
    exact Arrow.isoMk (asIso (L.map (Abelian.factorThruImage f))) (Iso.refl _)
      (by simp [← L.map_comp])
  · rintro ⟨X', Y', f', _, ⟨e⟩⟩
    exact ((MorphismProperty.monomorphisms D).arrow_mk_iso_iff e).1
      (by simpa using inferInstanceAs (Mono (L.map f')))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
