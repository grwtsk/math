import GRWTSK.Algebra.LinearAlgebra.CommonJ
import Lean

open GRWTSK.Algebra GRWTSK.Algebra.LinearAlgebra.CommonJ Lean Elab Command

namespace GRWTSK.Algebra.LinearAlgebra.CommonJ.SignChecks

theorem generic_sign_loop_consumer {R : Type u} [CommRing R] (c s : ℕ → R)
    (h : ∀ i, c i ^ 2 + s i ^ 2 = 1) (n k : ℕ) :
    flipUnit * orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k * flipUnit =
      (orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k)⁻¹ :=
  commonJ_loop_sign_conjugation c s h n k

theorem rational_reverse_consumer :
    orderedProduct (fun i => if i = 0 then rationalEdge else rationalEdge⁻¹) 0 2 = 1 :=
  rational_reverse_loop_identity

example {R : Type u} [CommRing R] :
    flipMatrix * rotationMatrix (0 : R) 1 * flipMatrix = -rotationMatrix 0 1 :=
  flip_commonJ_reverse

end GRWTSK.Algebra.LinearAlgebra.CommonJ.SignChecks

elab "#audit_common_j_signs" : command => liftTermElabM do
  let original ← getEnv
  let some equations ← Meta.getEqnsFor? `GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit
    | throwError "missing native flip-unit equation family"
  unless equations == #[`GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit.eq_1] do
    throwError "unexpected native flip-unit equation family"
  let env ← getEnv
  let roots := #[`GRWTSK.Algebra.LinearAlgebra.CommonJ.flipMatrix,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.flip_rotation_inverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_loop_inverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rational_reverse_loop_identity,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit_inverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.flip_commonJ_reverse]
  let companions := #[`GRWTSK.Algebra.LinearAlgebra.CommonJ.flipMatrix.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit._proof_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit.congr_simp]
  for n in roots ++ companions do
    let some info := env.find? n | throwError "missing sign declaration: {n}"
    if info.isUnsafe then throwError "unsafe sign declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "undeclared axiom: {n}"
    | _ => pure ()
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved sign axiom {ax}"
    logInfo m!"COMMON_J_SIGN_DECL::{n}"
  for n in equations do
    let some info := env.find? n | throwError "missing native equation"
    let some proof := info.value? true | throwError "missing native equation proof"
    Meta.checkWithKernel proof
    unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do
      throwError "native equation type mismatch"
    logInfo m!"COMMON_J_SIGN_DERIVED::{n}::originallyStored={(original.find? n).isSome}"
  for (consumer, target) in
      #[(`GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation,
         `GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_loop_inverse),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation,
         `GRWTSK.Algebra.LinearAlgebra.CommonJ.flipUnit_inverse),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJ.SignChecks.generic_sign_loop_consumer,
         `GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJ.SignChecks.rational_reverse_consumer,
         `GRWTSK.Algebra.LinearAlgebra.CommonJ.rational_reverse_loop_identity)] do
    let some info := env.find? consumer | throwError "missing sign consumer"
    let some proof := info.value? true | throwError "missing sign consumer proof"
    unless proof.getUsedConstants.contains target do
      throwError "missing canonical sign proof dependency: {consumer}, {target}"
    for ax in (← collectAxioms consumer) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved sign consumer axiom"
    logInfo m!"COMMON_J_SIGN_REUSE::{consumer}::{target}"

#audit_common_j_signs
