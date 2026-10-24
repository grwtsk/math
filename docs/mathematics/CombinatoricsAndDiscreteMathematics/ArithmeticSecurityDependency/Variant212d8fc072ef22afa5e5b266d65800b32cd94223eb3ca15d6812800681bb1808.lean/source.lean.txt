import Mathlib.Tactic
import Mathematics.Resolution.ArithmeticModularityObligation

/-!
# Recursive arithmetic-security dependency ledger

The analytic, computational, and coupling ledgers remain distinct.  This file
records the exact recursive dependencies of the computational and bridge
channels without treating an unknown as false.
-/

namespace Mathematics.Resolution

inductive ArithmeticSecurityObligation
  | concreteWorkBound
  | queryLowerBound
  | queryToWorkReduction
  | arithmeticAdversaryCoupling
  | adversaryFeasibility
  | adversaryNumerator
  | queryLocalDenominator
  | exponentialScaleIdentification
  | securityGameSemantics
  | effectiveEncoding
  | outputSeparation
  | traceToKernelLift
  | kernelNondegeneracy
  | spectralMultiplicity
  | cancellationControl
  | arithmeticErasureEssentiality
  | oracleIncidence
  | arithmeticQueryLocality
  | schurContraction
  | uniformCoordinateBound
  | purityLocalityTheorem
  | securityParameter
  | arithmeticSizeParameter
  | scaleIdentification
  | uniformExponent
  | effectiveArithmeticSource
  | resourceNaturality
  | concreteReduction
  deriving DecidableEq, Repr, Fintype

inductive ArithmeticSecurityStage
  | root
  | query
  | feasibility
  | numerator
  | denominator
  | scale
  | resourceTransfer
  deriving DecidableEq, Repr

def ArithmeticSecurityObligation.stage :
    ArithmeticSecurityObligation → ArithmeticSecurityStage
  | .concreteWorkBound => .root
  | .queryLowerBound
  | .arithmeticAdversaryCoupling => .query
  | .adversaryFeasibility
  | .securityGameSemantics
  | .effectiveEncoding
  | .outputSeparation
  | .traceToKernelLift
  | .effectiveArithmeticSource => .feasibility
  | .adversaryNumerator
  | .kernelNondegeneracy
  | .spectralMultiplicity
  | .cancellationControl
  | .arithmeticErasureEssentiality => .numerator
  | .queryLocalDenominator
  | .oracleIncidence
  | .arithmeticQueryLocality
  | .schurContraction
  | .uniformCoordinateBound
  | .purityLocalityTheorem => .denominator
  | .exponentialScaleIdentification
  | .securityParameter
  | .arithmeticSizeParameter
  | .scaleIdentification
  | .uniformExponent => .scale
  | .queryToWorkReduction
  | .resourceNaturality
  | .concreteReduction => .resourceTransfer

/-- Immediate prerequisites in the corrected dependency tree. -/
def ArithmeticSecurityObligation.dependencies :
    ArithmeticSecurityObligation →
      Finset ArithmeticSecurityObligation
  | .concreteWorkBound =>
      {.queryLowerBound, .queryToWorkReduction}
  | .queryLowerBound =>
      {.arithmeticAdversaryCoupling}
  | .arithmeticAdversaryCoupling =>
      {
        .adversaryFeasibility,
        .adversaryNumerator,
        .queryLocalDenominator,
        .exponentialScaleIdentification
      }
  | .adversaryFeasibility =>
      {
        .securityGameSemantics,
        .effectiveEncoding,
        .outputSeparation,
        .traceToKernelLift,
        .effectiveArithmeticSource
      }
  | .adversaryNumerator =>
      {
        .kernelNondegeneracy,
        .spectralMultiplicity,
        .cancellationControl,
        .arithmeticErasureEssentiality
      }
  | .queryLocalDenominator =>
      {
        .oracleIncidence,
        .arithmeticQueryLocality,
        .schurContraction,
        .uniformCoordinateBound,
        .purityLocalityTheorem
      }
  | .exponentialScaleIdentification =>
      {
        .securityParameter,
        .arithmeticSizeParameter,
        .scaleIdentification,
        .uniformExponent
      }
  | .queryToWorkReduction =>
      {.resourceNaturality, .concreteReduction}
  | _ => ∅

