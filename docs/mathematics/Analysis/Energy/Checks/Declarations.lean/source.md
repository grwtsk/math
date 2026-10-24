# Complete source: GRWTSK.Analysis.Energy.Checks.Declarations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2b3928b9cad0eef651bbc9088659541eeec9f65` · SHA-256 `28809c1aba0124e3da4b6fd8171cf98f941083492f3f6046bdacab78860154e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.AlmostMathieu
import GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold
import GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import GRWTSK.NumberTheory.Moebius.ComparisonEnergy
import GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth
import GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC

-- Complete literal arithmetic premise and terminal target.
example : PickupCrossPoly ↔ ∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧
    ∀ T : ℝ, 0 ≤ T → pickupCross T ≤ C * (1 + T) ^ r := Iff.rfl
example (hX : PickupCrossPoly) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossPoly hX
example : PickupCrossPoly ↔ PickupEnergyPoly := pickupCrossPoly_iff_pickupEnergyPoly
example {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = pickupDiagonal T + pickupCross T :=
  pickupEnergy_eq_diagonal_add_cross hT
example {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ pickupDiagonal T ∧ pickupDiagonal T ≤
      2 * T ^ 2 - 8 * T + 16 * (1 - Real.exp (-T / 2)) :=
  ⟨pickupDiagonal_nonneg hT, pickupDiagonal_le_sharp hT⟩
example {n : ℕ} (hn : 1 ≤ n) : pickupResponse n (Real.log n) = 0 :=
  pickupResponse_at_event hn
example {T : ℝ} (hT : 0 ≤ T) :
    wholePickup T =
      2 * (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, moebiusReal n * (Real.sqrt n)⁻¹) -
      2 * Real.exp (-T / 2) * mertensPrefix (Real.exp T) :=
  wholePickup_closed_prefix_flux hT
example {T : ℝ} (hT : 0 ≤ T) : pickupDeterminant T = 1 + pickupEnergy T :=
  pickupDeterminant_eq_energy hT
example {T B : ℝ} (hT : 0 ≤ T) :
    pickupDeterminant T ≤ 1 + B ↔ pickupEnergy T ≤ B :=
  pickupDeterminant_bound_iff hT
example {T : ℝ} (hT : 0 ≤ T) : pickupEnergy T ≤ 2 * Real.exp T * T ^ 2 :=
  pickupEnergy_exponential_allowance hT

-- Every rate, every real time and every sample remain literally quantified.
example : PickupCrossSubexp ↔ ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ T : ℝ, 0 ≤ T → pickupCross T ≤ C * Real.exp (ε * T) := Iff.rfl
example : PickupCrossNatSubexp ↔ ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ n : ℕ, pickupCross n ≤ C * Real.exp (ε * n) := Iff.rfl
example : PickupCrossNatPoly ↔ ∃ C r : ℝ, 0 ≤ C ∧ 0 ≤ r ∧
    ∀ n : ℕ, pickupCross n ≤ C * (1 + (n : ℝ)) ^ r := Iff.rfl
example : PickupCrossNatPoly ↔ PickupCrossPoly := pickupCrossNatPoly_iff_crossPoly
example : PickupCrossNatSubexp ↔ PickupCrossSubexp := pickupCrossNatSubexp_iff_crossSubexp
example : PickupEnergySubexp ↔ PickupWeightedEnergyAll := pickupEnergySubexp_iff_weightedEnergyAll
example : pickupEnergyAbscissa = 0 ↔ PickupCrossSubexp := pickupEnergyAbscissa_zero_iff_crossSubexp
example : 0 ≤ pickupEnergyAbscissa ∧ pickupEnergyAbscissa ≤ 1 :=
  ⟨pickupEnergyAbscissa_nonneg, pickupEnergyAbscissa_le_one⟩
example {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ pickupCross ⌈T⌉₊ + 2 * (1 + T) ^ 2 := pickupCross_le_next_sample hT
example (h : PickupCrossSubexp) : _root_.RiemannHypothesis := riemannHypothesis_of_pickupCrossSubexp h
example (h : PickupCrossNatSubexp) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupCrossNatSubexp h
example (h : PickupWeightedEnergyAll) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupWeightedEnergyAll h
example (h : pickupEnergyAbscissa = 0) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyAbscissa_zero h
example {g : ℝ → ℝ} (hg : Continuous g)
    (hm : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, g u ^ 2))
    (hr : SubexponentialUpper (fun T ↦ ∫ u in (0 : ℝ)..T, (wholePickup u - g u) ^ 2)) :
    _root_.RiemannHypothesis := riemannHypothesis_of_pickup_comparison hg hm hr
example : Continuous (fun u : ℝ ↦ Real.exp (u / 2)) ∧
    MeasureTheory.IntegrableOn (fun u : ℝ ↦ Real.exp (-2 * u) * Real.exp (u / 2) ^ 2) (Set.Ici 0) ∧
    ¬ MeasureTheory.IntegrableOn (fun u : ℝ ↦ Real.exp (-u) * Real.exp (u / 2) ^ 2) (Set.Ici 0) :=
  exponential_boundary_control

elab "#audit_ccc_energy" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if #[`GRWTSK.Analysis.Asymptotics.PolynomialSubexponential,
          `GRWTSK.Analysis.Inequalities.ExponentialDiagonal,
          `GRWTSK.Analysis.LaplaceTransform.Analytic,
          `GRWTSK.Analysis.LaplaceTransform.ExponentialEnergy,
          `GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold,
          `GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy,
          `GRWTSK.LinearAlgebra.AlmostMathieu,
          `GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm,
          `GRWTSK.NumberTheory.Moebius.ComparisonEnergy,
          `GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity,
          `GRWTSK.NumberTheory.Moebius.DyadicEnergy,
          `GRWTSK.NumberTheory.Moebius.EnergyAbscissa,
          `GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform,
          `GRWTSK.NumberTheory.Moebius.FiniteResponseSum,
          `GRWTSK.NumberTheory.Moebius.GramDiagonalBound,
          `GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth,
          `GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy,
          `GRWTSK.NumberTheory.Moebius.LaplaceTransform,
          `GRWTSK.NumberTheory.Moebius.MertensPrimitive,
          `GRWTSK.NumberTheory.Moebius.NegativePrimeCorrelation,
          `GRWTSK.NumberTheory.Moebius.PrimeBlockEnergy,
          `GRWTSK.NumberTheory.Moebius.PrimeFactorFilters,
          `GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy,
          `GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth,
          `GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace,
          `GRWTSK.NumberTheory.Moebius.PrimePrefixGrowth,
          `GRWTSK.NumberTheory.Moebius.PrimitiveIdentification,
          `GRWTSK.NumberTheory.Moebius.PrimitiveRegularity,
          `GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound,
          `GRWTSK.NumberTheory.Prime.ReciprocalMass,
          `GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion,
          `GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion,
          `GRWTSK.NumberTheory.Zeta.Riemann.Regularized].contains owner then
        -- Compiler-generated equations can be repeated in later module data.
        -- Keep each constant at its canonical environment owner.
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty CCC source family"
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
    let owner := moduleNames[(env.getModuleIdxFor? n).get!]!
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | _ => "generated"
    let entry := Json.mkObj [
      ("module", toJson owner.toString),
      ("name", toJson n.toString),
      ("kind", toJson kind),
      ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"CCC_DECL::{entry.compress}"
  logInfo m!"CCC_COUNT::{declarations.length}"

#audit_ccc_energy
```
