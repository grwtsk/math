# Complete source: GRWTSK.NumberTheory.SourceNativeDirichletMoments.Variant812091b9e00a0ecc97f43af5c1233a3fd20a195becc847a9921c283163e7f203

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1176115ca771d52bb479813d5b590f55171f2ab9` · SHA-256 `511e54825753350351ab73402854cd61a3f46ab2e0d79c6b5e129259e3c2eb38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.DirichletMoment.Varianta645c676cce867ee5fd919d835ad5b35f71743328c377c3c960bb313b3239d17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a645c676cce867ee5fd919d835ad5b35f71743328c377c3c960bb313b3239d17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DirichletMoment.Varianta645c676cce867ee5fd919d835ad5b35f71743328c377c3c960bb313b3239d17","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"a645c676cce867ee5fd919d835ad5b35f71743328c377c3c960bb313b3239d17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/root/replay-SourceNativeDirichletMoments-1791329055632603000/SourceNativeDirichletMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeDirichlet
import Mathlib.NumberTheory.LSeries.Deriv

/-!
Literal, convergent logarithmic moments of the full Mangoldt source on c=2.
Prime powers are retained; these fixed constants carry no scale parameter.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.DirichletMoment.Varianta645c676cce867ee5fd919d835ad5b35f71743328c377c3c960bb313b3239d17

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

theorem log_moment_series_eq (j : ℕ) :
    LSeries (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 =
      (dirichletMoment j : ℂ) := by
  have hab : LSeries.abscissaOfAbsConv
      (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) < (2 : ℂ).re := by
    rw [LSeries.absicssaOfAbsConv_logPowMul]
    exact lt_of_le_of_lt mangoldt_abscissa_le_one
      (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  have hs := LSeriesSummable_of_abscissaOfAbsConv_lt_re hab
  have ht (n : ℕ) :
      LSeries.term (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 n =
        ((vonMangoldt n * (Real.log n) ^ j / (n : ℝ) ^ 2 : ℝ) : ℂ) := by
    by_cases hn : n = 0
    · simp [hn, LSeries.term]
    · rw [LSeries.term_of_ne_zero hn, iterate_logMul_eq, Complex.cpow_two,
        ← Complex.natCast_log]
      push_cast
      ring
  have hp : (∑ n ∈ Finset.range 2,
      LSeries.term (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 n) = 0 := by
    simp only [Finset.sum_range_succ, Finset.sum_range_zero]
    simp [ht, iterate_logMul_eq]
  unfold LSeries
  rw [← hs.sum_add_tsum_nat_add 2, hp, zero_add]
  simp_rw [ht]
  exact (Complex.ofReal_tsum (fun n : ℕ ↦ vonMangoldt (n + 2) *
    (Real.log ((n + 2 : ℕ) : ℝ)) ^ j / ((n + 2 : ℕ) : ℝ) ^ 2)).symm

theorem native_series_hasDerivAt_two :
    HasDerivAt (LSeries (fun n : ℕ ↦ (vonMangoldt n : ℂ)))
      (-(dirichletMoment 1 : ℂ)) 2 := by
  have hab : LSeries.abscissaOfAbsConv (fun n : ℕ ↦ (vonMangoldt n : ℂ)) <
      (2 : ℂ).re := lt_of_le_of_lt mangoldt_abscissa_le_one
    (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  have h := LSeries_hasDerivAt hab
  simpa only [show LSeries.logMul (fun n : ℕ ↦ (vonMangoldt n : ℂ)) =
      LSeries.logMul^[1] (fun n : ℕ ↦ (vonMangoldt n : ℂ)) by rfl,
    log_moment_series_eq] using h

theorem native_series_second_derivative_two :
    iteratedDeriv 2 (LSeries (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 =
      (dirichletMoment 2 : ℂ) := by
  have hab : LSeries.abscissaOfAbsConv (fun n : ℕ ↦ (vonMangoldt n : ℂ)) <
      (2 : ℂ).re := lt_of_le_of_lt mangoldt_abscissa_le_one
    (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  rw [LSeries_iteratedDeriv 2 hab, log_moment_series_eq]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
```
