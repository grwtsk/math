/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.FiniteCubicZetaTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripCores

/-!
# Explicit finite approximations on every critical-strip core

Reuse the actual Euler--Maclaurin approximation and its complete cubic remainder.
For Re(s)>=0, s!=1 and |s|<=R the source error is at most
  R*(R+1)*(R+2)/(96*(N+1)^2).
Choosing N=(n+2)^2*(k+1) bounds the error on BOTH existing n-th cores by
  1/(96*(k+1)^2).
The finite formula, cutoff and complete omitted-tail bound are all supplied;
there is no RH premise, reciprocal of zeta, or sampled-tail assumption.

Primary argument: the triangle inequality bounds shifted factors, then the
existing source-identified cubic remainder supplies the error. Elementary
positive-denominator arithmetic gives a uniform, explicit rate and a cutoff
for each positive tolerance. These are ADDITIVE approximation bounds. They do
not imply the separate strict multiplicative residual inequality near a zero.
The consumer in CoreApproximationCertificates retains that missing inequality.

Public comparison: NIST DLMF 25.2(iii), Euler--Maclaurin representations of zeta,
https://dlmf.nist.gov/25.2. Public zero data were used only to identify difficult
near-zero regions, not as assumptions in these universal estimates.
Source baseline: 7bc6fe38019589284aa5b2d12833c7cae4cecfa4.
Compilation, fresh kernel checking, transitive axiom audit and independent
analytical review: NOT_RUN. No novelty or RH claim.
-/

set_option autoImplicit false
noncomputable section
open Set Metric

namespace GRWTSK.NumberTheory.Conditional.CubicApproximation

open GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
open GRWTSK.RiemannHypothesis.FiniteCubicZetaTail

/-- A complete uniform tail, with the entire radius dependence retained. -/
def radiusBudget (R : ℝ) (N : ℕ) : ℝ :=
  R * (R + 1) * (R + 2) / (96 * cutoff N ^ 2)

theorem radiusBudget_nonneg {R : ℝ} (hR : 0 ≤ R) (N : ℕ) :
    0 ≤ radiusBudget R N := by
  unfold radiusBudget
  positivity

/-- The finite approximation is identified with the actual zeta source before estimation. -/
theorem source_error_on_radius (N : ℕ) (s : ℂ) {R : ℝ}
    (halfPlane : 0 ≤ s.re) (pole : s ≠ 1) (size : ‖s‖ ≤ R) :
    ‖riemannZeta s - approximation N s‖ ≤ radiusBudget R N := by
  have hR : 0 ≤ R := (norm_nonneg _).trans size
  have h1 : ‖s + 1‖ ≤ R + 1 := by
    simpa using (norm_add_le s (1 : ℂ)).trans
      (add_le_add_right size ‖(1 : ℂ)‖)
  have h2 : ‖s + 2‖ ≤ R + 2 := by
    have h := (norm_add_le s (2 : ℂ)).trans
      (add_le_add_right size ‖(2 : ℂ)‖)
    norm_num at h ⊢
    exact h
  rw [zeta_sub_approximation N s (by linarith) pole]
  refine (norm_tail_le N s halfPlane).trans ?_
  unfold radiusBudget
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact mul_le_mul
    (mul_le_mul size h1 (norm_nonneg _) hR)
    h2 (norm_nonneg _) (mul_nonneg hR (by linarith))

/-- Each requested accuracy gets a literal natural-number cutoff, not a chosen inverse. -/
def coreCutoff (n k : ℕ) : ℕ := (n + 2) ^ 2 * (k + 1)

def errorRate (k : ℕ) : ℝ := 1 / (96 * ((k : ℝ) + 1) ^ 2)

theorem errorRate_pos (k : ℕ) : 0 < errorRate k := by
  unfold errorRate
  positivity

theorem cutoff_formula (n k : ℕ) :
    cutoff (coreCutoff n k) = ((n : ℝ) + 2) ^ 2 * ((k : ℝ) + 1) + 1 := by
  simp [cutoff, coreCutoff]

