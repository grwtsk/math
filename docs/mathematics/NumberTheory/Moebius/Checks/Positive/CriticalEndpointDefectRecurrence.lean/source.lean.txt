import GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence

example (n : ℕ) :
    criticalEndpointDefect (n + 1) =
      criticalEndpointDefect n +
        GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix n *
          criticalEndpointGap n :=
  criticalEndpointDefect_succ n

example (n : ℕ) :
    criticalEndpointDefect n = criticalMertensTransform n :=
  criticalEndpointDefect_eq_mertensTransform n

example :
    CriticalBoundaryVerticalLineUniform ↔
      CriticalMertensTransformSummable :=
  criticalBoundary_iff_mertensTransformSummable

elab "#audit_critical_endpoint_defect_recurrence" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical endpoint-defect recurrence family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_ENDPOINT_DEFECT_RECURRENCE_COUNT::{declarations.length}"

#audit_critical_endpoint_defect_recurrence
