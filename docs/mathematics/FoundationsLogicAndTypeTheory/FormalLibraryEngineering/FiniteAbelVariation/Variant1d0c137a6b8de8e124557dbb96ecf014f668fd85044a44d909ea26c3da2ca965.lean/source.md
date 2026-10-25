# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAbelVariation.Variant1d0c137a6b8de8e124557dbb96ecf014f668fd85044a44d909ea26c3da2ca965

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b156b3f190277b2a82cd27a7cdd10cddb11547a0` · SHA-256 `2be5dfe7f96282218082b5159d8189368b978cf58fc7f042b556aec224b2db09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SumIccMulByPartsIco.Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SumIccMulByPartsIco.Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/FiniteAbelVariation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
Scratch finite Abel transport. Every coefficient-discrepancy bound remains an
explicit hypothesis. No source-family counting or cancellation estimate is
asserted here.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SumIccMulByPartsIco.Variantbf7f0dd98b0da3d3f9e8ed7c46e26936cf18420290d7744c0c1eb44302705528

set_option autoImplicit false

namespace FiniteAbelVariationScratch

open Finset

theorem sum_Icc_mul_by_parts_Ico (b e : ℕ → ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, b g * e g) =
      (∑ g ∈ Icc 1 G, b g) * e G +
        ∑ j ∈ Ico 1 G, (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) := by
  induction G with
  | zero => simp
  | succ G ih =>
    by_cases hG : G = 0
    · subst G
      simp
    have hG1 : 1 ≤ G := by omega
    rw [sum_Icc_succ_top (by omega) (fun g ↦ b g * e g),
      sum_Icc_succ_top (by omega) b,
      sum_Ico_succ_top hG1 (fun j ↦ (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1))), ih]
    ring

theorem sum_Icc_mul_by_parts (b e : ℕ → ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, b g * e g) =
      (∑ g ∈ Icc 1 G, b g) * e G +
        ∑ j ∈ Icc 1 (G - 1), (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) := by
  have hset : Ico 1 G = Icc 1 (G - 1) := by
    ext j
    simp only [mem_Ico, mem_Icc]
    omega
  simpa only [hset] using sum_Icc_mul_by_parts_Ico b e G

theorem centered_sum (a : ℕ → ℝ) (δ : ℝ) (j : ℕ) :
    (∑ g ∈ Icc 1 j, (a g - δ)) = (∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ) := by
  rw [sum_sub_distrib]
  simp [mul_comm]

theorem centered_sum_mul_by_parts (a e : ℕ → ℝ) (δ : ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g) =
      ((∑ g ∈ Icc 1 G, a g) - δ * (G : ℝ)) * e G +
        ∑ j ∈ Icc 1 (G - 1),
          ((∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)) * (e j - e (j + 1)) := by
  have h := sum_Icc_mul_by_parts (fun g ↦ a g - δ) e G
  simp_rw [centered_sum] at h
  simpa only [sub_mul, sum_sub_distrib, ← mul_sum] using h

theorem weighted_error_abs_le_sqrt_variation (a e : ℕ → ℝ) (δ C : ℝ) (G : ℕ)
    (hbound : ∀ j ∈ Icc 1 G,
      |(∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)| ≤ C * Real.sqrt (j : ℝ)) :
    |(∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g)| ≤
      C * (Real.sqrt (G : ℝ) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) := by
  by_cases hG : G = 0
  · subst G
    simp
  have hG1 : 1 ≤ G := by omega
  let D (j : ℕ) : ℝ := (∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)
  rw [centered_sum_mul_by_parts]
  change |D G * e G + ∑ j ∈ Icc 1 (G - 1), D j * (e j - e (j + 1))| ≤ _
  calc
    _ ≤ |D G * e G| +
        |∑ j ∈ Icc 1 (G - 1), D j * (e j - e (j + 1))| := abs_add_le _ _
    _ ≤ |D G| * |e G| +
        ∑ j ∈ Icc 1 (G - 1), |D j| * |e j - e (j + 1)| := by
      rw [abs_mul]
      apply add_le_add le_rfl
      simpa only [abs_mul] using
        abs_sum_le_sum_abs (fun j ↦ D j * (e j - e (j + 1))) (Icc 1 (G - 1))
    _ ≤ (C * Real.sqrt (G : ℝ)) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), (C * Real.sqrt (j : ℝ)) * |e j - e (j + 1)| := by
      apply add_le_add
      · exact mul_le_mul_of_nonneg_right (hbound G (mem_Icc.mpr ⟨hG1, le_rfl⟩))
          (abs_nonneg _)
      · apply sum_le_sum
        intro j hj
        have hjG : j ∈ Icc 1 G :=
          mem_Icc.mpr ⟨(mem_Icc.mp hj).1, (mem_Icc.mp hj).2.trans (Nat.sub_le _ _)⟩
        exact mul_le_mul_of_nonneg_right (hbound j hjG) (abs_nonneg _)
    _ = _ := by
      rw [mul_add, mul_sum]
      congr 1
      · ring
      · apply sum_congr rfl
        intro j _
        ring

theorem weighted_error_zero (a e : ℕ → ℝ) (δ C : ℝ) :
    |(∑ g ∈ Icc 1 0, a g * e g) - δ * (∑ g ∈ Icc 1 0, e g)| =
      C * (Real.sqrt (0 : ℝ) * |e 0| +
        ∑ j ∈ Icc 1 (0 - 1 : ℕ), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) := by
  simp

end FiniteAbelVariationScratch
```
