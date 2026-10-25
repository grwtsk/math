# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant6548aba6863cdf065d3c848720cad735e70ef13a226a58ca92c4774c25d6a431

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3d5397599629791a72cf034da52608f066e8922` · SHA-256 `9c8bd4d03a7183d10abed3681440b17e2cf3b06a12c852d21590754267e757a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsafeEvalConstCheck.Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.UnsafeEvalConstCheck.Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Load/Lean/Eval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Workspace
public import Lake.Config.LakefileConfig
import Lean.DocString
import Lake.DSL.AttributesCore

/-! # Lean Configuration Evaluator

This module contains the definitions to load Lake configuration objects from
a Lean environment elaborated from a Lake configuration file.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsafeEvalConstCheck.Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0

open System Lean

namespace Lake

/-- Unsafe implementation of `evalConstCheck`. -/
unsafe def unsafeEvalConstCheck
  (env : Environment) (opts : Options) (α) [TypeName α] (const : Name)
: Except String α :=
  match env.find? const with
  | none => throw s!"unknown constant '{const}'"
  | some info =>
    match info.type with
    | Expr.const c _ =>
      if c != TypeName.typeName α then
        throwUnexpectedType
      else
        env.evalConst α opts const
    | _ => throwUnexpectedType
where
  throwUnexpectedType : Except String α :=
    throw s!"unexpected type at '{const}', `{TypeName.typeName α}` expected"

/--
Like `Lean.Environment.evalConstCheck`,
but with plain universe-polymorphic `Except`.
-/
@[implemented_by unsafeEvalConstCheck]
opaque evalConstCheck
  (env : Environment) (opts : Options) (α : Type) [TypeName α] (const : Name)
: Except String α

/-- Construct a `DNameMap` from the declarations tagged with `attr`. -/
def mkDTagMap
  (env : Environment) (attr : OrderedTagAttribute)
  [Monad m] (f : (n : Name) → m (β n))
: m (DNameMap β) :=
  let entries := attr.getAllEntries env
  entries.foldlM (init := {}) fun map declName =>
    return map.insert declName <| ← f declName

/-- Construct a `NameMap` from the declarations tagged with `attr`. -/
def mkTagMap
  (env : Environment) (attr : OrderedTagAttribute)
  [Monad m] (f : (n : Name) → m β)
: m (NameMap β) :=
  let entries := attr.getAllEntries env
  entries.foldlM (init := {}) fun map declName =>
    return map.insert declName <| ← f declName

/-- Construct a `OrdNameMap` from the declarations tagged with `attr`. -/
def mkOrdTagMap
  (env : Environment) (attr : OrderedTagAttribute)
  [Monad m] (f : (n : Name) → m β)
: m (OrdNameMap β) :=
  let entries := attr.getAllEntries env
  entries.foldlM (init := .mkEmpty entries.size) fun map declName =>
    return map.insert declName <| ← f declName

/-- Load a `PackageDecl` from a configuration environment. -/
private def PackageDecl.loadFromEnv
  (env : Environment) (opts := Options.empty)
: Except String PackageDecl := do
  let declName ←
    match packageAttr.getAllEntries env |>.toList with
    | [] => error s!"configuration file is missing a `package` declaration"
    | [keyName] => pure keyName
    | _ => error s!"configuration file has multiple `package` declarations"
  evalConstCheck env opts _ declName

/-- Load a Lake configuration from a configuration file's environment. -/
public def LakefileConfig.loadFromEnv
  (env : Environment) (opts : Options)
