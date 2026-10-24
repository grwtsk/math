# Complete source: GRWTSK.LinearAlgebra.CommonJ.Checks.Audit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4258ccf87c2066dcdc4eb850121bf6a61d530aea` · SHA-256 `6773a938739ae7708d354a130a9e067844cd33633cb6b4ce3883f998a7f638fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CommonJ
import Lean

open GRWTSK.Algebra GRWTSK.LinearAlgebra.CommonJ Lean Elab Command

namespace GRWTSK.LinearAlgebra.CommonJ.Checks

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

end GRWTSK.LinearAlgebra.CommonJ.Checks

elab "#audit_common_j" : command => liftTermElabM do
  unless ((← getEnv).find? `GRWTSK.LinearAlgebra.CommonJ.rotationUnit.congr_simp).isSome do
    Lean.executeReservedNameAction `GRWTSK.LinearAlgebra.CommonJ.rotationUnit.congr_simp
  let env ← getEnv
  let roots := #[`GRWTSK.LinearAlgebra.CommonJ.rotationMatrix,
    `GRWTSK.LinearAlgebra.CommonJ.rotationMatrix_comp,
    `GRWTSK.LinearAlgebra.CommonJ.rotationMatrix_commute,
    `GRWTSK.LinearAlgebra.CommonJ.commonJ_square,
    `GRWTSK.LinearAlgebra.CommonJ.circle_composition,
    `GRWTSK.LinearAlgebra.CommonJ.circle_reverse,
    `GRWTSK.LinearAlgebra.CommonJ.rotationMatrix_reverse,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit_commute,
    `GRWTSK.LinearAlgebra.CommonJ.rotationMatrix_eq_commonJ,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit_reverse,
    `GRWTSK.LinearAlgebra.CommonJ.rationalEdge,
    `GRWTSK.LinearAlgebra.CommonJ.rational_two_edge_loop_nonidentity]
  let generated := #[`GRWTSK.LinearAlgebra.CommonJ.rotationMatrix.eq_1,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit._proof_1,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit.eq_1,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit.congr_simp,
    `GRWTSK.LinearAlgebra.CommonJ.rationalEdge._proof_1,
    `GRWTSK.LinearAlgebra.CommonJ.rationalEdge.eq_1]
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
      #[(`GRWTSK.LinearAlgebra.CommonJ.Checks.commuting_units_consumer,
         `GRWTSK.LinearAlgebra.CommonJ.rotationUnit_commute),
        (`GRWTSK.LinearAlgebra.CommonJ.Checks.rational_obstruction_consumer,
         `GRWTSK.LinearAlgebra.CommonJ.rational_two_edge_loop_nonidentity)] do
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
```
