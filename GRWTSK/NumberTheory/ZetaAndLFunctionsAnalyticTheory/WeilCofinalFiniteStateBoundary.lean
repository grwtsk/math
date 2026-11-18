/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficSingletonPrefixCapacity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddCofinalCoverage

/-!
# Finite-state boundaries for the literal cofinal Weil stages

The exact-prefix lasso theorem and cofinal certificate return concern
opposite scopes: a natural-valued eventually periodic read trace is bounded,
whereas `OddCofinalCoverage.Covers` requires unbounded stage indices. Thus a
fixed finite-state stage readout cannot establish this coverage.

A finite cyclic control rule together with an UNBOUNDED lap counter does
produce a cofinal arithmetic progression. We reuse the original stage
restriction theorem to return genuine bounds on that progression to all
literal stages. The required lower signs are not produced by the schedule.

This file does not import the isolated zeta root criterion. Its consumer is
`WeilCertificateRootReturn`, in that criterion's own pinned environment.
See the companion mathematical disposition and issue #1837.

Source candidate. Elaboration, expected-type checks, fresh kernel replay,
transitive axiom audit, and independent review of this file: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CofinalFiniteStateBoundary

open OddCofinalCoverage OddLiteralCofinal
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics
open ExactSoficLanguageCover SoficSingletonPrefixCapacity

/-- Equal complete tails bound a natural-valued trace by its first j values. -/
theorem bounded_of_equal_tails {x : ℕ → ℕ} {i j : ℕ}
    (hij : i < j) (htail : ∀ k, x (i + k) = x (j + k)) :
    ∃ B : ℕ, ∀ n : ℕ, x n ≤ B := by
  classical
  let B : ℕ := (Finset.range j).sup x
  refine ⟨B, ?_⟩
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
    by_cases hn : n < j
    · exact Finset.le_sup (Finset.mem_range.mpr hn)
    · have hsmall : i + (n - j) < n := by omega
      have hnj : j + (n - j) = n := by omega
      calc
        x n = x (i + (n - j)) := by
          simpa only [hnj] using (htail (n - j)).symm
        _ ≤ B := ih _ hsmall

/-- A finite upper bound contradicts the exact existing cofinality predicate. -/
theorem not_covers_of_bounded {index : ℕ → ℕ} (B : ℕ)
    (hbound : ∀ n, index n ≤ B) : ¬ Covers index := by
  intro hcover
  obtain ⟨n, hn⟩ := hcover (B + 1)
  have hb := hbound n
  omega

/-- No fixed natural-valued readout on a finite state set is cofinal.
    The visit sequence need not be deterministic or periodic. -/
theorem not_covers_finite_readout {V : Type*} [Fintype V]
    (readout : V → ℕ) (visit : ℕ → V) :
    ¬ Covers (fun n => readout (visit n)) := by
  classical
  apply not_covers_of_bounded (Finset.univ.sup readout)
  intro n
  exact Finset.le_sup (Finset.mem_univ (visit n))

/-- A finite graph presenting exactly one natural stage trace cannot be
    the cofinal stage supplier. Arbitrary nondeterministic edges are allowed. -/
theorem not_covers_of_finite_exactRoot {V : Type*} [Fintype V]
    {G : LabeledGraph V ℕ} {root : V} {index : ℕ → ℕ}
    (hExact : ExactRoot G root index) : ¬ Covers index := by
  obtain ⟨i, j, hij, _, htail⟩ := equal_tails_of_exactRoot hExact
  obtain ⟨B, hB⟩ := bounded_of_equal_tails hij htail
  exact not_covers_of_bounded B hB

/-- A finite cyclic control rule may instead be paired with an unbounded
    natural lap counter. Each fixed positive stride is cofinal. -/
theorem covers_arithmetic_laps (start p : ℕ) (hp : 0 < p) :
    Covers (fun n => start + p * n) := by
  intro j
  refine ⟨j, ?_⟩
  have hmul : 1 * j ≤ p * j := Nat.mul_le_mul_right j hp
  omega

/-- Cyclic phase and an unbounded quotient recover the original index.
    This is not a fixed-width tag for all natural indices. -/
theorem phase_lap_reconstruct (p n : ℕ) :
    n % p + p * (n / p) = n := Nat.mod_add_div n p

/-- The EXISTING literal-stage consumer accepts genuine source bounds on
    the cofinal arithmetic progression. No sign follows merely from coverage. -/
theorem all_stageLower_of_arithmetic_laps (start p : ℕ) (hp : 0 < p)
    (hsign : ∀ n, StageLower (start + p * n)) : ∀ j, StageLower j :=
  all_stages_of_cofinal (fun n => start + p * n)
    (covers_arithmetic_laps start p hp) hsign

end GRWTSK.NumberTheory.WeilQuadraticForm.CofinalFiniteStateBoundary
