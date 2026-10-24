-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Rfl.Variant06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Rfl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Newell Jensen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Newell Jensen, Thomas Murrills
-/
module

prelude
public import Lean.Meta.Tactic.Rfl


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variant06ecbd7d3b8bc5b5a15d4218febca0be1a263a0388e4af6e375f42dabfe03db4

public section

/-!
# `rfl` tactic extension for reflexive relations

This extends the `rfl` tactic so that it works on reflexive relations other than `=`,
provided the reflexivity lemma has been marked as `@[refl]`.
-/

namespace Lean.Elab.Tactic.Rfl

/--
This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
@[builtin_tactic Lean.Parser.Tactic.applyRfl] def evalApplyRfl : Tactic := fun stx =>
  match stx with
  | `(tactic| apply_rfl) => withMainContext do liftMetaFinishingTactic (·.applyRfl)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Rfl
