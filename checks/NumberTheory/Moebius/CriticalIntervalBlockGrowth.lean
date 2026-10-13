import GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth

example (n : ℕ) : |pickupMertensPrefix n| ≤ (n : ℝ) :=
  pickupMertensPrefix_abs_le_natCast n

example {n : ℕ} (hn : 1 ≤ n) :
    |pickupWeightedPrefix n| ≤ 2 * Real.sqrt n :=
  pickupWeightedPrefix_abs_le_two_sqrt hn

example {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalBlock n ≤ 40 / (n : ℝ) :=
  criticalIntervalBlock_le_harmonic hn

example (N : ℕ) :
    criticalIntervalBlockSum N ≤ 40 * (harmonic N : ℝ) :=
  criticalIntervalBlockSum_le_harmonic N

example (N : ℕ) :
    criticalIntervalBlockSum N ≤ 40 * (1 + Real.log N) :=
  criticalIntervalBlockSum_le_log N

elab "#audit_critical_interval_block_growth" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical-interval block-growth family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_INTERVAL_BLOCK_GROWTH_COUNT::{declarations.length}"

#audit_critical_interval_block_growth
