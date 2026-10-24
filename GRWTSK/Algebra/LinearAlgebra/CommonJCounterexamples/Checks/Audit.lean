import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
import Lean

open GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples Lean Elab Command

namespace GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.Checks

theorem noncommutativity_consumer : ¬ Commute hostileUpper hostileLower :=
  hostile_edges_noncommute

theorem inverse_product_failure_consumer :
    hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠
      (hostileLower * hostileUpper)⁻¹ := noncommuting_sign_loop_fails

end GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.Checks

elab "#audit_common_j_counterexamples" : command => liftTermElabM do
  let env ← getEnv
  let roots := #[`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileSign,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper_sign_inverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower_sign_inverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.noncommuting_sign_loop_fails,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostile_edges_noncommute]
  let companions := #[`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper._proof_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper._proof_2,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower._proof_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower._proof_2,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileSign._proof_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileSign.eq_1]
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
  for parent in #[`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper,
      `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower,
      `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileSign] do
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
      #[(`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper_sign_inverse,
         `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower_sign_inverse,
         `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileLower),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.noncommuting_sign_loop_fails,
         `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileSign),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostile_edges_noncommute,
         `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostileUpper)] do
    let some info := env.find? consumer | throwError "missing original consumer"
    let some proof := info.value? true | throwError "missing original proof"
    unless info.type.getUsedConstants.contains target || proof.getUsedConstants.contains target do
      throwError "missing canonical declaration dependency: {consumer}, {target}"
    logInfo m!"COMMON_J_COUNTER_ORIGINAL_DECL_REUSE::{consumer}::{target}"
  for (consumer, target) in
      #[(`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.Checks.noncommutativity_consumer,
         `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.hostile_edges_noncommute),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.Checks.inverse_product_failure_consumer,
         `GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples.noncommuting_sign_loop_fails)] do
    let some info := env.find? consumer | throwError "missing synthetic consumer"
    let some proof := info.value? true | throwError "missing synthetic proof"
    unless proof.getUsedConstants.contains target do
      throwError "missing canonical synthetic proof dependency"
    for ax in (← collectAxioms consumer) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved synthetic consumer axiom"
    logInfo m!"COMMON_J_COUNTER_SYNTHETIC_REUSE::{consumer}::{target}"

#audit_common_j_counterexamples
