# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Grid.Variant79753597db5bb3acf7c6eff1adf074f1d80d48de08ba5348a179ae99415ebd91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4155527568f0c57aada6bad9a1a3100c02d0ac13` · SHA-256 `919cf1cd2076fcad593619d501d37c1c39075d3350c1610b0b4fc555a317209a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DfunAeCell.Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DfunAeCell.Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/PairCeiling/Grid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/PairCeiling/Grid.lean — closed forms of E = ∫₀ˣ D at the grid points (consumed by Bridge.lean):
  Efun s N (m/N) = Σ_{i<m} ( Csum s i / N − (((i+1)/N)³ − (i/N)³)/6 ),   m ≤ N.
-/
import Zeta23.PairCeiling.Stability


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DfunAeCell.Variant33a7da37a23ac59ba2cf4bcff693150fe2c0c24380e44d402f39c9121bfa901c

open scoped BigOperators Interval
open MeasureTheory Set intervalIntegral

noncomputable section

namespace Zeta23
namespace PairCeiling

variable {s : ℕ → ℝ} {N : ℕ}

/-- a.e. on a cell, D is the polynomial C_i − t²/2. -/
lemma Dfun_ae_cell (hN : 0 < N) {i : ℕ} (hi : i < N) :
    ∀ᵐ t ∂volume, t ∈ Ι ((i:ℝ)/N) ((i+1:ℝ)/N) → Dfun s N t = Csum s i - t ^ 2 / 2 := by
  filter_upwards [Cstep_ae_cell (s := s) hN hi] with t ht hmem
  simp [Dfun, ht hmem]

/-- the cell integral of D. -/
lemma integral_Dfun_cell (hN : 0 < N) {i : ℕ} (hi : i < N) :
    ∫ t in ((i:ℝ)/N)..((i+1:ℝ)/N), Dfun s N t
      = Csum s i / N - ((((i:ℝ)+1)/N) ^ 3 - ((i:ℝ)/N) ^ 3) / 6 := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  rw [intervalIntegral.integral_congr_ae (Dfun_ae_cell (s := s) hN hi)]
  rw [intervalIntegral.integral_sub _root_.intervalIntegrable_const
        (((by fun_prop : Continuous fun t : ℝ => t ^ 2 / 2)).intervalIntegrable _ _)]
  rw [intervalIntegral.integral_const, smul_eq_mul]
  have h2 : ∫ t in ((i:ℝ)/N)..((i+1:ℝ)/N), t ^ 2 / 2
      = ((((i:ℝ)+1)/N) ^ 3 - ((i:ℝ)/N) ^ 3) / 6 := by
    rw [intervalIntegral.integral_div, integral_pow]
    push_cast
    ring
  rw [h2]
  field_simp
  ring

/-- **E at the grid points.** -/
theorem Efun_grid (hN : 0 < N) {m : ℕ} (hm : m ≤ N) :
    Efun s N ((m:ℝ)/N) = ∑ i ∈ Finset.range m, (Csum s i / N - ((((i:ℝ)+1)/N) ^ 3 - ((i:ℝ)/N) ^ 3) / 6) := by
  have hNr : (0 : ℝ) < N := by exact_mod_cast hN
  unfold Efun
  have hint : ∀ k < m, IntervalIntegrable (Dfun s N) volume ((fun i : ℕ => (i:ℝ)/N) k) ((fun i : ℕ => (i:ℝ)/N) (k+1)) := by
    intro k hk
    have hk' : k < N := lt_of_lt_of_le hk hm
    refine (intervalIntegrable_Dfun (s := s) hN).mono_set ?_
    rw [uIcc_of_le zero_le_one]
    simpa [Nat.cast_succ] using cell_subset hN hk'
  have key := intervalIntegral.sum_integral_adjacent_intervals hint
  simp only [Nat.cast_zero, zero_div] at key
  rw [← key]
  refine Finset.sum_congr rfl fun i hi => ?_
  have hi' : i < N := lt_of_lt_of_le (Finset.mem_range.mp hi) hm
  simpa [Nat.cast_succ] using integral_Dfun_cell (s := s) hN hi'

/-- D at the grid points (right value): D(m/N) = C_m − (m/N)²/2, m ≤ N. -/
theorem Dfun_grid (hN : 0 < N) {m : ℕ} (hm : m ≤ N) :
    Dfun s N ((m:ℝ)/N) = Csum s m - ((m:ℝ)/N) ^ 2 / 2 := by
  rcases Nat.lt_or_ge m N with h | h
  · simp [Dfun, Cstep_eq_Csum_of_mem hN (Nat.succ_le_of_lt h) ⟨le_rfl, by
      have hNr : (0 : ℝ) < N := by exact_mod_cast hN
      gcongr; linarith⟩]
  · have : m = N := le_antisymm hm h
    subst this
    have hNr : (0 : ℝ) < (m:ℕ) := by exact_mod_cast hN
    simp [Dfun, div_self hNr.ne', Cstep_one hN]

end PairCeiling
end Zeta23

end
```
