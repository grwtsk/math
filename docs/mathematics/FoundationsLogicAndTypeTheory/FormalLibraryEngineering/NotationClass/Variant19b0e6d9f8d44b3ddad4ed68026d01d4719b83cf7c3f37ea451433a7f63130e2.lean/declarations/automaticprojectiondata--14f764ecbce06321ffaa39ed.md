# AutomaticProjectionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3323a8695c4c6b5c7e52ee066aef5df0cfed4733571016f5f1b02f80622f9935",
  "kind": "structure",
  "lexical_name": "AutomaticProjectionData",
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
  "slug": "automaticprojectiondata--14f764ecbce06321ffaa39ed",
  "source": {
    "blob": "29e617b7afde8cd80bfbefb74b705ecf583729d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14f764ecbce06321ffaa39edf9512030fee660edd8162248c22dca4a4340e32d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3323a8695c4c6b5c7e52ee066aef5df0cfed4733571016f5f1b02f80622f9935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AutomaticProjectionData where
  /-- `className` is the name of the class we are looking for. -/
  className : Name
  /-- `isNotation` is a boolean that specifies whether this is notation
    (false for the coercions `FunLike` and `SetLike`). If this is set to true, we add the current
    class as hypothesis during type-class synthesis. -/
  isNotation := true
  /-- The method to find the arguments of the class. -/
  findArgs : Name := `Simps.defaultfindArgs
deriving Inhabited

/-- `@[notation_class]` attribute. Note: this is *not* a `NameMapAttribute` because we key on the
  argument of the attribute, not the declaration name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant19b0e6d9f8d44b3ddad4ed68026d01d4719b83cf7c3f37ea451433a7f63130e2.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e617b7afde8cd80bfbefb74b705ecf583729d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
