import GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
open GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

example (k : ℕ) :
    (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 ≤
      1 / ((k + 1 : ℕ) : ℝ) :=
  sqrt_increment_sq_le_reciprocal k

example {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) ≤ u) :
    reciprocalFluxWeightSquareMass u n ≤ 4 + 2 * Real.log n :=
  reciprocalFluxWeightSquareMass_le_log hn hlo

elab "#audit_reciprocal_flux_kernel_bounds" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-flux kernel-bound family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_FLUX_KERNEL_BOUNDS_COUNT::{declarations.length}"

#audit_reciprocal_flux_kernel_bounds
