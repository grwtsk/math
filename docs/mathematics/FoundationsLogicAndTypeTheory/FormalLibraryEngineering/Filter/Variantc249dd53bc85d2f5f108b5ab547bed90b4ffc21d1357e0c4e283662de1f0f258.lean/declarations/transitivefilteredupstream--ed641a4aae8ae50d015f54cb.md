# transitiveFilteredUpstream

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9bf42bca29b43555774eb4bf9d24d2e497695f3cb1213bb702edd56147e81891",
  "kind": "def",
  "lexical_name": "transitiveFilteredUpstream",
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
  "slug": "transitivefilteredupstream--ed641a4aae8ae50d015f54cb",
  "source": {
    "blob": "d9912b60b505c3af4acbb8d7292eb7da92c92d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed641a4aae8ae50d015f54cb92d5235e8bf6f5b32704fe38f6dbcff28962b982",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9bf42bca29b43555774eb4bf9d24d2e497695f3cb1213bb702edd56147e81891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def transitiveFilteredUpstream (node : Name) (graph : NameMap (Array Name))
    (filter : Name → Bool) (replacement : Option Name := none):
    List Name :=
  (graph.get! node).toList.flatMap fun source =>
    ( if filter source then
        -- Add the transitive edges going through the filtered node `source`.
        -- If there is a replacement node, add an additional edge `repl → node`.
        match replacement with
        | none => transitiveFilteredUpstream source graph filter
        | some repl => .cons repl <| transitiveFilteredUpstream source graph filter
      -- If the node is not filtered, we leave the edge `source → node` intact.
      else [source]).eraseDups

/--
Filters the `graph` removing all nodes where `filter n` returns false. Additionally,
replace edges from removed nodes by all the transitive edges.

This means there is a path between two nodes in the filtered graph iff there exists
such a path in the original graph.

If the optional `(replacement : Name)` is provided, a corresponding node will be
added together with edges to all nodes which had an incoming edge from any
filtered node.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variantc249dd53bc85d2f5f108b5ab547bed90b4ffc21d1357e0c4e283662de1f0f258.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9912b60b505c3af4acbb8d7292eb7da92c92d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
