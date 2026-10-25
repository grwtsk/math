-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Target.Variante435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Target.Variante435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"e435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/Target/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Build.Key

/-!
# Lake Targets

This module contains the declarative definition of a `Target`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Target.Variante435d5ac994922c1ccaea304a5ba4db76d37fceb1bd176817b15e641863faee8

open Std

namespace Lake

/-- A Lake target that is expected to produce an output of a specific type. -/
public structure Target (α : Type) where
  key : PartialBuildKey

/--
Shorthand for `Array (Target α)` that supports
dot notation for Lake-specific operations (e.g., `fetch`).
-/
public abbrev TargetArray α := Array (Target α)

namespace Target

public protected def repr (x : Target α) (prec : Nat) : Format :=
  let indent := if prec >= max_prec then 1 else 2
  let ctor := "Lake.Target.mk" ++ Format.line ++ reprArg x.key
  Repr.addAppParen (.group (.nest indent ctor)) prec

public instance : Repr (Target α) := ⟨Target.repr⟩
public instance : ToString (Target α) := ⟨(·.key.toString)⟩
public instance : Coe PartialBuildKey (Target α) := ⟨Target.mk⟩
