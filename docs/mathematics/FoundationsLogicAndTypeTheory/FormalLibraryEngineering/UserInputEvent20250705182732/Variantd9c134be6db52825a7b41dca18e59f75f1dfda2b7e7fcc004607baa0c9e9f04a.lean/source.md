# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UserInputEvent20250705182732.Variantd9c134be6db52825a7b41dca18e59f75f1dfda2b7e7fcc004607baa0c9e9f04a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da9ff8d4d50106c463dbd46541f13dfe1898c5b3` · SHA-256 `786d0dd5cfa254e2fbb20003bb784be14571a9a8ba968d78e8f0352e5d44dec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
