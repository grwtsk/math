import GRWTSK.NumberTheory.Moebius.FiniteEulerProduct
import Lean
open Lean Elab Command
open scoped BigOperators ArithmeticFunction.Moebius
open GRWTSK.NumberTheory.Moebius

example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1 - f p)) =
      (∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n) +
      ∑ S ∈ (Nat.primesLE N).powerset.filter (fun S => N < ∏ p ∈ S, p),
        (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) :=
  finite_euler_product_cutoff f hf N
example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) :
    (∑ S ∈ (Nat.primesLE 0).powerset.filter (fun S => 0 < ∏ p ∈ S, p),
      (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p)) = 1 :=
  finite_euler_product_cutoff_zero f hf

elab "#audit_finite_euler_product" : command => do
  let env ← getEnv
  let owners := env.header.moduleNames
  unless env.header.moduleData.size == owners.size do
    throwError "incomplete module ownership table"
  let target := `GRWTSK.NumberTheory.Moebius.FiniteEulerProduct
  let declarations := (env.header.moduleData.toList.zip owners.toList).flatMap
    fun (data, owner) =>
      if owner == target then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => owners[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty finite Euler product census"
  for (name, info) in declarations do
    if info.isUnsafe || info.isPartial then throwError "unsafe/partial declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    logInfo m!"FINITE_EULER_DECL::{(Json.mkObj [
      ("module", toJson target.toString), ("name", toJson name.toString),
      ("type", toJson type.pretty), ("unsafe", toJson info.isUnsafe),
      ("partial", toJson info.isPartial),
      ("axioms", toJson (axioms.toList.map Name.toString))]).compress}"
  logInfo m!"FINITE_EULER_COUNT::{declarations.length}"

#audit_finite_euler_product
