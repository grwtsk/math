# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OffCriticalDisplacement.Variant6fdde52729633f5d3249e61cfd03d27acd2fb4e20b39ab2fc3351437e8f68c21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a3db6768ef68f9d0b80d166fd94497f72541c55` · SHA-256 `21d361dcbf3ffa023bebd8ab7eae1595a140ca3fd5ad99b182edb93c2d4e2056`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalLine.Variant3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CriticalLine.Variant3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf","mathematical_subject":"Foundations.Unclassified","original_sha256":"3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/OffCriticalDisplacement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.TranscendentalTrace

/-!
# Folder.CanonicalPath.OffCriticalDisplacement

Radiation role: research-boundary
BinaryMatrix spine: This module records off-critical displacement contracts.
Ontology: off_critical_displacement
Pivot role: fixed-point
Zero typology: trace-obstruction
Contract boundary: decisive-theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalLine.Variant3557d5d165cdbfdcd953323450a86bf75780e06c6266ebdedfec07555e3e7caf

namespace Folder
namespace CanonicalPath

/-- Abstract critical line marker. -/
structure CriticalLine where
  label : String

/-- Abstract spectral point. -/
structure SpectralPoint where
  label : String

/-- A spectral point is off the critical line. -/
structure OffCritical (L : CriticalLine) (z : SpectralPoint) : Prop where
  witness : True

/-- A displacement of a spectral point. -/
structure SpectralDisplacement where
  source : SpectralPoint
  target : SpectralPoint
  label : String

/--
Contract-level obstruction: an off-critical displacement changes the trace.

This is the decisive theorem target.
-/
structure OffCriticalDisplacementObstruction
    (L : CriticalLine)
    (T : TranscendentalTraceContract) where
  changesTrace :
    ∀ z : SpectralPoint,
      OffCritical L z →
      Prop
  changesTrace_certified :
    ∀ z : SpectralPoint,
      (hz : OffCritical L z) →
      changesTrace z hz
  sourceLabel : String

/-- Field exposure only. -/
theorem offcritical_displacement_changes_trace_if_supplied
    {L : CriticalLine}
    {T : TranscendentalTraceContract}
    (O : OffCriticalDisplacementObstruction L T)
    (z : SpectralPoint)
    (hz : OffCritical L z) :
    O.changesTrace z hz :=
  O.changesTrace_certified z hz

end CanonicalPath
end Folder
```
