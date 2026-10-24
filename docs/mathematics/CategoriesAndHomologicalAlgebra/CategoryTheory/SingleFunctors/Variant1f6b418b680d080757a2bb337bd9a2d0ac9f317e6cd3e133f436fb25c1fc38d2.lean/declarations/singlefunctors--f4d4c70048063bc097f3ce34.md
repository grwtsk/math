# SingleFunctors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f03a10b4baacca0c21a616d4cd1d56f53b410f15caebef1f86ca8378a40c0e04",
  "kind": "structure",
  "lexical_name": "SingleFunctors",
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
  "slug": "singlefunctors--f4d4c70048063bc097f3ce34",
  "source": {
    "blob": "3ac3d3b193884ca0b8f64fdb76503c3b2d1bb2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4d4c70048063bc097f3ce34f6d4a6bffa107fabdf0aa26572a9a4487b3799b1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f03a10b4baacca0c21a616d4cd1d56f53b410f15caebef1f86ca8378a40c0e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SingleFunctors where
  /-- a family of functors `C ⥤ D` indexed by the elements of the additive monoid `A` -/
  functor (a : A) : C ⥤ D
  /-- the isomorphism `functor a' ⋙ shiftFunctor D n ≅ functor a` when `n + a = a'` -/
  shiftIso (n a a' : A) (ha' : n + a = a') : functor a' ⋙ shiftFunctor D n ≅ functor a
  /-- `shiftIso 0` is the obvious isomorphism. -/
  shiftIso_zero (a : A) :
    shiftIso 0 a a (zero_add a) = isoWhiskerLeft _ (shiftFunctorZero D A)
  /-- `shiftIso (m + n)` is determined by `shiftIso m` and `shiftIso n`. -/
  shiftIso_add (n m a a' a'' : A) (ha' : n + a = a') (ha'' : m + a' = a'') :
    shiftIso (m + n) a a'' (by rw [add_assoc, ha', ha'']) =
      isoWhiskerLeft _ (shiftFunctorAdd D m n) ≪≫ (Functor.associator _ _ _).symm ≪≫
        isoWhiskerRight (shiftIso m a' a'' ha'') _ ≪≫ shiftIso n a a' ha'

variable {C D E A}
variable (F G H : SingleFunctors C D A)

namespace SingleFunctors

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac3d3b193884ca0b8f64fdb76503c3b2d1bb2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
