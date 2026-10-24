/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical comparison (not an imported Lean dependency):
Levent Alpöge and Ralph Furman,
"More than two thirds of the zeta zeros are simple and on the critical line"
(2026), arXiv:2608.13637, Section 3, rank–trace inequality.
The paper's formalization is authored by Claude (Anthropic);
the upstream proof source and Apache-2.0 attribution are retained at
anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011,
zeta23/Zeta23/LinAlg/RankTrace.lean (lemma rank_trace_ineq_two).
This is a distinct finite diagonal consequence proved in GRWTSK,
NOT an import of Zeta23 and NOT a claim about zeta zeros.
-/
import GRWTSK.Algebra.LinearAlgebra.SignedWeilComparisonGate
import Mathlib.Tactic

/-!
# Two-thirds rank–trace geometry: a finite diagonal bridge

In the Alpöge–Furman argument the Hermitian rank–trace inequality reads

  2 tr(P) + 4 tr(Q) - 4 b - ‖P+Q‖_F² ≤ r

for positive-semidefinite P with rank P ≤ r and a Hermitian Q with
positive index ≤ b.  The upstream proof handles noncommuting matrices
with positive/negative spectral parts and von Neumann's inequality.

Here we prove the exact *simultaneously diagonal* real-coordinate
specialization directly, retaining the crucial positive-index penalty.
An additional theorem connects the diagonal signed trace to GRWTSK's
existing `SignedOrientationBridge.signedEnergy`, rather than confusing
positive Hodge energy with a signed Weil consumer.

This proves no general matrix diagonalization, Sylvester inertia
transport, cohomological Weil explicit formula, zero-count identity,
analytic pair correlation, or density bound.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.TwoThirdsDiagonalRankTrace

open scoped BigOperators

variable {ι : Type*} [Fintype ι]

/-- One scalar step of the `c = 2` rank–trace estimate.
The two charges count nonzero P-coordinates and strictly positive
Q-coordinates respectively; no positivity is imposed on Q itself. -/
private theorem scalar_rank_trace_two (u v : ℝ) (hu : 0 ≤ u) :
    2 * u + 4 * v -
        (if u = 0 then (0 : ℝ) else 1) -
        (if 0 < v then (4 : ℝ) else 0) ≤ (u + v) ^ 2 := by
  by_cases hzero : u = 0
  · subst u
    by_cases hv : 0 < v
    · simp [hv]
      nlinarith [sq_nonneg (v - 2)]
    · have hvle : v ≤ 0 := le_of_not_gt hv
      simp [hv]
      nlinarith [sq_nonneg v]
  · by_cases hv : 0 < v
    · simp [hzero, hv]
      nlinarith [sq_nonneg (u - 1), sq_nonneg (v - 2),
        mul_nonneg hu hv.le]
    · have hvle : v ≤ 0 := le_of_not_gt hv
      simp [hzero, hv]
      nlinarith [sq_nonneg (u + v - 1)]

/-- Diagonal specialization of `RHLinalg.rank_trace_ineq_two` from
the published two-thirds argument.

`u` is the nonnegative spectrum of P, `v` the signed spectrum of Q.
The hypotheses `hr`, `hb` are exact finite support/positive-index
bounds.  No positivity of `v` or form identification is smuggled in.

