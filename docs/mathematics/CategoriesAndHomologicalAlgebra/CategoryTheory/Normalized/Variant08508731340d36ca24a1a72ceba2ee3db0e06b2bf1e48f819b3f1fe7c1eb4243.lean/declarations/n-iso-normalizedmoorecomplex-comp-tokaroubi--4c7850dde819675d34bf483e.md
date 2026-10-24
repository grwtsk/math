# N₁_iso_normalizedMooreComplex_comp_toKaroubi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c5766f583a03db62a12f500ee1cc0493ba7de27338f525159763b6fa16a46e2",
  "kind": "def",
  "lexical_name": "N₁_iso_normalizedMooreComplex_comp_toKaroubi",
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
  "slug": "n-iso-normalizedmoorecomplex-comp-tokaroubi--4c7850dde819675d34bf483e",
  "source": {
    "blob": "ce806915bd1f94d4607d2d31a38e563507c0f784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c7850dde819675d34bf483e9d42a2bdcddcce49b9108a1075d8dc93f5cc050c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c5766f583a03db62a12f500ee1cc0493ba7de27338f525159763b6fa16a46e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def N₁_iso_normalizedMooreComplex_comp_toKaroubi : N₁ ≅ normalizedMooreComplex A ⋙ toKaroubi _ where
  hom :=
    { app := fun X =>
        { f := PInftyToNormalizedMooreComplex X
          comm := by erw [comp_id, PInfty_comp_PInftyToNormalizedMooreComplex] }
      naturality := fun X Y f => by
        simp only [Functor.comp_map, normalizedMooreComplex_map,
          PInftyToNormalizedMooreComplex_naturality, Karoubi.hom_ext_iff, Karoubi.comp_f, N₁_map_f,
          PInfty_comp_PInftyToNormalizedMooreComplex_assoc, toKaroubi_map_f, assoc] }
  inv :=
    { app := fun X =>
        { f := inclusionOfMooreComplexMap X
          comm := by erw [inclusionOfMooreComplexMap_comp_PInfty, id_comp] }
      naturality := fun X Y f => by
        ext
        simp only [Functor.comp_map, normalizedMooreComplex_map, Karoubi.comp_f, toKaroubi_map_f,
          HomologicalComplex.comp_f, NormalizedMooreComplex.map_f,
          inclusionOfMooreComplexMap_f, factorThru_arrow, N₁_map_f,
          inclusionOfMooreComplexMap_comp_PInfty_assoc, AlternatingFaceMapComplex.map_f] }
  hom_inv_id := by
    ext X : 3
    simp only [PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      NatTrans.comp_app, Karoubi.comp_f, N₁_obj_p, NatTrans.id_app, Karoubi.id_eq]
  inv_hom_id := by
    ext X : 3
    rw [← cancel_mono (inclusionOfMooreComplexMap X)]
    simp only [NatTrans.comp_app, Karoubi.comp_f, assoc, NatTrans.id_app, Karoubi.id_eq,
      PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      inclusionOfMooreComplexMap_comp_PInfty]
    dsimp only [Functor.comp_obj, toKaroubi]
    erw [id_comp]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.N₁_iso_normalized_Moore_complex_comp_to_karoubi AlgebraicTopology.DoldKan.N₁_iso_normalizedMooreComplex_comp_toKaroubi

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce806915bd1f94d4607d2d31a38e563507c0f784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
