# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourceActualVaughanMeanBound.Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77e8a2f20942328bf3e897fc329fe58e695eed28` · SHA-256 `4204c0fed8822794e81d17d9d966ecd16c6dbd9d14c79a45883b4b1d1355d7d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ActualMoebiusQuotientSumEqOne.Variant133c66fe3c0e8b5fe9fa77c5f35eee3e4a6f4a4209d0716c2efc4ad2b1061858","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"133c66fe3c0e8b5fe9fa77c5f35eee3e4a6f4a4209d0716c2efc4ad2b1061858","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ActualMoebiusQuotientSumEqOne.Variant133c66fe3c0e8b5fe9fa77c5f35eee3e4a6f4a4209d0716c2efc4ad2b1061858","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"133c66fe3c0e8b5fe9fa77c5f35eee3e4a6f4a4209d0716c2efc4ad2b1061858","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T201820Z-1791317900336039000/SourceActualVaughanMeanBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiIntegerExact
import Mathlib.NumberTheory.ArithmeticFunction.Misc

/-!
An actual uniform arithmetic bound for the unchanged finite Vaughan mean alpha.
Closed Moebius inversion retains its unit; the unit floor defect is exactlyzero.
The signed long interaction, deleted diagonal, baseline and independent main
are not bounded or altered by this coefficient estimate. No RH witness follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ActualMoebiusQuotientSumEqOne.Variant133c66fe3c0e8b5fe9fa77c5f35eee3e4a6f4a4209d0716c2efc4ad2b1061858

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualVaughanMeanBound
open ArithmeticFunction
open scoped BigOperators
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource
noncomputable section

/-- Closed actual Moebius inversion fixes the complete quotient count to the unit. -/
theorem actual_moebius_quotient_sum_eq_one (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * (U / d : ℕ)) = 1 := by
  have he := ArithmeticFunction.sum_Ioc_mul_zeta_eq_sum (moebius : ArithmeticFunction ℝ) U
  rw [coe_moebius_mul_coe_zeta] at he
  have hu : (∑ n ∈ Finset.Ioc 0 U, (1 : ArithmeticFunction ℝ) n) = 1 := by
    simp [ArithmeticFunction.one_apply, hU]
  rw [hu, ← Finset.Icc_add_one_left_eq_Ioc] at he
  simpa only [zero_add, intCoe_apply] using he.symm

private theorem quotient_defect_bounds (U d : ℕ) (hd : 1 ≤ d) :
    0 ≤ (U : ℝ) / d - (U / d : ℕ) ∧ (U : ℝ) / d - (U / d : ℕ) ≤ 1 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast (by omega : 0 < d)
  have hf := Nat.floor_le (div_nonneg (Nat.cast_nonneg U) hd0.le)
  have hg := Nat.lt_floor_add_one ((U : ℝ) / d)
  rw [Nat.floor_div_eq_div] at hf hg
  constructor <;> linarith

/-- The actual finite mean is determined by signed floor defects beyond the retained unit. -/
theorem actual_alpha_unit_floor_defect (U : ℕ) (hU : 1 ≤ U) :
    (U : ℝ) * alpha U - 1 =
      ∑ d ∈ Finset.Icc 2 U, (moebius d : ℝ) * ((U : ℝ) / d - (U / d : ℕ)) := by
  have he : (U : ℝ) * alpha U - 1 =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((U : ℝ) / d - (U / d : ℕ)) := by
    rw [← actual_moebius_quotient_sum_eq_one U hU, alpha, Finset.mul_sum,
      ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    ring
  rw [he]
  symm
  apply Finset.sum_subset
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hd).1; omega,
      (Finset.mem_Icc.mp hd).2⟩
  · intro d hd hnot
    have hd1 : d = 1 := by
      simp only [Finset.mem_Icc] at hd hnot
      omega
    subst d
    simp

private theorem actual_alpha_unit_defect_abs_le (U : ℕ) (hU : 1 ≤ U) :
    |(U : ℝ) * alpha U - 1| ≤ (U : ℝ) - 1 := by
  rw [actual_alpha_unit_floor_defect U hU]
  have hs : (∑ d ∈ Finset.Icc 2 U,
      |(moebius d : ℝ) * ((U : ℝ) / d - (U / d : ℕ))|) ≤
      ∑ _d ∈ Finset.Icc 2 U, (1 : ℝ) := by
    apply Finset.sum_le_sum
    intro d hd
    have hq := quotient_defect_bounds U d (by have := (Finset.mem_Icc.mp hd).1; omega)
    have hm : |(moebius d : ℝ)| ≤ 1 := by exact_mod_cast (abs_moebius_le_one (n := d))
    rw [abs_mul, abs_of_nonneg hq.1]
    exact mul_le_one₀ hm hq.1 hq.2
  have hc : (Finset.Icc 2 U).card = U - 1 := by
    rw [Nat.card_Icc]
    omega
  have hn : (∑ _d ∈ Finset.Icc 2 U, (1 : ℝ)) = (U : ℝ) - 1 := by
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one, hc, Nat.cast_sub hU, Nat.cast_one]
  exact (Finset.abs_sum_le_sum_abs _ _).trans (hs.trans_eq hn)

/-- Actual signed reciprocal Moebius mean has its literal unit-sensitive bounds. -/
theorem actual_alpha_bounds (U : ℕ) (hU : 1 ≤ U) :
    (2 - (U : ℝ)) / U ≤ alpha U ∧ alpha U ≤ 1 := by
  have hu : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hb := abs_le.mp (actual_alpha_unit_defect_abs_le U hU)
  constructor
  · apply (div_le_iff₀ hu).mpr
    linarith [hb.1]
  · nlinarith [hb.2]

/-- A genuine uniform bound for this actual arithmetic coefficient, including empty U=0. -/
theorem actual_alpha_abs_le_one (U : ℕ) : |alpha U| ≤ 1 := by
  by_cases hU : 1 ≤ U
  · have hu : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
    have hb := abs_le.mp (actual_alpha_unit_defect_abs_le U hU)
    apply abs_le.mpr
    constructor <;> nlinarith [hb.1, hb.2]
  · have hz : U = 0 := by omega
    subst U
    simp [alpha]

/-- Every real Vaughan scale keeps its genuine closed short cutoff and actual Moebius signs. -/
theorem actual_vaughan_alpha_abs_le_one (A : ℝ) : |alpha (vaughanCutoff A)| ≤ 1 :=
  actual_alpha_abs_le_one _

end
end FormalResearch.RiemannHypothesis.SourceActualVaughanMeanBound
```
