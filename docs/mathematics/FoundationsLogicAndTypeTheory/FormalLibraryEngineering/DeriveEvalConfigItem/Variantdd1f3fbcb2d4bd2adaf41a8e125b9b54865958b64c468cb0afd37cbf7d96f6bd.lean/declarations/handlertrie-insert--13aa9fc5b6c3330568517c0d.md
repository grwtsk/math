# HandlerTrie.insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0af31e13692c7783d3e859ccbe2b4aed6ab2423adac9794d5cc3602f027b018",
  "kind": "def",
  "lexical_name": "HandlerTrie.insert",
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
  "slug": "handlertrie-insert--13aa9fc5b6c3330568517c0d",
  "source": {
    "blob": "1fb205140b9861f2064814b09b828dba9e916a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13aa9fc5b6c3330568517c0db7c981b981bbe7cdfc0b7477cacfeb624a0f3526",
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

Occurrence: `declaration:a0af31e13692c7783d3e859ccbe2b4aed6ab2423adac9794d5cc3602f027b018`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def HandlerTrie.insert (trie : HandlerTrie) (h : EvalConfigItemHandler) (key : Name := h.key) :
    HandlerTrie :=
  let root := key.getRoot
  if root.isAnonymous then
    let projFn? := trie.projFn? <|> h.projFn?
    let struct? := trie.struct? <|> h.struct?
    match h.kind with
    | .exact    => { trie with projFn?, struct?, exact? := some h }
    | .wildcard => { trie with projFn?, struct?, wildcard? := some h }
  else
    let s := root.getString!
    let key' := key.replacePrefix root .anonymous
    if let some idx := trie.children.findIdx? (·.1 == s) then
      let children := trie.children.modify idx fun (s, child) => (s, child.insert h key')
      { trie with children }
    else
      let child := HandlerTrie.insert {} h key'
      { trie with children := trie.children.push (s, child)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb205140b9861f2064814b09b828dba9e916a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
