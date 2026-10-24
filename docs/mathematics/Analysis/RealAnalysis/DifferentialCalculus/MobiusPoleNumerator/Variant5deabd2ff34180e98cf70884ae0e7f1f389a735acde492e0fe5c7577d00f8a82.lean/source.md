# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MobiusPoleNumerator.Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c42f9d49f1ba77cb9f558949ea7f9b743d15e69a` · SHA-256 `25373ddb9fd0ba4bfb86f023d62cbc372c3268139959344e321afc6d85911cff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletNumerator.Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DirichletNumerator.Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b","mathematical_subject":"Analysis.Calculus","original_sha256":"d0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/MobiusPoleNumerator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
import Mathlib.Analysis.Complex.RemovableSingularity

/-! The actual corrected finite Möbius numerator and its removable one-half value. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletNumerator.Variantd0bec6f099ba80c6ad5119eacc03754fbefaad7c9b674a87d8dd051ea159cd6b

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

/-- Its ordinary complex derivative retains every signed coefficient and the endpoint. -/
theorem correctedNumerator_hasDerivAt (X : ℕ) (z : ℂ) :
    HasDerivAt (correctedNumerator X)
      ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
        (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
          (-(Real.log (n : ℝ) : ℂ)))) +
        (mobiusReciprocalSum X : ℂ) *
          (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
            (Real.log (X : ℝ) : ℂ))) z := by
  unfold correctedNumerator dirichletNumerator
  have hd := (HasDerivAt.fun_sum (u := Icc 1 X) (fun n _ =>
    (((hasDerivAt_const z (1 / 2 : ℂ)).add (hasDerivAt_id z)).neg.mul_const
      (Real.log (n : ℝ) : ℂ)).cexp.const_mul (ArithmeticFunction.moebius n : ℂ))).sub
    ((((hasDerivAt_const z (1 / 2 : ℂ)).sub (hasDerivAt_id z)).mul_const
      (Real.log (X : ℝ) : ℂ)).cexp.const_mul (mobiusReciprocalSum X : ℂ))
  convert! hd using 1
  simp [Pi.add_apply, Pi.neg_apply, Pi.sub_apply, id_eq, neg_mul, mul_neg]


/-- The logarithmic normalization separates into its endpoint and signed log moments. -/
theorem logNormalization_eq (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) = (mobiusReciprocalSum X : ℂ) *
      (Real.log (X : ℝ) : ℂ) -
      ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (show X ≠ 0 by omega)
  unfold logNormalization mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_mul, Complex.ofReal_div,
    Complex.ofReal_intCast, Complex.ofReal_natCast, sum_mul, ← sum_sub_distrib]
  apply sum_congr rfl
  intro n hn
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by have := (mem_Icc.mp hn).1; omega)
  rw [Real.log_div hX0 hn0, Complex.ofReal_sub]
  ring

/-- The derivative at the canceled pole is the signed logarithmic normalization. -/
theorem correctedNumerator_hasDerivAt_half (X : ℕ) (hX : 1 ≤ X) :
    HasDerivAt (correctedNumerator X) (logNormalization X : ℂ) (1 / 2) := by
  convert! correctedNumerator_hasDerivAt X (1 / 2) using 1
  rw [logNormalization_eq X hX]
  simp only [sub_self, zero_mul, Complex.exp_zero, one_mul]
  have hs : (∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) =
      -(∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ)) := by
    rw [← sum_neg_distrib]
    apply sum_congr rfl
    intro n hn
    rw [exponential_at_half n (mem_Icc.mp hn).1]
    ring
  rw [hs]
  ring

/-- The entire divided difference performs the pole cancellation before any controller cutoff. -/
def correctedQuotient (X : ℕ) : ℂ → ℂ := dslope (correctedNumerator X) (1 / 2)

/-- Away from the removed point the divided difference is the literal corrected quotient. -/
theorem correctedQuotient_of_ne (X : ℕ) (z : ℂ) (hz : z ≠ 1 / 2) :
    correctedQuotient X z = correctedNumerator X z / (z - 1 / 2) := by
  rw [correctedQuotient, dslope_of_ne _ hz, slope_def_module, correctedNumerator_half]
  simp [div_eq_mul_inv, mul_comm]

/-- The canceled numerator factors through the same entire quotient at every point. -/
theorem correctedNumerator_factor (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) * correctedQuotient X z := by
  simpa only [smul_eq_mul, correctedNumerator_half, sub_zero, correctedQuotient] using
    (sub_smul_dslope (correctedNumerator X) (1 / 2) z).symm

/-- Removing the canceled factor leaves an entire function, without a zeta-zero hypothesis. -/
theorem correctedQuotient_differentiable (X : ℕ) : Differentiable ℂ (correctedQuotient X) := by
  apply differentiableOn_univ.mp
  exact (Complex.differentiableOn_dslope (s := Set.univ) (by simp)).mpr
    (correctedNumerator_differentiable X).differentiableOn

/-- The actual value at the removed pole is retained rather than assigned arbitrarily. -/
theorem correctedQuotient_half (X : ℕ) (hX : 1 ≤ X) :
    correctedQuotient X (1 / 2) = (logNormalization X : ℂ) := by
  rw [correctedQuotient, dslope_same]
  exact (correctedNumerator_hasDerivAt_half X hX).deriv

/-- The literal quotient approaches the same signed logarithmic normalization. -/
theorem correctedQuotient_tendsto_half (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (logNormalization X : ℂ)) := by
  have hc : Tendsto (correctedQuotient X) (𝓝[≠] (1 / 2))
      (𝓝 (correctedQuotient X (1 / 2))) :=
    ((correctedQuotient_differentiable X).continuous.continuousAt
    (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
  rw [correctedQuotient_half X hX] at hc
  apply hc.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact correctedQuotient_of_ne X z hz

end
end MobiusPoleNumeratorScratch
```
