# Functor.rightDerived_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b305f19-9168-392b-f73e-5215da618a48",
  "kind": "theorem",
  "lexical_name": "Functor.rightDerived_map_eq",
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
  "slug": "functor-rightderived-map-eq--2b39ae3ae900616e5753bef3",
  "source": {
    "blob": "ef9aab66aff1d402a134a5ad19ee15776504f5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b39ae3ae900616e5753bef3d0c0fa6d7c35fe2d29410d9c98dcaa70e785cc3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b305f19-9168-392b-f73e-5215da618a48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.rightDerived_map_eq (F : C ⥤ D) [F.Additive] (n : ℕ) {X Y : C} (f : X ⟶ Y)
    {P : InjectiveResolution X} {Q : InjectiveResolution Y} (g : P.cocomplex ⟶ Q.cocomplex)
    (w : P.ι ≫ g = (CochainComplex.single₀ C).map f ≫ Q.ι) :
    (F.rightDerived n).map f =
      (P.isoRightDerivedObj F n).hom ≫
        (F.mapHomologicalComplex _ ⋙ HomologicalComplex.homologyFunctor _ _ n).map g ≫
          (Q.isoRightDerivedObj F n).inv := by
  rw [← cancel_mono (Q.isoRightDerivedObj F n).hom,
    InjectiveResolution.isoRightDerivedObj_hom_naturality f P Q g _ F n,
    assoc, assoc, Iso.inv_hom_id, comp_id]
  rw [← HomologicalComplex.comp_f, w, HomologicalComplex.comp_f,
    CochainComplex.single₀_map_f_zero]

/-- The natural transformation
`F.rightDerivedToHomotopyCategory ⟶ G.rightDerivedToHomotopyCategory` induced by
a natural transformation `F ⟶ G` between additive functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant2ffbea95ea8b21829b6153e0bc0450171c0a8dffba6e42c3a16b925cadb6890d.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9aab66aff1d402a134a5ad19ee15776504f5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
