# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Copy.Variantabb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35d85399d1114a02b4288ab2765d4665e6bbdaea` · SHA-256 `abb2e8e9846fc6b798846132b6621b7d040cf06089cc32b679a4843e0cc3e462`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import ImportGraph.Widget.Copy
public import Lean.Elab.Command

open ImportGraph Widget Lean Elab Command

elab "#copy" : command => liftCoreM do
  let msgs := [
    ← copyToClipboard "some copied text",
    ← copyToClipboard "some more copied text" .copiedText,
    ← copyToClipboard "some more copied text" "override text",
  ]
  logInfo m!"{m!"\n\n".joinSep msgs}"

/--
info: [click-to-copy] (Will copy:
  some copied text)

[click-to-copy] some more copied text
(Will copy:
  some more copied text)

[click-to-copy] override text
(Will copy:
  some more copied text)
-/
#guard_msgs in
#copy
```
