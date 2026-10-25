# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Positivity.Variant7feb8bd99a53c9091aff7f368839850475cb7001bc628edcef1b414e29c9e727

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43439cfc6c17417792916f6a9050f8142f94017e` · SHA-256 `e273b15086b41389606808769cc475733c4a413158fb3d8670877d4322e9ffae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositivityDataUsesOperator.Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositivityDataUsesOperator.Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e","mathematical_subject":"Foundations.Unclassified","original_sha256":"fe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/RH/Positivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.Positivity

/-!
# Folder.Theorem.RH.Positivity

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports positivity-interface facts.
Ontology: proof.rh.positivity
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositivityDataUsesOperator.Variantfe76dc26ee2133e6edeefb4779fb9c67e6fcda805f516dd3789224e634f6ae9e

namespace Folder
namespace Theorem
namespace RH
namespace Positivity

theorem positivity_data_uses_operator
    {O : Folder.RH.RHOperatorData}
    (P : Folder.RH.ProvenPositivityData O) :
    ∃ O' : Folder.RH.RHOperatorData, O' = P.operatorData :=
  Folder.RH.positivity_data_uses_operator P

theorem dense_domain_from_operator_data
    (O : Folder.RH.RHOperatorData) :
    Dense O.D.domain :=
  Folder.RH.dense_domain_from_operator_data O

theorem selfAdjoint_from_operator_theorem
    {O : Folder.RH.RHOperatorData}
    (hD : Folder.RH.IsSelfAdjoint O.D) :
    Folder.RH.IsSelfAdjoint O.D :=
  Folder.RH.selfAdjoint_from_operator_theorem hD

theorem compactResolvent_from_operator_theorem
    {O : Folder.RH.RHOperatorData}
    (hD : Folder.RH.HasCompactResolvent O.D) :
    Folder.RH.HasCompactResolvent O.D :=
  Folder.RH.compactResolvent_from_operator_theorem hD

theorem positivity_from_operator_data
    (O : Folder.RH.RHOperatorData)
    (x : O.D.domain)
    (hx : (x : O.H) ≠ 0) :
    0 < Folder.RH.realQuadraticForm O.D x :=
  Folder.RH.positivity_from_operator_data O x hx

theorem proven_positivity_from_operator_data
    (O : Folder.RH.RHOperatorData) :
    Folder.RH.ProvenPositivity O :=
  Folder.RH.proven_positivity_from_operator_data O

theorem spectral_reality_from_selfAdjoint
    (O : Folder.RH.RHOperatorData)
    (hD : Folder.RH.IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0 :=
  Folder.RH.spectral_reality_from_selfAdjoint O hD hReal

theorem real_spectrum_from_selfAdjoint_theorem
    {O : Folder.RH.RHOperatorData}
    (hD : Folder.RH.IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ Folder.RH.RHSpectrum O.D, mu.im = 0 :=
  Folder.RH.real_spectrum_from_selfAdjoint_theorem hD hReal

end Positivity
end RH
end Theorem
end Folder
```
