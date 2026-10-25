# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Collapsible.Variant63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bfdff0aaa7548d958191ac8be2c82d465662e10` · SHA-256 `63f90f7fdfca0bd6e48d2cc2b24a803aa3240c973c96f8cba8d5c91be52bb76b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Lean.Elab.Command
public meta import ImportGraph.Widget.Collapsible

open ImportGraph Widget Lean Elab Command

elab "#collapse" : command => liftCoreM do
  let msgs := [
    ← collapsible m!"a header! (with interactivity: {.ofConstName ``True})"
      m!"a body (with interactivity: {.ofConstName ``True})",
    ← collapsible m!"a header!" (← collapsible m!"a nested header" m!"a body"),
    ← collapsible m!"a header!"
      m!"{← collapsible m!"a nested header" m!"a body"}\
        {← collapsible m!"an adjacent nested header" m!"another body"}",
  ]
  logInfo <| m!"\n".joinSep msgs

-- Note that the extra newline in the second case is due to approximating the newline behavior in
-- fallback `MessageData`. A second newline does not appear in the infoview.
/--
info: ▼ a header! (with interactivity: True)
  a body (with interactivity: True)

▼ a header!
  ▼ a nested header
    a body
  ⏎

▼ a header!
  ▼ a nested header
    a body
  ▼ an adjacent nested header
    another body
-/
#guard_msgs in
#collapse
```
