# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantf47b140d74485dbfa362d5b4cb13a0edaf2b8834b8e9f2800eb5f24de44a39b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3bf90751595f1aa42fca0bdd97ae430218090de` · SHA-256 `5f0930b5dfdb210aad2af2fac13957b306ab5a8caec386c3ff0e43e85a6cbac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PlainKernelInventory.Variant9777e7d67be9837ea1a3e26811695998e40ff3c92f9112b33ed7c8556d9cf0c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9777e7d67be9837ea1a3e26811695998e40ff3c92f9112b33ed7c8556d9cf0c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PlainKernelInventory.Variant9777e7d67be9837ea1a3e26811695998e40ff3c92f9112b33ed7c8556d9cf0c1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9777e7d67be9837ea1a3e26811695998e40ff3c92f9112b33ed7c8556d9cf0c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/9777e7d67be9837ea1a3e26811695998e40ff3c92f9112b33ed7c8556d9cf0c1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateScaleRemoval

/-!
# A source-specific bound after summing the scale kernel over its plain factor

The zero-moment cancellation is retained before bounding the complete k-sum.
This theorem does not estimate the remaining signed Mangoldt/Möbius pairing.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PlainKernelInventory.Variant9777e7d67be9837ea1a3e26811695998e40ff3c92f9112b33ed7c8556d9cf0c1

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateScaleKernel

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateScalePrimitive EstimateScaleAverage EstimateScaleVaughan
open EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel

noncomputable section

private theorem plainKernel_inventory (A T : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T)
    (r : ℕ) (hr : 1 ≤ r) :
    sourcePlainKernel A r = ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
      sourcePlainWeight A ((r*k : ℕ) : ℝ) := by
  unfold sourcePlainKernel
  simp only [← Nat.cast_mul]
  apply Finset.sum_subset (Finset.Icc_subset_Icc_right (sourceKernelCutoff_mono hAT))
  intro k hk hnot
  have hcut : sourceKernelCutoff A < k := by
    have := Finset.mem_Icc.mp hk
    simp only [Finset.mem_Icc] at hnot
    omega
  exact sourcePlainWeight_zero_of_cutoff_lt A hA _
    (hcut.trans_le (Nat.le_mul_of_pos_left k hr))

/-- The complete signed k-sum of Omega has a uniform polynomial scale bound. -/
theorem omega_sum_kernel_abs_le (T : ℝ) (hT : 1 ≤ T) (m d : ℕ)
    (hm : 1 ≤ m) (hd : 1 ≤ d) :
    |∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
      omegaWeight T m d k / Real.sqrt ((m*d*k : ℕ) : ℝ)| ≤
      (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) *
        ((T^18-1)/6 + 10*(T^17-1)/17) := by
  let F : ℝ → ℝ := fun A ↦ ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
    (1 / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
      scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d
  have hi (k : ℕ) (hk : k ∈ Finset.Icc 1 (sourceKernelCutoff T)) :
      IntervalIntegrable (fun A ↦ (1 / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
        scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) volume 1 T :=
    (scaleWindow_intervalIntegrable T _ m d hT (Real.log_nonneg
      (by exact_mod_cast (Nat.mul_pos (Nat.mul_pos hm hd) (Finset.mem_Icc.mp hk).1)))).const_mul _
  have he : (∫ A in (1:ℝ)..T, F A) =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
        omegaWeight T m d k / Real.sqrt ((m*d*k : ℕ) : ℝ) := by
    unfold F
    rw [intervalIntegral.integral_finsetSum hi]
    apply Finset.sum_congr rfl
    intro k hk
    rw [intervalIntegral.integral_const_mul, integral_scaleWindow T m d k hT
      (Nat.mul_pos (Nat.mul_pos hm hd) (Finset.mem_Icc.mp hk).1)]
    ring
  have hden : 0 < Real.sqrt ((m*d : ℕ) : ℝ) := by
    apply Real.sqrt_pos.mpr
    exact_mod_cast (Nat.mul_pos hm hd)
  have hF (A : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T) :
      |F A| ≤ (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) * (3*A^17+10*A^16) := by
    have hA0 : 0 < A := by linarith
    by_cases hc : A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)
    · have hf : F A = scaleWeight A * sourcePlainKernel A ((m*d : ℕ) : ℝ) := by
        rw [plainKernel_inventory A T hA hAT _ (Nat.mul_pos hm hd), Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k _
        dsimp [scaleWindow, sourcePlainWeight]
        rw [if_pos hc]
        ring
      rw [hf, abs_mul, abs_of_pos (scaleWeight_pos A hA)]
      calc
        _ ≤ scaleWeight A * ((3+10/A) / Real.sqrt ((m*d : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_left (sourcePlainKernel_abs_le A _ hA
            (by exact_mod_cast (Nat.mul_pos hm hd))) (scaleWeight_pos A hA).le
        _ ≤ ((45056/1105)*A^17) * ((3+10/A) / Real.sqrt ((m*d : ℕ) : ℝ)) :=
          mul_le_mul_of_nonneg_right (scaleWeight_le A hA) (by positivity)
        _ = _ := by field_simp
    · have hf : F A = 0 := by simp [F, scaleWindow, hc]
      rw [hf, abs_zero]
      positivity
  have hb := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hT
    (f := F) (g := fun A ↦ (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) * (3*A^17+10*A^16))
    (by filter_upwards with A hA; rw [Real.norm_eq_abs]; exact hF A hA.1.le hA.2)
    ((by fun_prop : Continuous (fun A : ℝ ↦
      (45056/1105) / Real.sqrt ((m*d : ℕ) : ℝ) * (3*A^17+10*A^16))).intervalIntegrable 1 T)
  rw [Real.norm_eq_abs, he, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_add
      ((by fun_prop : Continuous (fun A : ℝ ↦ 3*A^17)).intervalIntegrable 1 T)
      ((by fun_prop : Continuous (fun A : ℝ ↦ 10*A^16)).intervalIntegrable 1 T),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    integral_pow, integral_pow] at hb
  norm_num only [Nat.reduceAdd, Nat.cast_ofNat, one_pow] at hb
  convert hb using 1
  ring

end
end EstimateScaleKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
