-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigProj.Variant8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.ConfigProj.Variant8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Config/MetaClasses.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.Data.NameMap.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConfigProj.Variant8e62619125c68492b274e6f6285faee2fb8ab4220aa8ac547db129c283ee040c

open Lean Syntax Parser Command

namespace Lake

public structure ConfigProj (σ : Type u) (α : Type v) where
  get (cfg : σ) : α
  set (val : α) (cfg : σ) : σ
  modify (f : α → α) (cfg : σ) : σ
  mkDefault : σ → α

public class ConfigField (σ : Type u) (name : Name) (α : outParam $ Type v) extends ConfigProj σ α

public abbrev mkFieldDefault (name : Name) [field : ConfigField σ name α] (cfg : σ) : α :=
  field.mkDefault cfg

public class ConfigParent (σ : Type u) (ρ : semiOutParam $ Type v) extends ConfigProj σ ρ

public structure ConfigFieldInfo where
  /-- The name of the field (possibly an alias). -/
  name : Name
  /-- The real name of the field in the configuration structure. -/
  realName : Name
  /-- Whether `name == realName` and the field is not a parent projection. -/
  canonical : Bool := false
  /-- Whether the field is a parent projection. -/
  parent : Bool := false

public class ConfigFields (σ : Type u) where
  fields : Array ConfigFieldInfo

public class ConfigInfo (name : Name) where
  fields : Array ConfigFieldInfo
  fieldMap : NameMap ConfigFieldInfo :=
    fields.foldl (init := ∅) fun m i => m.insert i.name i
  arity : Nat

public instance [parent : ConfigParent σ ρ] [field : ConfigField ρ name α] : ConfigField σ name α where
  mkDefault s := field.mkDefault (parent.get s)
  get s := field.get (parent.get s)
  set a := parent.modify (field.set a)
  modify f := parent.modify (field.modify f)
