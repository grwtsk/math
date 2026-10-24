# Complete source: GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a90ff5d9f8341c68b1a688e33138b0c2589b7db2` · SHA-256 `33ae36a9f0a4043822f7955a580df07eb108c8762ada22b8971e0eea896ccca5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.BilinearMap
import Mathlib.Tactic.Abel
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# CCC/0.1 signed-work accounting

This module proves a finite telescoping law for an explicitly supplied signed
work ledger. Regular work, cutoff jumps, and representation errors are separate
data. The storage is a separate supplied field and must be nonnegative; its
source-level identification and provenance require a separate theorem. The
one-step dissipative inequality and any cumulative supply bound are hypotheses,
not conclusions about an arithmetic source.

The readout reconstruction at the end of this module distinguishes a positive
Gram form from an independent signed bilinear form and retains both mixed terms.
No uniform arithmetic estimate, controller implementation, or publication
authority is asserted here.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

/-- Successive differences telescope over every finite horizon, including zero.
The initial and terminal indices are retained explicitly. -/
theorem sum_successive_difference (f : ℕ → ℝ) (start horizon : ℕ) :
    (∑ j ∈ Finset.range horizon, (f (start + j + 1) - f (start + j))) =
      f (start + horizon) - f start := by
  induction horizon with
  | zero => simp
  | succ n ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [Nat.add_succ]
      ring

/-- The three signed supplies are independently recorded; none is discarded
because another component or a scalar readout vanishes. -/
structure SignedWorkLedger where
  signedEnergy : ℕ → ℝ
  storage : ℕ → ℝ
  regularWork : ℕ → ℝ
  cutoffJump : ℕ → ℝ
  representationError : ℕ → ℝ
  storage_nonnegative : ∀ n, 0 ≤ storage n
  step_balance : ∀ n,
    signedEnergy (n + 1) + storage (n + 1) ≤
      signedEnergy n + storage n +
        regularWork n + cutoffJump n + representationError n

namespace SignedWorkLedger

/-- The total signed supply at one step, with all three components retained. -/
def totalSupply (L : SignedWorkLedger) (n : ℕ) : ℝ :=
  L.regularWork n + L.cutoffJump n + L.representationError n

/-- Cumulative signed supply from `start` over exactly `horizon` transitions. -/
def cumulativeSupply (L : SignedWorkLedger) (start horizon : ℕ) : ℝ :=
  ∑ j ∈ Finset.range horizon, L.totalSupply (start + j)

/-- The supplied one-step inequality makes this exact balance defect
nonnegative. It does not supply a bound for accumulated arithmetic work. -/
def dissipation (L : SignedWorkLedger) (n : ℕ) : ℝ :=
  L.totalSupply n -
    ((L.signedEnergy (n + 1) + L.storage (n + 1)) -
      (L.signedEnergy n + L.storage n))

theorem dissipation_nonnegative (L : SignedWorkLedger) (n : ℕ) :
    0 ≤ L.dissipation n := by
  have h := L.step_balance n
  dsimp [dissipation, totalSupply]
  linarith

/-- The componentwise ledger is exactly the total supply. No triangle inequality
or positivity assumption is imposed on any of its three components. -/
theorem cumulativeSupply_eq_components (L : SignedWorkLedger) (start horizon : ℕ) :
    L.cumulativeSupply start horizon =
      (∑ j ∈ Finset.range horizon, L.regularWork (start + j)) +
      (∑ j ∈ Finset.range horizon, L.cutoffJump (start + j)) +
      (∑ j ∈ Finset.range horizon, L.representationError (start + j)) := by
  simp [cumulativeSupply, totalSupply, Finset.sum_add_distrib]

/-- Exact finite balance: all accumulated dissipation remains on the left, and
all regular, cutoff, and representation supplies remain on the right. -/
theorem finite_balance (L : SignedWorkLedger) (start horizon : ℕ) :
    L.signedEnergy (start + horizon) + L.storage (start + horizon) +
        (∑ j ∈ Finset.range horizon, L.dissipation (start + j)) =
      L.signedEnergy start + L.storage start + L.cumulativeSupply start horizon := by
  have htel := sum_successive_difference
    (fun n => L.signedEnergy n + L.storage n) start horizon
  simp only [dissipation, Finset.sum_sub_distrib] at *
  dsimp [cumulativeSupply]
  linarith

/-- The exact balance and nonnegative dissipation give a finite-horizon upper
bound for energy plus storage. -/
theorem balance_le_initial_add_supply (L : SignedWorkLedger) (start horizon : ℕ) :
    L.signedEnergy (start + horizon) + L.storage (start + horizon) ≤
      L.signedEnergy start + L.storage start + L.cumulativeSupply start horizon := by
  have hsum : 0 ≤ ∑ j ∈ Finset.range horizon, L.dissipation (start + j) := by
    induction horizon with
    | zero => simp
    | succ n ih =>
        rw [Finset.sum_range_succ]
        exact add_nonneg ih (L.dissipation_nonnegative (start + n))
  have hbalance := L.finite_balance start horizon
  linarith

