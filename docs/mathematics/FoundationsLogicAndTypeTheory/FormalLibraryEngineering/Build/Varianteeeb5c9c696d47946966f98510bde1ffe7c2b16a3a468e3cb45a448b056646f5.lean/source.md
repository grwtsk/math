# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Build.Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97d73984053ff23eec2032ac0b80d4576dbee791` · SHA-256 `2ddd40afb3cf5f126543a6cd68e9868e1a8c71168f551bb94c1df455d36a419b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildSpec.Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.BuildSpec.Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/CLI/Build.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.CLI.Error
public import Lake.Config.Workspace
import Lake.Build.Infos
import Lake.Build.Job.Monad
public import Lake.Build.Job.Register
import Lake.Util.IO
import Init.Data.Iterators.Consumers


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuildSpec.Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652

open System Lean

namespace Lake

/-! ## Build Target Specifiers -/

public structure BuildSpec where
  info : BuildInfo
  buildable := true
  format : OutFormat → BuildData info.key → String := nullFormat

@[inline] def mkBuildSpec
  (info : BuildInfo) [FormatQuery α] [h : FamilyOut BuildData info.key α]
: BuildSpec where
  info
  buildable := true
  format := h.fam_eq ▸ formatQuery

@[inline] public def mkConfigBuildSpec
  (info : BuildInfo)
  (config : FacetConfig facet)
  (h : BuildData info.key = FacetOut facet)
: BuildSpec where
  info
  buildable := config.buildable
  format := h ▸ config.format

@[inline] public protected def BuildSpec.fetch (self : BuildSpec) : FetchM (Job (BuildData self.info.key)) := do
  maybeRegisterJob self.info.key.toSimpleString (← self.info.fetch)

@[inline] public protected def BuildSpec.build (self : BuildSpec) : FetchM OpaqueJob := do
  return (← self.fetch).toOpaque

@[inline] public protected def BuildSpec.query (self : BuildSpec) (fmt : OutFormat) : FetchM (Job String) := do
  maybeRegisterJob self.info.key.toSimpleString =<< do
    return (← self.info.fetch).map (self.format fmt)

public def buildSpecs (specs : Array BuildSpec) : FetchM (Job Unit) := do
  return Job.mixArray (← specs.mapM (·.build))

public def querySpecs (specs : Array BuildSpec) (fmt : OutFormat) : FetchM (Job (Array String)) := do
  return Job.collectArray (← specs.mapM (·.query fmt))

/-! ## Parsing CLI Build Target Specifiers -/

public def parsePackageSpec (ws : Workspace) (spec : String) : Except CliError Package :=
  if spec.isEmpty then
    return ws.root
  else
    match ws.findPackageByName? <| stringToLegalOrSimpleName spec with
    | some pkg => return pkg
    | none => throw <| CliError.unknownPackage spec

def resolveModuleTarget
  (ws : Workspace) (mod : Module) (facet : Name)
: Except CliError BuildSpec :=
  if facet.isAnonymous then
    return mkBuildSpec mod.leanArts
  else
    if let some config := ws.findModuleFacetConfig? (Module.facetKind ++ facet) then do
      return mkConfigBuildSpec (mod.facetCore config.name) config.toFacetConfig rfl
    else
      throw <| CliError.unknownFacet "module" facet

def resolveCustomTarget
  (pkg : Package) (name facet : Name) (config : TargetConfig pkg.keyName name)
: Except CliError BuildSpec :=
  if !facet.isAnonymous then
    throw <| CliError.invalidFacet name facet
  else do
    return {info := pkg.target name, format := config.format}

def resolveConfigDeclTarget
  (ws : Workspace) (pkg : Package)
  {target : Name} (decl : NConfigDecl pkg.keyName target) (facet : Name)
