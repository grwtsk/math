-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UserInputEvent.Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UserInputEvent.Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f","mathematical_subject":"Foundations.Unclassified","original_sha256":"a98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/passthrough-server/.history/lean/cognition/Core/UserInputEvent_20250705182732.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
-- lean/cognition/Core/UserInputEvent.lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UserInputEvent.Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f

namespace Cognition.Core

open Std (Duration)

/--
`UserInputEvent` represents a raw user-originated interaction.

These events are captured by the frontend or runtime sensorium,
and timestamped internally as `PerceptionEvent`.
-/
inductive UserInputEvent
  /-- A user prompt (free-form text input). -/
  | prompt (text : String)

  /-- A pause was observed (e.g. idle period without input). -/
  | pause (duration : Duration)

  /-- The user made an error (e.g. backspace or correction). -/
  | errorDetected

  /-- The user explicitly asked the system to take over. -/
  | explicitDelegate
  deriving Repr, DecidableEq

end Cognition.Core
