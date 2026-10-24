# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.CriticalEndpointDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f7b868ae9fdc850d0182693a629fb73989f575e` · SHA-256 `21ffb31c1310518a101345e4d0df993821324ab996193021a1be1432b1d639b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

example {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointDefect n = wholePickup (Real.log (n : ℝ)) / 2 :=
  criticalEndpointDefect_eq_half_wholePickup hn

example {n : ℕ} (hn : 1 ≤ n) :
    8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n ≤
      8 / (n : ℝ) ^ 3 :=
  mertens_drift_error_le_inv_cube hn

example :
    CriticalBoundaryVerticalLineUniform ↔ CriticalEndpointDefectSummable :=
  criticalBoundary_iff_endpointDefectSummable

elab "#audit_critical_endpoint_defect" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical endpoint-defect family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_ENDPOINT_DEFECT_COUNT::{declarations.length}"

#audit_critical_endpoint_defect
```
