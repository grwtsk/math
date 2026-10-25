# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatResidualControl.Variantf3b2c640e6080c7cb00d743de22b92c04fd9e14acf3dfa6f5b0e7950b5ad2b42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61a20008cfab14a17e54926c7fcb2a505189ac0` · SHA-256 `760e0dd0b8b304dc6d7eec80057231a515920195e90da9bf1cc84c945acc5620`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatVisiblePlusFiber.Variantda9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HeatVisiblePlusFiber.Variantda9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028","mathematical_subject":"Foundations.Unclassified","original_sha256":"da9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Harmonic/HeatResidualControl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Harmonic.HeatResidualControl

/-!
# Folder.Theorem.Harmonic.HeatResidualControl

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes lifted heat visible/residual reconstruction for composite stack control.
Ontology: proof.harmonic.heat_residual_control
Pivot role: spectral
Zero typology: harmonic
Contract boundary: theorem-wrapper
Composite stack role: residual
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatVisiblePlusFiber.Variantda9700701654cde03b0bb54d098899ebf521b0a8e3041288518a9cd60f41a028

namespace Folder
namespace Theorem
namespace Harmonic

theorem heat_visible_plus_fiber
    {s : Folder.Carrier.GridShape}
    {k : Nat}
    (H : Folder.Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Folder.Spectral.SpectralTensor s k) :
    Folder.Harmonic.heatVisible H t X +
      Folder.Harmonic.heatFiber H t X = X :=
  Folder.Harmonic.heat_visible_plus_fiber H t X

end Harmonic
end Theorem
end Folder
```
