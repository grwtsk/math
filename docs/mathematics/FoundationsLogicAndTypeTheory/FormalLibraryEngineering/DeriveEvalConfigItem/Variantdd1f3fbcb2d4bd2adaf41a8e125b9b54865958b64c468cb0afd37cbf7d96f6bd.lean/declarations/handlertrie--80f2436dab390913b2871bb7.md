# HandlerTrie

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:387cbd6110a9bba23c45b5e0b21ace51d119514f378494b4a0814c12a2d0bf04",
  "kind": "structure",
  "lexical_name": "HandlerTrie",
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
  "slug": "handlertrie--80f2436dab390913b2871bb7",
  "source": {
    "blob": "1fb205140b9861f2064814b09b828dba9e916a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80f2436dab390913b2871bb7720d70dfebdb569c8d90bfb0b7426111a331d7aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:387cbd6110a9bba23c45b5e0b21ace51d119514f378494b4a0814c12a2d0bf04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure HandlerTrie where
  /-- The `EvalConfigItemHandlerKind.exact` handler for this trie position's key. -/
  exact? : Option EvalConfigItemHandler := none
  /-- Handlers for which this trie position's key is a strict prefix. -/
  children : Array (String × HandlerTrie) := #[]
  /-- The `EvalConfigItemHandlerKind.wildcard` handler for this trie position's key. -/
  wildcard? : Option EvalConfigItemHandler := none
  /-- Constant to use for terminfo. The root of the trie does not have this set.
  Collected from `EvalConfigItemHandler.projFn?`. -/
  projFn? : Option Name := none
  /-- Constant to use for field completion terminfo. The root of the trie has this set.
  Collected from `EvalConfigItemHandler.struct?`. -/
  struct? : Option Name := none
  deriving Inhabited

/--
Finds a handler that applies to this key.
Returns the trie key and the handler.

If `kind` is `exact` then it returns the handler that would actually apply,
and if it is `wildcard` then it returns the wildcard handler corresponding to that
key if an `exact` handler would also apply.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb205140b9861f2064814b09b828dba9e916a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