: Except CliError (Array BuildSpec) := do
  if h : decl.kind.isAnonymous then
    Array.singleton <$> resolveCustomTarget pkg target facet (decl.targetConfig h)
  else
    let facet := if facet.isAnonymous then `default else facet
    if let some config := ws.findFacetConfig? (decl.kind ++ facet) then
      let tgt := decl.mkConfigTarget pkg
      let tgt := cast (by simp [decl.target_eq_type h]) tgt
      let info := BuildInfo.facet (.packageTarget pkg.keyName decl.name) decl.kind tgt config.name
      return #[mkConfigBuildSpec info config rfl]
    else
      throw <| CliError.unknownFacet decl.kind.toString facet

def resolveTargetInPackage
  (ws : Workspace) (pkg : Package) (target facet : Name)
: Except CliError (Array BuildSpec) := do
  if let some decl := pkg.findTargetDecl? target then
    resolveConfigDeclTarget ws pkg decl facet
  else if let some mod := pkg.findTargetModule? target then
    Array.singleton <$> resolveModuleTarget ws mod facet
  else
    throw <| CliError.missingTarget pkg.baseName (target.toString false)

def resolveDefaultPackageTarget
  (ws : Workspace) (pkg : Package)
: Except CliError (Array BuildSpec) :=
  pkg.defaultTargets.flatMapM (resolveTargetInPackage ws pkg · .anonymous)

def resolvePackageTarget
  (ws : Workspace) (pkg : Package) (facet : Name)
: Except CliError (Array BuildSpec) :=
  if facet.isAnonymous then
    resolveDefaultPackageTarget ws pkg
  else
    if let some config := ws.findPackageFacetConfig? (Package.facetKind ++ facet) then do
      return #[mkConfigBuildSpec (pkg.facetCore config.name) config.toFacetConfig rfl]
    else
      throw <| CliError.unknownFacet "package" facet

def resolveTargetInWorkspace
  (ws : Workspace) (target : Name) (facet : Name)
: Except CliError (Array BuildSpec) :=
  if let some ⟨pkg, decl⟩ := ws.findTargetDecl? target then
    resolveConfigDeclTarget ws pkg decl facet
  else if let some pkg := ws.findPackageByName? target then
    resolvePackageTarget ws pkg facet
  else if let some mod := ws.findTargetModule? target then
    Array.singleton <$> resolveModuleTarget ws mod facet
  else
    throw <| CliError.unknownTarget target

def resolveTargetLikeSpec
  (ws : Workspace) (spec : String) (facet : Name) (isMaybePath explicit := false)
: Except CliError (Array BuildSpec) := do
  match spec.split '/' |>.toList with
  | [spec] =>
    if spec.isEmpty then
      resolvePackageTarget ws ws.root facet
    else if explicit then
      resolvePackageTarget ws (← parsePackageSpec ws spec.copy) facet
    else
      resolveTargetInWorkspace ws (stringToLegalOrSimpleName spec.copy) facet
  | [pkgSpec, targetSpec] =>
    let pkg ← parsePackageSpec ws pkgSpec.copy
    if targetSpec.isEmpty then
      resolvePackageTarget ws pkg facet
    else if targetSpec.startsWith "+" then
      let mod := targetSpec.drop 1 |>.copy.toName
      if let some mod := pkg.findTargetModule? mod then
        Array.singleton <$> resolveModuleTarget ws mod facet
      else
        throw <| CliError.unknownModule mod
    else
      resolveTargetInPackage ws pkg (stringToLegalOrSimpleName targetSpec.copy) facet
  | _ =>
    if isMaybePath then
      throw <| CliError.unknownModulePath spec
    else
      throw <| CliError.invalidTargetSpec spec '/'

def resolveTargetBaseSpec
  (ws : Workspace) (spec : String) (facet : Name)
: EIO CliError (Array BuildSpec) := do
  if spec.startsWith "@" then
    let spec := spec.drop 1
    resolveTargetLikeSpec ws spec.copy facet (explicit := true)
  else if spec.startsWith "+" then
    let mod := spec.drop 1 |>.toName
    if let some mod := ws.findTargetModule? mod then
      Array.singleton <$> resolveModuleTarget ws mod facet
    else
      throw <| CliError.unknownModule mod
  else if let some path ← resolvePath? spec then
    if (← path.isDir) then
      resolveTargetLikeSpec ws spec facet
    else if let some mod := ws.findModuleBySrc? path then
      Array.singleton <$> resolveModuleTarget ws mod facet
    else
      resolveTargetLikeSpec ws spec facet true
  else
    resolveTargetLikeSpec ws spec facet true

public def parseExeTargetSpec
  (ws : Workspace) (spec : String)
: Except CliError LeanExe := do
  match spec.split '/' |>.toList with
  | [targetSpec] =>
    let targetName := stringToLegalOrSimpleName targetSpec.copy
    match ws.findLeanExe? targetName with
    | some exe => return exe
    | none => throw <| CliError.unknownExe spec
  | [pkgSpec, targetSpec] =>
    let pkgSpec := if pkgSpec.startsWith "@" then pkgSpec.drop 1 else pkgSpec
    let pkg ← parsePackageSpec ws pkgSpec.copy
    let targetName := stringToLegalOrSimpleName targetSpec.copy
    match pkg.findLeanExe? targetName with
    | some exe => return exe
    | none => throw <| CliError.unknownExe spec
  | _ =>
    throw <| CliError.invalidTargetSpec spec '/'

public def parseTargetSpec
  (ws : Workspace) (spec : String)
: EIO CliError (Array BuildSpec) := do
  match spec.split ':' |>.toStringList with
  | [spec] =>
    resolveTargetBaseSpec ws spec .anonymous
  | [rootSpec, facet] =>
    resolveTargetBaseSpec ws rootSpec facet.toName
  | _ =>
    throw <| CliError.invalidTargetSpec spec ':'

public def parseTargetSpecs
  (ws : Workspace) (specs : List String)
: EIO CliError (Array BuildSpec) := do
  let mut results := #[]
  for spec in specs do
    results := results ++ (← parseTargetSpec ws spec)
  if results.isEmpty then
    results ← resolveDefaultPackageTarget ws ws.root
  return results
```
