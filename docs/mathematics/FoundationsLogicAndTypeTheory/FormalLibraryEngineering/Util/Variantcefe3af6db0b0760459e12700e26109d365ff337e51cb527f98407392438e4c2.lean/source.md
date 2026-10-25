# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantcefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbf14bd7daccf82a3c8e5ad289a3d3e21d2dad05` · SHA-256 `cefe3af6db0b0760459e12700e26109d365ff337e51cb527f98407392438e4c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Additional snapshot functionality that needs further imports.

Authors: Sebastian Ullrich
-/

module

prelude
public import Lean.Elab.InfoTree
import Init.Data.Format.Macro

public section

namespace Lean.Language

/-- Produces trace of given snapshot tree, synchronously waiting on all children. -/
partial def SnapshotTree.trace (s : SnapshotTree) : CoreM Unit :=
  go .skip s
where go range? s := do
  let file ← getFileMap
  let mut desc := f!"{s.element.desc}"
  match range? with
  | .some range => desc := desc ++ f!"{file.toPosition range.start}-{file.toPosition range.stop} "
  | .inherit => desc := desc ++ "<range inherited> "
  | .skip => desc := desc ++ "<no range> "
  let msgs ← s.element.diagnostics.msgLog.toList.mapM (·.toString)
  desc := desc ++ .prefixJoin "\n• " msgs
  withTraceNode `Elab.snapshotTree (fun _ => pure desc) do
    s.children.toList.forM fun c => go c.reportingRange c.get
    if let some t := s.element.infoTree? then
      trace[Elab.info] (← t.format)
```
