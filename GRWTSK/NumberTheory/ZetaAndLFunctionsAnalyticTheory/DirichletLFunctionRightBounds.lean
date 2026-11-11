/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Uniform right-half-plane estimates for continued Dirichlet L-functions

MSC2020: 11M41, 11M06, 40A05.

For coefficients of norm at most one and Re(s) >= 2, the n=2 term costs at
most 1/4 and the complete n>=3 tail costs at most 1/2. The latter estimate is
proved by finite telescoping and passage to a summable infinite series.
Consequently norm(L(chi,s)-1) <= 3/4 for EVERY character of positive level,
without primitivity, conductor bounds or a zero-free hypothesis. The actual
continued LFunction is identified with the series only in this convergence
half-plane. The explicit conductor-one specialization is retained.

Consumers: the character-independent Jensen centre bound and the right-hand
outer-circle estimate in DirichletZeroJensenGrowthBounds.lean. This file does
not import the earlier source candidates or assume their analytic conclusions.
It supplies no growth estimate to the left of Re(s)=2 and no Weil positivity.

Primary API adaptation: Anderson/Stoll LSeries terms, Loeffler/Stoll continuation,
and the Mathlib infinite-sum comparison API. Individual exact-source records
and the complete analytical argument: DirichletLFunctionRightBounds.provenance/.
Coordination: grwtsk/math#1801. SOURCE_PROOF_CANDIDATE; elaboration, kernel replay,
transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section

open Finset

namespace GRWTSK.NumberTheory.DirichletRightBounds

/-- The elementary positive telescoping majorant, with both denominators nonzero. -/
theorem inv_succ_sq_le_sub (x : ℝ) (hx : 0 < x) :
    1 / (x + 1) ^ 2 ≤ 1 / x - 1 / (x + 1) := by
  have hx1 : 0 < x + 1 := by linarith
  calc
    1 / (x + 1) ^ 2 ≤ 1 / (x * (x + 1)) :=
      one_div_le_one_div_of_le (mul_pos hx hx1) (by nlinarith)
    _ = 1 / x - 1 / (x + 1) := by
      field_simp [ne_of_gt hx, ne_of_gt hx1] <;> ring

/-- A finite tail estimate with its terminal correction, not a numerical sample. -/
theorem sum_inv_sq_add_three_le (m : ℕ) :
    (∑ n ∈ range m, 1 / ((n : ℝ) + 3) ^ 2) ≤ 1 / 2 - 1 / ((m : ℝ) + 2) := by
  induction m with
  | zero => norm_num
  | succ m ih =>
      rw [sum_range_succ]
      have h := inv_succ_sq_le_sub ((m : ℝ) + 2) (by positivity)
      have h' : 1 / ((m : ℝ) + 3) ^ 2 ≤
          1 / ((m : ℝ) + 2) - 1 / ((m : ℝ) + 3) := by
        simpa only [show (m : ℝ) + 2 + 1 = (m : ℝ) + 3 by ring] using h
      simp only [Nat.cast_succ, add_assoc, show (1 : ℝ) + 2 = 3 by norm_num]
      linarith

/-- The majorant is genuinely summable; no default value for a divergent tsum is used. -/
theorem summable_inv_sq_add_three :
    Summable (fun n : ℕ => 1 / ((n : ℝ) + 3) ^ 2) := by
  apply summable_of_sum_range_le (c := (1 / 2 : ℝ)) (fun _ => by positivity)
  intro m
  exact (sum_inv_sq_add_three_le m).trans (sub_le_self _ (by positivity))

