# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantced3efce2d987778d8134db199cb0049327ebe760b76ba9107f00e103364337c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39448ea8f491f2339a3ea2154da42ffcdcc6a100` · SHA-256 `6dac75366ebc44b9ca5061e40a2e620825da6dbb2d9224849f6eb672d186ba9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddMainModuleBlueprintDoc.Variantc84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AddMainModuleBlueprintDoc.Variantc84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Architect/Command.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddMainModuleBlueprintDoc.Variantc84db9a856a3b4b72812ebcc2afa8180a3b9c94ea54de051215cd252b02be281

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
