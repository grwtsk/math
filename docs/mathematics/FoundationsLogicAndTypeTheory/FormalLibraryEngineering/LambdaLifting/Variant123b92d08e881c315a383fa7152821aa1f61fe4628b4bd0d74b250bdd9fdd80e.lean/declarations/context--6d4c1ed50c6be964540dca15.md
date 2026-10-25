# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6494f85e83917cce096db22f5fc27a9d848bfea3fec12ddc576439096393a93",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--6d4c1ed50c6be964540dca15",
  "source": {
    "blob": "f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d4c1ed50c6be964540dca15c180c0809532def1f0b1c79813b7e3130a578e8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6494f85e83917cce096db22f5fc27a9d848bfea3fec12ddc576439096393a93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  /--
  If `liftInstParamOnly` is `true`, then only local functions that take
  local instances as parameters are lambda lifted.
  -/
  liftInstParamOnly : Bool := false
  /-- Suffix for the new auxiliary declarations being created. -/
  suffix : Name
  /--
  Declaration where lambda lifting is being applied.
  We use it to provide the "base name" for auxiliary declarations and the flag `safe`.
  -/
  mainDecl : Decl .pure
  /--
  If true, the lambda-lifted functions inherit the inline attribute from `mainDecl`.
  We use this feature to implement `@[inline] instance ...` and `@[always_inline] instance ...`
  -/
  inheritInlineAttrs := false
  /--
  Only local functions with `size > minSize` are lambda lifted.
  We use this feature to implement `@[inline] instance ...` and `@[always_inline] instance ...`
  -/
  minSize : Nat := 0
  /--
  Allow for eta contraction instead of lifting to a lambda if possible.
  -/
  allowEtaContraction : Bool := true


/-- State for the `LiftM` monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
