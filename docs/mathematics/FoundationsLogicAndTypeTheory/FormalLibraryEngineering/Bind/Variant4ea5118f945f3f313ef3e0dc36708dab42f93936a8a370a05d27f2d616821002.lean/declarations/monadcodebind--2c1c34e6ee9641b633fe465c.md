# MonadCodeBind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a510cdb9c7deb4543402f3367302d38d32d7b841f198fea94a133b73cc5ee2a",
  "kind": "class",
  "lexical_name": "MonadCodeBind",
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
  "slug": "monadcodebind--2c1c34e6ee9641b633fe465c",
  "source": {
    "blob": "b6ec86ad98acc81fa58e0972b93a7ef421a4e33a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variant4ea5118f945f3f313ef3e0dc36708dab42f93936a8a370a05d27f2d616821002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c1c34e6ee9641b633fe465cbad4164459ebcaf997fc26a2655e1bc781ca95af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variant4ea5118f945f3f313ef3e0dc36708dab42f93936a8a370a05d27f2d616821002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a510cdb9c7deb4543402f3367302d38d32d7b841f198fea94a133b73cc5ee2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MonadCodeBind (m : Type → Type) where
  codeBind : {pu : Purity} → (c : Code pu) → (f : FVarId → m (Code pu)) → m (Code pu)

/--
Return code that is equivalent to `c >>= f`. That is, executes `c`, and then `f x`, where
`x` is a variable that contains the result of `c`'s computation.

If `c` contains a jump to a join point `jp_i` not declared in `c`, we throw an exception because
an invalid block would be generated. It would be invalid because `f` would not
be applied to `jp_i`. Note that, we could have decided to create a copy of `jp_i` where we apply `f` to it,
by we decided to not do it to avoid code duplication.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variant4ea5118f945f3f313ef3e0dc36708dab42f93936a8a370a05d27f2d616821002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bind/Variant4ea5118f945f3f313ef3e0dc36708dab42f93936a8a370a05d27f2d616821002.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ec86ad98acc81fa58e0972b93a7ef421a4e33a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
