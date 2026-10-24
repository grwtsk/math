-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertGadget.Variant412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AssertGadget.Variant412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/Do/Triple/Gadget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Gladshtein, Sebastian Graf
-/
module

prelude
public import Std.Internal.Do.Triple.Basic
public import Std.Internal.Do.Order.Heyting


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertGadget.Variant412148f5c02480b16a361a969ef0cb8a812adbd6c957af0bda646ef6150910da

@[expose] public section

set_option linter.missingDocs true

open Lean Order Std.Internal.Do Lean.Order

namespace Std.Internal.Do

universe u v
variable {m : Type u → Type v} {Pred : Type u} {EPred : Type u} [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred]

set_option linter.unusedVariables false in

/-- A no-op computation used as a verification gadget to inject assertions into the program.

The `name` parameter is used by VCGen to name the introduced hypothesis. The `as` parameter
is the assertion to be checked. At runtime, `assertGadget` is simply `pure ⟨⟩`. -/
def assertGadget [Monad m] [Assertion Pred] [Assertion EPred] [WPMonad m Pred EPred] (name : Name) (as : Pred) : m PUnit := pure ⟨⟩

/-- Specification for `assertGadget`: the precondition requires both the assertion `as` and
the Heyting implication `as ⇨ post ⟨⟩`, ensuring the assertion holds and the postcondition
follows from it. -/
theorem Spec.assertGadget (name : Name) (as : Pred) [∀ a : Pred, PreservesSup (meet a)] :
  Triple (Std.Internal.Do.assertGadget (m := m) name as) (as ⊓ (as ⇨ post ⟨⟩)) post epost := by
  simpa [Std.Internal.Do.assertGadget] using
    (Triple.pure (m := m) (pre := as ⊓ (as ⇨ post ⟨⟩)) (post := post) (epost := epost)
      (a := ⟨⟩) (h := meet_himp_le))

end Std.Internal.Do

end -- public section
