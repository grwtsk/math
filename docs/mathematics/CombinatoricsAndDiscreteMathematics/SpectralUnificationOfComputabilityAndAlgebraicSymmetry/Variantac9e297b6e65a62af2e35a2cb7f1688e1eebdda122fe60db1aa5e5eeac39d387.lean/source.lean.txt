-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MobiusDiagonal.Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MobiusDiagonal.Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# The diagonal Cauchy--Schwarz budget at the exact source length

These are lower bounds on a proposed nonnegative norm budget, not on the
signed residual or its second moments. Even this optimistic diagonal-only
budget grows at the actual cutoff; it cannot supply a fixed closing constant.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MobiusDiagonal.Variant93fe886e02250eb89b2214ed14f6771e4b23b078ea64bf283732391e25870056

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateDirichletDiagonalScale

open EstimateMobiusSplit EstimateMertensAbel EstimateSourceMobiusKernel

noncomputable section

/-- The Möbius coefficient square sum for the full actual inventory. -/
def mobiusDiagonal (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, realMoebius n ^ 2 / (n : ℝ)

/-- The logarithmic coefficient square sum for the same actual inventory. -/
def logDiagonal (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, Real.log (n : ℝ) ^ 2 / (n : ℝ)

theorem mobiusDiagonal_one_le (N : ℕ) (hN : 1 ≤ N) :
    1 ≤ mobiusDiagonal N := by
  have h := Finset.single_le_sum
    (fun n (_hn : n ∈ Finset.Icc 1 N) ↦
      div_nonneg (sq_nonneg (realMoebius n)) (Nat.cast_nonneg n))
    (Finset.mem_Icc.mpr ⟨by omega, hN⟩ : 1 ∈ Finset.Icc 1 N)
  simpa [mobiusDiagonal, realMoebius] using h

theorem logDiagonal_nonneg (N : ℕ) : 0 ≤ logDiagonal N := by
  exact Finset.sum_nonneg (fun n _ ↦ div_nonneg (sq_nonneg _) (Nat.cast_nonneg n))

/-- A harmonic lower bound needs no squarefree-density estimate. -/
theorem logDiagonal_harmonic_lower (N : ℕ) (hN : 1 ≤ N) :
    Real.log 2 ^ 2 * ((harmonic N : ℝ) - 1) ≤ logDiagonal N := by
  have hsum : Real.log 2 ^ 2 * (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) ≤
      logDiagonal N + Real.log 2 ^ 2 := by
    rw [Finset.mul_sum]
    calc
      _ ≤ ∑ n ∈ Finset.Icc 1 N,
          (Real.log (n : ℝ) ^ 2 / (n : ℝ) +
            if n = 1 then Real.log 2 ^ 2 else 0) := by
        apply Finset.sum_le_sum
        intro n hn
        by_cases hn1 : n = 1
        · subst n
          simp
        · have hn2 : 2 ≤ n := by have := (Finset.mem_Icc.mp hn).1; omega
          have hlog : Real.log 2 ≤ Real.log (n : ℝ) := by
            apply Real.log_le_log (by norm_num)
            exact_mod_cast hn2
          have hsq : Real.log 2 ^ 2 ≤ Real.log (n : ℝ) ^ 2 :=
            (sq_le_sq₀ (by positivity) (by positivity)).2 hlog
          simpa [hn1, div_eq_mul_inv] using
            mul_le_mul_of_nonneg_right hsq (inv_nonneg.mpr (Nat.cast_nonneg n))
      _ = _ := by simp [logDiagonal, Finset.sum_add_distrib, hN]
  have heq : (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) = (harmonic N : ℝ) := by
    rw [harmonic_eq_sum_Icc]
    simp
  rw [heq] at hsum
  nlinarith

/-- The fixed logarithm weight alone forces growth with the polynomial length. -/
theorem logDiagonal_log_lower (N : ℕ) (hN : 1 ≤ N) :
    Real.log 2 ^ 2 * (Real.log (N + 1 : ℕ) - 1) ≤ logDiagonal N := by
  exact (mul_le_mul_of_nonneg_left
    (sub_le_sub_right (log_add_one_le_harmonic N) 1) (sq_nonneg _)).trans
      (logDiagonal_harmonic_lower N hN)

/-- At the actual cutoff this lower bound is linear in the admitted real scale. -/
theorem logDiagonal_source_lower (A : ℝ) (hA : 1 ≤ A) :
    Real.log 2 ^ 2 * (2 * A - 1) ≤ logDiagonal (sourceKernelCutoff A) := by
  have hN : 1 ≤ sourceKernelCutoff A := by
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    norm_num only [Nat.cast_one]
    exact Real.one_le_exp (by linarith)
  have hh := log_le_harmonic_floor (Real.exp (2 * A)) (Real.exp_pos _).le
  rw [Real.log_exp] at hh
  exact (mul_le_mul_of_nonneg_left (sub_le_sub_right hh 1) (sq_nonneg _)).trans
    (logDiagonal_harmonic_lower _ hN)

/-- Squaring the ideal diagonal-only Cauchy--Schwarz budget still leaves this growing term. -/
theorem diagonal_budget_source_lower (A : ℝ) (hA : 1 ≤ A) :
    Real.log 2 ^ 2 * (2 * A - 1) ≤
      mobiusDiagonal (sourceKernelCutoff A) * logDiagonal (sourceKernelCutoff A) := by
  have hN : 1 ≤ sourceKernelCutoff A := by
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    norm_num only [Nat.cast_one]
    exact Real.one_le_exp (by linarith)
  apply (logDiagonal_source_lower A hA).trans
  simpa only [one_mul] using
    (mul_le_mul_of_nonneg_right (mobiusDiagonal_one_le _ hN) (logDiagonal_nonneg _))

/-- No fixed tail norm budget exists, even if every off-diagonal cost were discarded. -/
theorem no_diagonal_budget_tail_upper_bound :
    ¬ ∃ D R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      mobiusDiagonal (sourceKernelCutoff A) * logDiagonal (sourceKernelCutoff A) ≤ D := by
  rintro ⟨D, R, hR, hD⟩
  have hc : 0 < Real.log 2 ^ 2 := sq_pos_of_pos (Real.log_pos (by norm_num))
  let A : ℝ := max R ((D + 1) / (2 * Real.log 2 ^ 2) + 1)
  have hRA : R ≤ A := le_max_left _ _
  have hA : 1 ≤ A := hR.trans hRA
  have hlarge : (D + 1) / (2 * Real.log 2 ^ 2) + 1 ≤ A := le_max_right _ _
  have hbudget := (diagonal_budget_source_lower A hA).trans (hD A hRA)
  have hineq := (div_le_iff₀ (by positivity : 0 < 2 * Real.log 2 ^ 2)).mp
    (show (D + 1) / (2 * Real.log 2 ^ 2) ≤ A - 1 by linarith)
  nlinarith

end
end EstimateDirichletDiagonalScale
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
