# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPrefixTiltNumeratorDependency.Variant7bb9e4803608d63bd8c5c8260d054e93696a945f33a8dcb612da4f28780784e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c38281010bbc4df6aeca37055b67f721bbdbdd8` · SHA-256 `270500b132087d939c815cbb3aa94179a921c509fdc3c7f61e5f89052ad93c85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletNumerator.Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DirichletNumerator.Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2","mathematical_subject":"Analysis.Calculus","original_sha256":"10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/MobiusPrefixTiltNumeratorDependency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
import Mathlib.Analysis.Complex.RemovableSingularity

/-! The actual corrected finite Möbius numerator and its removable one-half value. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletNumerator.Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2

set_option autoImplicit false
namespace MobiusPoleNumeratorScratch
open Finset MeasureTheory Filter
open scoped ComplexConjugate Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController
noncomputable section

/-- The original finite signed reciprocal Dirichlet numerator in exponential coordinates. -/
def dirichletNumerator (X : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
    Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))

/-- The complete corrected numerator, retaining the actual endpoint coefficient. -/
def correctedNumerator (X : ℕ) (z : ℂ) : ℂ :=
  dirichletNumerator X z - (mobiusReciprocalSum X : ℂ) *
    Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ))

/-- The signed logarithmic normalization required at the removed source pole. -/
def logNormalization (X : ℕ) : ℝ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
    Real.log ((X : ℝ) / (n : ℝ))

/-- Positive integer logarithms give the exact reciprocal coefficient at one half. -/
theorem exponential_at_half (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have h : -(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) : ℝ) : ℂ) := by push_cast; ring
  rw [h, ← Complex.ofReal_exp, Real.exp_neg, Real.exp_log hn0, Complex.ofReal_inv]
  rfl

/-- The finite numerator at one half is exactly the original signed reciprocal sum. -/
theorem dirichletNumerator_half (X : ℕ) :
    dirichletNumerator X (1 / 2) = (mobiusReciprocalSum X : ℂ) := by
  unfold dirichletNumerator mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
    Complex.ofReal_intCast]
  apply sum_congr rfl
  intro n hn
  rw [exponential_at_half n (mem_Icc.mp hn).1]
  rfl

/-- The actual endpoint correction cancels the numerator at one half exactly. -/
theorem correctedNumerator_half (X : ℕ) : correctedNumerator X (1 / 2) = 0 := by
  rw [correctedNumerator, dirichletNumerator_half]
  simp

/-- The finite exponential numerator is entire; no zeta inverse is taken here. -/
theorem correctedNumerator_differentiable (X : ℕ) : Differentiable ℂ (correctedNumerator X) := by
  unfold correctedNumerator dirichletNumerator
  fun_prop

end
end MobiusPoleNumeratorScratch
```
