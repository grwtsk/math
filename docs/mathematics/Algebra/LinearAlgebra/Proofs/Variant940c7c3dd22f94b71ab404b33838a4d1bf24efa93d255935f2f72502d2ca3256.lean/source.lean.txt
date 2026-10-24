import Surface.Legacy.BinaryLogicMatrixFlow.Averaging

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
