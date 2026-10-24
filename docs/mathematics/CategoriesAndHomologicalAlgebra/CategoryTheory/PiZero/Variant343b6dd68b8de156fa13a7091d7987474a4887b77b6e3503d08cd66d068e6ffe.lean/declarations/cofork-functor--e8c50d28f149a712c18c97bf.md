# coforkπ₀Functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9ee5c44ab0c81502a6c470ea2fb918df4bb755476f487d4ec7bf25abbb3a5f6",
  "kind": "abbrev",
  "lexical_name": "coforkπ₀Functor",
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
  "slug": "cofork-functor--e8c50d28f149a712c18c97bf",
  "source": {
    "blob": "ff131a1b8d03f1034b01b43f17557194415e8b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiZero/Variant343b6dd68b8de156fa13a7091d7987474a4887b77b6e3503d08cd66d068e6ffe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8c50d28f149a712c18c97bfa89821010259871dbab6aaaf8cc05afab8d33b8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PiZero/Variant343b6dd68b8de156fa13a7091d7987474a4887b77b6e3503d08cd66d068e6ffe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9ee5c44ab0c81502a6c470ea2fb918df4bb755476f487d4ec7bf25abbb3a5f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev coforkπ₀Functor :
    Cofork (SSet.evaluation.{u}.map (SimplexCategory.δ (1 : Fin 2)).op)
      (SSet.evaluation.map (SimplexCategory.δ (0 : Fin 2)).op) :=
  Cofork.ofπ toπ₀NatTrans (by ext X s; exact π₀.sound (Edge.mk' s))

/-- The functor `π₀Functor : SSet.{u} ⥤ Type u` is the coequalizer
of the two face maps `δ (0 : Fin 2)` and `δ 1`, considered
as natural transformations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PiZero/Variant343b6dd68b8de156fa13a7091d7987474a4887b77b6e3503d08cd66d068e6ffe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiZero/Variant343b6dd68b8de156fa13a7091d7987474a4887b77b6e3503d08cd66d068e6ffe.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff131a1b8d03f1034b01b43f17557194415e8b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