/-- The nine-node bridge ledger from effective source to resource naturality. -/
def arithmeticSecurityBridgeLedger :
    Finset ArithmeticSecurityObligation :=
  {
    .effectiveArithmeticSource,
    .traceToKernelLift,
    .outputSeparation,
    .oracleIncidence,
    .arithmeticQueryLocality,
    .kernelNondegeneracy,
    .purityLocalityTheorem,
    .exponentialScaleIdentification,
    .resourceNaturality
  }

/-- Computational obligations not assigned to the arithmetic bridge ledger. -/
def arithmeticSecurityComputationalLedger :
    Finset ArithmeticSecurityObligation :=
  Finset.univ \ arithmeticSecurityBridgeLedger

/--
Seven-node diagnostic refinement retained beneath the authoritative
three-macro terminal state.
-/
def arithmeticSecurityConservativeFrontier :
    Finset ArithmeticSecurityObligation :=
  {
    .effectiveArithmeticSource,
    .traceToKernelLift,
    .oracleIncidence,
    .kernelNondegeneracy,
    .purityLocalityTheorem,
    .resourceNaturality,
    .concreteReduction
  }

theorem arithmeticSecurityBridgeLedger_card :
    arithmeticSecurityBridgeLedger.card = 9 := by
  native_decide

theorem arithmeticSecurityComputationalLedger_card :
    arithmeticSecurityComputationalLedger.card = 19 := by
  native_decide

theorem arithmeticSecurityLedgers_disjoint :
    Disjoint arithmeticSecurityComputationalLedger
      arithmeticSecurityBridgeLedger := by
  native_decide

theorem arithmeticSecurityLedgers_complete :
    arithmeticSecurityComputationalLedger ∪
        arithmeticSecurityBridgeLedger =
      (Finset.univ : Finset ArithmeticSecurityObligation) := by
  native_decide

theorem arithmeticSecurityConservativeFrontier_card :
    arithmeticSecurityConservativeFrontier.card = 7 := by
  native_decide

/-- The three ledgers are retained as separately typed certificate channels. -/
structure SeparatedCouplingLedgers where
  analytic : Finset ArithmeticModularityObligation
  computational : Finset ArithmeticSecurityObligation
  bridge : Finset ArithmeticSecurityObligation
  computationalBridgeDisjoint :
    Disjoint computational bridge

def canonicalSeparatedCouplingLedgers :
    SeparatedCouplingLedgers where
  analytic := Finset.univ
  computational := arithmeticSecurityComputationalLedger
  bridge := arithmeticSecurityBridgeLedger
  computationalBridgeDisjoint :=
    arithmeticSecurityLedgers_disjoint

inductive ArithmeticSecurityVerdict (Claim : Prop)
  | certified (proof : Claim)
  | refuted (proof : ¬ Claim)
  | unknown
      (obligations : Finset ArithmeticSecurityObligation)
      (nonempty : obligations.Nonempty)

namespace ArithmeticSecurityVerdict

variable {Claim : Prop}

def IsCertified : ArithmeticSecurityVerdict Claim → Prop
  | .certified _ => True
  | .refuted _ => False
  | .unknown _ _ => False

def IsRefuted : ArithmeticSecurityVerdict Claim → Prop
  | .certified _ => False
  | .refuted _ => True
  | .unknown _ _ => False

def unknowns :
    ArithmeticSecurityVerdict Claim →
      Finset ArithmeticSecurityObligation
  | .certified _ => ∅
  | .refuted _ => ∅
  | .unknown obligations _ => obligations

end ArithmeticSecurityVerdict

/--
Fine-grained compatibility verdict for clients that inspect internal
dependencies.  It is not the authoritative top-level terminal verdict.
-/
def arithmeticSecurityCouplingVerdict
    (Claim : Prop) :
    ArithmeticSecurityVerdict Claim :=
  .unknown arithmeticSecurityConservativeFrontier (by
    exact ⟨.effectiveArithmeticSource, by
      simp [arithmeticSecurityConservativeFrontier]⟩)

@[simp]
theorem arithmeticSecurityCouplingVerdict_unknowns
    (Claim : Prop) :
    (arithmeticSecurityCouplingVerdict Claim).unknowns =
      arithmeticSecurityConservativeFrontier :=
  rfl

@[simp]
theorem arithmeticSecurityCouplingVerdict_not_certified
    (Claim : Prop) :
    ¬ (arithmeticSecurityCouplingVerdict Claim).IsCertified :=
  id

@[simp]
theorem arithmeticSecurityCouplingVerdict_not_refuted
    (Claim : Prop) :
    ¬ (arithmeticSecurityCouplingVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
