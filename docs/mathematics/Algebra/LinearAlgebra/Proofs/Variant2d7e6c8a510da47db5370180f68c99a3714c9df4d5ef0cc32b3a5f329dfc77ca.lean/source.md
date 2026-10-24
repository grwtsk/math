# Complete source: GRWTSK.Algebra.LinearAlgebra.Proofs.Variant2d7e6c8a510da47db5370180f68c99a3714c9df4d5ef0cc32b3a5f329dfc77ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f0ccc2c5509c8c0ff89111d0c184d92bc4f3599` · SHA-256 `5f950c4f4195f25d12744153e92b43800c33e7df014686b4707706d02f21c540`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SpectralAverageCorrect.Variant940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SpectralAverageCorrect.Variant940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256","mathematical_subject":"Foundations.Unclassified","original_sha256":"940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrixFlow/Proofs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrixFlow.Averaging


namespace GRWTSK.Algebra.LinearAlgebra.SpectralAverageCorrect.Variant940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256

namespace Surface
namespace Legacy

namespace BinaryLogicMatrixAveragingModel

theorem spectralAverage_correct (F : BinaryLogicMatrixAveragingModel) :
    F.WellFormed ->
      PaddingSound F.averageResult ∧
      ComparisonSound F.averageResult ∧
      SpectralChoiceSound F.averageResult ∧
      DivisorSound F.averageResult ∧
      MeanSound F.averageResult := by
  intro _
  exact ⟨flow_padding_sound F, flow_comparison_sound F, flow_spectral_choice_sound F,
    average_divisor_sound F, average_result_mean_sound F⟩

end BinaryLogicMatrixAveragingModel

theorem spectralAverage_correct (F : BinaryLogicMatrixSpectralAverage) :
    F.WellFormed ->
      BinaryLogicMatrixAveragingModel.PaddingSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.ComparisonSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.SpectralChoiceSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.DivisorSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.MeanSound F.averageResult :=
  BinaryLogicMatrixAveragingModel.spectralAverage_correct F

end Legacy
end Surface
```
