import Surface.Legacy.BinaryLogicMatrix.Core
import Surface.Foundation.LogicalFoundation

namespace Surface.Legacy

inductive GammaMode where
  | structural
  | finiteApprox
  | measurableCertified
  | fractalCertified
  | analyticCertified
deriving DecidableEq, Repr

inductive EvolutionMode where
  | none
  | binaryLogicMatrixFlow
  | heatTransport
  | heatAveraging
  | frameCommutingHeatTransport
  | chainHomotopyFlow
  | ricciFlow
  | ricciFlowWithSurgery
  | finiteTimeExtinction
  | infiniteTimeLimit
  | combined
deriving DecidableEq, Repr

structure PositiveRat where
  value : Rat
  positive : 0 < value

structure Gamma where
  mode : GammaMode
  level : Nat
  maxDepth : Nat
  maxClosureSteps : Nat
  maxSimpleApproxTerms : Nat
  maxSeriesTerms : Nat
  tolerance? : Option PositiveRat
  logicalFoundation : LogicalFoundation
  evolutionMode : EvolutionMode
  preserveBijectivity : Bool
  maxEvolutionSteps : Nat
  allowInfiniteTimeLimit : Bool
  exportMatrixChannels : Bool
  exportProofTrace : Bool
  exportMeasurableCertificates : Bool
  exportFractalCertificates : Bool
  exportAnalyticCertificates : Bool
  exportZetaMobiusData : Bool
  exportFlowTrace : Bool
  exportBijectivityCertificates : Bool
  exportFrameCommutationCertificates : Bool
  exportChainComplexData : Bool
  exportHomologyCertificates : Bool
  exportStabilityCertificates : Bool
  exportCurvatureCertificates : Bool
  exportSurgeryTrace : Bool
  exportExtinctionCertificates : Bool
  exportTopologyCertificates : Bool
  exportModularDecomposition : Bool
  preserveBijectivitySound :
    preserveBijectivity = true ->
      LogicalFoundation.bijectiveFiniteFlow ≤ logicalFoundation

inductive SemanticStatus where
  | structuralCoverageOnly
  | measurableCoverageProved
  | fractalMeasurabilityProved
  | nowhereDifferentiabilityProved
  | zetaMobiusArithmeticProved
  | analyticSemanticsProved
  | analyticSemanticsNotClaimed
deriving DecidableEq, Repr

inductive DomainStatus where
  | totalStructural
  | measurableDomainCertified
  | analyticDomainCertified
  | domainNotClaimed
deriving DecidableEq, Repr

inductive BranchStatus where
  | notBranchSensitive
  | branchCertified
  | branchNotClaimed
deriving DecidableEq, Repr

inductive ClaimStatus where
  | proved
  | checkedByLean
  | exported
  | notClaimed
  | nonGoal
  | experimental
  | conjectural
  | requiresCertificate
deriving DecidableEq, Repr

structure SemanticClaim where
  semanticStatus : SemanticStatus
  domainStatus : DomainStatus
  branchStatus : BranchStatus
  claimStatus : ClaimStatus
deriving Repr

namespace Gamma

def falseBijectivitySound (F : LogicalFoundation) :
    false = true -> LogicalFoundation.bijectiveFiniteFlow ≤ F := by
  intro h
  cases h

def structural : Gamma where
  mode := GammaMode.structural
  level := 0
  maxDepth := 0
  maxClosureSteps := 0
  maxSimpleApproxTerms := 0
  maxSeriesTerms := 0
  tolerance? := none
  logicalFoundation := LogicalFoundation.constructive
  evolutionMode := EvolutionMode.none
  preserveBijectivity := false
  maxEvolutionSteps := 0
  allowInfiniteTimeLimit := false
  exportMatrixChannels := true
  exportProofTrace := true
  exportMeasurableCertificates := false
  exportFractalCertificates := false
  exportAnalyticCertificates := false
  exportZetaMobiusData := false
  exportFlowTrace := false
  exportBijectivityCertificates := false
  exportFrameCommutationCertificates := false
  exportChainComplexData := false
  exportHomologyCertificates := false
  exportStabilityCertificates := false
  exportCurvatureCertificates := false
  exportSurgeryTrace := false
  exportExtinctionCertificates := false
  exportTopologyCertificates := false
  exportModularDecomposition := false
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.constructive

