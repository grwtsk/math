# hasLocalizationOfLocallySmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1553f4b6eae15ad745fbacda09da7c0a66b7f2380b40cfcc358ce90a20e4cfd",
  "kind": "def",
  "lexical_name": "hasLocalizationOfLocallySmall",
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
  "slug": "haslocalizationoflocallysmall--6398966c42029d7b60a6a258",
  "source": {
    "blob": "12c04e06860ef0e6a2eb54ff375cb1bde523029d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6398966c42029d7b60a6a2586368b866b5fd7d1d09f6fdbae16d3d03bb7bed32",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1553f4b6eae15ad745fbacda09da7c0a66b7f2380b40cfcc358ce90a20e4cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def hasLocalizationOfLocallySmall
    {D : Type u₁} [Category.{v₂} D] [LocallySmall.{w} D]
    (L : C ⥤ D) [L.IsLocalization W] :
    HasLocalization.{w} W where
  D := ShrinkHoms D
  L := L ⋙ (ShrinkHoms.equivalence D).functor

/-- If `L : C ⥤ D` is a localization functor for a class of morphisms
`W : MorphismProperty C`, and `D` is locally `w`-small, we may obtain
a `HasLocalization.{w} W` instance. This should be used only in the
unlikely situation where the types of objects of `C` and `D` are in
different universes. Otherwise, use `hasLocalizationOfLocallySmall`. -/
noncomputable irreducible_def hasLocalizationOfLocallySmall'
    {D : Type u₂} [Category.{v₂} D] [LocallySmall.{w} D]
    (L : C ⥤ D) [L.IsLocalization W] :
    HasLocalization.{w} W := by
  have : LocallySmall.{w} (InducedCategory _ L.obj) :=
    ⟨fun X Y ↦ inferInstanceAs (Small.{w} (L.obj X ⟶ L.obj Y))⟩
  let L' : C ⥤ (InducedCategory _ L.obj) :=
    { obj X := X
      map f := L.map f }
  have := Localization.essSurj L W
  have : (inducedFunctor L.obj).EssSurj := ⟨fun Y ↦ ⟨_, ⟨L.objObjPreimageIso Y⟩⟩⟩
  have : (inducedFunctor L.obj).IsEquivalence := { }
  let e := (inducedFunctor L.obj).asEquivalence
  let e' : (L' ⋙ e.functor) ⋙ e.inverse ≅ L' :=
    Functor.associator _ _ _ ≪≫ isoWhiskerLeft L' e.unitIso.symm ≪≫ L'.rightUnitor
  have : L'.IsLocalization W :=
    Functor.IsLocalization.of_iso W (L₁ := L ⋙ e.inverse) e'
  exact hasLocalizationOfLocallySmall.{w} W L'

/-- If a class of morphisms `W : MorphismProperty C` satisfies `HasLocalization.{w} W`,
then any localized category for `W` (i.e. any target of a localization functor
`L : C ⥤ D` for `W`) is locally `w`-small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variant2ed36c3f54cb1b111e48b28f8f82cc17c8118a9b8d15a630144c0aaa44e5708e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12c04e06860ef0e6a2eb54ff375cb1bde523029d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
