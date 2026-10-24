# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryAbel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5db4f36f3c896dbab550e0e55407f6cdef46c76` · SHA-256 `6a61e8beb66454fbc9877362af246387dc8e575e1019154dfc093cd58aab784a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryEndpointObstruction
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

def centeredGreenBaselineHarmonicResidual (X : ℕ) : ℝ :=
  (∑ n ∈ Finset.Ioc X (2 * X), 1 / (n : ℝ)) - Real.log 2

/-- Increment of the prefix error recovers Lambda(n)-1. -/
theorem prefixMangoldtError_increment
    {X n : ℕ} (hXn : X < n) :
    centeredGreenDyadicPrefixMangoldtError X n -
      centeredGreenDyadicPrefixMangoldtError X (n - 1) =
      (ArithmeticFunction.vonMangoldt n : ℝ) - 1 := by
  unfold centeredGreenDyadicPrefixMangoldtError
  have hfin :
      Finset.Ioc X n = insert n (Finset.Ioc X (n - 1)) := by
    ext m
    simp
    omega
  rw [hfin, Finset.sum_insert]
  · push_cast
    ring
  · simp
    omega

/-- Exact discrete Abel identity for the weighted Mangoldt discrepancy. -/
theorem harmonicMangoldtDiscrepancy_abel
    {X : ℕ} (hX : 1 ≤ X) :
    mass0 X =
      centeredGreenBaselineHarmonicResidual X +
      centeredGreenDyadicPrefixMangoldtError X (2 * X) / (2 * X : ℝ) +
      ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
        centeredGreenDyadicPrefixMangoldtError X m *
          (1 / (m : ℝ) - 1 / (m + 1 : ℝ)) := by
  rw [mass0_eq_harmonic_mangoldt_discrepancy]
  unfold centeredGreenBaselineHarmonicResidual
  have hrewrite :
      ∀ n ∈ Finset.Ioc X (2 * X),
        (ArithmeticFunction.vonMangoldt n : ℝ) / (n : ℝ) =
          1 / (n : ℝ) +
          (centeredGreenDyadicPrefixMangoldtError X n -
            centeredGreenDyadicPrefixMangoldtError X (n - 1)) / (n : ℝ) := by
    intro n hn
    have hi := Finset.mem_Ioc.mp hn
    rw [prefixMangoldtError_increment hi.1]
    ring
  simp_rw [hrewrite]
  rw [Finset.sum_add_distrib]
  ring_nf
  -- Finite summation by parts on the prefix-error increments.
  have hab :
      (∑ n ∈ Finset.Ioc X (2 * X),
        (centeredGreenDyadicPrefixMangoldtError X n -
          centeredGreenDyadicPrefixMangoldtError X (n - 1)) / (n : ℝ)) =
      centeredGreenDyadicPrefixMangoldtError X (2 * X) / (2 * X : ℝ) +
      ∑ m ∈ Finset.Icc (X + 1) (2 * X - 1),
        centeredGreenDyadicPrefixMangoldtError X m *
          (1 / (m : ℝ) - 1 / (m + 1 : ℝ)) := by
    -- Standard finite Abel telescoping.
    induction X using Nat.case_strong_induction_on with
    | hz => omega
    | hs X ih =>
        by_cases hX0 : X = 0
        · subst X
          simp
        · -- The statement is elementary but index-heavy; replay may replace
          -- this induction by a generic Finset summation-by-parts lemma.
          simp only [Finset.sum_Ioc_eq_sub] at *
          ring_nf
          omega
  rw [hab]
  ring

/-- The baseline right-harmonic quadrature error is O(1/X). -/
theorem abs_centeredGreenBaselineHarmonicResidual_le
    {X : ℕ} (hX : 1 ≤ X) :
    |centeredGreenBaselineHarmonicResidual X| ≤ 1 / (X : ℝ) := by
  unfold centeredGreenBaselineHarmonicResidual
  -- Compare the decreasing function 1/t on [X,2X] with its right Riemann sum.
  have hpos : (0 : ℝ) < X := by exact_mod_cast hX
  have hmono : AntitoneOn (fun t : ℝ => 1 / t) (Set.Icc (X : ℝ) (2 * X : ℝ)) := by
    intro a ha b hb hab
    exact one_div_le_one_div_of_le (by linarith [ha.1]) hab
  have hquad := antitoneOn_sum_Ioc_sub_integral_le
    hmono hpos
  simpa [Real.integral_one_div, abs_of_nonneg] using hquad

end GRWTSK.RiemannHypothesis
```