The source's general Hermitian theorem is strictly stronger: arbitrary
P and Q need not be simultaneously diagonalizable. -/
theorem diagonal_rank_trace_two
    (u v : ι → ℝ) (hu : ∀ i, 0 ≤ u i)
    {r b : ℕ}
    (hr : (Finset.univ.filter (fun i => u i ≠ 0)).card ≤ r)
    (hb : (Finset.univ.filter (fun i => 0 < v i)).card ≤ b) :
    2 * (∑ i, u i) + 4 * (∑ i, v i) - 4 * (b : ℝ) -
      (∑ i, (u i + v i) ^ 2) ≤ (r : ℝ) := by
  classical
  let S : Finset ι := Finset.univ.filter (fun i => u i ≠ 0)
  let B : Finset ι := Finset.univ.filter (fun i => 0 < v i)
  have hpoint :
      ∀ i ∈ (Finset.univ : Finset ι),
        (2 * u i + 4 * v i -
          (if i ∈ S then (1 : ℝ) else 0) -
          (if i ∈ B then (4 : ℝ) else 0)) ≤
          (u i + v i) ^ 2 := by
    intro i _
    have h := scalar_rank_trace_two (u i) (v i) (hu i)
    by_cases hz : u i = 0 <;> by_cases hv : 0 < v i <;>
      simpa [S, B, hz, hv] using h
  have hsum := Finset.sum_le_sum hpoint
  have hSsum :
      (∑ i : ι, if i ∈ S then (1 : ℝ) else 0) =
        (S.card : ℝ) := by
    simp only [Finset.sum_ite_mem, Finset.univ_inter,
      Finset.sum_const, nsmul_eq_mul, mul_one]
  have hBsum :
      (∑ i : ι, if i ∈ B then (4 : ℝ) else 0) =
        4 * (B.card : ℝ) := by
    simp only [Finset.sum_ite_mem, Finset.univ_inter,
      Finset.sum_const, nsmul_eq_mul]
    ring
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib,
    ← Finset.mul_sum, hSsum, hBsum] at hsum
  have hrCard : (S.card : ℝ) ≤ (r : ℝ) := by
    exact_mod_cast (show S.card ≤ r by simpa [S] using hr)
  have hbCard : (B.card : ℝ) ≤ (b : ℝ) := by
    exact_mod_cast (show B.card ≤ b by simpa [B] using hb)
  linarith

/-- The diagonal signed spectral value in the exact GRWTSK orientation
convention: plus on `mask = true`, minus on the complement. -/
def signedSectorValue (mask : ι → Bool) (x : ι → ℝ) (i : ι) : ℝ :=
  if mask i = true then (x i) ^ 2 else -(x i) ^ 2

/-- Exact comparison to the pre-existing signed Hodge/Weil orientation.

This is an actual use of the GRWTSK fundamental symmetry, not an
independent object carrying a conveniently renamed sign. -/
theorem sum_signedSectorValue_eq_signedEnergy
    (mask : ι → Bool) (x : ι → ℝ) :
    (∑ i, signedSectorValue mask x i) =
      GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.signedEnergy mask x := by
  change (∑ i, signedSectorValue mask x i) =
    ∑ i, GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.fundamentalSymmetry mask x i * x i
  apply Finset.sum_congr rfl
  intro i _
  rw [GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.fundamentalSymmetry_apply]
  cases h : mask i <;> simp [signedSectorValue, h] <;> ring

/-- Strongest local interface with the existing signed-orientation stack.
The signed trace is its genuine `signedEnergy`; the positive-index
charge b is still necessary. The statement is finite and diagonal,
with no claim that its coordinates are actual zeta-zero vectors. -/
theorem signedHodge_diagonal_rank_trace_two
    (u x : ι → ℝ) (mask : ι → Bool)
    (hu : ∀ i, 0 ≤ u i)
    {r b : ℕ}
    (hr : (Finset.univ.filter (fun i => u i ≠ 0)).card ≤ r)
    (hb : (Finset.univ.filter
      (fun i => 0 < signedSectorValue mask x i)).card ≤ b) :
    2 * (∑ i, u i) +
      4 * GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.signedEnergy mask x -
      4 * (b : ℝ) -
      (∑ i, (u i + signedSectorValue mask x i) ^ 2) ≤ (r : ℝ) := by
  have h := diagonal_rank_trace_two u (signedSectorValue mask x) hu hr hb
  rw [sum_signedSectorValue_eq_signedEnergy] at h
  exact h

/-- An independently fixed negative signed direction cannot be erased by
calling the positive metric a signed Weil form. This reuses the exact
negative-sector witness already in GRWTSK. -/
theorem positive_energy_does_not_force_unsigned_rank_trace_input :
    ¬ (∀ y : Fin 2 → ℝ,
        0 ≤ GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.positiveEnergy y →
        0 ≤ GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.signedEnergy
          GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge.twoSectorMask y) :=
  GRWTSK.Algebra.LinearAlgebra.SignedWeilComparisonGate.signed_not_positive_from_positive_metric

end GRWTSK.Algebra.LinearAlgebra.TwoThirdsDiagonalRankTrace
