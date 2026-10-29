-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EarlyReturnT.Variant4cf577fa4fec2ea5db6d9ecfa244a5e5e849e0f362568308a0a318b70e120d99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cf577fa4fec2ea5db6d9ecfa244a5e5e849e0f362568308a0a318b70e120d99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.EarlyReturnT.Variant4cf577fa4fec2ea5db6d9ecfa244a5e5e849e0f362568308a0a318b70e120d99","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4cf577fa4fec2ea5db6d9ecfa244a5e5e849e0f362568308a0a318b70e120d99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Control/Do.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Init.Control.Except
public import Init.Control.Option


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EarlyReturnT.Variant4cf577fa4fec2ea5db6d9ecfa244a5e5e849e0f362568308a0a318b70e120d99

public section

/-!
This module provides specialized wrappers around `ExceptT` to support the `do` elaborator.

Specifically, the types here are used to tunnel early `return`, `break` and `continue` through
non-algebraic higher-order effect combinators such as `tryCatch`.
-/

/-- A wrapper around `ExceptT` signifying early return. -/
abbrev EarlyReturnT (ρ m α) := ExceptT ρ m α

/-- Exit a computation by returning a value `r : ρ` early. -/
@[always_inline, inline]
abbrev EarlyReturnT.return {ρ m α} [Monad m] (r : ρ) : EarlyReturnT ρ m α :=
  throw r

/-- A specialization of `Except.casesOn`. -/
@[always_inline, inline]
abbrev EarlyReturn.runK {ρ α : Type u} {β : Type v} (x : Except ρ α) (ret : ρ → β) (pure : α → β) : β :=
  x.casesOn ret pure

/-- A wrapper around `OptionT` signifying `break` in a loop. -/
abbrev BreakT := OptionT

/-- Exit a loop body via `break`. -/
@[always_inline, inline]
abbrev BreakT.break {m : Type w → Type x} [Monad m] : BreakT m α := failure

/-- A specialization of `Option.casesOn`. -/
@[always_inline, inline]
abbrev Break.runK {α : Type u} {β : Type v} (x : Option α) (breakK : Unit → β) (successK : α → β) : β :=
  -- Note: The matcher below is used in the elaborator targeting `forIn` loops.
  -- If you change the order of match arms here, you may need to adjust the elaborator.
  match x with
  | some a => successK a
  | none => breakK ()

/-- A wrapper around `OptionT` signifying `continue` in a loop. -/
abbrev ContinueT := OptionT

/-- Exit a loop body via `continue`. -/
@[always_inline, inline]
abbrev ContinueT.continue {m : Type w → Type x} [Monad m] : ContinueT m α := failure

/-- A specialization of `Option.casesOn`. -/
@[always_inline, inline]
abbrev Continue.runK {α : Type u} {β : Type v} (x : Option α) (continueK : Unit → β) (successK : α → β) : β :=
  x.casesOn continueK (fun a _ => successK a) ()
