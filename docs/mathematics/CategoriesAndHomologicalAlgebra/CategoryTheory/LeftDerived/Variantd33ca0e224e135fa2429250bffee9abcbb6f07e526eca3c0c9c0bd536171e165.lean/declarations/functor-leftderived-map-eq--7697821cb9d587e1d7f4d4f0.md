# Functor.leftDerived_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a126d70-836f-430d-5a6c-f33d534559c0",
  "kind": "theorem",
  "lexical_name": "Functor.leftDerived_map_eq",
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
  "slug": "functor-leftderived-map-eq--7697821cb9d587e1d7f4d4f0",
  "source": {
    "blob": "13ab4b0cf0519f33e582ae116437a98143081d47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7697821cb9d587e1d7f4d4f0ecb95a9aa7343f619165e85f68287211a8c8ed25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a126d70-836f-430d-5a6c-f33d534559c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Functor.leftDerived_map_eq (F : C ⥤ D) [F.Additive] (n : ℕ) {X Y : C} (f : X ⟶ Y)
    {P : ProjectiveResolution X} {Q : ProjectiveResolution Y} (g : P.complex ⟶ Q.complex)
    (w : g ≫ Q.π = P.π ≫ (ChainComplex.single₀ C).map f) :
    (F.leftDerived n).map f =
      (P.isoLeftDerivedObj F n).hom ≫
        (F.mapHomologicalComplex _ ⋙ HomologicalComplex.homologyFunctor _ _ n).map g ≫
          (Q.isoLeftDerivedObj F n).inv := by
  rw [← cancel_mono (Q.isoLeftDerivedObj F n).hom,
    ProjectiveResolution.isoLeftDerivedObj_hom_naturality f P Q g _ F n,
    assoc, assoc, Iso.inv_hom_id, comp_id]
  rw [← HomologicalComplex.comp_f, w, HomologicalComplex.comp_f,
    ChainComplex.single₀_map_f_zero]

/-- The natural transformation
`F.leftDerivedToHomotopyCategory ⟶ G.leftDerivedToHomotopyCategory` induced by
a natural transformation `F ⟶ G` between additive functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantd33ca0e224e135fa2429250bffee9abcbb6f07e526eca3c0c9c0bd536171e165.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ab4b0cf0519f33e582ae116437a98143081d47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
