import Folder.RH.TraceFormula

/-!
# Folder.RH.TraceFormulaDischarge

Radiation role: proof-governance
BinaryMatrix spine: This module records trace-formula discharge gates as data.
Ontology: rh.trace_formula_discharge
Pivot role: spectral
Zero typology: zeta
Contract boundary: audit-checklist
Composite stack role: rh
-/

namespace Folder
namespace RH

/--
Trace-formula gates required before `Folder.RH.TraceFormula` can become a
constructed bridge.

These gates are checklist entries. This module does not prove the explicit
formula, determinant comparison, trace-class regularization, or equality of
spectral and zero-distribution traces.
-/
inductive TraceFormulaDischargeGate where
  | traceTargetConstruction
  | spectralTraceConstruction
  | zeroDistributionTraceConstruction
  | regularizationCompatibility
  | explicitFormulaOrDeterminantComparison
  | traceEqualityTheorem
deriving DecidableEq, Repr

def TraceFormulaDischargeGate.currentStatus :
    TraceFormulaDischargeGate → String
  | .traceTargetConstruction => "theorem target"
  | .spectralTraceConstruction => "theorem target"
  | .zeroDistributionTraceConstruction => "theorem target"
  | .regularizationCompatibility => "theorem target"
  | .explicitFormulaOrDeterminantComparison => "theorem target"
  | .traceEqualityTheorem => "theorem target"

def TraceFormulaDischargeGate.requiredDischarge :
    TraceFormulaDischargeGate → String
  | .traceTargetConstruction =>
      "Construct the trace target with the normalization required by the RH cone."
  | .spectralTraceConstruction =>
      "Construct the spectral-side trace for the RH operator model."
  | .zeroDistributionTraceConstruction =>
      "Construct the zero-distribution trace for H0 zero data."
  | .regularizationCompatibility =>
      "Prove that spectral and zero-side regularizations are compatible."
  | .explicitFormulaOrDeterminantComparison =>
      "Prove the explicit-formula or determinant comparison bridge."
  | .traceEqualityTheorem =>
      "Prove the trace equality without using a critical-line conclusion."

def traceFormulaDischargeChecklist : List TraceFormulaDischargeGate :=
  [
    .traceTargetConstruction,
    .spectralTraceConstruction,
    .zeroDistributionTraceConstruction,
    .regularizationCompatibility,
    .explicitFormulaOrDeterminantComparison,
    .traceEqualityTheorem
  ]

theorem trace_target_in_trace_formula_discharge_checklist :
    TraceFormulaDischargeGate.traceTargetConstruction ∈
      traceFormulaDischargeChecklist := by
  simp [traceFormulaDischargeChecklist]

theorem spectral_trace_in_trace_formula_discharge_checklist :
    TraceFormulaDischargeGate.spectralTraceConstruction ∈
      traceFormulaDischargeChecklist := by
  simp [traceFormulaDischargeChecklist]

theorem zero_distribution_trace_in_trace_formula_discharge_checklist :
    TraceFormulaDischargeGate.zeroDistributionTraceConstruction ∈
      traceFormulaDischargeChecklist := by
  simp [traceFormulaDischargeChecklist]

theorem regularization_in_trace_formula_discharge_checklist :
    TraceFormulaDischargeGate.regularizationCompatibility ∈
      traceFormulaDischargeChecklist := by
  simp [traceFormulaDischargeChecklist]

theorem explicit_formula_or_determinant_in_trace_formula_discharge_checklist :
    TraceFormulaDischargeGate.explicitFormulaOrDeterminantComparison ∈
      traceFormulaDischargeChecklist := by
  simp [traceFormulaDischargeChecklist]

theorem trace_equality_in_trace_formula_discharge_checklist :
    TraceFormulaDischargeGate.traceEqualityTheorem ∈
      traceFormulaDischargeChecklist := by
  simp [traceFormulaDischargeChecklist]

end RH
end Folder
