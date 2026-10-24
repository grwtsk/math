-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofPhase.Variant1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ProofPhase.Variant1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Phase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Lean
public meta import Surface.Core.Classification

/-!
# Proof lifecycle

The lifecycle is indexed in Lean.  `PhaseStep` contains only legal adjacent
transitions, so metadata cannot skip elaboration, kernel checking, or audit.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofPhase.Variant1a6a29828711cf7ffc02c20093614eb1cf44aed9d0f3564201ec71ac39b7d600

public section

namespace Surface.Core

/-- The canonical lifecycle of a theorem task. -/
@[surface_novel]
inductive ProofPhase where
  | proposed
  | normalized
  | mathlibRetrieved
  | elaborated
  | kernelChecked
  | minimized
  | published
deriving DecidableEq, Repr, BEq

/-- Legal adjacent transitions in the theorem lifecycle. -/
@[surface_novel]
inductive PhaseStep : ProofPhase → ProofPhase → Type where
  | normalize : PhaseStep .proposed .normalized
  | retrieveMathlib : PhaseStep .normalized .mathlibRetrieved
  | elaborate : PhaseStep .mathlibRetrieved .elaborated
  | kernelCheck : PhaseStep .elaborated .kernelChecked
  | minimize : PhaseStep .kernelChecked .minimized
  | publish : PhaseStep .minimized .published

/-- A monotone rank used by scheduling and audit code, never as proof authority. -/
def ProofPhase.rank : ProofPhase → Nat
  | .proposed => 0
  | .normalized => 1
  | .mathlibRetrieved => 2
  | .elaborated => 3
  | .kernelChecked => 4
  | .minimized => 5
  | .published => 6

@[surface_novel, surface_published] theorem PhaseStep.rank_strict
    {a b : ProofPhase} (step : PhaseStep a b) :
    a.rank < b.rank := by
  cases step <;> decide

end Surface.Core
