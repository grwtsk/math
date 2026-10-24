# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualShortFirstPrimeBlockNative01.Variant6efbd42f93a4b0d4780522852f8bdc1c1c6bc10b5b736595f4c0b7cd190de42f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7340cd1a7c82081ca6a9c26c2cd65d437ab9088` · SHA-256 `1f13e6b6e60401ff81cca46be65d22e40116aef35343ce9cbf5578af0821111d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortFirstPrimeBlock.Variant5e13dd4439012f62a7835a213bcdde2a7be40022636d57d8f1c229f9da63d46c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e13dd4439012f62a7835a213bcdde2a7be40022636d57d8f1c229f9da63d46c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualShortFirstPrimeBlock.Variant5e13dd4439012f62a7835a213bcdde2a7be40022636d57d8f1c229f9da63d46c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5e13dd4439012f62a7835a213bcdde2a7be40022636d57d8f1c229f9da63d46c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-short-first-prime-block/SourceActualShortFirstPrimeBlock-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualShortMangoldtBlock
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition

/-!
The actual first-prime part of the short closed inventory carries positive
linear mass. The complete first-prime complement and the already allocated
square main term remain in the quantitative cancellation requirement. No
uniform signed cap, negative long-sector theorem, or RH conclusion is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortFirstPrimeBlock.Variant5e13dd4439012f62a7835a213bcdde2a7be40022636d57d8f1c229f9da63d46c

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualShortFirstPrimeBlock
open ArithmeticFunction Filter
open scoped BigOperators
open SourcePairing SourceActualShortMangoldtBlock SourcePrimePowerPartition
open SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimateMertensResidual
open EstimateVaughanSource
noncomputable section

