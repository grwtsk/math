# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336WholeMaintainedS.Variant39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c1cc4563ef74d17e919bd7fcfa08c9e7a6208ad` · SHA-256 `39d84602d9d898d7b029bf80d0f822ee2f785b614d67faa73d3a18b03285f336`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch
import Lean.Elab.Print

open Lean Elab Command

elab "audit_maintained_signatures" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index =>
        let owner := modules[index]!.toString
        owner == "FormalResearch" || owner.startsWith "FormalResearch."
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  for (name, _) in candidates do
    logInfo m!"STRUCTURE_DECLARATION_BEGIN {name.toString}"
    let ident := mkIdent name
    elabCommand (← `(command| #print sig $ident:ident))
    logInfo m!"STRUCTURE_DECLARATION_END {name.toString}"
  logInfo m!"Whole maintained signature count: {candidates.size}."

audit_maintained_signatures
```
