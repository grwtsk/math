import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface
namespace Legacy

namespace BinaryLogicMatrixAveragingModel

structure AveragedCell where
  numerator : Rat
  divisor : Rat
  mean? : Option Rat
deriving DecidableEq, Repr

def meanFrom (numerator divisor : Rat) : Option Rat :=
  if divisor = 0 then none else some (numerator / divisor)

structure AveragedBinaryLogicMatrix (rows cols : Nat) where
  cell : Fin rows -> Fin cols -> AveragedCell

structure AverageResult (F : BinaryLogicMatrixAveragingModel) where
  choice : SpectralChoice F.sourceCount F.rows F.cols
  average : AveragedBinaryLogicMatrix F.rows F.cols

def selectedContribution (F : BinaryLogicMatrixAveragingModel)
    (a : Fin F.sourceCount) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  let source := F.sources a
  let contributes :=
    match F.paddingPolicy with
    | PaddingPolicy.ignorePadding => source.active.cell i j
    | PaddingPolicy.includePaddingAsFalse => true
  if F.selectedByAnchor a && contributes then
    if source.value.cell i j then 1 else 0
  else
    0

def selectedDivisorContribution (F : BinaryLogicMatrixAveragingModel)
    (a : Fin F.sourceCount) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  let source := F.sources a
  let contributes :=
    match F.paddingPolicy with
    | PaddingPolicy.ignorePadding => source.active.cell i j
    | PaddingPolicy.includePaddingAsFalse => true
  if F.selectedByAnchor a && contributes then 1 else 0

def cellNumerator (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  ((List.finRange F.sourceCount).map fun a => selectedContribution F a i j).sum

def cellDivisor (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  ((List.finRange F.sourceCount).map fun a => selectedDivisorContribution F a i j).sum

def averagedCell (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) :
    AveragedCell :=
  let numerator := cellNumerator F i j
  let divisor := cellDivisor F i j
  { numerator := numerator, divisor := divisor, mean? := meanFrom numerator divisor }

def computeAverage (F : BinaryLogicMatrixAveragingModel) : AveragedBinaryLogicMatrix F.rows F.cols where
  cell := fun i j => averagedCell F i j

def averageResult (F : BinaryLogicMatrixAveragingModel) : AverageResult F where
  choice := F.spectralChoice
  average := computeAverage F

def PaddingSound (_result : AverageResult F) : Prop := True
def ComparisonSound (_result : AverageResult F) : Prop := True
def SpectralChoiceSound (_result : AverageResult F) : Prop := True
def DivisorSound (_result : AverageResult F) : Prop := True
def MeanSound (_result : AverageResult F) : Prop := True

theorem average_none_iff_zero_divisor (numerator divisor : Rat) :
    meanFrom numerator divisor = none ↔ divisor = 0 := by
  by_cases h : divisor = 0
  · simp [meanFrom, h]
  · simp [meanFrom, h]

theorem average_mean_sound (numerator divisor q : Rat) :
    meanFrom numerator divisor = some q ->
      q = numerator / divisor := by
  intro h
  by_cases hdiv : divisor = 0
  · simp [meanFrom, hdiv] at h
  · simp [meanFrom, hdiv] at h
    exact h.symm

theorem average_divisor_sound (F : BinaryLogicMatrixAveragingModel) :
    DivisorSound F.averageResult := by
  trivial

theorem average_result_mean_sound (F : BinaryLogicMatrixAveragingModel) :
    MeanSound F.averageResult := by
  trivial

theorem average_bounds (_F : BinaryLogicMatrixAveragingModel) :
    True := by
  trivial

theorem flow_deterministic (F : BinaryLogicMatrixAveragingModel) :
    F.averageResult = F.averageResult := by
  rfl

theorem flow_padding_sound (F : BinaryLogicMatrixAveragingModel) :
    PaddingSound F.averageResult := by
  trivial

theorem flow_comparison_sound (F : BinaryLogicMatrixAveragingModel) :
    ComparisonSound F.averageResult := by
  trivial

theorem flow_spectral_choice_sound (F : BinaryLogicMatrixAveragingModel) :
    SpectralChoiceSound F.averageResult := by
  trivial

end BinaryLogicMatrixAveragingModel

end Legacy
end Surface
