# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigDecl.Variant520de0890d71207e5451c0f9aece053feaafcd5b7844c5852e21b3931286d7b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dae9df410bc30da419aee16c92512a1e8fe0d02d` · SHA-256 `6da120fca4cd084df0aaca500bb9e007fd3ce367eab0b100a37bd569a5eac85b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigDecl.Variantf41d7950ce8d2c2cf2f83535fef85cfc91071d3031f781f97cf372fd4b00aee2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f41d7950ce8d2c2cf2f83535fef85cfc91071d3031f781f97cf372fd4b00aee2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ConfigDecl.Variantf41d7950ce8d2c2cf2f83535fef85cfc91071d3031f781f97cf372fd4b00aee2","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f41d7950ce8d2c2cf2f83535fef85cfc91071d3031f781f97cf372fd4b00aee2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/ConfigDecl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Opaque
public import Lake.Config.LeanLibConfig
public import Lake.Config.LeanExeConfig
public import Lake.Config.ExternLibConfig
public import Lake.Config.InputFileConfig
import Lake.Util.Name


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigDecl.Variantf41d7950ce8d2c2cf2f83535fef85cfc91071d3031f781f97cf372fd4b00aee2

open Lean (Name)

namespace Lake

public abbrev ConfigType (kind : Name) (pkgName name : Name) : Type :=
  match kind with
  | LeanLib.configKind => LeanLibConfig name
  | LeanExe.configKind => LeanExeConfig name
  | ExternLib.configKind => ExternLibConfig pkgName name
  | .anonymous => OpaqueTargetConfig pkgName name
  | InputFile.configKind => InputFileConfig name
  | InputDir.configKind => InputDirConfig name
  | _ => Empty

/-- Forward declared `ConfigTarget` to work around recursion issues (e.g., with `Package`). -/
public opaque OpaqueConfigTarget (kind : Name) : Type

public structure ConfigDecl where
  pkg : Name
  name : Name
  kind : Name
  config : ConfigType kind pkg name
  wf_data : ¬ kind.isAnonymous → CustomData pkg name = DataType kind ∧ DataType kind = OpaqueConfigTarget kind
  deriving TypeName

public structure PConfigDecl (p : Name) extends ConfigDecl where
  pkg_eq : toConfigDecl.pkg = p := by rfl

public structure NConfigDecl (p n : Name) extends PConfigDecl p where
  name_eq : toConfigDecl.name = n := by rfl

public structure KConfigDecl (k : Name) extends ConfigDecl where
  kind_eq : toConfigDecl.kind = k := by rfl

public instance : Nonempty (NConfigDecl pkg name) := ⟨{
  pkg, name,
  kind := .anonymous
  config := Classical.ofNonempty
  wf_data := by simp [Name.isAnonymous_iff_eq_anonymous]
}⟩

@[inline] public def ConfigDecl.partialKey (self : ConfigDecl) : PartialBuildKey :=
  .mk <| .packageTarget .anonymous self.name

public instance : CoeOut (KConfigDecl k) PartialBuildKey := ⟨(·.partialKey)⟩

@[inline] public def PConfigDecl.config'
    (self : PConfigDecl p) : ConfigType self.kind p self.name :=
  cast (by rw [self.pkg_eq]) self.config

@[inline] public def NConfigDecl.config'
    (self : NConfigDecl p n) : ConfigType self.kind p n :=
  cast (by rw [self.name_eq]) self.toPConfigDecl.config'

public theorem NConfigDecl.target_eq_type (self : NConfigDecl p n)
  (h : ¬ self.kind.isAnonymous) : DataType self.kind = OpaqueConfigTarget self.kind
:= self.wf_data h |>.2

public theorem NConfigDecl.data_eq_target (self : NConfigDecl p n)
  (h : ¬ self.kind.isAnonymous) : CustomData p n = OpaqueConfigTarget self.kind
:= by simpa [self.pkg_eq, self.name_eq, self.target_eq_type h] using (self.wf_data h).1