def constructive : Gamma := structural

def bijectiveFlow : Gamma := { structural with
  level := 1
  logicalFoundation := LogicalFoundation.bijectiveFiniteFlow
  evolutionMode := EvolutionMode.binaryLogicMatrixFlow
  preserveBijectivity := true
  maxEvolutionSteps := 1024
  exportFlowTrace := true
  exportBijectivityCertificates := true
  preserveBijectivitySound := by
    intro _
    exact LogicalFoundation.foundation_refl LogicalFoundation.bijectiveFiniteFlow }

def coarse : Gamma := { structural with
  level := 1
  maxDepth := 2
  maxClosureSteps := 2 }

def standard : Gamma := { structural with
  level := 2
  maxDepth := 8
  maxClosureSteps := 8
  maxSimpleApproxTerms := 4
  maxSeriesTerms := 4
  logicalFoundation := LogicalFoundation.fractal
  exportMeasurableCertificates := true
  exportFractalCertificates := true
  exportZetaMobiusData := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.fractal }

def high : Gamma := { standard with
  level := 3
  maxDepth := 16
  maxClosureSteps := 16
  maxSimpleApproxTerms := 16
  maxSeriesTerms := 16 }

def analytic : Gamma := { high with
  mode := GammaMode.analyticCertified
  level := 4
  logicalFoundation := LogicalFoundation.fractal
  exportAnalyticCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.fractal }

def classical : Gamma := { standard with
  logicalFoundation := LogicalFoundation.classical
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.classical }

def measurable : Gamma := { standard with
  logicalFoundation := LogicalFoundation.measurable
  exportMeasurableCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.measurable }

def fractal : Gamma := { standard with
  logicalFoundation := LogicalFoundation.fractal
  exportFractalCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.fractal }

def oracle : Gamma := { high with
  logicalFoundation := LogicalFoundation.oracle
  evolutionMode := EvolutionMode.combined
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.oracle }

def heatFlow : Gamma := { high with
  logicalFoundation := LogicalFoundation.heatFlow
  evolutionMode := EvolutionMode.heatTransport
  exportFlowTrace := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.heatFlow }

def heatAveraging : Gamma := { high with
  logicalFoundation := LogicalFoundation.heatAveraging
  evolutionMode := EvolutionMode.heatAveraging
  exportModularDecomposition := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.heatAveraging }

def frameCommutingHeatFlow : Gamma := { high with
  logicalFoundation := LogicalFoundation.homologyStability
  evolutionMode := EvolutionMode.frameCommutingHeatTransport
  exportFlowTrace := true
  exportFrameCommutationCertificates := true
  exportChainComplexData := true
  exportHomologyCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.homologyStability }

def homologyStability : Gamma := { frameCommutingHeatFlow with
  evolutionMode := EvolutionMode.chainHomotopyFlow
  exportStabilityCertificates := true }

def ricciFlow : Gamma := { high with
  logicalFoundation := LogicalFoundation.ricciFlow
  evolutionMode := EvolutionMode.ricciFlow
  exportCurvatureCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.ricciFlow }

def ricciSurgery : Gamma := { ricciFlow with
  logicalFoundation := LogicalFoundation.ricciSurgery
  evolutionMode := EvolutionMode.ricciFlowWithSurgery
  exportSurgeryTrace := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.ricciSurgery }

def extinctionTopology : Gamma := { ricciSurgery with
  logicalFoundation := LogicalFoundation.extinctionTopology
  evolutionMode := EvolutionMode.finiteTimeExtinction
  exportExtinctionCertificates := true
  exportTopologyCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.extinctionTopology }

def infiniteTime : Gamma := { high with
  logicalFoundation := LogicalFoundation.infiniteTime
  evolutionMode := EvolutionMode.infiniteTimeLimit
  allowInfiniteTimeLimit := true
  exportStabilityCertificates := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.infiniteTime }

def choice : Gamma := { high with
  logicalFoundation := LogicalFoundation.choice
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.choice }

