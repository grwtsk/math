# RelUpperSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:192697d9a074c1790832aa99ed19762a24830edf1da05063f5a220a5c4449b5d",
  "kind": "structure",
  "lexical_name": "RelUpperSet",
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
  "slug": "relupperset--1d5681d2c77f301bcca30845",
  "source": {
    "blob": "4e9a9a69dc5402c4b19fb00ce0681ebb91c26eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 306,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant632c9f079b2d04a05f65fa5502d1001db7dab85edfa4fb9a4c31f0585dc5fced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d5681d2c77f301bcca30845e39cb02e3d5f5e15bb42c6d3d4c02728806a3561",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant632c9f079b2d04a05f65fa5502d1001db7dab85edfa4fb9a4c31f0585dc5fced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:192697d9a074c1790832aa99ed19762a24830edf1da05063f5a220a5c4449b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelUpperSet {α : Type*} [LE α] (P : α → Prop) where
  /-- The carrier of a `RelUpperSet`. -/
  carrier : Set α
  /-- The carrier of a `RelUpperSet` is an upper set relative to `P`.

  Do NOT use directly. Please use `RelUpperSet.isRelUpperSet` instead. -/
  isRelUpperSet' : IsRelUpperSet carrier P

extend_docs RelUpperSet before "The type of upper sets of an order relative to `P`."

@[inherit_doc IsRelLowerSet]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant632c9f079b2d04a05f65fa5502d1001db7dab85edfa4fb9a4c31f0585dc5fced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant632c9f079b2d04a05f65fa5502d1001db7dab85edfa4fb9a4c31f0585dc5fced.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e9a9a69dc5402c4b19fb00ce0681ebb91c26eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
