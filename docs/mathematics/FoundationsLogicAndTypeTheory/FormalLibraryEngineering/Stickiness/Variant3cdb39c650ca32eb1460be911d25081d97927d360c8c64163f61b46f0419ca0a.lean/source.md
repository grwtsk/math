# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stickiness.Variant3cdb39c650ca32eb1460be911d25081d97927d360c8c64163f61b46f0419ca0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18c432ef6ebb5437f707399a616526b51ebfa517` · SHA-256 `e3101876313025972db0d61cccfd49f970092083f51f855298ba8b5a67507664`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StickinessPrinciple.Variant388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StickinessPrinciple.Variant388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6","mathematical_subject":"Foundations.Unclassified","original_sha256":"388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/YangMills/Stickiness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.YangMills.ConcentrationExclusion

/-!
# Folder.GrandChallenge.YangMills.Stickiness

Radiation role: research-boundary
BinaryMatrix spine: This module records Yang-Mills stickiness contracts.
Ontology: yang_mills_concentration_obstruction
Pivot role: gauge
Zero typology: mass-gap-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StickinessPrinciple.Variant388ec3f4dee138621b10dc6491d246348930e214d8e2241abd81835ef1c5e3a6

namespace Folder
namespace GrandChallenge
namespace YangMills

structure StickinessPrinciple where
  configuration : GaugeFieldConfiguration
  nontrivialEnergyPersistsUnderAllowedContinuation : Prop
  nontrivialEnergyPersistsUnderAllowedContinuation_certified :
    nontrivialEnergyPersistsUnderAllowedContinuation
  sourceLabel : String

theorem ym_stickiness_if_supplied
    (S : StickinessPrinciple) :
    S.nontrivialEnergyPersistsUnderAllowedContinuation :=
  S.nontrivialEnergyPersistsUnderAllowedContinuation_certified

end YangMills
end GrandChallenge
end Folder
```
