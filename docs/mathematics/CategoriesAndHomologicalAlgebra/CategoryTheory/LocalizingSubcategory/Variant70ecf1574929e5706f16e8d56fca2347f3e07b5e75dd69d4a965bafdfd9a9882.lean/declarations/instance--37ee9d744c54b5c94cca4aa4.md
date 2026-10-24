# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:345e3d61b880126aa5d1a3621f0210e56ec1ef009ac75d16875cb778cccd3971",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--37ee9d744c54b5c94cca4aa4",
  "source": {
    "blob": "a615e6a12a50a7150c4611b1a585d5c408236b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37ee9d744c54b5c94cca4aa4f24efb35e312ac14d24940c7e2ad646f0ae478b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:345e3d61b880126aa5d1a3621f0210e56ec1ef009ac75d16875cb778cccd3971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ((A.triangulatedLocalizerMorphism B).localizedFunctor L₁ L₂).Full := by
  let F := (A.triangulatedLocalizerMorphism B).localizedFunctor L₁ L₂
  have : L₁.EssSurj := Localization.essSurj L₁ (B.inverseImage A.ι).trW
  let e : A.ι ⋙ L₂ ≅ L₁ ⋙ F := CatCommSq.iso
    (A.triangulatedLocalizerMorphism B).functor L₁ L₂ F
  refine F.full_of_comp_essSurj L₁ (fun X₁ X₂ φ ↦ ?_)
  obtain ⟨φ', hφ'⟩ : ∃ φ', φ = e.inv.app X₁ ≫ φ' ≫ e.hom.app X₂ :=
    ⟨e.hom.app X₁ ≫ φ ≫ e.inv.app X₂, by
      simp [dsimp% e.inv_hom_id_app_assoc, dsimp% e.inv_hom_id_app]⟩
  obtain ⟨f, hf⟩ := Localization.exists_leftFraction L₂ B.trW φ'
  obtain ⟨X₃, s', a, hX₃, hs', fac⟩ :=
    IsVerdierRightLocalizing.fac' f.s X₂.property f.hs
  let g : (B.inverseImage A.ι).trW.LeftFraction X₁ X₂ :=
    { Y' := ⟨X₃, hX₃⟩
      f := A.homMk (f.f ≫ a)
      s := A.homMk s'
      hs := by rwa [trW_inverseImage_ι_iff] }
  have := Localization.inverts L₁ _ _ g.hs
  refine ⟨g.map L₁ (Localization.inverts _ _), ?_⟩
  rw [← cancel_mono (F.map (L₁.map g.s)), ← Functor.map_comp,
    MorphismProperty.LeftFraction.map_comp_map_s]
  simp [g, ← fac, hφ', hf, ← dsimp% NatIso.naturality_1 e,
    dsimp% e.hom_inv_id_app_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizingSubcategory/Variant70ecf1574929e5706f16e8d56fca2347f3e07b5e75dd69d4a965bafdfd9a9882.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a615e6a12a50a7150c4611b1a585d5c408236b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
