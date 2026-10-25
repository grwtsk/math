# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imports.Variantc09c840742cdbb34fea8c46636c60aa659b0ee447e8bce24e0760188e4b216ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3807d6c3654d7760d286e83a17a2b0942a32dba` · SHA-256 `c09c840742cdbb34fea8c46636c60aa659b0ee447e8bce24e0760188e4b216ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ImportGraph.Export.DotFile
public import ImportGraph.Export.Gexf
public import ImportGraph.Graph.Filter
public import ImportGraph.Graph.TransitiveClosure
public import ImportGraph.Imports.FromSource
public import ImportGraph.Imports.ImportGraph
public import ImportGraph.Imports.Redundant
public import ImportGraph.Imports.RequiredModules
public import ImportGraph.Imports.Unused
public import ImportGraph.Lean.Environment
public import ImportGraph.Lean.Name
public import ImportGraph.Lean.WithImportModules
public import ImportGraph.Util.FindSorry
public meta import ImportGraph.Export.DotFile
public meta import ImportGraph.Export.Gexf
public meta import ImportGraph.Graph.Filter
public meta import ImportGraph.Graph.TransitiveClosure
public meta import ImportGraph.Imports.FromSource
public meta import ImportGraph.Imports.ImportGraph
public meta import ImportGraph.Imports.Redundant
public meta import ImportGraph.Imports.RequiredModules
public meta import ImportGraph.Imports.Unused
public meta import ImportGraph.Lean.Environment
public meta import ImportGraph.Lean.Name
public meta import ImportGraph.Lean.WithImportModules
public meta import ImportGraph.Util.FindSorry

import Lean

open Lean

-- deprecated 2026-02-01
#eval do
  logWarning "`ImportGraph.Imports` is deprecated! use a subset of`import ImportGraph` instead."
```
