# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DotFile.Variantc816ea64cb7b846e58afb3554dacf04281551d5cc9617db42438db31f18ec001

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dcd3ee540120c0d7e6b7fd67a64df2f6a5b89e5` · SHA-256 `cc991358903b30ee1ba724d20b2053d0f1a31ada53944c1b08d719c015410116`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsInModule.Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsInModule.Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Export/DotFile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Jon Eugster
-/
module

public import Lean.Data.NameMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsInModule.Variant355593e517b138081834441db7c955a2a4589f44e4c64e0925a37f108737af47

open Lean

/--
Helper which only returns `true` if the `module` is provided and the name `n` lies
inside it.
 -/
private def isInModule (module : Option Name) (n : Name) := match module with
  | some m => m.isPrefixOf n
  | none => false

/--
Write an import graph, represented as a `NameMap (Array Name)` to the ".dot" graph format.
* Nodes in the `unused` set will be shaded light gray.
* If `markedPackage` is provided:
  * Nodes which start with the `markedPackage` will be highlighted in green and drawn closer together.
  * Edges from `directDeps` into the module are highlighted in green
  * Nodes in `directDeps` are marked with a green border and green text.
  * Nodes in `withSorry` are highlighted in gold.
-/
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
