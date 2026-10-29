-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveState.Variant8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CognitiveState.Variant8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57","mathematical_subject":"Foundations.Unclassified","original_sha256":"8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Core/CognitiveState_20250705182544.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- lean/cognition/Core/CognitiveState.lean
import cognition.Core.CognitiveMode
import cognition.Core.FlowRegion


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveState.Variant8e07fa1deec403f1e35ab8ccdef0b9f5e32d6d3dac4c1ff975018491f2164c57

namespace Cognition.Core

/--
`CognitiveState` tracks the runtime mental posture of the user or agent.

This structure is pure and updated via `applyEvent`.
-/
structure CognitiveState where
  /-- High-level cognitive mode (focus, reflect, plan, etc.). -/
  mode : CognitiveMode
  /-- Flow region (underloaded, optimal, overloaded). -/
  flow : FlowRegion
  /-- Milliseconds since last input. -/
  pauseMs : Nat
  /-- Character length of the most recent prompt. -/
  lastPromptLen : Nat
  /-- Recent error count (e.g. backspaces). -/
  recentErrorCount : Nat
  /-- Valence score ∈ [-1.0, 1.0] representing affect polarity. -/
  valence : Float
  /-- Confidence score ∈ [0.0, 1.0] representing user certainty. -/
  confidence : Float
  deriving Repr, DecidableEq

/-- Default (neutral) state: Focus mode, Optimal flow, zeroed metrics. -/
def CognitiveState.default : CognitiveState :=
  {
    mode := CognitiveMode.focus,
    flow := FlowRegion.optimal,
    pauseMs := 0,
    lastPromptLen := 0,
    recentErrorCount := 0,
    valence := 0.0,
    confidence := 0.5
  }

instance : Inhabited CognitiveState := ⟨CognitiveState.default⟩

end Cognition.Core