def choiceOracle : Gamma := { high with
  logicalFoundation := LogicalFoundation.choiceOracle
  evolutionMode := EvolutionMode.combined
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.choiceOracle }

def choiceInfiniteTime : Gamma := { high with
  logicalFoundation := LogicalFoundation.choiceInfiniteTime
  evolutionMode := EvolutionMode.infiniteTimeLimit
  allowInfiniteTimeLimit := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.choiceInfiniteTime }

def increase (Γ : Gamma) : Gamma where
  mode := Γ.mode
  level := Γ.level + 1
  maxDepth := Γ.maxDepth + 1
  maxClosureSteps := Γ.maxClosureSteps + 1
  maxSimpleApproxTerms := Γ.maxSimpleApproxTerms + 1
  maxSeriesTerms := Γ.maxSeriesTerms + 1
  tolerance? := Γ.tolerance?
  logicalFoundation := Γ.logicalFoundation
  evolutionMode := Γ.evolutionMode
  preserveBijectivity := Γ.preserveBijectivity
  maxEvolutionSteps := Γ.maxEvolutionSteps + 1
  allowInfiniteTimeLimit := Γ.allowInfiniteTimeLimit
  exportMatrixChannels := true
  exportProofTrace := true
  exportMeasurableCertificates := true
  exportFractalCertificates := true
  exportAnalyticCertificates := Γ.exportAnalyticCertificates
  exportZetaMobiusData := true
  exportFlowTrace := Γ.exportFlowTrace
  exportBijectivityCertificates := Γ.exportBijectivityCertificates
  exportFrameCommutationCertificates := Γ.exportFrameCommutationCertificates
  exportChainComplexData := Γ.exportChainComplexData
  exportHomologyCertificates := Γ.exportHomologyCertificates
  exportStabilityCertificates := Γ.exportStabilityCertificates
  exportCurvatureCertificates := Γ.exportCurvatureCertificates
  exportSurgeryTrace := Γ.exportSurgeryTrace
  exportExtinctionCertificates := Γ.exportExtinctionCertificates
  exportTopologyCertificates := Γ.exportTopologyCertificates
  exportModularDecomposition := Γ.exportModularDecomposition
  preserveBijectivitySound := Γ.preserveBijectivitySound

def decrease (Γ : Gamma) : Gamma where
  mode := Γ.mode
  level := Γ.level.pred
  maxDepth := Γ.maxDepth.pred
  maxClosureSteps := Γ.maxClosureSteps.pred
  maxSimpleApproxTerms := Γ.maxSimpleApproxTerms.pred
  maxSeriesTerms := Γ.maxSeriesTerms.pred
  tolerance? := none
  logicalFoundation := Γ.logicalFoundation
  evolutionMode := Γ.evolutionMode
  preserveBijectivity := false
  maxEvolutionSteps := Γ.maxEvolutionSteps.pred
  allowInfiniteTimeLimit := false
  exportMatrixChannels := false
  exportProofTrace := false
  exportMeasurableCertificates := false
  exportFractalCertificates := false
  exportAnalyticCertificates := false
  exportZetaMobiusData := false
  exportFlowTrace := false
  exportBijectivityCertificates := false
  exportFrameCommutationCertificates := false
  exportChainComplexData := false
  exportHomologyCertificates := false
  exportStabilityCertificates := false
  exportCurvatureCertificates := false
  exportSurgeryTrace := false
  exportExtinctionCertificates := false
  exportTopologyCertificates := false
  exportModularDecomposition := false
  preserveBijectivitySound := falseBijectivitySound Γ.logicalFoundation

def Valid (_Γ : Gamma) : Prop := True

def flagLe (a b : Bool) : Prop :=
  a = true -> b = true