@[inline] public def ConfigDecl.config?
    (kind : Name) (self : ConfigDecl) : Option (ConfigType kind self.pkg self.name) :=
  if h : self.kind = kind then
    some <| cast (by rw [h]) self.config
  else
    none

@[inline] public def PConfigDecl.config?
    (kind : Name) (self : PConfigDecl p) : Option (ConfigType kind p self.name) :=
  cast (by rw [self.pkg_eq]) (self.toConfigDecl.config? kind)

@[inline] public def NConfigDecl.config?
    (kind : Name) (self : NConfigDecl p n) : Option (ConfigType kind p n) :=
  cast (by rw [self.name_eq]) (self.toPConfigDecl.config? kind)

@[inline] public def ConfigDecl.leanLibConfig? (self : ConfigDecl) : Option (LeanLibConfig self.name) :=
  self.config? LeanLib.configKind

@[inline] public def NConfigDecl.leanLibConfig? (self : NConfigDecl p n) : Option (LeanLibConfig n) :=
  self.config? LeanLib.configKind

/-- A Lean library declaration from a configuration written in Lean. -/
public abbrev LeanLibDecl := KConfigDecl LeanLib.configKind

@[inline] public def ConfigDecl.leanExeConfig? (self : ConfigDecl) : Option (LeanExeConfig self.name) :=
  self.config? LeanExe.configKind

@[inline] public def NConfigDecl.leanExeConfig? (self : NConfigDecl p n) : Option (LeanExeConfig n) :=
  self.config? LeanExe.configKind

/-- A Lean executable declaration from a configuration written in Lean. -/
public abbrev LeanExeDecl := KConfigDecl LeanExe.configKind

@[inline] public def PConfigDecl.externLibConfig?
    (self : PConfigDecl p) : Option (ExternLibConfig p self.name) :=
  self.config? ExternLib.configKind

@[inline] public def NConfigDecl.externLibConfig?
    (self : NConfigDecl p n) : Option (ExternLibConfig p n) :=
  self.config? ExternLib.configKind

/-- An external library declaration from a configuration written in Lean. -/
public abbrev ExternLibDecl := KConfigDecl ExternLib.configKind

@[inline] public def PConfigDecl.opaqueTargetConfig
    (self : PConfigDecl p) (h : self.kind.isAnonymous) : OpaqueTargetConfig p self.name :=
  cast (by rw [self.pkg_eq, Name.eq_anonymous_of_isAnonymous h, ConfigType]) self.config

@[inline] public def NConfigDecl.opaqueTargetConfig
    (self : NConfigDecl p n) (h : self.kind.isAnonymous) : OpaqueTargetConfig p n :=
  cast (by rw [self.name_eq]) (self.toPConfigDecl.opaqueTargetConfig h)

@[inline] public def PConfigDecl.opaqueTargetConfig?
    (self : PConfigDecl p) : Option (OpaqueTargetConfig p self.name) :=
  if h : self.kind.isAnonymous then
    some <| self.opaqueTargetConfig h
  else
    none

@[inline] public def NConfigDecl.opaqueTargetConfig?
    (self : NConfigDecl p n) : Option (OpaqueTargetConfig p n) :=
  cast (by rw [self.name_eq]) self.toPConfigDecl.opaqueTargetConfig?

/-- An input file declaration from a configuration written in Lean. -/
public abbrev InputFileDecl := KConfigDecl InputFile.configKind

/-- An input directory declaration from a configuration written in Lean. -/
public abbrev InputDirDecl := KConfigDecl InputDir.configKind

public instance : TypeName LeanLibDecl := unsafe (.mk _ ``LeanLibDecl)
public instance : TypeName LeanExeDecl := unsafe (.mk _ ``LeanExeDecl)
public instance : TypeName InputFileDecl := unsafe (.mk _ ``InputFileDecl)
public instance : TypeName InputDirDecl := unsafe (.mk _ ``InputDirDecl)
```
