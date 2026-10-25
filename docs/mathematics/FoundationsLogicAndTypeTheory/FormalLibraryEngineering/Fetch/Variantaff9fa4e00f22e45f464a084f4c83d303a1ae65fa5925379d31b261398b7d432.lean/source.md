# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fetch.Variantaff9fa4e00f22e45f464a084f4c83d303a1ae65fa5925379d31b261398b7d432

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f363215c258881582a708157db636e0a13f1ee49` · SHA-256 `c0416fe403c84498279d8ed55b81c7e570bde5e92879ed5f9bcb15124c101353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PartialBuildKeyFetchInCoreAux.Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.PartialBuildKeyFetchInCoreAux.Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Target/Fetch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
import Lake.Build.Infos
public import Lake.Build.Job.Monad
import Lake.Config.Monad
import all Lake.Build.Key


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PartialBuildKeyFetchInCoreAux.Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88

open Lean

namespace Lake

variable (defaultPkg : Package) (root : PartialBuildKey) in
def PartialBuildKey.fetchInCoreAux
  (self : PartialBuildKey) (facetless : Bool := false)
: FetchM ((key : BuildKey) × Job (BuildData key)) := do
  match self with
  | .module modName =>
    let some mod ← findModule? modName
      | error s!"invalid target '{root}': module '{modName}' not found in workspace"
    return ⟨.packageModule mod.pkg.keyName modName, cast (by simp) <| Job.pure mod⟩
  | .package pkgName =>
    let pkg ← resolveTargetPackageD pkgName
    return ⟨.package pkg.keyName, cast (by simp) <| Job.pure pkg⟩
  | .packageModule pkgName modName =>
    let pkg ← resolveTargetPackageD pkgName
    let some mod := pkg.findTargetModule? modName
      | error s!"invalid target '{root}': module target '{modName}' not found in package '{pkg.prettyName}'"
    return ⟨.packageModule pkg.keyName modName, cast (by simp) <| Job.pure mod⟩
  | .packageTarget pkgName target =>
    let pkg ← resolveTargetPackageD pkgName
    let key := BuildKey.packageTarget pkg.keyName target
    if facetless then
      if let some decl := pkg.findTargetDecl? target then
        if h : decl.kind.isAnonymous then
          let job ← ( pkg.target target).fetch
          return ⟨key, cast (by simp) job⟩
        else
          let facet := decl.kind.str "default"
          let tgt := decl.mkConfigTarget pkg
          let tgt := cast (by simp [decl.target_eq_type h]) tgt
          let info := BuildInfo.facet key decl.kind tgt facet
          return ⟨key.facet facet, ← info.fetch⟩
      else
        error s!"invalid target '{root}': target not found in package '{pkg.prettyName}'"
    else
      let job ← (pkg.target target).fetch
      return ⟨key, cast (by simp) job⟩
  | .facet target shortFacet =>
      let ⟨key, job⟩ ← PartialBuildKey.fetchInCoreAux target false
      let kind := job.kind
      if h : kind.isAnonymous then
        error s!"invalid target '{root}': targets of opaque data kinds do not support facets"
      else
        let shortFacet := if shortFacet.isAnonymous then `default else shortFacet
        have facet := kind ++ shortFacet
        let some cfg := (← getWorkspace).findFacetConfig? facet
          | error s!"invalid target '{root}': unknown facet '{facet}'"
        let job ← (job.cast h).bindM (kind := cfg.outKind) fun data =>
          fetch (.facet target kind data facet)
        return ⟨.facet target facet, cast (by simp) job⟩
where
  @[inline] resolveTargetPackageD  (name : Name) : FetchM Package := do
    match name with
    | .anonymous =>
      return defaultPkg
    | p@(.num ..) =>
      let some pkg ← findPackageByKey? p
        | error s!"invalid target '{root}': package '{name}' not found in workspace"
      return pkg
    | p =>
      let some pkg ← findPackageByName? p
        | error s!"invalid target '{root}': package '{name}' not found in workspace"
      return pkg

/-- **For internal use only.** -/
@[inline] public def PartialBuildKey.fetchInCore
  (defaultPkg : Package) (self : PartialBuildKey)
: FetchM ((key : BuildKey) × Job (BuildData key)) :=
  fetchInCoreAux defaultPkg self self true

/--
Fetches the target specified by this key, resolving gaps as needed.

* A missing package (i.e., `Name.anonymous`) is filled in with `defaultPkg`.
* Facets are qualified by the their input target's kind, and missing facets
  are replaced by their kind's `default`.
* Package targets ending in `moduleTargetIndicator` are converted to module package targets.
* Package targets for non-dynamic targets (i.e., non-`target`) produce their default facet
  rather than their configuration.
-/
@[inline] public def PartialBuildKey.fetchIn (defaultPkg : Package) (self : PartialBuildKey) : FetchM OpaqueJob :=
  (·.2.toOpaque) <$> fetchInCore defaultPkg self

variable (root : BuildKey) in
def BuildKey.fetchCore
  (self : BuildKey)
: FetchM (Job (BuildData self)) :=
  match self with
  | module modName => do
    let some mod ← findModule? modName
      | error s!"invalid target '{root}': module '{modName}' not found in workspace"
    return cast (by simp) <| Job.pure mod
  | package pkgName => do
    let some pkg ← findPackageByKey? pkgName
      | error s!"invalid target '{root}': package '{pkgName}' not found in workspace"
    return cast (by simp) <| Job.pure pkg.toPackage
  | packageModule pkgName modName => do
    let some pkg ← findPackageByKey? pkgName
      | error s!"invalid target '{root}': package '{pkgName}' not found in workspace"
    let some mod := pkg.findTargetModule? modName
      | error s!"invalid target '{root}': module '{modName}' not found in package '{pkg.prettyName}'"
    return cast (by simp) <| Job.pure mod
  | packageTarget pkgName target => do
    let some pkg ← findPackageByKey? pkgName
      | error s!"invalid target '{root}': package '{pkgName}' not found in workspace"
    fetch <| pkg.target target
  | facet target facetName => do
      let job ← target.fetchCore
      let kind := job.kind
      if h : kind.isAnonymous then
        error s!"invalid target '{self}': targets of opaque data kinds do not support facets"
      else
        let some cfg := (← getWorkspace).findFacetConfig? facetName
          | error s!"invalid target '{root}': unknown facet '{facetName}'"
        (job.cast h).bindM (kind := cfg.outKind) fun data =>
          fetch (.facet target kind data facetName)

@[inline] public protected def BuildKey.fetch
  (self : BuildKey) [FamilyOut BuildData self α] : FetchM (Job α)
:= cast (by simp) <| fetchCore self self

public protected def Target.fetchIn
  [DataKind α] (defaultPkg : Package) (self : Target α) : FetchM (Job α)
:= do
  let ⟨_, job⟩ ← self.key.fetchInCore defaultPkg
  have ⟨kind, ⟨h_anon, h_kind⟩⟩ := (inferInstance : DataKind α)
  if h : job.kind.name = kind then
    have h := by
      have h_job := h ▸ job.kind.wf
      rw [h_job h_anon, h_kind]
    return cast h job
  else
    let actual := if job.kind.name.isAnonymous then "unknown" else s!"'{job.kind.name}'"
    error s!"type mismatch in target '{self.key}': expected '{kind}', got {actual}"

public protected def TargetArray.fetchIn
  [DataKind α] (defaultPkg : Package) (self : TargetArray α) (traceCaption := "<targets>")
: FetchM (Job (Array α)) :=
  Job.collectArray (traceCaption := traceCaption) <$> self.mapM (·.fetchIn defaultPkg)
```
