# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonBlowupObstruction.Variant09b12de01b5602ef57ad8a8943194d2fc0c02fa3f1c84f29d2d491731abdab2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `887655bf9bf254d7579c7d4d155139431e61ec56` · SHA-256 `ce48d36ae345d3a594de9cf98bee0f1cd67a4d6a93399101bd48373d854b8947`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlowupScenario.Variant2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BlowupScenario.Variant2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b","mathematical_subject":"Foundations.Unclassified","original_sha256":"2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/NavierStokes/NonBlowupObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.NonBlowupObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes non-blowup obstruction contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlowupScenario.Variant2a9504c49c13d0546e0fda4b131d99abf77d7eb10be36e07d7b4b32b863d488b

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure BlowupScenario where
  flowComplex : FlowComplex
  label : String

structure NonBlowupObstruction where
  scenario : BlowupScenario
  obstructionNonzeroIfBlowup : Prop
  obstructionNonzeroIfBlowup_certified : obstructionNonzeroIfBlowup
  sourceLabel : String

theorem ns_blowup_obstruction_if_supplied
    (O : NonBlowupObstruction) :
    O.obstructionNonzeroIfBlowup :=
  O.obstructionNonzeroIfBlowup_certified

end NavierStokes
end GrandChallenge
end Folder
```
