# leftDerived_app_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee1d2e68-15b8-f103-4847-a0a5c18fb5f2",
  "kind": "lemma",
  "lexical_name": "leftDerived_app_eq",
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
  "slug": "leftderived-app-eq--81ef2f9c81ebed2aca4aee25",
  "source": {
    "blob": "7d85d1fc45f0fc96944f98a3c7f28af0925c8479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantf9c791078529d426c97c1f820fe1b9287d1042d70473dfc9128ebc426f2911d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ef2f9c81ebed2aca4aee250f70d6218f53aa439d4430496f4a439c5e446302",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantf9c791078529d426c97c1f820fe1b9287d1042d70473dfc9128ebc426f2911d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee1d2e68-15b8-f103-4847-a0a5c18fb5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftDerived_app_eq
    {F G : C ⥤ D} [F.Additive] [G.Additive] (α : F ⟶ G) {X : C} (P : ProjectiveResolution X)
    (n : ℕ) : (NatTrans.leftDerived α n).app X =
      (P.isoLeftDerivedObj F n).hom ≫
        (HomologicalComplex.homologyFunctor D (ComplexShape.down ℕ) n).map
        ((NatTrans.mapHomologicalComplex α _).app P.complex) ≫
        (P.isoLeftDerivedObj G n).inv := by
  dsimp [NatTrans.leftDerived, isoLeftDerivedObj]
  rw [ProjectiveResolution.leftDerivedToHomotopyCategory_app_eq α P,
    Functor.map_comp, Functor.map_comp, assoc]
  erw [← (HomotopyCategory.homologyFunctorFactors D (ComplexShape.down ℕ) n).hom.naturality_assoc
    ((NatTrans.mapHomologicalComplex α (ComplexShape.down ℕ)).app P.complex)]
  simp only [Functor.comp_map, Iso.hom_inv_id_app_assoc]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `P : ProjectiveResolution X` and `F` is an additive functor, this is
the canonical morphism from the opcycles in degree `0` of
`(F.mapHomologicalComplex _).obj P.complex` to `F.obj X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantf9c791078529d426c97c1f820fe1b9287d1042d70473dfc9128ebc426f2911d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantf9c791078529d426c97c1f820fe1b9287d1042d70473dfc9128ebc426f2911d5.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d85d1fc45f0fc96944f98a3c7f28af0925c8479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