/-- The polynomial radius growth is paid by the explicit cutoff. -/
theorem radiusBudget_at_coreCutoff (n k : ℕ) :
    radiusBudget (n : ℝ) (coreCutoff n k) ≤ errorRate k := by
  let a : ℝ := (n : ℝ) + 2
  let b : ℝ := (k : ℝ) + 1
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
  have ha : 0 ≤ a := by dsimp [a]; linarith
  have ha1 : 1 ≤ a := by dsimp [a]; linarith
  have hb : 0 < b := by dsimp [b]; linarith
  have first : (n : ℝ) * ((n : ℝ) + 1) * ((n : ℝ) + 2) ≤ a ^ 3 := by
    calc
      (n : ℝ) * ((n : ℝ) + 1) * ((n : ℝ) + 2) ≤ a * a * a :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul (by dsimp [a]; linarith)
            (by dsimp [a]; linarith) (by linarith) ha) ha
      _ = a ^ 3 := by ring
  have second : a ^ 3 ≤ a ^ 4 := by
    calc
      a ^ 3 = a ^ 3 * 1 := by ring
      _ ≤ a ^ 3 * a := mul_le_mul_of_nonneg_left ha1 (pow_nonneg ha 3)
      _ = a ^ 4 := by ring
  have numerator := mul_le_mul_of_nonneg_right (first.trans second) (sq_nonneg b)
  have hcut : cutoff (coreCutoff n k) = a ^ 2 * b + 1 := cutoff_formula n k
  have product : 0 ≤ a ^ 2 * b := mul_nonneg (sq_nonneg a) hb.le
  have square : (a ^ 2 * b) ^ 2 ≤ cutoff (coreCutoff n k) ^ 2 := by
    rw [hcut]
    nlinarith
  have identity : a ^ 4 * b ^ 2 = (a ^ 2 * b) ^ 2 := by ring
  rw [identity] at numerator
  have combined := numerator.trans square
  unfold radiusBudget errorRate
  change (n : ℝ) * ((n : ℝ) + 1) * ((n : ℝ) + 2) /
      (96 * cutoff (coreCutoff n k) ^ 2) ≤ 1 / (96 * b ^ 2)
  apply (div_le_div_iff₀ (by have h := cutoff_pos (coreCutoff n k); positivity)
    (by positivity)).mpr
  nlinarith [combined]

/-- Every existing right-strip core receives a source-exact approximation with the same rate. -/
theorem rightCore_error (n k : ℕ) (s : ℂ) (inside : s ∈ rightCore n) :
    ‖riemannZeta s - approximation (coreCutoff n k) s‖ ≤ errorRate k := by
  have strip := rightCore_subset n inside
  have size : ‖s‖ ≤ (n : ℝ) := by
    simpa only [mem_closedBall, dist_zero_right] using inside.1
  exact (source_error_on_radius (coreCutoff n k) s (by linarith [strip.1])
    (strip_ne_one strip.2) size).trans (radiusBudget_at_coreCutoff n k)

/-- The same zeta approximation also covers both components used by Dirichlet reductions. -/
theorem offCore_zeta_error (n k : ℕ) (s : ℂ) (inside : s ∈ offCore n) :
    ‖riemannZeta s - approximation (coreCutoff n k) s‖ ≤ errorRate k := by
  have strip := offCore_subset n inside
  have size : ‖s‖ ≤ (n : ℝ) := by
    simpa only [mem_closedBall, dist_zero_right] using inside.1
  exact (source_error_on_radius (coreCutoff n k) s strip.1.le
    (strip_ne_one strip.2.1) size).trans (radiusBudget_at_coreCutoff n k)

theorem errorRate_le_inverse (k : ℕ) : errorRate k ≤ 1 / ((k : ℝ) + 1) := by
  have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
  unfold errorRate
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  nlinarith [sq_nonneg (k : ℝ)]

/-- Arbitrary positive tolerances are reached, independently of any zero-free claim. -/
theorem exists_errorRate_lt {ε : ℝ} (positive : 0 < ε) :
    ∃ k : ℕ, errorRate k < ε := by
  obtain ⟨k, hk⟩ := exists_nat_gt (1 / ε)
  have product : 1 < (k : ℝ) * ε := (div_lt_iff₀ positive).mp hk
  refine ⟨k, (errorRate_le_inverse k).trans_lt ?_⟩
  apply (div_lt_iff₀ (by positivity : (0 : ℝ) < (k : ℝ) + 1)).mpr
  nlinarith

/-- This quantified family supplies approximation, not the separate strict residual gap. -/
theorem every_rightCore_has_uniform_approximation (n : ℕ) {ε : ℝ}
    (positive : 0 < ε) :
    ∃ N : ℕ, ∀ s ∈ rightCore n, ‖riemannZeta s - approximation N s‖ < ε := by
  obtain ⟨k, hk⟩ := exists_errorRate_lt positive
  exact ⟨coreCutoff n k, fun s hs => (rightCore_error n k s hs).trans_lt hk⟩

/-- Explicit finite arithmetic fixture, not an enclosure imported from floating-point data. -/
theorem first_nonempty_core_budget :
    coreCutoff 3 0 = 25 ∧ errorRate 0 = (1 / 96 : ℝ) := by
  norm_num [coreCutoff, errorRate]

end GRWTSK.NumberTheory.Conditional.CubicApproximation
