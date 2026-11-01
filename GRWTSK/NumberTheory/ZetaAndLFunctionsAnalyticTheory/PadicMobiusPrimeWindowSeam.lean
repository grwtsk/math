/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicPrimeLogarithmicDensity
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib

/-!
# Möbius–PNT window: exact floor carry and finite signed-source transfer

The actual arithmetic source is Mathlib's Möbius–log identity
  (μ : ArithmeticFunction ℝ) * ArithmeticFunction.log = Λ
and GRWTSK's earlier p-adic finite-prime sign source.

At a window (X, X+H], each positive divisor d has exactly
  (X+H)/d - X/d
multiples. The source of finite floor error is the EXACT endpoint carry
  d*K + (X+H)%d = H + X%d.
When d>H each root is 0-or-1, not a deterministic mean H/d.

The mathematical companion review proves the squarefree-filtered
large-prime parity identity, its complete logarithmic window transport,
and the fixed-cutoff Euler-product pole-order comparison. Those deeper
arithmetic/analytic statements are not silently marked as Lean theorems
in this finite module. They are separate source qualification targets.

No RH, PNT, signed tail smallness, or uniform Fejér energy is proved here.
No fresh kernel execution has been run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Moebius

namespace GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam

/-- Number of positive multiples of d in the exact right-closed window.
The caller must provide 0<d for arithmetic interpretations. -/
def windowCount (X H d : ℕ) : ℕ :=
  (X + H) / d - X / d

/-- The carry across the right window edge is the entire integer floor defect.
No equidistribution or prime-number theorem is used. -/
theorem windowCount_carry (X H d : ℕ) (hd : 0 < d) :
    d * windowCount X H d + (X + H) % d = H + X % d := by
  have hle : X / d ≤ (X + H) / d :=
    Nat.div_le_div (Nat.le_add_right X H) (le_refl d) hd.ne'
  have hx := Nat.mod_add_div X d
  have hy := Nat.mod_add_div (X + H) d
  unfold windowCount
  rw [Nat.mul_sub_left_distrib]
  omega

/-- If d exceeds the window length, there cannot be two distinct multiples. -/
theorem windowCount_le_one_of_short (X H d : ℕ)
    (hd : 0 < d) (hshort : H < d) :
    windowCount X H d ≤ 1 := by
  have hc := windowCount_carry X H d hd
  have hx := Nat.mod_lt X hd
  have hy := Nat.mod_lt (X + H) hd
  by_contra hfail
  have htwo : 2 ≤ windowCount X H d := by omega
  have hmul : d * 2 ≤ d * windowCount X H d :=
    Nat.mul_le_mul_left d htwo
  omega

/-- An exact one-hit criterion: the window wraps through a multiple of d
if and only if its residual progress reaches d. -/
theorem windowCount_eq_one_iff_carry (X H d : ℕ)
    (hd : 0 < d) (hshort : H < d) :
    windowCount X H d = 1 ↔ d ≤ X % d + H := by
  have hc := windowCount_carry X H d hd
  have hle := windowCount_le_one_of_short X H d hd hshort
  have hx := Nat.mod_lt X hd
  have hy := Nat.mod_lt (X + H) hd
  constructor
  · intro h
    rw [h] at hc
    omega
  · intro h
    by_cases hz : windowCount X H d = 0
    · rw [hz] at hc
      omega
    · omega

/-- The literal source von Mangoldt weight, with inclusive upper and
exclusive lower integer endpoint. -/
def pntWindow (X H : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc X (X + H), ArithmeticFunction.vonMangoldt n

/-- The existing *actual* Möbius convolution with the logarithm.
No new coefficient definition or finite Euler model is substituted. -/
def mobiusLogWindow (X H : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc X (X + H),
    (((μ : ArithmeticFunction ℝ) * ArithmeticFunction.log) n)

/-- This is Mathlib's Möbius–log identity at the original window source.
It is not a PNT asymptotic or a bound for the logarithmic window sum. -/
theorem pntWindow_eq_mobiusLogWindow (X H : ℕ) :
    pntWindow X H = mobiusLogWindow X H := by
  simp [pntWindow, mobiusLogWindow,
    ArithmeticFunction.moebius_mul_log_eq_vonMangoldt]

/-- Original logarithmic sum on the lattice points d*m inside the window.
The endpoint convention is exactly X<d*m≤X+H. -/
def windowLogIncidence (X H d : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (X + H),
    if X < d * m ∧ d * m ≤ X + H
    then Real.log (m : ℝ) else 0

/-- Finite divisor packet; coefficients remain signed until the complete
outer sum is formed. In the PNT application f(d) is literal μ(d). -/
def divisorLogWindow (X H : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (X + H), f d * windowLogIncidence X H d

/-- Exact finite Fubini reordering, not an error estimate. -/
theorem divisorLogWindow_eq_swapped (X H : ℕ) (f : ℕ → ℝ) :
    divisorLogWindow X H f =
      ∑ m ∈ Finset.Icc 1 (X + H),
        ∑ d ∈ Finset.Icc 1 (X + H),
          f d * (if X < d * m ∧ d * m ≤ X + H
                  then Real.log (m : ℝ) else 0) := by
  unfold divisorLogWindow windowLogIncidence
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]

/-- A source-exact linearity law: if an arithmetic coefficient has the
literal decomposition f=u−2v, its FULL window packet retains that sign.
For Möbius use f=μ, u=μ²*a_y and v=μ²*b_y, after independently
proving the squarefree parity bridge. -/
theorem divisorLogWindow_sub_two (X H : ℕ) (u v : ℕ → ℝ) :
    divisorLogWindow X H (fun n => u n - 2 * v n) =
      divisorLogWindow X H u - 2 * divisorLogWindow X H v := by
  unfold divisorLogWindow
  calc
    (∑ d ∈ Finset.Icc 1 (X + H),
      (u d - 2 * v d) * windowLogIncidence X H d) =
        ∑ d ∈ Finset.Icc 1 (X + H),
          (u d * windowLogIncidence X H d -
           2 * (v d * windowLogIncidence X H d)) := by
      apply Finset.sum_congr rfl
      intro d hd
      ring
    _ = _ := by
      rw [Finset.sum_sub_distrib]
      simp only [← Finset.mul_sum]

end GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
