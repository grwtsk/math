# equivalenceCounitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:515056f969cdb797d5eaa09d83e8d362ebf3d548f4615d7b3cae2d4ee0efb49c",
  "kind": "abbrev",
  "lexical_name": "equivalenceCounitIso",
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
  "slug": "equivalencecounitiso--e973bc94035fb7d7790dccc5",
  "source": {
    "blob": "5ae368bbbeabcee47ee70504745ef9575312f31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e973bc94035fb7d7790dccc51b5c7553e02df19a7e592f3ebdc671b60060a218",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:515056f969cdb797d5eaa09d83e8d362ebf3d548f4615d7b3cae2d4ee0efb49c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev equivalenceCounitIso :
    toGeneratedByTopCat ⋙ fromGeneratedByTopCat ≅ 𝟭 (ContinuousGeneratedByCat X) :=
  adjUnitIso.symm

/-- The equivalence of categories `GeneratedByTopCat X ≌ ContinuousGeneratedByCat X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Category/Variant1a75ce2e5d4eb8b3507325926df7d0fb357de275d523d0ca3e648ba7ec7ce36f.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ae368bbbeabcee47ee70504745ef9575312f31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
