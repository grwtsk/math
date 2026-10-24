# preservesKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d899d014-0538-5aa0-5104-496cfa1fd3ab",
  "kind": "lemma",
  "lexical_name": "preservesKernel",
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
  "slug": "preserveskernel--7e2000c5d8f712ade955b66f",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e2000c5d8f712ade955b66f6ac6f4f7e5d171479d27a449c1061273bc3d8420",
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

Occurrence: `result:d899d014-0538-5aa0-5104-496cfa1fd3ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesKernel {X Y : C} (f : X ⟶ Y) :
    PreservesLimit (parallelPair f 0) L := by
  have := preservesMonomorphisms L P
  have := Localization.essSurj L P.isoModSerre
  suffices ∀ (W : D) (z : W ⟶ L.obj X) (hz : z ≫ L.map f = 0),
      ∃ (l : W ⟶ L.obj (kernel f)), l ≫ L.map (kernel.ι f) = z from
    preservesLimit_of_preserves_limit_cone (kernelIsKernel f)
      ((KernelFork.isLimitMapConeEquiv _ L).2
        (Fork.IsLimit.ofExistsUnique
          (fun s ↦ existsUnique_of_exists_of_unique
            (this _ _ (KernelFork.condition s))
            (fun _ _ h₁ h₂ ↦ by simpa [cancel_mono] using h₁.trans h₂.symm))))
  intro W w hw
  wlog hw' : ∃ (Z : C) (hZ : W = L.obj Z) (z : Z ⟶ X), w = eqToHom hZ ≫ L.map z
      generalizing W
  · obtain ⟨φ, hφ⟩ := Localization.exists_rightFraction L P.isoModSerre
      ((L.objObjPreimageIso W).hom ≫ w)
    rw [← cancel_epi (L.map φ.s),
      MorphismProperty.RightFraction.map_s_comp_map] at hφ
    obtain ⟨l, hl⟩ := this _ (L.map φ.f) (by
      rw [← hφ, Category.assoc, Category.assoc, hw, comp_zero, comp_zero]) ⟨_, rfl, by simp⟩
    exact ⟨(L.objObjPreimageIso W).inv ≫ inv (L.map φ.s) ≫ l, by simp [hl, ← hφ]⟩
  obtain ⟨Z, rfl, z, rfl⟩ := hw'
  simp only [eqToHom_refl, Category.id_comp, ← L.map_comp, map_eq_zero_iff L P,
    ← exists_isoModSerre_comp_eq_zero_iff P] at hw
  obtain ⟨Z', t, ht, fac⟩ := hw
  have := Localization.inverts L P.isoModSerre t ht
  rw [← Category.assoc] at fac
  exact ⟨inv (L.map t) ≫ L.map (kernel.lift _ _ fac), by simp [← Functor.map_comp]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
