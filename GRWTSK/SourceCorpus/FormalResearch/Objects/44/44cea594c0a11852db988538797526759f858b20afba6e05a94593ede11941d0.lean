import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Elementary right-line bound for the actual Mangoldt coefficients

The comparison retains every prime power and the zero coefficients at zero
and one. It supplies a right-line absolute convergence bound, not an estimate
for the signed source readout or a Riemann Hypothesis witness.

Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound

open Set MeasureTheory

/-- Actual Mangoldt Dirichlet coefficient, including its original zero and one semantics. -/
def mangoldtDirichletTerm (c : ℝ) (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ c

/-- Elementary continuous majorant on the positive real half-line. -/
def cellMajorant (c x : ℝ) : ℝ :=
  (Real.log 2 + Real.log x) * x ^ (-c)

/-- The explicit elementary budget is used only within its proved domain c>1. -/
def dirichletBudget (c : ℝ) : ℝ :=
  1 / (c - 1) ^ 2 + Real.log 2 / (c - 1)

@[simp] theorem mangoldtDirichletTerm_zero (c : ℝ) :
    mangoldtDirichletTerm c 0 = 0 := by simp [mangoldtDirichletTerm]

@[simp] theorem mangoldtDirichletTerm_one (c : ℝ) :
    mangoldtDirichletTerm c 1 = 0 := by simp [mangoldtDirichletTerm]

/-- Nonnegativity uses the actual arithmetic coefficient, not a substitute prime measure. -/
theorem mangoldtDirichletTerm_nonneg (c : ℝ) (n : ℕ) :
    0 ≤ mangoldtDirichletTerm c n := by
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg
    (Real.rpow_nonneg (Nat.cast_nonneg n) c)

/-- Literal coefficient-to-cell comparison; the whole closed cell is covered. -/
theorem mangoldtDirichletTerm_le_cellMajorant
    {c : ℝ} (hc : 1 < c) {n : ℕ} (hn : 2 ≤ n)
    {x : ℝ} (hx : x ∈ Icc ((n : ℝ) - 1) (n : ℝ)) :
    mangoldtDirichletTerm c n ≤ cellMajorant c x := by
  have hn2 : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have hx1 : 1 ≤ x := by linarith [hx.1]
  have hx0 : 0 < x := by linarith
  have hn0 : 0 < (n : ℝ) := by linarith
  have hlog : Real.log (n : ℝ) ≤ Real.log 2 + Real.log x := by
    calc
      Real.log (n : ℝ) ≤ Real.log (2 * x) :=
        Real.log_le_log hn0 (by linarith [hx.1])
      _ = Real.log 2 + Real.log x := Real.log_mul (by norm_num) hx0.ne'
  have hcoef : ArithmeticFunction.vonMangoldt n ≤ Real.log 2 + Real.log x :=
    ArithmeticFunction.vonMangoldt_le_log.trans hlog
  have hpow : (n : ℝ) ^ (-c) ≤ x ^ (-c) :=
    Real.rpow_le_rpow_of_nonpos hx0 hx.2 (by linarith)
  have hbase : 0 ≤ Real.log 2 + Real.log x :=
    add_nonneg (Real.log_nonneg (by norm_num)) (Real.log_nonneg hx1)
  rw [mangoldtDirichletTerm, div_eq_mul_inv, ← Real.rpow_neg (Nat.cast_nonneg n)]
  exact mul_le_mul hcoef hpow (Real.rpow_nonneg (Nat.cast_nonneg n) _ ) hbase

/-- The majorant is nonnegative on the comparison half-line used here. -/
theorem cellMajorant_nonneg {c x : ℝ} (hx : 1 ≤ x) :
    0 ≤ cellMajorant c x := by
  exact mul_nonneg (add_nonneg (Real.log_nonneg (by norm_num)) (Real.log_nonneg hx))
    (Real.rpow_nonneg (by linarith) _)

/-- Explicit primitive retaining both the logarithmic and constant terms. -/
def majorantPrimitive (c x : ℝ) : ℝ :=
  -(Real.log 2 + Real.log x + 1 / (c - 1)) * x ^ (1 - c) / (c - 1)

/-- Differentiation of the primitive is valid at every positive physical coordinate. -/
theorem majorantPrimitive_hasDerivAt
    {c x : ℝ} (hc : 1 < c) (hx : 0 < x) :
    HasDerivAt (majorantPrimitive c) (cellMajorant c x) x := by
  have hc0 : c - 1 ≠ 0 := by linarith
  have hd := ((((Real.hasDerivAt_log hx.ne').const_add (Real.log 2)).add_const
    (1 / (c - 1))).neg.mul
    (Real.hasDerivAt_rpow_const (p := 1 - c) (Or.inl hx.ne'))).div_const (c - 1)
  convert! hd using 1
  rw [show 1 - c - 1 = -c by ring,
    show 1 - c = -c + 1 by ring, Real.rpow_add_one hx.ne']
  dsimp [cellMajorant]
  field_simp
  ring


/-- No integrability conclusion is drawn at the origin. -/
theorem cellMajorant_continuousOn (c : ℝ) :
    ContinuousOn (cellMajorant c) (Ioi 0) := by
  intro x hx
  exact ((continuousAt_const.add (Real.continuousAt_log hx.ne')).mul
    (Real.continuousAt_rpow_const x (-c) (Or.inl hx.ne'))).continuousWithinAt

/-- Every finite positive comparison interval has a genuine Bochner integral. -/
theorem cellMajorant_intervalIntegrable (c : ℝ) {a b : ℝ}
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable (cellMajorant c) volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  exact (cellMajorant_continuousOn c).mono (fun x hx => ha.trans_le hx.1)

/-- The lower endpoint of the primitive identifies the exact constant. -/
theorem majorantPrimitive_one {c : ℝ} (hc : 1 < c) :
    majorantPrimitive c 1 = -dirichletBudget c := by
  have hc0 : c - 1 ≠ 0 := by linarith
  simp only [majorantPrimitive, Real.log_one, add_zero, Real.one_rpow, mul_one,
    dirichletBudget]
  field_simp
  ring

/-- Finite-interval integral with its full nonnegative endpoint remainder. -/
theorem cellMajorant_integral_eq {c b : ℝ} (hc : 1 < c) (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, cellMajorant c x) =
      dirichletBudget c -
        (Real.log 2 + Real.log b + 1 / (c - 1)) * b ^ (1 - c) / (c - 1) := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (f := majorantPrimitive c) ?_
    (cellMajorant_intervalIntegrable c zero_lt_one hb), majorantPrimitive_one hc]
  · simp only [majorantPrimitive]
    ring
  · intro x hx
    rw [uIcc_of_le hb] at hx
    exact majorantPrimitive_hasDerivAt hc (zero_lt_one.trans_le hx.1)

/-- The explicit integral budget is valid over every real upper endpoint at least one. -/
theorem cellMajorant_integral_le {c b : ℝ} (hc : 1 < c) (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, cellMajorant c x) ≤ dirichletBudget c := by
  rw [cellMajorant_integral_eq hc hb]
  apply sub_le_self
  apply div_nonneg
  · exact mul_nonneg
      (add_nonneg (add_nonneg (Real.log_nonneg (by norm_num)) (Real.log_nonneg hb))
        (one_div_nonneg.mpr (by linarith)))
      (Real.rpow_nonneg (by linarith) _)
  · linarith

/-- Each actual natural coefficient is bounded by its full preceding cell integral. -/
theorem mangoldtDirichletTerm_le_cellIntegral {c : ℝ} (hc : 1 < c) (n : ℕ) :
    mangoldtDirichletTerm c (n + 2) ≤
      ∫ x in ((n : ℝ) + 1)..((n : ℝ) + 2), cellMajorant c x := by
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  calc
    mangoldtDirichletTerm c (n + 2) =
      ∫ _x in ((n : ℝ) + 1)..((n : ℝ) + 2), mangoldtDirichletTerm c (n + 2) := by
        simp only [intervalIntegral.integral_const, smul_eq_mul]
        ring
    _ ≤ _ := intervalIntegral.integral_mono_on (by linarith) (by simp)
      (cellMajorant_intervalIntegrable c (by linarith) (by linarith)) (fun x hx => by
        apply mangoldtDirichletTerm_le_cellMajorant hc (by omega)
        constructor
        · simp only [Nat.cast_add, Nat.cast_ofNat]
          linarith [hx.1]
        · simpa only [Nat.cast_add, Nat.cast_ofNat] using hx.2)

/-- All prime powers remain in each finite range; the shifted indices start at two. -/
theorem mangoldtDirichlet_sum_range_le {c : ℝ} (hc : 1 < c) (N : ℕ) :
    (∑ n ∈ Finset.range N, mangoldtDirichletTerm c (n + 2)) ≤ dirichletBudget c := by
  calc
    _ ≤ ∑ n ∈ Finset.range N,
        ∫ x in ((n : ℝ) + 1)..((n : ℝ) + 2), cellMajorant c x :=
      Finset.sum_le_sum (fun n _ => mangoldtDirichletTerm_le_cellIntegral hc n)
    _ = ∫ x in (1 : ℝ)..((N : ℝ) + 1), cellMajorant c x := by
      simpa only [Nat.cast_add, Nat.cast_one, Nat.cast_zero, zero_add, add_assoc,
        show (1 : ℝ) + 1 = 2 by norm_num] using
        intervalIntegral.sum_integral_adjacent_intervals
          (a := fun n : ℕ => (n : ℝ) + 1) (n := N)
          (fun n _ => cellMajorant_intervalIntegrable c
            (by positivity : 0 < (n : ℝ) + 1)
            (by simp only [Nat.cast_add, Nat.cast_one]; linarith))
    _ ≤ _ := cellMajorant_integral_le (b := (N : ℝ) + 1) hc (by
      have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
      linarith)

/-- Absolute convergence is proved from the bounded nonnegative partial sums. -/
theorem mangoldtDirichlet_summable {c : ℝ} (hc : 1 < c) :
    Summable (mangoldtDirichletTerm c) := by
  apply (summable_nat_add_iff 2).mp
  exact summable_of_sum_range_le (fun n => mangoldtDirichletTerm_nonneg c (n + 2))
    (mangoldtDirichlet_sum_range_le hc)

/-- The totalized natural sum equals the literal sum starting at the first possible atom. -/
theorem mangoldtDirichlet_tsum_eq_shift {c : ℝ} (hc : 1 < c) :
    (∑' n : ℕ, mangoldtDirichletTerm c n) =
      ∑' n : ℕ, mangoldtDirichletTerm c (n + 2) := by
  have h := (mangoldtDirichlet_summable hc).sum_add_tsum_nat_add 2
  simpa [Finset.sum_range_succ] using h.symm

/-- Elementary exact right-line bound, with no Riemann Hypothesis assumption. -/
theorem mangoldtDirichlet_tsum_le {c : ℝ} (hc : 1 < c) :
    (∑' n : ℕ, mangoldtDirichletTerm c n) ≤
      1 / (c - 1) ^ 2 + Real.log 2 / (c - 1) := by
  rw [mangoldtDirichlet_tsum_eq_shift hc]
  exact Real.tsum_le_of_sum_range_le
    (fun n => mangoldtDirichletTerm_nonneg c (n + 2)) (mangoldtDirichlet_sum_range_le hc)


/-- Literal arithmetic statement for consumers that do not use the local term abbreviation. -/
theorem tsum_vonMangoldt_div_rpow_le {c : ℝ} (hc : 1 < c) :
    (∑' n : ℕ, ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ c) ≤
      1 / (c - 1) ^ 2 + Real.log 2 / (c - 1) :=
  mangoldtDirichlet_tsum_le hc

/-- The moving line approaches one while remaining in the unconditional convergence range. -/
theorem movingLine_one_lt {A : ℝ} (hA : 0 < A) : 1 < 1 + 1 / A := by
  linarith [one_div_pos.mpr hA]

/-- Exact moving-line budget at every positive real scale. -/
theorem mangoldtDirichlet_movingLine_le {A : ℝ} (hA : 0 < A) :
    (∑' n : ℕ, mangoldtDirichletTerm (1 + 1 / A) n) ≤ A ^ 2 + A * Real.log 2 := by
  have h := mangoldtDirichlet_tsum_le (movingLine_one_lt hA)
  convert! h using 1
  field_simp
  ring

/-- The convenient quadratic envelope covers every real scale at least one. -/
theorem mangoldtDirichlet_movingLine_le_quadratic {A : ℝ} (hA : 1 ≤ A) :
    (∑' n : ℕ, mangoldtDirichletTerm (1 + 1 / A) n) ≤ (1 + Real.log 2) * A ^ 2 := by
  have hA0 : 0 < A := by linarith
  have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hAA : A ≤ A ^ 2 := by nlinarith
  have hmul := mul_le_mul_of_nonneg_right hAA hlog
  exact (mangoldtDirichlet_movingLine_le hA0).trans (by nlinarith)

end FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound
