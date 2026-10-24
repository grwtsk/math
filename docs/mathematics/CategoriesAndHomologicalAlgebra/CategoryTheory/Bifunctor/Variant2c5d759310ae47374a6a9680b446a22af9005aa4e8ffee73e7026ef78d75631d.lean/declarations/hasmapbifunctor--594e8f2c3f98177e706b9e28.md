# HasMapBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdabef2ce956d371b0dc4cd305e8658b59adb1c340472936ee72ed00175100c9",
  "kind": "abbrev",
  "lexical_name": "HasMapBifunctor",
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
  "slug": "hasmapbifunctor--594e8f2c3f98177e706b9e28",
  "source": {
    "blob": "ad2a86df7fcf6673cb93d058e684f00790a22a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant2c5d759310ae47374a6a9680b446a22af9005aa4e8ffee73e7026ef78d75631d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:594e8f2c3f98177e706b9e2871b25d73c46f6246e49a76ae6e233a28cb5701c9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant2c5d759310ae47374a6a9680b446a22af9005aa4e8ffee73e7026ef78d75631d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdabef2ce956d371b0dc4cd305e8658b59adb1c340472936ee72ed00175100c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HasMapBifunctor := (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).HasTotal c

variable [HasMapBifunctor K₁ K₂ F c] [HasMapBifunctor L₁ L₂ F c] [DecidableEq J]

/-- Given `K₁ : HomologicalComplex C₁ c₁`, `K₂ : HomologicalComplex C₂ c₂`,
a bifunctor `F : C₁ ⥤ C₂ ⥤ D` and a complex shape `ComplexShape J` such that we have
`[TotalComplexShape c₁ c₂ c]`, this `mapBifunctor K₁ K₂ F c : HomologicalComplex D c`
is the total complex of the bicomplex obtained by applying `F` to `K₁` and `K₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant2c5d759310ae47374a6a9680b446a22af9005aa4e8ffee73e7026ef78d75631d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant2c5d759310ae47374a6a9680b446a22af9005aa4e8ffee73e7026ef78d75631d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad2a86df7fcf6673cb93d058e684f00790a22a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