/-- The literal actual first-prime short contribution, with the original closed floor. -/
def actualShortFirstPrimeBlock (A : ℝ) : ℝ :=
  ∑ p ∈ (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime,
    vonMangoldt p * closedPrimeWeight A p

/-- The full signed first-prime complement of that closed short inventory. -/
def actualLongFirstPrimeBlock (A : ℝ) : ℝ :=
  ∑ p ∈ (Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime,
    vonMangoldt p * closedPrimeWeight A p

/-- The actual short first-prime coefficients are the genuine closed theta sum. -/
theorem actualShortFirstPrime_unweighted_eq_theta {A : ℝ} (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime, (vonMangoldt p : ℝ)) =
      Chebyshev.theta (A ^ 2) := by
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA
  have hI : Finset.Ioc 0 (vaughanCutoff A) =
      insert 1 (Finset.Icc 2 (vaughanCutoff A)) := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_insert, Finset.mem_Icc]
    omega
  calc
    _ = ∑ p ∈ (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime, Real.log (p : ℝ) := by
      apply Finset.sum_congr rfl
      intro p hp
      exact vonMangoldt_apply_prime (Finset.mem_filter.mp hp).2
    _ = Chebyshev.theta (A ^ 2) := by
      rw [Chebyshev.theta, show ⌊A ^ 2⌋₊ = vaughanCutoff A from rfl, hI]
      simp

/-- Every true short prime keeps the source correlation lower bound before any sum estimate. -/
theorem actualShortFirstPrimeBlock_ge_theta {A : ℝ} (hA : 25600 ≤ A) :
    Chebyshev.theta (A ^ 2) / (2 * A) ≤ actualShortFirstPrimeBlock A := by
  have hp : 0 < A := by linarith
  rw [← actualShortFirstPrime_unweighted_eq_theta (by linarith : 1 ≤ A), Finset.sum_div]
  unfold actualShortFirstPrimeBlock
  apply Finset.sum_le_sum
  intro n hn
  have hnI := (Finset.mem_filter.mp hn).1
  have hnN : 2 ≤ n := (Finset.mem_Icc.mp hnI).1
  have hn0 : 0 < n := by omega
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn0
  have hnA : (n : ℝ) ≤ A ^ 2 :=
    (show (n : ℝ) ≤ vaughanCutoff A by exact_mod_cast (Finset.mem_Icc.mp hnI).2).trans
      (Nat.floor_le (sq_nonneg A))
  have hsn : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnR
  have hsA : Real.sqrt (n : ℝ) ≤ A :=
    (Real.sqrt_le_sqrt hnA).trans_eq (Real.sqrt_sq hp.le)
  have hc := actualCorrelation_short_lower hA hnI
  have hw : 1 / (2 * A) ≤ closedPrimeWeight A n := by
    unfold closedPrimeWeight
    rw [exponentialTest_log _ _ hn0]
    apply (le_div_iff₀ hsn).2
    have hh : Real.sqrt (n : ℝ) / (2 * A) ≤ 1 / 2 := by
      apply (div_le_iff₀ (by positivity : 0 < 2 * A)).2
      linarith
    simpa only [div_eq_mul_inv, one_mul, mul_comm] using hh.trans hc
  simpa only [div_eq_mul_inv, one_mul] using
    mul_le_mul_of_nonneg_left hw (vonMangoldt_nonneg (n := n))

private theorem log_le_scale {A : ℝ} (hA : 25600 ≤ A) : Real.log A ≤ A / 16 := by
  have hp : 0 < A := by linarith
  have hl := Real.log_le_sub_one_of_pos (show 0 < A / 32 by positivity)
  rw [Real.log_div hp.ne' (by norm_num : (32 : ℝ) ≠ 0)] at hl
  have h32 := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 32)
  linarith

/-- Closed actual PNT and the proved prime-power correction leave linear first-prime mass. -/
theorem actualShortFirstPrimeBlock_eventually_linear_lower :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A → A / 8 ≤ actualShortFirstPrimeBlock A := by
  obtain ⟨R, hR, hpsi⟩ := actualPsi_square_eventually_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hs : 1 ≤ A ^ 2 := by nlinarith
  have hpp := Chebyshev.psi_sub_theta_le hs
  rw [Real.sqrt_sq hp.le, Real.log_pow] at hpp
  norm_num at hpp
  have hl := log_le_scale (hR.trans hA)
  have htheta : A ^ 2 / 4 ≤ Chebyshev.theta (A ^ 2) := by
    have hlog : 4 * A * Real.log A ≤ A ^ 2 / 4 := by
      have := mul_le_mul_of_nonneg_left hl (show 0 ≤ 4 * A by positivity)
      nlinarith
    linarith [hpsi A hA]
  have he : A / 8 = (A ^ 2 / 4) / (2 * A) := by field_simp; ring
  rw [he]
  exact (div_le_div_of_nonneg_right htheta (by positivity)).trans
    (actualShortFirstPrimeBlock_ge_theta (hR.trans hA))

private theorem cutoff_le_inventory {A : ℝ} (hA : 1 ≤ A) :
    vaughanCutoff A ≤ ⌊Real.exp (2 * A)⌋₊ := by
  have he := Real.pow_div_factorial_le_exp (2 * A) (by linarith) 2
  norm_num at he
  apply Nat.floor_mono
  nlinarith

/-- The original full first-prime moment retains the exact closed short and long pieces. -/
theorem actualFirstPrimeMoment_eq_short_add_long {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeMoment A = actualShortFirstPrimeBlock A + actualLongFirstPrimeBlock A := by
  have hU := vaughanCutoff_pos A hA
  have hUN := cutoff_le_inventory hA
  have hI : primeLogInventory (2 * A) =
      (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime ∪
        (Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime := by
    ext n
    simp only [primeLogInventory, Finset.mem_filter, Finset.mem_Ioc,
      Finset.mem_Icc, Finset.mem_union]
    constructor
    · rintro ⟨⟨hn0, hnN⟩, hp⟩
      by_cases hnU : n ≤ vaughanCutoff A
      · exact Or.inl ⟨⟨hp.two_le, hnU⟩, hp⟩
      · exact Or.inr ⟨⟨by omega, hnN⟩, hp⟩
    · rintro (⟨⟨hn2, hnU⟩, hp⟩ | ⟨⟨hUn, hnN⟩, hp⟩)
      · exact ⟨⟨by omega, hnU.trans hUN⟩, hp⟩
      · exact ⟨⟨by omega, hnN⟩, hp⟩
  unfold firstPrimeMoment actualShortFirstPrimeBlock actualLongFirstPrimeBlock
  rw [hI, Finset.sum_union]
  exact Finset.disjoint_left.mpr (by
    intro n hn hm
    have := (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).2
    have := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1
    omega)

/-- The allocated square main term stays beside the complete signed first-prime complement. -/
theorem actualLongFirstPrime_with_main_eventually_below_residual_sub_linear :
    ∃ E R : ℝ, 0 ≤ E ∧ 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualLongFirstPrimeBlock A + diagonalMainCoefficient A * A ≤
        mertensResidual A - A / 8 + E := by
  obtain ⟨E, hE, herr⟩ := residual_firstPrime_uniform_replacement_error
  obtain ⟨R, hR, hs⟩ := actualShortFirstPrimeBlock_eventually_linear_lower
  refine ⟨E, R, hE, hR, ?_⟩
  intro A hA
  have hA1 : 1 ≤ A := by linarith
  have he := actualFirstPrimeMoment_eq_short_add_long hA1
  have herror := (abs_le.mp (herr A hA1)).1
  linarith [hs A hA]

end
end FormalResearch.RiemannHypothesis.SourceActualShortFirstPrimeBlock
```
