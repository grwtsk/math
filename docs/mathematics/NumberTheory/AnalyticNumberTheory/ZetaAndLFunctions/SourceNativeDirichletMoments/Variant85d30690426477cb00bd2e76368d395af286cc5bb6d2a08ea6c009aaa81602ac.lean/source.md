# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceNativeDirichletMoments.Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1365dbb615c3dd69af47e3d714b90b88d6b7138a` · SHA-256 `85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceNativeDirichlet
import Mathlib.NumberTheory.LSeries.Deriv

/-!
Literal, convergent logarithmic moments of the full Mangoldt source on c=2.
Prime powers are retained; these fixed constants carry no scale parameter.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
open ArithmeticFunction LSeries
noncomputable section

def dirichletMoment (j : ℕ) : ℝ :=
  ∑' n : ℕ, vonMangoldt (n + 2) * (Real.log ((n + 2 : ℕ) : ℝ)) ^ j /
    ((n + 2 : ℕ) : ℝ) ^ 2

theorem dirichletMoment_nonneg (j : ℕ) : 0 ≤ dirichletMoment j := by
  apply tsum_nonneg
  intro n
  exact div_nonneg (mul_nonneg (vonMangoldt_nonneg (n := n + 2))
    (pow_nonneg (Real.log_nonneg (by exact_mod_cast (show 1 ≤ n + 2 by omega))) _))
    (sq_nonneg _)

theorem mangoldt_abscissa_le_one :
    LSeries.abscissaOfAbsConv (fun n : ℕ ↦ (vonMangoldt n : ℂ)) ≤ 1 := by
  apply LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable
  intro s hs
  exact LSeriesSummable_vonMangoldt hs

theorem iterate_logMul_eq (j n : ℕ) :
    (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) n =
      (Complex.log (n : ℂ)) ^ j * (vonMangoldt n : ℂ) := by
  induction j with
  | zero => simp
  | succ j ih =>
      simp only [Function.iterate_succ_apply', LSeries.logMul, ih, pow_succ]
      ring

theorem dirichletMoment_summable (j : ℕ) :
    Summable (fun n : ℕ ↦ vonMangoldt (n + 2) * (Real.log ((n + 2 : ℕ) : ℝ)) ^ j /
      ((n + 2 : ℕ) : ℝ) ^ 2) := by
  have hab : LSeries.abscissaOfAbsConv
      (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) < (2 : ℂ).re := by
    rw [LSeries.absicssaOfAbsConv_logPowMul]
    exact lt_of_le_of_lt mangoldt_abscissa_le_one
      (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  have h := (LSeriesSummable_of_abscissaOfAbsConv_lt_re hab).norm
  have hn (n : ℕ) :
      ‖LSeries.term (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 n‖ =
        vonMangoldt n * (Real.log n) ^ j / (n : ℝ) ^ 2 := by
    rw [LSeries.norm_term_eq, iterate_logMul_eq]
    by_cases hz : n = 0
    · simp [hz]
    · simp [hz, norm_pow, ← Complex.natCast_log,
        Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (Real.log_natCast_nonneg n),
        abs_of_nonneg (vonMangoldt_nonneg (n := n)), mul_comm]
  simp_rw [hn] at h
  exact (summable_nat_add_iff 2).2 h

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
```
