/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.RealFunctions.FramedPredicateTransport
import Mathlib.Topology.MetricSpace.Cauchy
import Mathlib.Tactic.NormNum
import Lean.Elab.Tactic.Omega

/-!
# Infinite observation control from certified vanishing tails

One-step bounds imply a finite telescoping bound for the actual readout, not
merely for its proposed budget. A tail function dominating every future sum of
allowances and tending to zero therefore makes the readout Cauchy, using
Mathlib's metric Cauchy criterion. The same theorem applies to a chain of the
existing framed ports when every actual traversal remains in its declared
domain. The common observer index is retained throughout the chain.

Primary argument: induction and the triangle inequality give the interval bound;
Mathlib's `cauchySeq_of_le_tendsto_0'` supplies the quantified infinite conclusion.
A uniform one-step bound alone is insufficient: the natural-number readout has
increments exactly one and is not Cauchy. Vanishing-tail evidence is a material
premise, not an inferred consequence of inspecting many finite prefixes.

Consumer: controlling accumulated observer error in infinite mathematical
compositions. This is pointwise in the selected observer. No uniform control
over an arbitrary observer family, executable infinite iteration, remote
termination, or proof of the supplied tail estimate is asserted. Summability
may establish such an estimate, but that additional bridge is not assumed here.
Mathlib Cauchy source inspected at d13f23b723b8a846827a245b89c10fc7d3f11612;
framed-port source inspected at 567008acec20530ce7776dbb0af5f8f88cea0487.
AI-assisted formalization. Novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.ObservationVariation

open Filter
open scoped Topology

/-- Finite accumulated allowance; no infinite sum is smuggled into this definition. -/
def accumulated (budget : Nat → ℝ) : Nat → ℝ
  | 0 => 0
  | n + 1 => accumulated budget n + budget n

/-- Exact interval accounting controls the actual difference of endpoint observations. -/
theorem finite_variation (readout budget : Nat → ℝ)
    (stepBound : ∀ n, |readout (n + 1) - readout n| ≤ budget n)
    (start length : Nat) :
    |readout (start + length) - readout start| ≤
      accumulated budget (start + length) - accumulated budget start := by
  induction length with
  | zero => simp
  | succ length ih =>
    have index : start + (length + 1) = (start + length) + 1 := by omega
    rw [index]
    calc
      |readout ((start + length) + 1) - readout start| =
          |(readout ((start + length) + 1) - readout (start + length)) +
            (readout (start + length) - readout start)| := by
              congr 1
              ring
      _ ≤ |readout ((start + length) + 1) - readout (start + length)| +
          |readout (start + length) - readout start| := abs_add_le _ _
      _ ≤ budget (start + length) +
          (accumulated budget (start + length) - accumulated budget start) :=
            add_le_add (stepBound (start + length)) ih
      _ = accumulated budget ((start + length) + 1) - accumulated budget start := by
        simp only [accumulated]
        ring

/-- No reverse-time or synchronized-clock assumption is used. -/
theorem interval_variation (readout budget : Nat → ℝ)
    (stepBound : ∀ n, |readout (n + 1) - readout n| ≤ budget n)
    (first last : Nat) (ordered : first ≤ last) :
    |readout last - readout first| ≤
      accumulated budget last - accumulated budget first := by
  have index : first + (last - first) = last := by omega
  simpa only [index] using finite_variation readout budget stepBound first (last - first)

/-- An actual vanishing tail certificate controls every finite future interval. -/
theorem cauchy_of_vanishing_tail (readout budget tail : Nat → ℝ)
    (stepBound : ∀ n, |readout (n + 1) - readout n| ≤ budget n)
    (tailBound : ∀ n m, n ≤ m →
      accumulated budget m - accumulated budget n ≤ tail n)
    (vanishes : Tendsto tail atTop (𝓝 0)) : CauchySeq readout := by
  apply cauchySeq_of_le_tendsto_0' tail ?_ vanishes
  intro n m ordered
  rw [Real.dist_eq, abs_sub_comm]
  exact (interval_variation readout budget stepBound n m ordered).trans
    (tailBound n m ordered)

open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v

/-- The dependent source and target of each port retain exact intermediate frames. -/
theorem framed_readout_cauchy {Observer : Type v}
    (frame : Nat → FiberEndpoint.{u, v} Observer)
    (port : ∀ n, FramedPort (frame n) (frame (n + 1)))
    (point : ∀ n, (frame n).Carrier)
    (admitted : ∀ n, point n ∈ (port n).domain)
    (follows : ∀ n, point (n + 1) = (port n).map (point n))
    (observer : Observer) (tail : Nat → ℝ)
    (tailBound : ∀ n m, n ≤ m →
      accumulated (fun k => (port k).errorBudget observer) m -
        accumulated (fun k => (port k).errorBudget observer) n ≤ tail n)
    (vanishes : Tendsto tail atTop (𝓝 0)) :
    CauchySeq (fun n => (frame n).observe observer (point n)) := by
  apply cauchy_of_vanishing_tail
    (fun n => (frame n).observe observer (point n))
    (fun n => (port n).errorBudget observer) tail ?_ tailBound vanishes
  intro n
  rw [follows n]
  exact (port n).defect_bound (point n) (admitted n) observer

/-- Bounded individual errors do not imply a vanishing accumulated tail. -/
theorem bounded_steps_need_not_be_cauchy :
    (∀ n : Nat, |((n + 1 : Nat) : ℝ) - (n : ℝ)| ≤ 1) ∧
      ¬ CauchySeq (fun n : Nat => (n : ℝ)) := by
  constructor
  · intro n
    norm_num
  · intro cauchy
    obtain ⟨N, beyond⟩ := Metric.cauchySeq_iff.mp cauchy 1 zero_lt_one
    have impossible := beyond (N + 2) (by omega) N (Nat.le_refl N)
    rw [Real.dist_eq] at impossible
    norm_num at impossible

end GRWTSK.Analysis.ObservationVariation
