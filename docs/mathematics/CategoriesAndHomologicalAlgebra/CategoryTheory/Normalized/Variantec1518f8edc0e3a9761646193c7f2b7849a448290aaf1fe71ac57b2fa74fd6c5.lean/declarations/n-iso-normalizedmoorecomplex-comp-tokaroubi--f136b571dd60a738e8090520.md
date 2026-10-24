# N₁_iso_normalizedMooreComplex_comp_toKaroubi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d39cb74737d8a8a6ee2109f336db1cf9f5a3ce9680f895a91355c02cab5b013f",
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
  "slug": "n-iso-normalizedmoorecomplex-comp-tokaroubi--f136b571dd60a738e8090520",
  "source": {
    "blob": "d96dcebf3d5bdc91555d1114c5e0c81a350c7d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f136b571dd60a738e80905201d2715e259fa38b73f4993a218f881512eb63f2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d39cb74737d8a8a6ee2109f336db1cf9f5a3ce9680f895a91355c02cab5b013f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def N₁_iso_normalizedMooreComplex_comp_toKaroubi : N₁ ≅ normalizedMooreComplex A ⋙ toKaroubi _ where
  hom :=
    { app := fun X => { f := PInftyToNormalizedMooreComplex X } }
  inv :=
    { app := fun X => { f := inclusionOfMooreComplexMap X } }
  hom_inv_id := by
    ext X : 3
    simp only [PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      NatTrans.comp_app, Karoubi.comp_f, N₁_obj_p, NatTrans.id_app, Karoubi.id_f]
  inv_hom_id := by
    ext X : 3
    rw [← cancel_mono (inclusionOfMooreComplexMap X)]
    simp only [NatTrans.comp_app, Karoubi.comp_f, assoc, NatTrans.id_app, Karoubi.id_f,
      PInftyToNormalizedMooreComplex_comp_inclusionOfMooreComplexMap,
      inclusionOfMooreComplexMap_comp_PInfty]
    dsimp only [Functor.comp_obj, toKaroubi]
    rw [id_comp]

end DoldKan

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variantec1518f8edc0e3a9761646193c7f2b7849a448290aaf1fe71ac57b2fa74fd6c5.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96dcebf3d5bdc91555d1114c5e0c81a350c7d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
