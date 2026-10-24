# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.PrimitiveIdentification

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6700cd3ce58545aad87a6c960b88343d301d1073` · SHA-256 `e410ea20e184837e771cb8c68d12b45ae682b456e91909642b91e38a33ec95c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimitiveIdentification
import Lean
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open Lean Elab Command
open MeasureTheory Set

example (n : ℕ) (u : ℝ) :
    ArithmeticPickupEnergy.response n u = pickupResponse n u := original_response_eq n u
example {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupSource.pickup T = wholePickup T := original_pickup_eq hT
example {T : ℝ} (hT : 0 ≤ T) :
    (∫ x in Ioc 1 (Real.exp T), ArithmeticPickupSource.mertens x / x ^ (3 / 2 : ℝ)) =
      ∫ u in (0 : ℝ)..T, Real.exp (-u / 2) * mertensPrefix (Real.exp u) :=
  original_pickup_eq hT
example {T : ℝ} (hT : 0 ≤ T) (m n : ℕ) :
    ArithmeticPickupEnergy.gram T m n = pickupResponseGram T m n := original_gram_eq hT m n
example {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.diagonal T = pickupDiagonal T := original_diagonal_eq hT
example {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.fullGram T = pickupFullGram T := original_fullGram_eq hT
example {T : ℝ} (hT : 0 ≤ T) :
    ArithmeticPickupEnergy.cross T = pickupCross T := original_cross_eq hT
example {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in Ioc 0 T, |ArithmeticPickupSource.pickup u| ^ 2) =
      ∫ u in (0 : ℝ)..T, wholePickup u ^ 2 := original_energy_eq hT
example {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in Ioc (max 0 (T - 1)) T, |ArithmeticPickupSource.pickup u| ^ 2) =
      pickupLocalEnergy T := original_localEnergy_eq hT
example (u : ℝ) : originalPickupResidual u = wholePickup u - ArithmeticPickupSource.pickup u := rfl
example {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T, (wholePickup u - ArithmeticPickupSource.pickup u) ^ 2) = 0 :=
  originalPickupResidual_energy_zero hT
example : SubexponentialUpper
    (fun T ↦ ∫ u in (0 : ℝ)..T, (wholePickup u - ArithmeticPickupSource.pickup u) ^ 2) :=
  originalPickupResidual_energy_subexp
example : ArithmeticPickupSource.WholePickupPoly ↔ WholePickupPoly := original_pickup_poly_iff
example : ArithmeticPickupEnergy.CrossPoly ↔ PickupCrossPoly := original_cross_poly_iff
example : ArithmeticPickupEnergy.AmplitudeReturnPoly ↔ PickupReturnPoly := original_return_poly_iff
example : ArithmeticPickupEnergy.PickupEnergyBudgets ↔ PickupCrossPoly ∧ PickupReturnPoly :=
  original_joint_budgets_iff
example : SubexponentialUpper ArithmeticPickupEnergy.energy ↔ PickupEnergySubexp :=
  original_energy_subexp_iff
example : (∀ σ : ℝ, 0 < σ → IntegrableOn
    (fun u ↦ Real.exp (-σ * u) * |ArithmeticPickupSource.pickup u| ^ 2) (Ici 0)) ↔
    PickupWeightedEnergyAll := original_weighted_energy_all_iff
example : ArithmeticPickupEnergy.inventory 0 = {1} := by
  norm_num [ArithmeticPickupEnergy.inventory]
example : ArithmeticPickupSource.moebiusCoefficient 2 = (-1 : ℝ) := by
  norm_num [ArithmeticPickupSource.moebiusCoefficient,
    ArithmeticFunction.moebius_apply_prime Nat.prime_two]
example : (∑ m ∈ ({1, 2} : Finset ℕ), ∑ n ∈ ({1, 2} : Finset ℕ),
    if m ≠ n then moebiusReal m * moebiusReal n else 0) = (-2 : ℝ) := by
  norm_num [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
example : ArithmeticPickupEnergy.response 2 (Real.log 2) = 0 :=
  ArithmeticPickupEnergy.response_touching_atom_zero (by norm_num)
example : 0 < pickupResponse 2 (Real.log 2 + 2) := by
  unfold pickupResponse
  norm_num only [Nat.cast_ofNat]
  have he : Real.exp (-Real.log (2 : ℝ) / 2) = (Real.sqrt (2 : ℝ))⁻¹ := by
    simpa only [Nat.cast_ofNat] using
      pickup_exp_negative_log_half (by norm_num : 1 ≤ (2 : ℕ))
  rw [if_pos (by linarith), ← he]
  have h := Real.exp_lt_exp.mpr
    (show -(Real.log 2 + 2) / 2 < -Real.log 2 / 2 by linarith)
  linarith

elab "#audit_ccc_original_pickup" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if #[`GRWTSK.NumberTheory.Moebius.PrimitiveIdentification,
          `GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral,
          `GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy].contains owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (owner, info.name, info)
      else []
  if declarations.isEmpty then throwError "empty original pickup source family"
  for (owner, n, info) in declarations do
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
      ("module", toJson owner.toString),
      ("name", toJson n.toString), ("kind", toJson kind),
      ("type", toJson type.pretty), ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"ORIGINAL_PICKUP_DECL::{entry.compress}"
  logInfo m!"ORIGINAL_PICKUP_COUNT::{declarations.length}"

#audit_ccc_original_pickup
```
