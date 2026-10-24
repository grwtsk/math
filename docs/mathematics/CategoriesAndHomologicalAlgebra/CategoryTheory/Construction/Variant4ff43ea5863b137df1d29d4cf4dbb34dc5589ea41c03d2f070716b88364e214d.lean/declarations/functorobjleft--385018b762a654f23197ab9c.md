# functorObjLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b7f1b2aa8f3688d08f1931f2aa4d02a948ccaf484a646faa8446618e8873a78",
  "kind": "abbrev",
  "lexical_name": "functorObjLeft",
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
  "slug": "functorobjleft--385018b762a654f23197ab9c",
  "source": {
    "blob": "60244614a926721b8753c8009d06de67b73c977c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:385018b762a654f23197ab9c4ef7fb29b975466c369c7d9a8ec83a1e8f59e739",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b7f1b2aa8f3688d08f1931f2aa4d02a948ccaf484a646faa8446618e8873a78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev functorObjLeft :
    ∐ functorObjSrcFamily f πX ⟶ ∐ functorObjTgtFamily f πX :=
  Limits.Sigma.map (functorObjLeftFamily f πX)

variable [HasPushout (functorObjTop f πX) (functorObjLeft f πX)]

/-- The functor `SmallObject.functor f : Arrow C ⥤ Arrow C` that is part of
the small object argument for a family of morphisms `f`, on an object given
as a morphism `πX : X ⟶ S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60244614a926721b8753c8009d06de67b73c977c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
