# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.CriticalIntervalBlockGrowth

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bab2c2935ef673e9796343b993e2c9144367a07` · SHA-256 `c9b4b2efa3edf38b2d048d7a37b5b2811fff310e207d23ee8c8079f3c5600871`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
