# mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06f861fe-38df-221b-0177-a22d2a2d2496",
  "kind": "lemma",
  "lexical_name": "mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso",
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
  "slug": "mapbifunctorshift-iso-trans-mapbifunctorshift-iso--90074a35033519290c6c8cab",
  "source": {
    "blob": "112a572e913b3b0f36e4c35dd90fbdc571f0fafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 204,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90074a35033519290c6c8cab1d365f4bbdcbe885ea23bac30d34bbf6b8beb6cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06f861fe-38df-221b-0177-a22d2a2d2496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso :
    mapBifunctorShift₁Iso K₁ (K₂⟦y⟧) F x ≪≫
      (CategoryTheory.shiftFunctor _ x).mapIso (mapBifunctorShift₂Iso K₁ K₂ F y) =
      (x * y).negOnePow • (mapBifunctorShift₂Iso (K₁⟦x⟧) K₂ F y ≪≫
        (CategoryTheory.shiftFunctor _ y).mapIso (mapBifunctorShift₁Iso K₁ K₂ F x) ≪≫
          (shiftFunctorComm (CochainComplex D ℤ) x y).app _) := by
  ext1
  dsimp [mapBifunctorShift₁Iso, mapBifunctorShift₂Iso]
  rw [Functor.map_comp, Functor.map_comp, assoc, assoc, assoc,
    ← HomologicalComplex₂.totalShift₁Iso_hom_naturality_assoc,
    HomologicalComplex₂.totalShift₁Iso_hom_totalShift₂Iso_hom,
    ← HomologicalComplex₂.totalShift₂Iso_hom_naturality_assoc,
    Linear.comp_units_smul, Linear.comp_units_smul,
    smul_left_cancel_iff,
    ← HomologicalComplex₂.total.map_comp_assoc,
    ← HomologicalComplex₂.total.map_comp_assoc,
    ← HomologicalComplex₂.total.map_comp_assoc]
  congr 2
  ext a b
  dsimp [HomologicalComplex₂.shiftFunctor₁₂CommIso]
  simp only [id_comp]

end

end CochainComplex

namespace CategoryTheory.Functor

variable [Preadditive C₁] [Preadditive C₂] [Preadditive D]
  (F : C₁ ⥤ C₂ ⥤ D) [F.Additive] [∀ (X₁ : C₁), (F.obj X₁).Additive]
  [∀ (K₁ : CochainComplex C₁ ℤ) (K₂ : CochainComplex C₂ ℤ),
    CochainComplex.HasMapBifunctor K₁ K₂ F]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant52bf3bcba288fcd48c0a86051922a50a4746f4f9e2e0d9151ebdf6f93fb87852.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112a572e913b3b0f36e4c35dd90fbdc571f0fafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
