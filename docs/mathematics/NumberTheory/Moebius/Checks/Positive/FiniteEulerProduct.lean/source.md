# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.FiniteEulerProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f04afae3b6af891d0dfbae9fb4b659c5135e1804` · SHA-256 `e75fa9f8555a89d23a8b0e1f7752d332ab698780f62954de1b0b8218ac638221`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
