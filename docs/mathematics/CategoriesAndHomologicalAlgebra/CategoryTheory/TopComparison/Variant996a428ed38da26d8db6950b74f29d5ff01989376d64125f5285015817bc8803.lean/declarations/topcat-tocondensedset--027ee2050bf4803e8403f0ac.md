# TopCat.toCondensedSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a6a63e4d7bfbb43943f59a033a59d634a6d9b79e67ad37c3d5c0e876cdc2c40",
  "kind": "abbrev",
  "lexical_name": "TopCat.toCondensedSet",
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
  "slug": "topcat-tocondensedset--027ee2050bf4803e8403f0ac",
  "source": {
    "blob": "988ef792acd8a799f03c716551a2153e06eace0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:027ee2050bf4803e8403f0ac177cdd845899bf108a7de66aa5edfab82e57eb6e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a6a63e4d7bfbb43943f59a033a59d634a6d9b79e67ad37c3d5c0e876cdc2c40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev TopCat.toCondensedSet (X : TopCat.{u + 1}) : CondensedSet.{u} :=
  toSheafCompHausLike.{u+1} _ X (fun _ _ _ ↦ ((CompHaus.effectiveEpi_tfae _).out 0 2).mp)

/--
`TopCat.toCondensedSet` yields a functor from `TopCat.{u+1}` to `CondensedSet.{u}`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988ef792acd8a799f03c716551a2153e06eace0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
