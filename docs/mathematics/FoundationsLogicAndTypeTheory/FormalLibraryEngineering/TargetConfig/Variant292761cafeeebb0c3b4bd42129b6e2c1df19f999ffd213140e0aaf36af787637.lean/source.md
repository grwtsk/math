# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetConfig.Variant292761cafeeebb0c3b4bd42129b6e2c1df19f999ffd213140e0aaf36af787637

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c6cabfa98de8b1a41a70084d9032c513a0f8b8a` · SHA-256 `6c958323610b7a792b4edc1839ef92b832c92e5a4609404f22f0c6c3bd09071b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetConfig.Variant4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.TargetConfig.Variant4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/TargetConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Fetch
meta import all Lake.Util.OpaqueType
import Lake.Util.OpaqueType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TargetConfig.Variant4dfd83bfb9b157e44cee2658738f3439fef3b91d3eaf7b1385a07496aae287f4

open Lean

namespace Lake

/-- A custom target's declarative configuration. -/
public structure TargetConfig (pkgName name : Name) : Type where
  /-- The target's fetch function. -/
  fetchFn : (pkg : NPackage pkgName) → FetchM (Job (CustomData pkgName name))
  /-- Format the target's output (e.g., for `lake query`). -/
  format : OutFormat → CustomData pkgName name → String
  deriving Inhabited

/-- A smart constructor for target configurations that generate CLI targets. -/
@[inline] public def mkTargetJobConfig
  [FormatQuery α] [h : FamilyOut (CustomData pkgName) name α]
  (fetch : (pkg : NPackage pkgName) → FetchM (Job α))
: TargetConfig pkgName name where
  fetchFn := h.fam_eq ▸ fetch
  format := h.fam_eq ▸ formatQuery

public hydrate_opaque_type OpaqueTargetConfig TargetConfig pkgName name

@[inline] public def NConfigDecl.targetConfig (self : NConfigDecl p n) (h : self.kind.isAnonymous) : TargetConfig p n :=
  self.opaqueTargetConfig h |>.get

@[inline] public def NConfigDecl.targetConfig? (self : NConfigDecl p n) : Option (TargetConfig p n) :=
  self.opaqueTargetConfig?.map (·.get)

/-- A dependently typed configuration based on its registered package and name. -/
public abbrev TargetDecl := KConfigDecl .anonymous

/-- Try to find a target configuration in the package with the given name . -/
public def Package.findTargetConfig? (name : Name) (self : Package) : Option (TargetConfig self.keyName name) :=
  self.targetDeclMap.get? name |>.bind (·.targetConfig?)
```
