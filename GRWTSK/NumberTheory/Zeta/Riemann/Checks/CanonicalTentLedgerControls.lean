/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger.Checks

open Filter
open scoped Topology
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.Complex.TentMellinKernel

/-- The selected signed ledger balances exactly. -/
theorem square_two_ledger_balance :
    (canonicalLedger 2 (by norm_num)).primePower +
      (canonicalLedger 2 (by norm_num)).archimedean +
      (canonicalLedger 2 (by norm_num)).pole +
      (canonicalLedger 2 (by norm_num)).trivialZero +
      (canonicalLedger 2 (by norm_num)).nontrivialZero +
      (canonicalLedger 2 (by norm_num)).endpoint +
      (canonicalLedger 2 (by norm_num)).tail = 0 :=
  (canonicalLedger 2 (by norm_num)).balance

/-- Reversing the arithmetic sign creates the exact two-source defect. -/
theorem wrong_sign_control :
    (squareTentMangoldt 2 : ℂ) +
      (canonicalLedger 2 (by norm_num)).archimedean +
      (canonicalLedger 2 (by norm_num)).pole +
      (canonicalLedger 2 (by norm_num)).trivialZero +
      (canonicalLedger 2 (by norm_num)).nontrivialZero +
      (canonicalLedger 2 (by norm_num)).endpoint +
      (canonicalLedger 2 (by norm_num)).tail =
        2 * (squareTentMangoldt 2 : ℂ) :=
  wrong_prime_sign_defect 2 (by norm_num)

/-- Both square-tent endpoint weights vanish. -/
theorem endpoint_control :
    squareWeight 2 (2 ^ 2) = 0 ∧ squareWeight 2 ((2 + 1) ^ 2) = 0 :=
  canonical_endpoint_weight_guard 2

/-- Finite divisor heads retain a certified tail allowance. -/
theorem finite_head_control (T : ℝ) (hT : 2 ≤ T) :
    ‖finiteHeadBalance 2 T‖ ≤
      canonicalTailBudget (squareCenter 2) (squareRadius 2) T :=
  norm_finiteHeadBalance_le 2 (by norm_num) T hT

/-- The certified finite-head tail allowance tends to zero. -/
theorem tail_decay_control :
    Tendsto
      (canonicalTailBudget (squareCenter 2) (squareRadius 2))
      atTop (𝓝 0) :=
  canonical_tail_budget_tendsto_zero 2

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger.Checks
