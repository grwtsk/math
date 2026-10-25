# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Targets.Variantaf61dc5f8ce25a4ace3fed8fffb1b2e6091883ab32ad1883b4d3d60e8ec0e1f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f249513743face9cc7f34a1eaf12b7e6466f2905` · SHA-256 `0f76da27698f3dc9d99981f74f9ed34df3a1af28a2c2861cd5a2f3437a62b2c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackageFetchTargetJob.Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.PackageFetchTargetJob.Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Targets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Monad
public import Lake.Config.InputFile
import Lake.Build.Infos

/-! # Build Target Fetching
Utilities for fetching package, library, module, and executable targets and facets.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PackageFetchTargetJob.Variant8ecd68360778aebb46340c1169c7307489cca771607f3f9f6212f4c062b37ebf

open Lean (Name)
open System (FilePath)

namespace Lake

/-- Get the target in the workspace corresponding to this configuration. -/
@[inline] public def KConfigDecl.get
  [Monad m] [MonadError m] [MonadLake m] (self : KConfigDecl kind)
: m (ConfigTarget kind) := do
  let some pkg ← findPackageByKey? self.pkg
    | error s!"package of target '{self.pkg}/{self.name}' not found in workspace"
  let config := cast (by rw [self.kind_eq, pkg.keyName_eq]) self.config
  return ConfigTarget.mk pkg self.name config

/-! ## Package Facets & Targets -/

/-- Fetch the build job of the specified package target. -/
public def Package.fetchTargetJob
  (self : Package) (target : Name)
: FetchM OpaqueJob := do
  return (← fetch <| self.target target).toOpaque

/-- Fetch the build result of a target. -/
public protected def TargetDecl.fetch
  (self : TargetDecl) [FamilyOut (CustomData self.pkg) self.name α]
: FetchM (Job α) := do
  let some pkg ← findPackageByKey? self.pkg
    | error s!"package '{self.pkg}' of target '{self.name}' does not exist in workspace"
  fetch <| pkg.target self.name

/-- Fetch the build job of the target. -/
public def TargetDecl.fetchJob (self : TargetDecl) : FetchM OpaqueJob :=  do
  let some pkg ← findPackageByKey? self.pkg
    | error s!"package '{self.pkg}' of target '{self.name}' does not exist in workspace"
  return (← (pkg.target self.name).fetch).toOpaque

/-- Fetch the build result of a package facet. -/
@[inline] public protected def PackageFacetDecl.fetch
  (pkg : Package) (self : PackageFacetDecl) [FamilyOut FacetOut self.name α]
: FetchM (Job α) := fetch <| pkg.facetCore self.name

/-- Fetch the build job of a library facet. -/
public def Package.fetchFacetJob
  (name : Name) (self : Package)
: FetchM OpaqueJob := do
  return  (← fetch <| self.facet name).toOpaque

/-! ## Module Facets -/

/-- Fetch the build result of a module facet. -/
@[inline] public protected def ModuleFacetDecl.fetch
  (mod : Module) (self : ModuleFacetDecl) [FamilyOut FacetOut self.name α]
: FetchM (Job α) := fetch <| mod.facetCore self.name

/-- Fetch the build job of a module facet. -/
public def Module.fetchFacetJob (name : Name) (self : Module) : FetchM OpaqueJob :=
  return (← fetch <| self.facet name).toOpaque

/-! ## Lean Library Facets -/

/-- Get the Lean library in the workspace corresponding to this configuration. -/
@[inline] public def LeanLibDecl.get
  (self : LeanLibDecl) [Monad m] [MonadError m] [MonadLake m] : m LeanLib
:= KConfigDecl.get self

/-- Fetch the build of the default facets of the library -/
@[inline] public protected def LeanLib.fetch (self : LeanLib) : FetchM (Job Unit) :=
  self.default.fetch

/-- Fetch the build of the default facets of the library -/
@[inline] public protected def LeanLibDecl.fetch (self : LeanLibDecl) : FetchM (Job Unit) := do
  (← self.get).fetch

/-- Fetch the build result of a library facet. -/
@[inline] public protected def LibraryFacetDecl.fetch
  (lib : LeanLib) (self : LibraryFacetDecl) [FamilyOut FacetOut self.name α]
: FetchM (Job α) := fetch <| lib.facetCore self.name

/-- Fetch the build job of a library facet. -/
public def LeanLib.fetchFacetJob
  (name : Name) (self : LeanLib)
: FetchM OpaqueJob := return (← fetch <| self.facet name).toOpaque

/-! ## Lean Executable Target -/

/-- Get the Lean executable in the workspace corresponding to this configuration. -/
@[inline] public def LeanExeDecl.get
  (self : LeanExeDecl) [Monad m] [MonadError m] [MonadLake m] : m LeanExe
:= KConfigDecl.get self

/-- Fetch the build of the Lean executable. -/
@[inline] public protected def LeanExe.fetch (self : LeanExe) : FetchM (Job FilePath) :=
  self.exe.fetch

/-- Fetch the build of the Lean executable. -/
@[inline] public protected def LeanExeDecl.fetch (self : LeanExeDecl) : FetchM (Job FilePath) := do
  (← self.get).fetch

/-! ## Input File / Directory Targets -/

/-- Fetch the input file. -/
@[inline] public protected def InputFile.fetch (self : InputFile) : FetchM (Job FilePath) :=
  self.default.fetch

/-- Get the input file in the workspace corresponding to this configuration. -/
@[inline] public def InputFileDecl.get
  (self : InputFileDecl) [Monad m] [MonadError m] [MonadLake m] : m InputFile
:= KConfigDecl.get self

/-- Fetch the input file. -/
@[inline] public protected def InputFileDecl.fetch (self : InputFileDecl) : FetchM (Job FilePath) := do
  (← self.get).default.fetch

/-- Fetch the files in the input directory. -/
@[inline] public protected def InputDir.fetch (self : InputDir) : FetchM (Job (Array FilePath)) :=
  self.default.fetch

/-- Get the input directory in the workspace corresponding to this configuration. -/
@[inline] public def InputDirDecl.get
  (self : InputDirDecl) [Monad m] [MonadError m] [MonadLake m] : m InputDir
:= KConfigDecl.get self

/-- Fetch the files in the input directory. -/
@[inline] public protected def InputDirDecl.fetch (self : InputDirDecl) : FetchM (Job (Array FilePath)) := do
  (← self.get).default.fetch
```
