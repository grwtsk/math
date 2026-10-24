# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.F39a09373489a64e8f49ActualCenteredColumnUnitRefinement.Variant2ed8069abdd5561d2577afd2350720d7027abd682fb6536388749b8eaa8762a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39a1f7cbb2528d9168fdf80bfff8fdbfbf6ce0d7` · SHA-256 `52b79c9dce043aa946abb38e487ee7b25fd9b5af88c2ca15ca61d3d2c056777e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualCenteredBetaIntervalEqNonunitFloor.Variantf39a09373489a64e8f49b5055439625b1193ceb250088179c443a2c7a19908ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f39a09373489a64e8f49b5055439625b1193ceb250088179c443a2c7a19908ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualCenteredBetaIntervalEqNonunitFloor.Variantf39a09373489a64e8f49b5055439625b1193ceb250088179c443a2c7a19908ff","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f39a09373489a64e8f49b5055439625b1193ceb250088179c443a2c7a19908ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/f39a09373489a64e8f49-ActualCenteredColumnUnitRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualVaughanMeanBound

/-!
The retained unit has exactly zero interval floor discrepancy. Remove that
zero cell before bounding the genuine centered Vaughan columns. This improves
the literal column budget from U to U-1, while retaining all nonunit Moebius
signs, real quotient casts and closed cutoff. No joint signed bound follows.
Research direction: grwtsk contributors. Formal challenge: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualCenteredBetaIntervalEqNonunitFloor.Variantf39a09373489a64e8f49b5055439625b1193ceb250088179c443a2c7a19908ff

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open ArithmeticFunction
open scoped BigOperators
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource
noncomputable section

/-- The original exact centered interval inventory has no unit floor-error cell. -/
theorem actualCenteredBeta_interval_eq_nonunit_floor (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 2 U, (moebius d : ℝ) * floorDiscrepancy L H d := by
  rw [centeredBeta_interval_eq_discrepancy U L H hU hUL hLH]
  congr 1
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
    simp [floorDiscrepancy]

/-- Only the actual nonunit absolute Moebius inventory enters this column bound. -/
theorem actualCenteredBeta_interval_abs_le_nonunit_mass (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤
      ∑ d ∈ Finset.Icc 2 U, |(moebius d : ℝ)| := by
  rw [actualCenteredBeta_interval_eq_nonunit_floor U L H hU hUL hLH, abs_neg]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro d hd
  rw [abs_mul]
  exact (mul_le_mul_of_nonneg_left
    (floorDiscrepancy_abs_le_one L H d (by
      have := (Finset.mem_Icc.mp hd).1
      omega)) (abs_nonneg _)).trans_eq (mul_one _)

/-- The genuine closed count yields U-1, including exact zero when U=1. -/
theorem actualCenteredBeta_interval_abs_le_cutoff_sub_one (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤ (U : ℝ) - 1 := by
  have hm : (∑ d ∈ Finset.Icc 2 U, |(moebius d : ℝ)|) ≤
      ∑ _d ∈ Finset.Icc 2 U, (1 : ℝ) := by
    apply Finset.sum_le_sum
    intro d _
    exact_mod_cast (abs_moebius_le_one (n := d))
  have hc : (Finset.Icc 2 U).card = U - 1 := by
    rw [Nat.card_Icc]
    omega
  have hn : (∑ _d ∈ Finset.Icc 2 U, (1 : ℝ)) = (U : ℝ) - 1 := by
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one, hc, Nat.cast_sub hU, Nat.cast_one]
  exact (actualCenteredBeta_interval_abs_le_nonunit_mass U L H hU hUL hLH).trans
    (hm.trans_eq hn)

/-- Every original real-scale Vaughan prefix preserves its literal moving cutoff. -/
theorem actualVaughanCenteredColumn_prefix_abs_le {A : ℝ} (hA : 1 ≤ A) (k : ℕ)
    (hk : vaughanCutoff A ≤ k) :
    |∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n| ≤
      (vaughanCutoff A : ℝ) - 1 :=
  actualCenteredBeta_interval_abs_le_cutoff_sub_one _ _ _
    (vaughanCutoff_pos A hA) le_rfl hk

end
end RH16IndependentChallengeNext
```
