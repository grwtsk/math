# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.FiniteLaplaceTransform

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03d64a63f91dd690d36b377d109951280e2b85b6` · SHA-256 `a38b33dd94edac23ecfdef24686586b428b2dd01c4f1ceab673d657a3c54757f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
import Lean
open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC

example (N : ℕ) (s : ℂ) : pickupDirichletPrefix N s =
    ∑ n ∈ Finset.Icc 1 N, (moebiusReal n : ℂ)*Complex.exp (-s*Real.log n) := rfl
example (N : ℕ) : pickupWeightedPrefix N =
    ∑ n ∈ Finset.Icc 1 N, moebiusReal n*(Real.sqrt n)⁻¹ := rfl
example (N : ℕ) : pickupMertensPrefix N =
    ∑ n ∈ Finset.Icc 1 N, moebiusReal n := rfl
example {T : ℝ} (hT : 0 ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace wholePickup z T = pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) -
      2*Complex.exp (-z*T)/z*(pickupWeightedPrefix ⌊Real.exp T⌋₊ : ℂ) +
      2*Complex.exp (-s*T)/s*(pickupMertensPrefix ⌊Real.exp T⌋₊ : ℂ) :=
  wholePickup_cutoff_laplace hT hs hz hs0
example {n : ℕ} (hn : 1 ≤ n) {T : ℝ} (hnT : Real.log n ≤ T) {z s : ℂ}
    (hs : s = z+1/2) (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace (pickupResponse n) z T = Complex.exp (-s*Real.log n)/(z*s) -
      2*Complex.exp (-z*T)/z*(((Real.sqrt n)⁻¹:ℝ):ℂ) + 2*Complex.exp (-s*T)/s :=
  pickupResponseWindowLaplace hn hnT hs hz hs0
example {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    noteWindowLaplace (pickupResponse n) z (Real.log n) = 0 := pickupResponseWindow_at_birth hn z
example (s : ℂ) : pickupDirichletPrefix 3 s ≠
    (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) := cutoff_three_not_raw_product s

elab "#audit_ccc_pickup_cutoff" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if owner == `GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty cutoff source family"
  for (n, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {n}"
    | _ => pure ()
    let axioms ← collectAxioms n
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | _ => "generated"
    let entry := Json.mkObj [
      ("module", toJson "GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform"),
      ("name", toJson n.toString), ("kind", toJson kind),
      ("type", toJson type.pretty), ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"PICKUP_CUTOFF_DECL::{entry.compress}"
  logInfo m!"PICKUP_CUTOFF_COUNT::{declarations.length}"

#audit_ccc_pickup_cutoff
```
