-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Varianta5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.S.Varianta5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/proj_trick/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Varianta5ca409063ad930b99d253510f107b904dea0f6ecb8fa546298ffd86df7c89b5

open Lean Elab Term

/-- Same name, never compared: now uninhabited. -/
structure S : Type where
  a : Nat
  h : False

def T : Type := S

elab "pr% " s:term : term => do
  return Expr.proj `S 0 (← elabTerm s none)

theorem tgt : ∀ (s : T), (pr% s) = (0 : Nat) := by
  intro s
  exact (S.h s).elim