: LogIO LakefileConfig := do

  -- load package declaration
  let pkgDecl ← IO.ofExcept <| PackageDecl.loadFromEnv env opts
  let prettyName := pkgDecl.baseName.toString (escape := false)
  let keyName := pkgDecl.keyName

  -- load target, script, hook, and driver configurations
  let constTargetMap ← IO.ofExcept <| mkOrdTagMap env targetAttr fun name => do
    evalConstCheck env opts ConfigDecl name
  let targetDecls ← constTargetMap.toArray.mapM fun decl => do
    if h : decl.pkg = keyName then
      return .mk decl h
    else
      error s!"target '{decl.name}' was defined in package '{decl.pkg}', \
        but registered under '{keyName}'"
  let targetDeclMap ← targetDecls.foldlM (init := {}) fun m decl => do
    if let some orig := m.get? decl.name then
      error s!"{prettyName}: target '{decl.name}' was already defined as a '{orig.kind}', \
        but then redefined as a '{decl.kind}'"
    else
      return m.insert decl.name (.mk decl rfl)
  -- Check that executables have distinct root module names
  let _ ← targetDecls.foldlM (init := ({} : Lean.NameMap Name)) fun exeRoots decl => do
    if let some exeConfig := decl.config? LeanExe.configKind then
      let root := exeConfig.root
      if let some origExe := exeRoots.get? root then
        error s!"{prettyName}: executable '{decl.name}' has the same root module '{root}' \
          as executable '{origExe}'"
      else
        return exeRoots.insert root decl.name
    else
      return exeRoots
  let defaultTargets ← defaultTargetAttr.getAllEntries env |>.mapM fun name =>
    if let some decl := constTargetMap.find? name then pure decl.name else
      error s!"{prettyName}: package is missing target '{name}' marked as a default"
  let scripts ← mkTagMap env scriptAttr fun scriptName => do
    let name := prettyName ++ "/" ++ scriptName.toString (escape := false)
    let fn ← IO.ofExcept <| evalConstCheck env opts ScriptFn scriptName
    return {name, fn, doc? := ← findDocString? env scriptName : Script}
  let defaultScripts ← defaultScriptAttr.getAllEntries env |>.mapM fun name =>
    if let some script := scripts.get? name then pure script else
      error s!"{prettyName}: package is missing script '{name}' marked as a default"
  let postUpdateHooks ← postUpdateAttr.getAllEntries env |>.mapM fun name =>
    match evalConstCheck env opts PostUpdateHookDecl name with
    | .ok decl =>
      if h : decl.pkg = keyName then
        return OpaquePostUpdateHook.mk ⟨cast (by rw [h]) decl.fn⟩
      else
        error s!"post-update hook was defined in '{decl.pkg}', but was registered in '{keyName}'"
    | .error e => error e
  let depConfigs ← IO.ofExcept <| packageDepAttr.getAllEntries env |>.mapM fun name =>
    evalConstCheck env opts Dependency name
  let testDrivers ← testDriverAttr.getAllEntries env |>.mapM fun name =>
    if let some decl := constTargetMap.find? name then
      return decl.name
    else if scripts.contains name then
      return name
    else
      error s!"{prettyName}: package is missing script or target '{name}' marked as a test driver"
  let testDriver ← id do
    if testDrivers.size > 1 then
      error s!"{prettyName}: only one script, executable, or library can be tagged @[test_driver]"
    else if h : testDrivers.size > 0 then
      if pkgDecl.config.testDriver.isEmpty then
        return (testDrivers[0]'h |>.toString)
      else
        error s!"{prettyName}: cannot both set testDriver and use @[test_driver]"
    else
      return pkgDecl.config.testDriver
  let lintDrivers ← lintDriverAttr.getAllEntries env |>.mapM fun name =>
    if let some decl := constTargetMap.find? name then
      return decl.name
    else if scripts.contains name then
      return name
    else
      error s!"{prettyName}: package is missing script or target '{name}' marked as a lint driver"
  let lintDriver ← id do
    if lintDrivers.size > 1 then
      error s!"{prettyName}: only one script or executable can be tagged @[lint_driver]"
    else if h : lintDrivers.size > 0 then
      if pkgDecl.config.lintDriver.isEmpty then
        return (lintDrivers[0]'h |>.toString)
      else
        error s!"{prettyName}: cannot both set lintDriver and use @[lint_driver]"
    else
      return pkgDecl.config.lintDriver

  -- load facets
  let facetDecls ← IO.ofExcept do
    let mut decls : Array FacetDecl := #[]
    for name in moduleFacetAttr.getAllEntries env do
      let decl ← evalConstCheck env opts ModuleFacetDecl name
      decls :=  decls.push {decl with config := decl.config.toFacetConfig}
    for name in packageFacetAttr.getAllEntries env do
      let decl ← evalConstCheck env opts PackageFacetDecl name
      decls := decls.push  {decl with config := decl.config.toFacetConfig}
    for name in libraryFacetAttr.getAllEntries env do
      let decl ← evalConstCheck env opts LibraryFacetDecl name
      decls := decls.push  {decl with config := decl.config.toFacetConfig}
    return decls

  -- Fill in the Package
  return {
    pkgDecl, depConfigs, facetDecls,
    targetDecls, targetDeclMap, defaultTargets,
    scripts, defaultScripts,
    testDriver, lintDriver,
    postUpdateHooks,
  }
```
