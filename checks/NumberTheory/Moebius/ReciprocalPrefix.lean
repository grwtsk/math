import GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

example (N : ℕ) :
    pickupMertensPrefix N =
      (N : ℝ) * pickupReciprocalPrefix N -
        ∑ k ∈ Finset.range N, pickupReciprocalPrefix k :=
  pickupMertensPrefix_eq_reciprocalPartialSummation N

example (N : ℕ) :
    |pickupMertensPrefix N| ≤
      (N : ℝ) * |pickupReciprocalPrefix N| +
        ∑ k ∈ Finset.range N, |pickupReciprocalPrefix k| :=
  pickupMertensPrefix_abs_le_reciprocalPartialSummation N

elab "#audit_reciprocal_prefix" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_COUNT::{declarations.length}"

#audit_reciprocal_prefix
