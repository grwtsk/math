# createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a25fdc56fd25012d4720e0efc16f6e0ee5fe8d05107797e50d404b377034f82",
  "kind": "def",
  "lexical_name": "createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts",
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
  "slug": "createsfinitelimitsofcreatesequalizersandfiniteproducts--f001d84eff3a60d3864a9a23",
  "source": {
    "blob": "25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f001d84eff3a60d3864a9a230e2c464813a3398b37f7451746e00ca084e5f259",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a25fdc56fd25012d4720e0efc16f6e0ee5fe8d05107797e50d404b377034f82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts [HasEqualizers D]
    [HasFiniteProducts D] (G : C ⥤ D) [G.ReflectsIsomorphisms]
    [CreatesLimitsOfShape WalkingParallelPair G]
    [CreatesFiniteProducts G] : CreatesFiniteLimits G where
  createsFiniteLimits _ _ _ := createsLimitsOfShapeOfCreatesEqualizersAndProducts G

/-- If a functor creates equalizers and products, it creates limits.

We additionally require the rather strong condition that the functor reflects isomorphisms. It is
unclear whether the statement remains true without this condition. There are various definitions of
"creating limits" in the literature, and whether or not the condition can be dropped seems to depend
on the specific definition that is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant6250c74828d37d96ad5219a1572a5e7924166316217f57069140c564f84c5648.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25760eb77a0bbba6ede8a4dfe0d9d8d1619561f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
