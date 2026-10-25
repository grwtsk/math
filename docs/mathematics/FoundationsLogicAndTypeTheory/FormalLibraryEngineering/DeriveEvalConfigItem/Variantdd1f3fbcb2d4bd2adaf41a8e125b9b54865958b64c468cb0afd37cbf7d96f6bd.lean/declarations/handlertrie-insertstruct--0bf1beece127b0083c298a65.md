# HandlerTrie.insertStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b24ba33f88698d7b5cb31b3149e33bdd054f9ebdfa2cbe1f95958f6ec945e85b",
  "kind": "def",
  "lexical_name": "HandlerTrie.insertStruct",
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
  "slug": "handlertrie-insertstruct--0bf1beece127b0083c298a65",
  "source": {
    "blob": "1fb205140b9861f2064814b09b828dba9e916a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bf1beece127b0083c298a6501d4dc742f345d4546eeaddfc9e66d8127fc12ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b24ba33f88698d7b5cb31b3149e33bdd054f9ebdfa2cbe1f95958f6ec945e85b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def HandlerTrie.insertStruct (trie : HandlerTrie) (key : Name) (struct : Name) :
    HandlerTrie :=
  let root := key.getRoot
  if root.isAnonymous then
    let struct := trie.struct?.getD struct
    { trie with struct? := some struct }
  else
    let s := root.getString!
    let key' := key.replacePrefix root .anonymous
    if let some idx := trie.children.findIdx? (·.1 == s) then
      let children := trie.children.modify idx fun (s, child) => (s, child.insertStruct key' struct)
      { trie with children }
    else
      let child := HandlerTrie.insertStruct {} key' struct
      { trie with children := trie.children.push (s, child)}

/--
Precompiled version of `evalTermOrExprWithElab (α := Bool)` that
also makes use of the cached `item.bool?` value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb205140b9861f2064814b09b828dba9e916a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