/-- The complete infinite n>=3 majorant costs at most one half. -/
theorem tsum_inv_sq_add_three_le_half :
    (∑' n : ℕ, 1 / ((n : ℝ) + 3) ^ 2) ≤ 1 / 2 := by
  apply summable_inv_sq_add_three.tsum_le_of_sum_range_le
  intro m
  exact (sum_inv_sq_add_three_le m).trans (sub_le_self _ (by positivity))

/-- Coefficient domination and monotonicity in Re(s) give an inverse-square bound. -/
theorem norm_term_le_inv_sq {f : ℕ → ℂ}
    (hf : ∀ n : ℕ, n ≠ 0 → ‖f n‖ ≤ 1) {s : ℂ} (hs : 2 ≤ s.re)
    {n : ℕ} (hn : n ≠ 0) :
    ‖LSeries.term f s n‖ ≤ 1 / (n : ℝ) ^ 2 := by
  calc
    ‖LSeries.term f s n‖ ≤ ‖LSeries.term f (2 : ℂ) n‖ :=
      LSeries.norm_term_le_of_re_le_re f (by simpa using hs) n
    _ = ‖f n‖ / (n : ℝ) ^ 2 := by
      norm_num [LSeries.norm_term_eq, hn, Real.rpow_two]
    _ ≤ 1 / (n : ℝ) ^ 2 :=
      div_le_div_of_nonneg_right (hf n hn) (sq_nonneg _)

/-- A quantitative tail bound for arbitrary bounded coefficients, before any
Dirichlet-character specialization. The first coefficient need not equal one. -/
theorem norm_LSeries_sub_first_le {f : ℕ → ℂ}
    (hf : ∀ n : ℕ, n ≠ 0 → ‖f n‖ ≤ 1) {s : ℂ} (hs : 2 ≤ s.re) :
    ‖LSeries f s - f 1‖ ≤ 3 / 4 := by
  have hconv : Summable (LSeries.term f s) :=
    LSeriesSummable_of_bounded_of_one_lt_re (m := 1) hf (by linarith)
  have htail : ∀ n : ℕ, ‖LSeries.term f s (n + 3)‖ ≤
      1 / ((n : ℝ) + 3) ^ 2 := by
    intro n
    simpa only [Nat.cast_add, Nat.cast_ofNat] using
      norm_term_le_inv_sq hf hs (by positivity : n + 3 ≠ 0)
  have htailSummable : Summable (fun n : ℕ => LSeries.term f s (n + 3)) :=
    summable_inv_sq_add_three.of_norm_bounded htail
  have htailBound : ‖∑' n : ℕ, LSeries.term f s (n + 3)‖ ≤ 1 / 2 :=
    (htailSummable.hasSum.norm_le_of_bounded summable_inv_sq_add_three.hasSum htail).trans
      tsum_inv_sq_add_three_le_half
  have htwo : ‖LSeries.term f s 2‖ ≤ 1 / 4 := by
    convert norm_term_le_inv_sq hf hs (by decide : (2 : ℕ) ≠ 0) using 1 <;> norm_num
  have hsplit : f 1 + LSeries.term f s 2 +
      (∑' n : ℕ, LSeries.term f s (n + 3)) = LSeries f s := by
    simpa [sum_range_succ, LSeries.term, LSeries] using hconv.sum_add_tsum_nat_add 3
  have hreturn : LSeries f s - f 1 = LSeries.term f s 2 +
      (∑' n : ℕ, LSeries.term f s (n + 3)) := by
    rw [← hsplit]
    ring
  rw [hreturn]
  exact (norm_add_le _ _).trans (by linarith)

variable {N : ℕ} [NeZero N]

/-- Uniform in every positive level and every character. Continuation is used
literally, with the series comparison restricted to its absolute-convergence domain. -/
theorem norm_LFunction_sub_one_le (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    ‖DirichletCharacter.LFunction chi s - 1‖ ≤ 3 / 4 := by
  rw [chi.LFunction_eq_LSeries (by linarith : 1 < s.re)]
  simpa using norm_LSeries_sub_first_le (f := fun n : ℕ => chi n)
    (fun n _ => chi.norm_le_one n) hs

/-- The same source estimate supplies both a positive lower bound and an upper bound. -/
theorem norm_LFunction_bounds (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    1 / 4 ≤ ‖DirichletCharacter.LFunction chi s‖ ∧
      ‖DirichletCharacter.LFunction chi s‖ ≤ 7 / 4 := by
  have h := norm_LFunction_sub_one_le chi hs
  have hl := norm_sub_le (DirichletCharacter.LFunction chi s)
    (DirichletCharacter.LFunction chi s - 1)
  rw [show DirichletCharacter.LFunction chi s -
      (DirichletCharacter.LFunction chi s - 1) = (1 : ℂ) by ring, norm_one] at hl
  have hu := norm_add_le (DirichletCharacter.LFunction chi s - 1) (1 : ℂ)
  rw [sub_add_cancel, norm_one] at hu
  constructor <;> linarith

/-- The logarithm is bounded using a proved positive source norm, never log zero. -/
theorem abs_log_norm_LFunction_le (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    |Real.log ‖DirichletCharacter.LFunction chi s‖| ≤ Real.log 4 := by
  obtain ⟨hl, hu⟩ := norm_LFunction_bounds chi hs
  apply abs_le.mpr
  constructor
  · calc
      -Real.log 4 = Real.log ((4 : ℝ)⁻¹) := (Real.log_inv _).symm
      _ ≤ Real.log ‖DirichletCharacter.LFunction chi s‖ :=
        Real.log_le_log (by norm_num) (by simpa only [one_div] using hl)
  · exact Real.log_le_log (by linarith) (by linarith)

/-- Explicit conductor-one source return; this is the actual continued Riemann zeta. -/
theorem norm_riemannZeta_bounds {s : ℂ} (hs : 2 ≤ s.re) :
    ‖riemannZeta s - 1‖ ≤ 3 / 4 ∧
      1 / 4 ≤ ‖riemannZeta s‖ ∧ ‖riemannZeta s‖ ≤ 7 / 4 := by
  simpa only [DirichletCharacter.LFunction_modOne_eq] using
    And.intro (norm_LFunction_sub_one_le (1 : DirichletCharacter ℂ 1) hs)
      (norm_LFunction_bounds (1 : DirichletCharacter ℂ 1) hs)

end GRWTSK.NumberTheory.DirichletRightBounds
