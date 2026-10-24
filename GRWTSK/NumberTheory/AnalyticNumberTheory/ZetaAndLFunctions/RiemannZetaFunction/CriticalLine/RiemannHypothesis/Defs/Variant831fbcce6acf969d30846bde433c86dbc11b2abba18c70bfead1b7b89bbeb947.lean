-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Csum.Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Csum.Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/PairCeiling/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/PairCeiling/Defs.lean — shared definitions for the bandwidth-1 pair-correlation CEILING theorem
(analytic half: Stability.lean; numeric-certificate half: NumericCert.lean, RowCert.lean).

Weights s : ℕ → ℝ are the atom masses at the grid points j/N, j = 1..N (for a configuration: s j = S(j)/N).
  Csum s m        := Σ_{j=1}^{m} s j                                   (C_m)
  Cstep s N x     := Σ_{1 ≤ j ≤ N, j/N ≤ x} s j                         (right-continuous step function; = C_m on [m/N,(m+1)/N))
  Dfun s N x      := Cstep s N x − x²/2                                 (discrepancy against the GUE datum k dk)
  Efun s N x      := ∫₀ˣ Dfun                                           (integrated discrepancy)
-/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Csum.Variant7a32f16cbcb78d03fb05b9479f31d8dd35e4a72155b2d21100d225d447070852

open scoped BigOperators
open MeasureTheory Set

noncomputable section

namespace Zeta23
namespace PairCeiling

/-- partial sums C_m := Σ_{j=1}^{m} s j. -/
def Csum (s : ℕ → ℝ) (m : ℕ) : ℝ := ∑ j ∈ Finset.Icc 1 m, s j

/-- the right-continuous step function C(x) = Σ_{1 ≤ j ≤ N, j/N ≤ x} s_j. -/
def Cstep (s : ℕ → ℝ) (N : ℕ) (x : ℝ) : ℝ := ∑ j ∈ (Finset.Icc 1 N).filter (fun j : ℕ => ((j : ℕ) : ℝ) / N ≤ x), s j

/-- D := C − x²/2. -/
def Dfun (s : ℕ → ℝ) (N : ℕ) (x : ℝ) : ℝ := Cstep s N x - x ^ 2 / 2

/-- E := ∫₀ˣ D. -/
def Efun (s : ℕ → ℝ) (N : ℕ) (x : ℝ) : ℝ := ∫ t in (0:ℝ)..x, Dfun s N t

variable {s : ℕ → ℝ} {N : ℕ}

@[simp] lemma Csum_zero : Csum s 0 = 0 := by simp [Csum]

lemma Csum_succ (m : ℕ) : Csum s (m + 1) = Csum s m + s (m + 1) := by
  unfold Csum
  rw [Finset.sum_Icc_succ_top (by omega)]

/-- on the cell [m/N, (m+1)/N) the step function equals C_m (m + 1 ≤ N). -/
lemma Cstep_eq_Csum_of_mem (hN : 0 < N) {m : ℕ} (hm : m + 1 ≤ N) {x : ℝ}
    (hx : x ∈ Ico ((m : ℝ) / N) ((m + 1 : ℝ) / N)) : Cstep s N x = Csum s m := by
  unfold Cstep Csum
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  refine Finset.sum_congr ?_ fun _ _ => rfl
  ext j
  simp only [Finset.mem_filter, Finset.mem_Icc]
  constructor
  · rintro ⟨⟨h1, _⟩, hjx⟩
    refine ⟨h1, ?_⟩
    have h' : (j : ℝ) / N < (m + 1 : ℝ) / N := lt_of_le_of_lt hjx hx.2
    rw [div_lt_div_iff_of_pos_right hNr] at h'
    have : (j : ℕ) < m + 1 := by exact_mod_cast h'
    omega
  · rintro ⟨h1, hjm⟩
    refine ⟨⟨h1, by omega⟩, le_trans ?_ hx.1⟩
    gcongr

/-- past the last atom the step function is C_N: for x ≥ 1. -/
lemma Cstep_eq_Csum_of_one_le (hN : 0 < N) {x : ℝ} (hx : 1 ≤ x) : Cstep s N x = Csum s N := by
  unfold Cstep Csum
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  refine Finset.sum_congr ?_ fun _ _ => rfl
  ext j
  simp only [Finset.mem_filter, Finset.mem_Icc, and_iff_left_iff_imp, and_imp]
  intro _ hj
  refine le_trans ?_ hx
  rw [div_le_one hNr]; exact_mod_cast hj

lemma Cstep_one (hN : 0 < N) : Cstep s N 1 = Csum s N := Cstep_eq_Csum_of_one_le hN le_rfl

/-- before the first atom: C = 0 for x < 1/N (in particular for x < 0). -/
lemma Cstep_eq_zero_of_lt (hN : 0 < N) {x : ℝ} (hx : x < 1 / N) : Cstep s N x = 0 := by
  unfold Cstep
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  refine Finset.sum_eq_zero fun j hj => ?_
  simp only [Finset.mem_filter, Finset.mem_Icc] at hj
  exfalso
  have : (1 : ℝ) / N ≤ (j : ℝ) / N := by gcongr; exact_mod_cast hj.1.1
  linarith [hj.2]

lemma Dfun_one (hN : 0 < N) : Dfun s N 1 = Csum s N - 1 / 2 := by
  simp [Dfun, Cstep_one hN]

@[simp] lemma Efun_zero : Efun s N 0 = 0 := by simp [Efun]

end PairCeiling
end Zeta23

end
