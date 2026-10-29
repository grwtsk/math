-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SleepAtLeastHeartbeats.Variant5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SleepAtLeastHeartbeats.Variant5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/SleepHeartbeats.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic

/-!
# Defines `sleep_heartbeats` tactic.

This is useful for testing / debugging long running commands or elaboration in a somewhat precise
manner.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SleepAtLeastHeartbeats.Variant5c316878d093fa11f0e36ea7cea132fc30e99021f2e4131402142327bf106cb5

open Lean Elab

/-- A low level command to sleep for at least a given number of heartbeats by running in a loop
until the desired number of heartbeats is hit.
Warning: this function relies on interpreter / compiler
behaviour that is not guaranteed to function in the way that is relied upon here.
As such this function is not to be considered reliable, especially after future updates to Lean.
This should be used with caution and basically only for demo / testing purposes
and not in compiled code without further testing. -/
def sleepAtLeastHeartbeats (n : Nat) : IO Unit := do
  let i ← IO.getNumHeartbeats
  while (← IO.getNumHeartbeats) < i + n do
    continue

/-- do nothing for at least n heartbeats -/
elab "sleep_heartbeats " n:num : tactic => do
  match Syntax.isNatLit? n with
  | none    => throwIllFormedSyntax
  /- as this is a user facing command we multiply the user input by 1000 to match the maxHeartbeats
     option -/
  | some m => sleepAtLeastHeartbeats (m * 1000)

example : 1 = 1 := by
  sleep_heartbeats 1000
  rfl
