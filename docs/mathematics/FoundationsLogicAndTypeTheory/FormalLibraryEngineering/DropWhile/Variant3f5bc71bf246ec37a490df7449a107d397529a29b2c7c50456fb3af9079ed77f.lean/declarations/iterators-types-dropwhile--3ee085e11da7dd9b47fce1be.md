# Iterators.Types.DropWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:745797e79370fbb1316a93c524405d6d5fb3089b925dc63a0ad5e585bca649fd",
  "kind": "structure",
  "lexical_name": "Iterators.Types.DropWhile",
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
  "slug": "iterators-types-dropwhile--3ee085e11da7dd9b47fce1be",
  "source": {
    "blob": "ce8f532852b5e10e630a429e994839aae45b37c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ee085e11da7dd9b47fce1be9b356fd1d6412abac9c3f7dc4edc34b2175c67f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:745797e79370fbb1316a93c524405d6d5fb3089b925dc63a0ad5e585bca649fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Iterators.Types.DropWhile (α : Type w) (m : Type w → Type w') (β : Type w)
    (P : β → PostconditionT m (ULift Bool)) where
  /-- Internal implementation detail of the iterator library. -/
  dropping : Bool
  /-- Internal implementation detail of the iterator library. -/
  inner : IterM (α := α) m β

/--
Constructs intermediate states of an iterator created with the combinator
`IterM.dropWhileWithPostcondition`.
When `it.dropWhileWithPostcondition P` has stopped dropping elements, its new state cannot be
created directly with `IterM.dropWhileWithPostcondition` but only with
`Intermediate.dropWhileWithPostcondition`.

`Intermediate.dropWhileWithPostcondition` is meant to be used only for internally or for
verification purposes.
-/
@[always_inline, inline, implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8f532852b5e10e630a429e994839aae45b37c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