def Le (Γ₁ Γ₂ : Gamma) : Prop :=
  Γ₁.logicalFoundation ≤ Γ₂.logicalFoundation ∧
  Γ₁.level ≤ Γ₂.level ∧
  Γ₁.maxDepth ≤ Γ₂.maxDepth ∧
  Γ₁.maxClosureSteps ≤ Γ₂.maxClosureSteps ∧
  Γ₁.maxSimpleApproxTerms ≤ Γ₂.maxSimpleApproxTerms ∧
  Γ₁.maxSeriesTerms ≤ Γ₂.maxSeriesTerms ∧
  Γ₁.maxEvolutionSteps ≤ Γ₂.maxEvolutionSteps ∧
  flagLe Γ₁.exportMatrixChannels Γ₂.exportMatrixChannels ∧
  flagLe Γ₁.exportProofTrace Γ₂.exportProofTrace ∧
  flagLe Γ₁.exportMeasurableCertificates Γ₂.exportMeasurableCertificates ∧
  flagLe Γ₁.exportFractalCertificates Γ₂.exportFractalCertificates ∧
  flagLe Γ₁.exportAnalyticCertificates Γ₂.exportAnalyticCertificates ∧
  flagLe Γ₁.exportZetaMobiusData Γ₂.exportZetaMobiusData ∧
  flagLe Γ₁.exportFlowTrace Γ₂.exportFlowTrace ∧
  flagLe Γ₁.exportBijectivityCertificates Γ₂.exportBijectivityCertificates ∧
  flagLe Γ₁.exportFrameCommutationCertificates Γ₂.exportFrameCommutationCertificates ∧
  flagLe Γ₁.exportChainComplexData Γ₂.exportChainComplexData ∧
  flagLe Γ₁.exportHomologyCertificates Γ₂.exportHomologyCertificates ∧
  flagLe Γ₁.exportStabilityCertificates Γ₂.exportStabilityCertificates ∧
  flagLe Γ₁.exportCurvatureCertificates Γ₂.exportCurvatureCertificates ∧
  flagLe Γ₁.exportSurgeryTrace Γ₂.exportSurgeryTrace ∧
  flagLe Γ₁.exportExtinctionCertificates Γ₂.exportExtinctionCertificates ∧
  flagLe Γ₁.exportTopologyCertificates Γ₂.exportTopologyCertificates ∧
  flagLe Γ₁.exportModularDecomposition Γ₂.exportModularDecomposition

instance : LE Gamma where
  le := Le

theorem gamma_structural_valid :
    Valid structural := by
  trivial

theorem gamma_decrease_valid :
    Valid Γ -> Valid (decrease Γ) := by
  intro _
  trivial

theorem gamma_increase_valid :
    Valid Γ -> Valid (increase Γ) := by
  intro _
  trivial

theorem pred_le (n : Nat) : n.pred ≤ n := by
  cases n <;> simp

theorem flag_false_le (b : Bool) : flagLe false b := by
  intro h
  cases h

theorem flag_le_true (b : Bool) : flagLe b true := by
  intro _
  rfl

theorem gamma_decrease_le :
    Valid Γ -> decrease Γ ≤ Γ := by
  intro _
  exact ⟨LogicalFoundation.foundation_refl Γ.logicalFoundation,
    pred_le Γ.level, pred_le Γ.maxDepth, pred_le Γ.maxClosureSteps,
    pred_le Γ.maxSimpleApproxTerms, pred_le Γ.maxSeriesTerms,
    pred_le Γ.maxEvolutionSteps, flag_false_le Γ.exportMatrixChannels,
    flag_false_le Γ.exportProofTrace, flag_false_le Γ.exportMeasurableCertificates,
    flag_false_le Γ.exportFractalCertificates, flag_false_le Γ.exportAnalyticCertificates,
    flag_false_le Γ.exportZetaMobiusData, flag_false_le Γ.exportFlowTrace,
    flag_false_le Γ.exportBijectivityCertificates,
    flag_false_le Γ.exportFrameCommutationCertificates,
    flag_false_le Γ.exportChainComplexData,
    flag_false_le Γ.exportHomologyCertificates,
    flag_false_le Γ.exportStabilityCertificates,
    flag_false_le Γ.exportCurvatureCertificates,
    flag_false_le Γ.exportSurgeryTrace,
    flag_false_le Γ.exportExtinctionCertificates,
    flag_false_le Γ.exportTopologyCertificates,
    flag_false_le Γ.exportModularDecomposition⟩

