# cartesianMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da382339e65eabd295a4e47e0eec8a472fa2a6a4e8f0c706e62dc95f5b659748",
  "kind": "abbrev",
  "lexical_name": "cartesianMonoidalCategory",
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
  "slug": "cartesianmonoidalcategory--942a013b758be6bbd0e15320",
  "source": {
    "blob": "d823b963e24a24aee2a41eabfb8df85799e2f4ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:942a013b758be6bbd0e15320a05593707357b5ea84f965bca3ef627c05cc2aeb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da382339e65eabd295a4e47e0eec8a472fa2a6a4e8f0c706e62dc95f5b659748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev cartesianMonoidalCategory (X : C) : CartesianMonoidalCategory (Over X) :=
  .ofChosenFiniteProducts
    ⟨asEmptyCone (Over.mk (𝟙 X)), IsTerminal.ofUniqueHom (fun Y ↦ Over.homMk Y.hom)
      fun Y m ↦ Over.OverMorphism.ext (by simpa using m.w)⟩
    fun Y Z ↦ ⟨pullbackConeEquivBinaryFan.functor.obj (pullback.cone Y.hom Z.hom),
    (pullback.isLimit _ _).pullbackConeEquivBinaryFanFunctor⟩

@[deprecated (since := "2025-05-15")] alias chosenFiniteProducts := cartesianMonoidalCategory

attribute [local instance] cartesianMonoidalCategory

/-- `Over X` is braided wrt the cartesian monoidal structure given by `Limits.pullback`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant9882d950da293c6c5b611025fc35efbdc5b3b87c78d4ddbd2431d5073bde9878.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d823b963e24a24aee2a41eabfb8df85799e2f4ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