/-- Nonnegative terminal storage may be dropped from the upper bound. -/
theorem energy_le_initial_add_supply (L : SignedWorkLedger) (start horizon : ℕ) :
    L.signedEnergy (start + horizon) ≤
      L.signedEnergy start + L.storage start + L.cumulativeSupply start horizon := by
  have hstorage := L.storage_nonnegative (start + horizon)
  have hbalance := L.balance_le_initial_add_supply start horizon
  linarith

/-- A universal cumulative supply bound is an explicit mathematical premise.
Its quantifier ranges over every finite horizon, not a sampled set. -/
def CumulativeSupplyBound (L : SignedWorkLedger) (start : ℕ) (budget : ℕ → ℝ) : Prop :=
  ∀ horizon, L.cumulativeSupply start horizon ≤ budget horizon

/-- A bound at one specified horizon suffices only at that horizon. -/
theorem energy_le_of_supply_bound (L : SignedWorkLedger) (start horizon : ℕ)
    (budget : ℝ) (hbudget : L.cumulativeSupply start horizon ≤ budget) :
    L.signedEnergy (start + horizon) ≤ L.signedEnergy start + L.storage start + budget := by
  have h := L.energy_le_initial_add_supply start horizon
  linarith

/-- Every-horizon conclusion requires the every-horizon budget premise. This
consumer does not construct such a budget for the RH source. -/
theorem energy_le_of_cumulativeSupplyBound (L : SignedWorkLedger) (start : ℕ)
    (budget : ℕ → ℝ) (hbudget : L.CumulativeSupplyBound start budget) :
    ∀ horizon, L.signedEnergy (start + horizon) ≤
      L.signedEnergy start + L.storage start + budget horizon := by
  intro horizon
  exact L.energy_le_of_supply_bound start horizon (budget horizon) (hbudget horizon)

end SignedWorkLedger

section Readout

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- Positive source geometry and signed source readout are different data.
No positivity is requested or inferred for `signedForm`. -/
structure ReadoutGeometry (V : Type u) [AddCommGroup V] [Module ℝ V] where
  gram : V →ₗ[ℝ] V →ₗ[ℝ] ℝ
  gram_symmetric : ∀ x y, gram x y = gram y x
  gram_nonnegative : ∀ x, 0 ≤ gram x x
  signedForm : V →ₗ[ℝ] V →ₗ[ℝ] ℝ

/-- Exact bilinear expansion for any supplied retained and residual vectors.
Both mixed terms are retained even when the form is nonsymmetric. -/
theorem bilinear_readout_expansion (B : V →ₗ[ℝ] V →ₗ[ℝ] ℝ)
    (x y retainedX retainedY residualX residualY : V)
    (hx : x = retainedX + residualX) (hy : y = retainedY + residualY) :
    B x y = B retainedX retainedY + B retainedX residualY +
      B residualX retainedY + B residualX residualY := by
  rw [hx, hy]
  simp only [map_add, LinearMap.add_apply]
  ring

/-- Projection alone does not justify deleting residual or mixed readouts.
This identity does not require the supplied linear map to be invertible or
idempotent. -/
theorem bilinear_readout_reconstruction (B : V →ₗ[ℝ] V →ₗ[ℝ] ℝ)
    (project : V →ₗ[ℝ] V) (x y : V) :
    B x y = B (project x) (project y) + B (project x) (y - project y) +
      B (x - project x) (project y) + B (x - project x) (y - project y) := by
  apply bilinear_readout_expansion
  · abel
  · abel

theorem gram_readout_reconstruction (G : ReadoutGeometry V)
    (project : V →ₗ[ℝ] V) (x y : V) :
    G.gram x y = G.gram (project x) (project y) +
      G.gram (project x) (y - project y) +
      G.gram (x - project x) (project y) +
      G.gram (x - project x) (y - project y) :=
  bilinear_readout_reconstruction G.gram project x y

theorem signed_readout_reconstruction (G : ReadoutGeometry V)
    (project : V →ₗ[ℝ] V) (x y : V) :
    G.signedForm x y = G.signedForm (project x) (project y) +
      G.signedForm (project x) (y - project y) +
      G.signedForm (x - project x) (project y) +
      G.signedForm (x - project x) (y - project y) :=
  bilinear_readout_reconstruction G.signedForm project x y

/-- The positivity certificate applies to the Gram residual alone. -/
theorem gram_residual_nonnegative (G : ReadoutGeometry V)
    (project : V →ₗ[ℝ] V) (x : V) :
    0 ≤ G.gram (x - project x) (x - project x) :=
  G.gram_nonnegative (x - project x)

end Readout

end GRWTSK.ProofHorizon.CorkscrewChamberCap
```
