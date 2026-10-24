# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Source.Variantd3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3653a21f9da29c59e50e3c06c08fa66dda31dde6` · SHA-256 `d3d9e6ba92c712f78f7e79a751703013bbcf7d30ffb58064a487c021437579b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  ∑' n : ℕ, vonMangoldt (n + 2) * (Real.log (n + 2)) ^ j / (n + 2 : ℝ) ^ 2

theorem dirichletMoment_nonneg (j : ℕ) : 0 ≤ dirichletMoment j := by
  apply tsum_nonneg
  intro n
  exact div_nonneg (mul_nonneg (vonMangoldt_nonneg (n := n + 2))
    (pow_nonneg (Real.log_nonneg (by positivity)) _)) (sq_nonneg _)

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
    Summable (fun n : ℕ ↦ vonMangoldt (n + 2) * (Real.log (n + 2)) ^ j /
      (n + 2 : ℝ) ^ 2) := by
  have hab : LSeries.abscissaOfAbsConv
      (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) < (2 : ℂ).re := by
    rw [LSeries.absicssaOfAbsConv_logPowMul]
    exact lt_of_le_of_lt mangoldt_abscissa_le_one (by norm_num)
  have h := (LSeriesSummable_of_abscissaOfAbsConv_lt_re hab).norm
  have hn (n : ℕ) :
      ‖LSeries.term (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 n‖ =
        vonMangoldt n * (Real.log n) ^ j / (n : ℝ) ^ 2 := by
    rw [LSeries.norm_term_eq, iterate_logMul_eq]
    by_cases hz : n = 0
    · simp [hz]
    · simp [hz, norm_mul, norm_pow, ← Complex.natCast_log,
        Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (Real.log_natCast_nonneg n),
        abs_of_nonneg (vonMangoldt_nonneg (n := n)), mul_comm, Real.rpow_two]
  simp_rw [hn] at h
  exact (summable_nat_add_iff 2).2 h

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
```
