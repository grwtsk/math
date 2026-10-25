# asDotGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5a5fb5e6206993be6c3c12f761a59f0829ab3988c771415ec2816e118bb417d",
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
  "slug": "asdotgraph--a50c308973bb70de4cef43d6",
  "source": {
    "blob": "2dcd3ee540120c0d7e6b7fd67a64df2f6a5b89e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variantc816ea64cb7b846e58afb3554dacf04281551d5cc9617db42438db31f18ec001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a50c308973bb70de4cef43d6f02e3b63409a3478ead963bdff4da19ce062121e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variantc816ea64cb7b846e58afb3554dacf04281551d5cc9617db42438db31f18ec001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5a5fb5e6206993be6c3c12f761a59f0829ab3988c771415ec2816e118bb417d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–79.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variantc816ea64cb7b846e58afb3554dacf04281551d5cc9617db42438db31f18ec001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DotFile/Variantc816ea64cb7b846e58afb3554dacf04281551d5cc9617db42438db31f18ec001.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dcd3ee540120c0d7e6b7fd67a64df2f6a5b89e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
