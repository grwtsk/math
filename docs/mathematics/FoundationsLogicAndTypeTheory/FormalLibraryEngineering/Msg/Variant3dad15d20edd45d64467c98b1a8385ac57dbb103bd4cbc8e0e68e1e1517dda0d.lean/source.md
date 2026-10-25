# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Msg.Variant3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c395fdf7efec8477508041a0d5b7bc714b21dc2` · SHA-256 `3dad15d20edd45d64467c98b1a8385ac57dbb103bd4cbc8e0e68e1e1517dda0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import ImportGraphTest.Widget.GoToModule.Decls
public meta import Lean.Elab.Command
public meta import ImportGraph.Widget.GoToModule

-- To load declaration ranges under `lake build` (usually only present in the server):
import all ImportGraphTest.Widget.GoToModule.Decls

open ImportGraph Widget Lean Elab Command GoToModule

elab "#go_to" : command => liftCoreM do
  let msgs := [
    ← goToModule `ImportGraphTest.Widget.GoToModule.Decls,
    -- Note that Lsp positions are 0-indexed, so this should show up as line 4
    ← goToModule `ImportGraphTest.Widget.GoToModule.Decls (pos := ⟨3,7⟩)
      (overrideText := "Some module"),
    m!"end of `bar`:",
    ← goToModuleOfDecl ``bar,
    m!"end of `bar` (last declaration):",
    ← goToModuleOfDecls #[``bar, ``foo] (.end true),
    m!"line after `bar`:",
    ← goToModuleOfDecls #[``bar, ``foo] (.end false),
    m!"line before `foo`:",
    ← goToModuleOfDecls #[``bar, ``foo] (.start true),
    m!"start of `foo`:",
    ← goToModuleOfDecls #[``bar, ``foo] (.start false),
  ]
  logInfo <| m!"\n".joinSep msgs

-- Note that these positions are only visible in fallback `MessageData`.
/--
info: ImportGraphTest.Widget.GoToModule.Decls (1:0)
Some module (4:7)
end of `bar`:
ImportGraphTest.Widget.GoToModule.Decls (14:0)
end of `bar` (last declaration):
ImportGraphTest.Widget.GoToModule.Decls (14:0)
line after `bar`:
ImportGraphTest.Widget.GoToModule.Decls (13:16)
line before `foo`:
ImportGraphTest.Widget.GoToModule.Decls (8:0)
start of `foo`:
ImportGraphTest.Widget.GoToModule.Decls (9:0)
-/
#guard_msgs in
#go_to
```
