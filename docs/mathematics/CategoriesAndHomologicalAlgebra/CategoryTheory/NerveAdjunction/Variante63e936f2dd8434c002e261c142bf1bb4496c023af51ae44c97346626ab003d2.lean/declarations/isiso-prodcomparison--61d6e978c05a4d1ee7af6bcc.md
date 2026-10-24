# isIso_prodComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19a5e56a09a182d25fad116ae83fd5c2388ffa033b7fe3d0e183158e0f7d0bb8",
  "kind": "instance",
  "lexical_name": "isIso_prodComparison",
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
  "slug": "isiso-prodcomparison--61d6e978c05a4d1ee7af6bcc",
  "source": {
    "blob": "6e9a63b72c5a3f1d67883130eb00174af8b5107c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 457,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61d6e978c05a4d1ee7af6bcc60a4dc46b8df3c82d374ffd40b835b3100cb8e3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19a5e56a09a182d25fad116ae83fd5c2388ffa033b7fe3d0e183158e0f7d0bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_prodComparison (X Y : SSet.{u}) :
    IsIso (prodComparison hoFunctor X Y) := isIso_prodComparison_of_stdSimplex _ fun m ↦ by
  convert_to IsIso (hoFunctor.map (prod.braiding _ _).hom ≫
    prodComparison hoFunctor Δ[m] X ≫ (prod.braiding _ _).hom)
  · simp [↓map_braiding_hom_comp_prodComparison_assoc]
  suffices IsIso (prodComparison hoFunctor Δ[m] X) by infer_instance
  exact isIso_prodComparison_of_stdSimplex _ (isIso_prodComparison_stdSimplex _)

/-- The functor `hoFunctor : SSet ⥤ Cat` preserves binary products of simplicial sets `X` and
`Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variante63e936f2dd8434c002e261c142bf1bb4496c023af51ae44c97346626ab003d2.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9a63b72c5a3f1d67883130eb00174af8b5107c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