theorem gamma_le_increase :
    Valid Γ -> Γ ≤ increase Γ := by
  intro _
  exact ⟨LogicalFoundation.foundation_refl Γ.logicalFoundation,
    Nat.le_succ Γ.level, Nat.le_succ Γ.maxDepth, Nat.le_succ Γ.maxClosureSteps,
    Nat.le_succ Γ.maxSimpleApproxTerms, Nat.le_succ Γ.maxSeriesTerms,
    Nat.le_succ Γ.maxEvolutionSteps, flag_le_true Γ.exportMatrixChannels,
    flag_le_true Γ.exportProofTrace, flag_le_true Γ.exportMeasurableCertificates,
    flag_le_true Γ.exportFractalCertificates, by intro h; exact h,
    flag_le_true Γ.exportZetaMobiusData, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h⟩

theorem gamma_preorder_refl :
    Valid Γ -> Γ ≤ Γ := by
  intro _
  exact ⟨LogicalFoundation.foundation_refl Γ.logicalFoundation,
    Nat.le_refl Γ.level, Nat.le_refl Γ.maxDepth, Nat.le_refl Γ.maxClosureSteps,
    Nat.le_refl Γ.maxSimpleApproxTerms, Nat.le_refl Γ.maxSeriesTerms,
    Nat.le_refl Γ.maxEvolutionSteps, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h, by intro h; exact h,
    by intro h; exact h, by intro h; exact h, by intro h; exact h⟩

theorem flag_trans {a b c : Bool} :
    flagLe a b -> flagLe b c -> flagLe a c := by
  intro hab hbc ha
  exact hbc (hab ha)

theorem gamma_preorder_trans {Γ₁ Γ₂ Γ₃ : Gamma} :
    Γ₁ ≤ Γ₂ -> Γ₂ ≤ Γ₃ -> Γ₁ ≤ Γ₃ := by
  intro h12 h23
  rcases h12 with ⟨hf12, hlevel12, hdepth12, hclosure12, hsimple12, hseries12,
    hevo12, hm12, hp12, hmeas12, hfrac12, hana12, hzeta12, hflow12, hbij12,
    hframe12, hchain12, hhom12, hstab12, hcurv12, hsurg12, hext12, htop12, hmod12⟩
  rcases h23 with ⟨hf23, hlevel23, hdepth23, hclosure23, hsimple23, hseries23,
    hevo23, hm23, hp23, hmeas23, hfrac23, hana23, hzeta23, hflow23, hbij23,
    hframe23, hchain23, hhom23, hstab23, hcurv23, hsurg23, hext23, htop23, hmod23⟩
  exact ⟨LogicalFoundation.foundation_trans hf12 hf23,
    Nat.le_trans hlevel12 hlevel23, Nat.le_trans hdepth12 hdepth23,
    Nat.le_trans hclosure12 hclosure23, Nat.le_trans hsimple12 hsimple23,
    Nat.le_trans hseries12 hseries23, Nat.le_trans hevo12 hevo23,
    flag_trans hm12 hm23, flag_trans hp12 hp23, flag_trans hmeas12 hmeas23,
    flag_trans hfrac12 hfrac23, flag_trans hana12 hana23,
    flag_trans hzeta12 hzeta23, flag_trans hflow12 hflow23,
    flag_trans hbij12 hbij23, flag_trans hframe12 hframe23,
    flag_trans hchain12 hchain23, flag_trans hhom12 hhom23,
    flag_trans hstab12 hstab23, flag_trans hcurv12 hcurv23,
    flag_trans hsurg12 hsurg23, flag_trans hext12 hext23,
    flag_trans htop12 htop23, flag_trans hmod12 hmod23⟩

theorem gamma_foundation_monotone {Γ₁ Γ₂ : Gamma} :
    Γ₁ ≤ Γ₂ -> Γ₁.logicalFoundation ≤ Γ₂.logicalFoundation := by
  intro h
  exact h.1

theorem gamma_preserveBijectivity_requires_bijective_foundation
    {Γ : Gamma} :
    Γ.preserveBijectivity = true ->
      LogicalFoundation.bijectiveFiniteFlow ≤ Γ.logicalFoundation := by
  exact Γ.preserveBijectivitySound

end Gamma

end Surface.Legacy
