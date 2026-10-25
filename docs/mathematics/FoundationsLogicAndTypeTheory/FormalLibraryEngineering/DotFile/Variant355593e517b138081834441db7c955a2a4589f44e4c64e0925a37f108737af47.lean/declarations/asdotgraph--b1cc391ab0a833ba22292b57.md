# asDotGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c594f1f36ec27fa53e024d9eb56815a20367c4e968109c00dfe8124b5e4c034",
  "kind": "def",
  "lexical_name": "asDotGraph",
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
  "slug": "asdotgraph--b1cc391ab0a833ba22292b57",
  "source": {
    "blob": "f49aceeee9ece9303bce062206bbfc4bc5c04cb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1cc391ab0a833ba22292b5705ba840b137ea51fa51a2053a6da1b6329ef5360",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c594f1f36ec27fa53e024d9eb56815a20367c4e968109c00dfe8124b5e4c034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def asDotGraph
    (graph : NameMap (Array Name))
    (unused : NameSet := ∅)
    (header := "import_graph")
    (markedPackage : Option Name := none)
    (withSorry : NameSet := ∅)
    (directDeps : NameSet := ∅)
    (from_ to : NameSet := ∅):
    String := Id.run do
  let mut lines := #[s!"digraph \"{header}\" " ++ "{"]
  for (n, is) in graph do
    let shape := if from_.contains n then "invhouse" else if to.contains n then "house" else "ellipse"
    if markedPackage.isSome ∧ directDeps.contains n then
      -- note: `fillcolor` defaults to `color` if not specified
      let fill := if withSorry.contains n then
          "#ffd700"
        else if unused.contains n then
          "#e0e0e0"
        else
          "white"
      lines := lines.push s!"  \"{n}\" [style=filled, fontcolor=\"#4b762d\", color=\"#71b144\", fillcolor=\"{fill}\", penwidth=2, shape={shape}];"
    else if withSorry.contains n then
      lines := lines.push s!"  \"{n}\" [style=filled, fillcolor=\"#ffd700\", shape={shape}];"
    else if unused.contains n then
      lines := lines.push s!"  \"{n}\" [style=filled, fillcolor=\"#e0e0e0\", shape={shape}];"
    else if isInModule markedPackage n then
      -- mark node
      lines := lines.push s!"  \"{n}\" [style=filled, fillcolor=\"#96ec5b\", shape={shape}];"
    else
      lines := lines.push s!"  \"{n}\" [shape={shape}];"
    -- Then add edges
    for i in is do
      if isInModule markedPackage n then
        if isInModule markedPackage i then
          -- draw the main project close together
          lines := lines.push s!"  \"{i}\" -> \"{n}\" [weight=100];"
        else
          -- mark edges into the main project
          lines := lines.push s!"  \"{i}\" -> \"{n}\" [penwidth=2, color=\"#71b144\"];"
      else
        lines := lines.push s!"  \"{i}\" -> \"{n}\";"
  lines := lines.push "}"
  return "\n".intercalate lines.toList
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f49aceeee9ece9303bce062206bbfc4bc5c04cb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
