# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf79d552b008eb28e224dccd9461aa8c8ed4e39f` · SHA-256 `c84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean


open Lean Parser Elab Command

namespace Architect

/-! We define the `blueprint_comment /-- ... -/` command that adds a piece of text to the blueprint. -/

-- The moduleBlueprintDocExt is exactly the same as the moduleDocExt, except it stores module docstrings
-- that are preceded by "blueprint ".

initialize moduleBlueprintDocExt :
    SimplePersistentEnvExtension ModuleDoc (PersistentArray ModuleDoc) ← registerSimplePersistentEnvExtension {
  addImportedFn := fun _ => {}
  addEntryFn    := fun s e => s.push e
  exportEntriesFnEx? := some fun _ _ es level =>
    if level < .server then
      #[]
    else
      es.toArray
}

def addMainModuleBlueprintDoc (env : Environment) (doc : ModuleDoc) : Environment :=
  moduleBlueprintDocExt.addEntry env doc

def getMainModuleBlueprintDoc (env : Environment) : PersistentArray ModuleDoc :=
  moduleBlueprintDocExt.getState env

def getModuleBlueprintDoc? (env : Environment) (moduleName : Name) : Option (Array ModuleDoc) :=
  env.getModuleIdx? moduleName |>.map fun modIdx =>
    moduleBlueprintDocExt.getModuleEntries (level := .server) env modIdx

/--
`blueprint_comment /-- ... -/` adds a piece of text to the blueprint of the current module,
which is available as `\inputleanmodule{Module}` in LaTeX.
-/
elab (name := blueprintComment) "blueprint_comment " stx:plainDocComment : command => do
  let some range ← Elab.getDeclarationRange? stx
    | return  -- must be from partial syntax, ignore

  let doc ← getDocStringText ⟨stx⟩
  modifyEnv fun env => addMainModuleBlueprintDoc env ⟨doc, range⟩

end Architect
```
