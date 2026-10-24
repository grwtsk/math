import GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
open GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

example {n : ℕ} (hn : 1 ≤ n) :
    pickupWeightedPrefix n =
      (Real.sqrt n)⁻¹ * pickupMertensPrefix n +
        (∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)) / 2 :=
  pickupWeightedPrefix_eq_mertens_add_integral hn

example {C β u : ℝ} (hC : 0 ≤ C) (hβ : 0 ≤ β)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β)
    (hu : 0 ≤ u) :
    |mertensPrefix (Real.exp u)| ≤ C * Real.exp (β * u) :=
  mertensPrefix_exp_le_of_powerBound hC hβ hM hu

example {C β : ℝ} {n : ℕ}
    (hC : 0 ≤ C) (hβ : 1 / 2 < β)
    (hM : ∀ k : ℕ, 1 ≤ k →
      |pickupMertensPrefix k| ≤ C * (k : ℝ) ^ β)
    (hn : 1 ≤ n) :
    |∫ u in (0 : ℝ)..Real.log (n : ℝ),
        Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
      C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) :=
  abelIntegral_abs_le_of_mertensPowerBound hC hβ hM hn

example {C β : ℝ}
    (hC : 0 ≤ C) (hβ : 1 / 2 < β)
    (hM : ∀ k : ℕ, 1 ≤ k →
      |pickupMertensPrefix k| ≤ C * (k : ℝ) ^ β) :
    ∀ n : ℕ, 1 ≤ n →
      |pickupWeightedPrefix n| ≤
        (C + C / (2 * (β - 1 / 2))) * (n : ℝ) ^ (β - 1 / 2) :=
  pickupWeightedPrefix_le_of_mertensPowerBound hC hβ hM

example {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalBlock n =
      ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) * wholePickup u ^ 2 :=
  criticalIntervalBlock_eq_pickup hn

example (N : ℕ) :
    criticalIntervalBlockSum N =
      verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ)) :=
  criticalIntervalBlockSum_eq_verticalLineMass N

example (n : ℕ) :
    criticalIntervalBlock n =
      4 * pickupWeightedPrefix n ^ 2 * exponentialLogDrop 1 n -
      (16 / 3) * pickupWeightedPrefix n * pickupMertensPrefix n *
        exponentialLogDrop (3 / 2) n +
      2 * pickupMertensPrefix n ^ 2 * exponentialLogDrop 2 n :=
  criticalIntervalBlock_closedForm n

example (n : ℕ) :
    criticalIntervalBlock n ≤ criticalIntervalMajorant n :=
  criticalIntervalBlock_le_majorant n

example (h : CriticalIntervalMajorantSummable) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_majorantSummable h

example {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalMajorant n ≤ criticalPrefixPowerMajorant n :=
  criticalIntervalMajorant_le_prefixPowerMajorant hn

example (h : CriticalPrefixPowerSummable) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_prefixPowerSummable h

example {n : ℕ} (hn : 1 ≤ n) :
    criticalPrefixPowerMajorant n ≤ criticalPrefixSquareMajorant n :=
  criticalPrefixPowerMajorant_le_squareMajorant hn

example (hA : CriticalWeightedPrefixSquareSummable)
    (hM : CriticalMertensPrefixSquareSummable) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_prefixSquareComponents hA hM

example {CA CM α β : ℝ}
    (hα : α < 1 / 2)
    (hβ : β < 1)
    (hA : ∀ n : ℕ, 1 ≤ n →
      |pickupWeightedPrefix n| ≤ CA * (n : ℝ) ^ α)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ CM * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_prefixPowerBounds hα hβ hA hM

example {C β : ℝ}
    (hC : 0 ≤ C) (hβlower : 1 / 2 < β) (hβupper : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensPowerSaving hC hβlower hβupper hM

example {C β : ℝ}
    (hC : 0 ≤ C) (hβnonneg : 0 ≤ β) (hβupper : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_nonnegative_mertensPowerSaving hC hβnonneg hβupper hM

example :
    CriticalBoundaryVerticalLineUniform ↔ CriticalIntervalBlockUniform :=
  criticalBoundary_iff_intervalBlockUniform

example (h : CriticalReciprocalVerticalLineUniform) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_criticalReciprocal h

elab "#audit_critical_interval_blocks" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical-interval-block source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_INTERVAL_BLOCK_COUNT::{declarations.length}"

#audit_critical_interval_blocks
