# Complete source: GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `399be289c9122c07ae30af3955d9441fc91a1b66` · SHA-256 `08468a4a0285f328036f2d463530c41f012a6b1a602e52c3bcbc98dee9fcc8d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
import Lean

open GRWTSK.LinearAlgebra.CommonJCounterexamples Lean Elab Command

namespace GRWTSK.LinearAlgebra.CommonJCounterexamples.Checks

theorem noncommutativity_consumer : ¬ Commute hostileUpper hostileLower :=
  hostile_edges_noncommute

theorem inverse_product_failure_consumer :
    hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠
      (hostileLower * hostileUpper)⁻¹ := noncommuting_sign_loop_fails

end GRWTSK.LinearAlgebra.CommonJCounterexamples.Checks

elab "#audit_common_j_counterexamples" : command => liftTermElabM do
  let env ← getEnv
  let roots := #[`GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileSign,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper_sign_inverse,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower_sign_inverse,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.noncommuting_sign_loop_fails,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostile_edges_noncommute]
  let companions := #[`GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper._proof_1,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper._proof_2,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower._proof_1,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower._proof_2,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileSign._proof_1,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper.eq_1,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower.eq_1,
    `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileSign.eq_1]
  for n in roots ++ companions do
    let some info := env.find? n | throwError "missing counterexample declaration: {n}"
    if info.isUnsafe then throwError "unsafe counterexample declaration"
    match info with
    | .axiomInfo _ => throwError "undeclared counterexample axiom"
    | _ => pure ()
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved counterexample axiom: {ax}"
    logInfo m!"COMMON_J_COUNTER_DECL::{n}"
  for parent in #[`GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper,
      `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower,
      `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileSign] do
    let some equations ← Meta.getEqnsFor? parent | throwError "missing counterexample equation"
    unless equations.size == 1 do throwError "unexpected counterexample equation family"
    for n in equations do
      unless companions.contains n do throwError "unmapped counterexample equation"
      let some info := env.find? n | throwError "equation was not originally stored"
      let some proof := info.value? true | throwError "missing equation proof"
      Meta.checkWithKernel proof
      unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do
        throwError "counterexample equation type mismatch"
      logInfo m!"COMMON_J_COUNTER_EQUATION::{n}"
  for (consumer, target) in
      #[(`GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper_sign_inverse,
         `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper),
        (`GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower_sign_inverse,
         `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileLower),
        (`GRWTSK.LinearAlgebra.CommonJCounterexamples.noncommuting_sign_loop_fails,
         `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileSign),
        (`GRWTSK.LinearAlgebra.CommonJCounterexamples.hostile_edges_noncommute,
         `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostileUpper)] do
    let some info := env.find? consumer | throwError "missing original consumer"
    let some proof := info.value? true | throwError "missing original proof"
    unless info.type.getUsedConstants.contains target || proof.getUsedConstants.contains target do
      throwError "missing canonical declaration dependency: {consumer}, {target}"
    logInfo m!"COMMON_J_COUNTER_ORIGINAL_DECL_REUSE::{consumer}::{target}"
  for (consumer, target) in
      #[(`GRWTSK.LinearAlgebra.CommonJCounterexamples.Checks.noncommutativity_consumer,
         `GRWTSK.LinearAlgebra.CommonJCounterexamples.hostile_edges_noncommute),
        (`GRWTSK.LinearAlgebra.CommonJCounterexamples.Checks.inverse_product_failure_consumer,
         `GRWTSK.LinearAlgebra.CommonJCounterexamples.noncommuting_sign_loop_fails)] do
    let some info := env.find? consumer | throwError "missing synthetic consumer"
    let some proof := info.value? true | throwError "missing synthetic proof"
    unless proof.getUsedConstants.contains target do
      throwError "missing canonical synthetic proof dependency"
    for ax in (← collectAxioms consumer) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved synthetic consumer axiom"
    logInfo m!"COMMON_J_COUNTER_SYNTHETIC_REUSE::{consumer}::{target}"

#audit_common_j_counterexamples
```
