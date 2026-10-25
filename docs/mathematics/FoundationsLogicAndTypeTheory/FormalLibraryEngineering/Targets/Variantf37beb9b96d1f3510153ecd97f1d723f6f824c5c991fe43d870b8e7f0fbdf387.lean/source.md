# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Targets.Variantf37beb9b96d1f3510153ecd97f1d723f6f824c5c991fe43d870b8e7f0fbdf387

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5155f41bb728b07e4d2bc4ffd193195ff2d7737b` · SHA-256 `7ddd07a69617fcd8e5c71c22dccd5d8c1b9a4210e05193aa4f2f4477a6471144`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkModuleFacetDecl.Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MkModuleFacetDecl.Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/DSL/Targets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.DSL.Syntax
public import Lake.Config.TargetConfig
public import Lake.Config.FacetConfig
public import Lake.Build.Job.Register
public import Lake.Build.Infos

/-! # DSL for Targets & Facets
Macros for declaring Lake targets and facets.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkModuleFacetDecl.Variant886f5f08b6087bb59276242632945bb4954dd493b203b3f9cae90f69c88b7b7f

open System (FilePath)
open Lean Parser Elab Command

namespace Lake.DSL


--------------------------------------------------------------------------------
/-! ## Facet Declarations                                                      -/
--------------------------------------------------------------------------------

public abbrev mkModuleFacetDecl
  (α) (facet : Name)
  [OptDataKind α] [FormatQuery α] [FamilyDef ModuleData facet α]
  (f : Module → FetchM (Job α))
: ModuleFacetDecl := .mk (Module.facetKind ++ facet) <| mkFacetJobConfig fun mod => do
  withRegisterJob (mod.facet facet |>.key.toSimpleString)
    (f mod)

@[builtin_macro moduleFacetDecl]
def expandModuleFacetDecl : Macro := fun stx => do
  let `(moduleFacetDecl|$(doc?)? $(attrs?)? module_facet%$kw $sig) := stx
    | Macro.throwErrorAt stx "ill-formed module facet declaration"
  let `(buildDeclSig| $nameStx $[$mod?]? : $ty := $defn $[$wds?:whereDecls]?) := sig
    | Macro.throwErrorAt sig "ill-formed module facet declaration"
  withRef kw do
  let attr ← `(Term.attrInstance| «module_facet»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let facet := Name.quoteFrom id id.getId
  let declId := mkIdentFrom id <| id.getId.modifyBase (.str · "_modFacet")
  let mod ← expandOptSimpleBinder mod?
  `(module_data $id : $ty
    $[$doc?:docComment]? @[$attrs,*] abbrev $declId :=
      Lake.DSL.mkModuleFacetDecl $ty $facet (fun $mod => $defn)
    $[$wds?:whereDecls]?)

public abbrev mkPackageFacetDecl
  (α) (facet : Name)
  [OptDataKind α] [FormatQuery α] [FamilyDef PackageData facet α]
  (f : Package → FetchM (Job α))
: PackageFacetDecl := .mk (Package.facetKind ++ facet) <| mkFacetJobConfig fun pkg => do
  withRegisterJob (pkg.facet facet |>.key.toSimpleString)
    (f pkg)

@[builtin_macro packageFacetDecl]
def expandPackageFacetDecl : Macro := fun stx => do
  let `(packageFacetDecl|$(doc?)? $(attrs?)? package_facet%$kw $sig) := stx
    | Macro.throwErrorAt stx "ill-formed package facet declaration"
  let `(buildDeclSig| $nameStx $[$pkg?]? : $ty := $defn $[$wds?:whereDecls]?) := sig
    | Macro.throwErrorAt sig "ill-formed package facet signature"
  withRef kw do
  let attr ← `(Term.attrInstance| «package_facet»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let facet := Name.quoteFrom id id.getId
  let declId := mkIdentFrom id <| id.getId.modifyBase (.str · "_pkgFacet")
  let pkg ← expandOptSimpleBinder pkg?
  `(package_data $id : $ty
    $[$doc?]? @[$attrs,*] abbrev $declId :=
      Lake.DSL.mkPackageFacetDecl $ty $facet (fun $pkg => $defn)
    $[$wds?:whereDecls]?)

public abbrev mkLibraryFacetDecl
  (α) (facet : Name)
  [OptDataKind α] [FormatQuery α] [FamilyDef LibraryData facet α]
  (f : LeanLib → FetchM (Job α))
: LibraryFacetDecl := .mk (LeanLib.facetKind ++ facet) <| mkFacetJobConfig fun lib => do
  withRegisterJob (lib.facet facet |>.key.toSimpleString)
    (f lib)

@[builtin_macro libraryFacetDecl]
def expandLibraryFacetDecl : Macro := fun stx => do
  let `(libraryFacetDecl|$(doc?)? $(attrs?)? library_facet%$kw $sig) := stx
    | Macro.throwErrorAt stx "ill-formed library facet declaration"
  let `(buildDeclSig| $nameStx  $[$lib?]? : $ty := $defn $[$wds?:whereDecls]?) := sig
    | Macro.throwErrorAt sig "ill-formed library facet signature"
  withRef kw do
  let attr ← `(Term.attrInstance| «library_facet»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let facet := Name.quoteFrom id id.getId
  let declId := mkIdentFrom id <| id.getId.modifyBase (.str · "_libFacet")
  let lib ← expandOptSimpleBinder lib?
  `(library_data $id : $ty
    $[$doc?]? @[$attrs,*] abbrev $declId : LibraryFacetDecl :=
      Lake.DSL.mkLibraryFacetDecl $ty $facet (fun $lib => $defn)
    $[$wds?:whereDecls]?)


--------------------------------------------------------------------------------
/-! ## Custom Target Declaration                                              -/
--------------------------------------------------------------------------------

public abbrev mkTargetDecl
  (α) (pkgName «target» : Name)
  [OptDataKind α] [FormatQuery α] [FamilyDef (CustomData pkgName) «target» α]
  (f : NPackage pkgName → FetchM (Job α))
: TargetDecl :=
  let cfg := mkTargetJobConfig fun pkg => do
    withRegisterJob (pkg.target «target» |>.key.toSimpleString) do
      f pkg
  .mk (.mk pkgName «target» .anonymous (.mk cfg) (by simp [Name.isAnonymous_iff_eq_anonymous])) rfl

@[builtin_macro targetCommand]
def expandTargetCommand : Macro := fun stx => do
  let `(targetCommand|$(doc?)? $(attrs?)? target%$kw $sig) := stx
    | Macro.throwErrorAt stx "ill-formed target declaration"
  let `(buildDeclSig|$id:ident $[$pkg?]? : $ty := $defn $[$wds?:whereDecls]?) := sig
    | Macro.throwErrorAt sig "ill-formed target signature"
  withRef kw do
  let attr ← `(Term.attrInstance| «target»)
  let attrs := #[attr] ++ expandAttrs attrs?
  let name := Name.quoteFrom id id.getId
  let pkg ← expandOptSimpleBinder pkg?
  `(family_def $id : CustomOut (__name__, $name) := $ty
    $[$doc?]? abbrev $id :=
      Lake.DSL.mkTargetDecl $ty __name__ $name (fun $pkg => $defn)
    $[$wds?:whereDecls]?
    @[$attrs,*] def configDecl : ConfigDecl := $(id).toConfigDecl)

--------------------------------------------------------------------------------
/-! ## Lean Library & Executable Target Declarations -/
--------------------------------------------------------------------------------

public abbrev mkConfigDecl
  (pkg name kind : Name)
  (config : ConfigType kind pkg name)
  [FamilyDef (CustomData pkg) name (ConfigTarget kind)]
  [FamilyDef DataType kind (ConfigTarget kind)]
: KConfigDecl kind :=
  {pkg, name, kind, config, wf_data := fun _ => by simp, kind_eq := rfl}

def mkConfigDeclDef
  (tyName attr kind : Name)
  [ConfigInfo tyName] [delTyName : TypeName (KConfigDecl kind)]
  (doc? : Option DocComment) (attrs? : Option Attributes)
  (nameStx? : Option IdentOrStr) (cfg : OptConfig)
: CommandElabM Command := do
  let configId : Ident ← `(config)
  let id ← mkConfigDeclIdent nameStx?
  let name := Name.quoteFrom id id.getId
  let ty := Syntax.mkCApp tyName #[name]
  elabConfig tyName configId ty cfg
  let attrId ← mkIdentFromRef attr
  let targetAttr ← `(Term.attrInstance| «target»)
  let kindAttr ← `(Term.attrInstance| $attrId:ident)
  let attrs := #[targetAttr, kindAttr] ++ expandAttrs attrs?
  let declTy ← mkIdentFromRef delTyName.typeName
  let kind := Name.quoteFrom (← getRef) kind
  `(family_def $id : CustomOut (__name__, $name) := ConfigTarget $kind
    $[$doc?]? abbrev $id : $declTy :=
      Lake.DSL.mkConfigDecl __name__ $name $kind $configId
    @[$attrs,*] def configDecl : ConfigDecl := $(id).toConfigDecl
  )

@[builtin_command_elab leanLibCommand]
def elabLeanLibCommand : CommandElab := fun stx => do
  let `(leanLibCommand|$(doc?)? $(attrs?)? lean_lib%$kw $(nameStx?)? $cfg) := stx
    | throwErrorAt stx "ill-formed lean_lib declaration"
  withRef kw do
  let cmd ← mkConfigDeclDef ``LeanLibConfig LeanLib.keyword LeanLib.configKind doc? attrs? nameStx? cfg
  withMacroExpansion stx cmd <| elabCommand cmd

@[builtin_command_elab leanExeCommand]
def elabLeanExeCommand : CommandElab := fun stx => do
  let `(leanExeCommand|$(doc?)? $(attrs?)? lean_exe%$kw $(nameStx?)? $cfg) := stx
    | throwErrorAt stx "ill-formed lean_exe declaration"
  withRef kw do
  let cmd ← mkConfigDeclDef ``LeanExeConfig LeanExe.keyword LeanExe.configKind doc? attrs? nameStx? cfg
  withMacroExpansion stx cmd <| elabCommand cmd

@[builtin_command_elab inputFileCommand]
def elabInputfileCommand : CommandElab := fun stx => do
  let `(inputFileCommand|$(doc?)? $(attrs?)? input_file%$kw $(nameStx?)? $cfg) := stx
    | throwErrorAt stx "ill-formed input_file declaration"
  withRef kw do
  let cmd ← mkConfigDeclDef ``InputFileConfig InputFile.keyword InputFile.configKind doc? attrs? nameStx? cfg
  withMacroExpansion stx cmd <| elabCommand cmd

@[builtin_command_elab inputDirCommand]
def elabInputDirCommand : CommandElab := fun stx => do
  let `(inputDirCommand|$(doc?)? $(attrs?)? input_dir%$kw $(nameStx?)? $cfg) := stx
    | throwErrorAt stx "ill-formed input_dir declaration"
  withRef kw do
  let cmd ← mkConfigDeclDef ``InputDirConfig InputDir.keyword InputDir.configKind doc? attrs? nameStx? cfg
  withMacroExpansion stx cmd <| elabCommand cmd

--------------------------------------------------------------------------------
/-! ## External Library Target Declaration                                    -/
--------------------------------------------------------------------------------

public abbrev mkExternLibDecl
  (pkgName name : Name)
  [FamilyDef (CustomData pkgName) (.str name "static") FilePath]
  [FamilyDef (CustomData pkgName) name (ConfigTarget ExternLib.configKind)]
: ExternLibDecl :=
  mkConfigDecl pkgName name ExternLib.configKind {getPath := cast (by simp)}

@[builtin_macro externLibCommand]
def expandExternLibCommand : Macro := fun stx => do
  let `(externLibCommand|$(doc?)? $(attrs?)? extern_lib%$kw $spec) := stx
    | Macro.throwErrorAt stx "ill-formed external library declaration"
  let `(externLibDeclSpec| $nameStx $[$pkg?]? := $defn $[$wds?:whereDecls]?) := spec
    | Macro.throwErrorAt spec "ill-formed external library signature"
  withRef kw do
  let attr1 ← `(Term.attrInstance| «target»)
  let attr2 ← `(Term.attrInstance| «extern_lib»)
  let attrs := #[attr1, attr2] ++ expandAttrs attrs?
  let id := expandIdentOrStrAsIdent nameStx
  let targetId := mkIdentFrom id <| id.getId.modifyBase (· ++ `static)
  let name := Name.quoteFrom id id.getId
  let kind := Name.quoteFrom kw ExternLib.configKind
  `(target $targetId:ident $[$pkg?]? : FilePath := $defn $[$wds?:whereDecls]?
    family_def $id : CustomOut (__name__, $name) := ConfigTarget $kind
    $[$doc?:docComment]? def $id : ExternLibDecl :=
      Lake.DSL.mkExternLibDecl __name__ $name
    @[$attrs,*] def configDecl : ConfigDecl := $(id).toConfigDecl)
```
