# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedTagAttribute.Varianteefbb53f4b23150930948fd33d0dbf46441080011f5e68cea1f22703434c3526

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a6e3104101b1ebc080eaab64ee2c9b496ef48d5` · SHA-256 `576d7826ccd629430092fb7b20e4cf3b054815b4c7842cc39a8df08b34829e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedTagAttribute.Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.OrderedTagAttribute.Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/OrderedTagAttribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Lean.Attributes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedTagAttribute.Variantf95087f7fb69afbf94c848b9c47a38c8d5172c4ba21edddc1b833c017e541270

open Lean
namespace Lake

public structure OrderedTagAttribute where
  attr : AttributeImpl
  ext  : PersistentEnvExtension Name Name (Array Name)
  deriving Inhabited

public def registerOrderedTagAttribute (name : Name) (descr : String)
    (validate : Name → AttrM Unit := fun _ => pure ()) (ref : Name := by exact decl_name%) : IO OrderedTagAttribute := do
  let ext ← registerPersistentEnvExtension {
    name            := ref
    mkInitial       := pure {}
    addImportedFn   := fun _ _ => pure {}
    addEntryFn      := fun s n => s.push n
    exportEntriesFn := fun es => es
    statsFn         := fun s => "tag attribute" ++ Format.line ++ "number of local entries: " ++ format s.size
  }
  let attrImpl : AttributeImpl := {
    ref   := ref
    name  := name
    descr := descr
    add   := fun decl stx kind => do
      Attribute.Builtin.ensureNoArgs stx
      unless kind == AttributeKind.global do throwAttrMustBeGlobal name kind
      let env ← getEnv
      unless (env.getModuleIdxFor? decl).isNone do throwAttrDeclInImportedModule name decl
      validate decl
      modifyEnv fun env => ext.addEntry env decl
  }
  registerBuiltinAttribute attrImpl
  return { attr := attrImpl, ext }

public def OrderedTagAttribute.hasTag (attr : OrderedTagAttribute) (env : Environment) (decl : Name) : Bool :=
  match env.getModuleIdxFor? decl with
  | some modIdx => (attr.ext.getModuleEntries env modIdx).binSearchContains decl Name.quickLt
  | none        => (attr.ext.getState env).contains decl

/-- Get all tagged declaration names, both those imported and those in the current module. -/
public def OrderedTagAttribute.getAllEntries (attr : OrderedTagAttribute) (env : Environment) : Array Name :=
  let s := attr.ext.toEnvExtension.getState env
  s.importedEntries.flatMap id ++ s.state
```
