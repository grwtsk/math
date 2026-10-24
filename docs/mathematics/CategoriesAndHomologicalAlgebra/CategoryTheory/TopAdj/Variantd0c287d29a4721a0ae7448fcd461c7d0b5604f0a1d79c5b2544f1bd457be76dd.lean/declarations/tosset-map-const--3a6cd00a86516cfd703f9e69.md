# toSSet_map_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89ddf43f-1877-6fb5-ec21-46e3a2ae02af",
  "kind": "lemma",
  "lexical_name": "toSSet_map_const",
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
  "slug": "tosset-map-const--3a6cd00a86516cfd703f9e69",
  "source": {
    "blob": "ff6b2b3680fce98a410845448f1e256900ef1995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd0c287d29a4721a0ae7448fcd461c7d0b5604f0a1d79c5b2544f1bd457be76dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a6cd00a86516cfd703f9e698eff9c80e5c0e22964dfd7bbe42301c051efb0d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd0c287d29a4721a0ae7448fcd461c7d0b5604f0a1d79c5b2544f1bd457be76dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89ddf43f-1877-6fb5-ec21-46e3a2ae02af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toSSet_map_const (X : TopCat.{u}) {Y : TopCat.{u}} (y : Y) :
    toSSet.map (TopCat.const (X := X) y) =
      SSet.const (toSSetObj₀Equiv.symm y) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd0c287d29a4721a0ae7448fcd461c7d0b5604f0a1d79c5b2544f1bd457be76dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopAdj/Variantd0c287d29a4721a0ae7448fcd461c7d0b5604f0a1d79c5b2544f1bd457be76dd.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff6b2b3680fce98a410845448f1e256900ef1995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
