# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Store.Variant9da8cd4b804a0b079eca901d9458fe6ff17a39351596343276fc13f66fe4299a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `296c97835c8033cbb97f46acc959871c2495e141` · SHA-256 `29cc917ebf0b23ae4ebe87538b57e15f819c0bf47a524afe8d051f56dda30799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadBuildStore.Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.MonadBuildStore.Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"a7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Store.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Util.Store
public import Lake.Build.Job.Basic

/-!
# The Lake Build Store

The Lake build store is the map of Lake build keys to build task and/or
build results that is slowly filled during a recursive build (e.g., via
topological-based build of an initial key's dependencies).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadBuildStore.Varianta7b60146552233a17444b6c0a566d69674230a06f05dd6999f0b2771f6cc33f3

namespace Lake
open Lean (Name NameMap)

/-- A monad equipped with a Lake build store. -/
public abbrev MonadBuildStore (m) := MonadDStore BuildKey (Job <| BuildData ·) m

/-- The type of the Lake build store. -/
public  abbrev BuildStore :=
  Std.DTreeMap BuildKey (Job <| BuildData ·) BuildKey.quickCmp

@[inline] public def BuildStore.empty : BuildStore := Std.DTreeMap.empty

namespace BuildStore

set_option linter.deprecated false in
def getModuleFacetJob? (facet : Name) [FamilyOut FacetOut facet α]
    (k : BuildKey) (v : Job (BuildData k)) : Option (Name × Job α) :=
  match k with
  | .moduleFacet m f
  | .packageModuleFacet p m f =>
    if h : f = facet then
      have of_data := by unfold BuildData; simp [h]
      some (m, cast of_data v)
    else none
  | _ => none

set_option linter.deprecated false in
/-- Derive an array of built module facets from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
public def collectModuleFacetArray
  (self : BuildStore) (facet : Name) [FamilyOut FacetOut facet α]
: Array (Job α) := Id.run do
  let mut res : Array (Job α) := #[]
  for ⟨k, v⟩ in self do
    if let some (_, job) := getModuleFacetJob? facet k v then
      res := res.push job
  return res

set_option linter.deprecated false in
/-- Derive a map of module names to built facets from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
public def collectModuleFacetMap
  (self : BuildStore) (facet : Name) [FamilyOut FacetOut facet α]
: NameMap (Job α) := Id.run do
  let mut res := Lean.mkNameMap (Job α)
  for ⟨k, v⟩ in self do
    if let some (m, job) := getModuleFacetJob? facet k v then
      res := res.insert m job
  return res

def getPackageFacetJob? (facet : Name) [FamilyOut FacetOut facet α]
    (k : BuildKey) (v : Job (BuildData k)) : Option (Job α) :=
  match k with
  | .packageFacet p f =>
    if h : f = facet then
      have of_data := by unfold BuildData; simp [h]
      some (cast of_data v)
    else none
  | _ => none

/-- Derive an array of built package facets from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
public def collectPackageFacetArray
  (self : BuildStore) (facet : Name) [FamilyOut FacetOut facet α]
: Array (Job α) := Id.run do
  let mut res : Array (Job α) := #[]
  for ⟨k, v⟩ in self do
    if let some job := getPackageFacetJob? facet k v then
      res := res.push job
  return res

def getTargetFacetJob? (facet : Name) [FamilyOut FacetOut facet α]
    (k : BuildKey) (v : Job (BuildData k)) : Option (Job α) :=
  match k with
  | .targetFacet _ _ f =>
    if h : f = facet then
      have of_data := by unfold BuildData; simp [h]
      some (cast of_data v)
    else none
  | _ => none

/-- Derive an array of built target facets from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
public def collectTargetFacetArray
  (self : BuildStore) (facet : Name) [FamilyOut FacetOut facet α]
: Array (Job α) := Id.run do
  let mut res : Array (Job α) := #[]
  for ⟨k, v⟩ in self do
    if let some job := getTargetFacetJob? facet k v then
      res := res.push job
  return res

set_option linter.deprecated false in
/-- Derive an array of built external shared libraries from the store. -/
@[deprecated "Deprecated without replacement." (since := "2025-11-13")]
public def collectSharedExternLibs
  (self : BuildStore) [FamilyOut FacetOut `externLib.shared α]
: Array (Job α) := self.collectTargetFacetArray `externLib.shared
```
