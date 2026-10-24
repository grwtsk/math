# Functor.mapHomotopyCategory_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ea7cc9-4bec-cc1e-a175-ebbd48444930",
  "kind": "lemma",
  "lexical_name": "Functor.mapHomotopyCategory_map",
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
  "slug": "functor-maphomotopycategory-map--8af1fb3d5871ebeb561ec112",
  "source": {
    "blob": "6de3e4c7270c24a477a9ed12a256bc40b5585d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8af1fb3d5871ebeb561ec11242e19ec1703b6e38fcafe57c090439f90428215c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ea7cc9-4bec-cc1e-a175-ebbd48444930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.mapHomotopyCategory_map (F : V ⥤ W) [F.Additive] {c : ComplexShape ι}
    {K L : HomologicalComplex V c} (f : K ⟶ L) :
    (F.mapHomotopyCategory c).map ((HomotopyCategory.quotient V c).map f) =
      (HomotopyCategory.quotient W c).map ((F.mapHomologicalComplex c).map f) :=
  rfl

-- TODO `F.mapHomotopyCategory c` is additive (and linear when `F` is linear).
-- TODO develop lifting of natural transformations for general quotient categories so that
-- `NatTrans.mapHomotopyCategory` become a particular case of it
/-- A natural transformation induces a natural transformation between
  the induced functors on the homotopy category. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant6b39645ecdbb0dd06fd0caf0bdcb66de0867951491ed81cb25837bd95c0a1c56.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de3e4c7270c24a477a9ed12a256bc40b5585d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
