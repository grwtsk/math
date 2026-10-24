# homEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afc0842875f252a8b5361080fc3731cb9642b8e24a16f0de3fd663b3d1fa4545",
  "kind": "def",
  "lexical_name": "homEquiv",
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
  "slug": "homequiv--c1748cae7a603d3a39e486c7",
  "source": {
    "blob": "68253c6dd40bc111364a315941978407fd2b2189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1748cae7a603d3a39e486c76cae55eab77386470195723386e6811fc3226772",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afc0842875f252a8b5361080fc3731cb9642b8e24a16f0de3fd663b3d1fa4545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homEquiv {N : ModuleCat.{w} cR.pt} :
    (↧(ModuleColimit hcR hcM) ⟶ N) ≃+ (M ⟶ (constFunctor cR).obj N) where
  toFun φ := PresheafOfModules.homMk
    (homEquiv' hcR hcM ((forget₂ _ AddCommGrpCat).map φ).hom)
      ((map_smul_homEquiv'_iff hcR hcM ((forget₂ _ AddCommGrpCat).map φ).hom).2 (by simp))
  invFun ψ := ModuleCat.ofHom
    { toFun := (homEquiv' hcR hcM).symm ((toPresheaf _).map ψ)
      map_add' := by simp
      map_smul' := by
        obtain ⟨φ, hφ⟩ := (homEquiv' hcR hcM).surjective ((toPresheaf _).map ψ)
        simp only [← hφ, AddEquiv.symm_apply_apply, RingHom.id_apply]
        refine (map_smul_homEquiv'_iff hcR hcM φ).1 (fun U r m ↦ ?_)
        rw [hφ]
        erw [toPresheaf_map_app_apply]
        rw [map_smul]
        rfl }
  left_inv φ := (forget₂ _ AddCommGrpCat).map_injective (by
    ext : 1
    exact (homEquiv' hcR hcM).left_inv ((forget₂ _ AddCommGrpCat).map φ).hom)
  right_inv ψ := (toPresheaf _).map_injective ((homEquiv' hcR hcM).right_inv _)
  map_add' φ₁ φ₂ := (toPresheaf _).map_injective
    ((homEquiv' hcR hcM).map_add ((forget₂ _ AddCommGrpCat).map φ₁).hom
      ((forget₂ _ AddCommGrpCat).map φ₂).hom)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitFunctor/Variant75721c782f68dc293d6a1aeb51711afcab6317581f06ff9235d5183104960d5b.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68253c6dd40bc111364a315941978407fd2b2189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
