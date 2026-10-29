-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerceptionEvent.Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PerceptionEvent.Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04","mathematical_subject":"Foundations.Unclassified","original_sha256":"947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Core/PerceptionEvent_20250705182700.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- lean/cognition/Core/PerceptionEvent.lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerceptionEvent.Variant947f79a1d28f44ebf28800bdbfe6a5a0764b75d9b68bc509785cd8d07fac0c04

namespace Cognition.Core

open Std (Duration)

/--
A `PerceptionEvent` is a timestamped, canonicalized interpretation of user input
captured by the cognitive sensorium.

Each variant contains a time and optional payload.
-/
inductive PerceptionEvent
  /-- A prompt was submitted: includes text, timestamp, and idle pause. -/
  | prompt (text : String) (timestamp : Nat) (pause : Duration)

  /-- A pause occurred with no prompt (e.g. idle timeout). -/
  | pause (timestamp : Nat) (duration : Duration)

  /-- A user correction or error was detected (e.g. backspace). -/
  | error (timestamp : Nat)

  /-- The user explicitly delegated control to the system. -/
  | delegate (timestamp : Nat)
  deriving Repr, DecidableEq

/-- Extract the timestamp of a `PerceptionEvent`. -/
def PerceptionEvent.timestamp : PerceptionEvent → Nat
  | .prompt _ ts _   => ts
  | .pause ts _      => ts
  | .error ts        => ts
  | .delegate ts     => ts

end Cognition.Core
