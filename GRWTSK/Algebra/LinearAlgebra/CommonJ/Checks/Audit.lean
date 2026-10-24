import GRWTSK.Algebra.LinearAlgebra.CommonJ
import Lean

open GRWTSK.Algebra GRWTSK.Algebra.LinearAlgebra.CommonJ Lean Elab Command

namespace GRWTSK.Algebra.LinearAlgebra.CommonJ.Checks

-- Explicit generic domain, multiplication direction and circle assumptions.
example {R : Type u} [CommRing R] (c s : R) :
    rotationMatrix c s = !![c, s; -s, c] := rfl
example {R : Type u} [CommRing R] (c₂ s₂ c₁ s₁ : R) :
    rotationMatrix c₂ s₂ * rotationMatrix c₁ s₁ =
      rotationMatrix (c₂*c₁-s₂*s₁) (c₂*s₁+s₂*c₁) :=
  rotationMatrix_comp c₂ s₂ c₁ s₁

theorem commuting_units_consumer {R : Type u} [CommRing R]
    (c₂ s₂ c₁ s₁ : R) (h₂ : c₂^2+s₂^2=1) (h₁ : c₁^2+s₁^2=1) :
    Commute (rotationUnit c₂ s₂ h₂) (rotationUnit c₁ s₁ h₁) :=
  rotationUnit_commute c₂ s₂ c₁ s₁ h₂ h₁

theorem rational_obstruction_consumer :
    GRWTSK.Algebra.orderedProduct (fun _ => rationalEdge) 0 2 ≠ 1 :=
  rational_two_edge_loop_nonidentity

-- Ask Lean's own reserved-name mechanism for the caller-generated theorem.
#check rotationUnit.congr_simp

end GRWTSK.Algebra.LinearAlgebra.CommonJ.Checks

elab "#audit_common_j" : command => liftTermElabM do
  unless ((← getEnv).find? `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit.congr_simp).isSome do
    Lean.executeReservedNameAction `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit.congr_simp
  let env ← getEnv
  let roots := #[`GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix_comp,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix_commute,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.commonJ_square,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.circle_composition,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.circle_reverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix_reverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit_commute,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix_eq_commonJ,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit_reverse,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rationalEdge,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rational_two_edge_loop_nonidentity]
  let generated := #[`GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit._proof_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit.eq_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit.congr_simp,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rationalEdge._proof_1,
    `GRWTSK.Algebra.LinearAlgebra.CommonJ.rationalEdge.eq_1]
  for n in roots ++ generated do
    let some info := env.find? n | throwError "missing declaration: {n}"
    if info.isUnsafe then throwError "unsafe interface: {n}"
    match info with
    | .axiomInfo _ => throwError "undeclared axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    logInfo m!"COMMON_J_DECL::{n}::{axioms.toList}"
  for (consumer, target) in
      #[(`GRWTSK.Algebra.LinearAlgebra.CommonJ.Checks.commuting_units_consumer,
         `GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationUnit_commute),
        (`GRWTSK.Algebra.LinearAlgebra.CommonJ.Checks.rational_obstruction_consumer,
         `GRWTSK.Algebra.LinearAlgebra.CommonJ.rational_two_edge_loop_nonidentity)] do
    let some info := env.find? consumer | throwError "missing consumer: {consumer}"
    let some proof := info.value? true | throwError "missing proof term: {consumer}"
    unless proof.getUsedConstants.contains target do
      throwError "consumer lacks canonical proof dependency: {consumer}"
    let axioms ← collectAxioms consumer
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved consumer axiom {ax}"
    logInfo m!"COMMON_J_CONSUMER::{consumer}::{target}"
  logInfo "COMMON_J_ROOTS::13"
  logInfo "COMMON_J_GENERATED::6"

#audit_common_j
