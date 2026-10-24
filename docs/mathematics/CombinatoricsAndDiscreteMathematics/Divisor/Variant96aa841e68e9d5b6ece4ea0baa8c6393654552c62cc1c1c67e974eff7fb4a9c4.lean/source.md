# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Divisor.Variant96aa841e68e9d5b6ece4ea0baa8c6393654552c62cc1c1c67e974eff7fb4a9c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f28c1862d5a36249817c628ab143e872b51e4cf` · SHA-256 `40899dd00d9d0a5fa8fa73e82620a8e178e6027e9722264d59b512e7e7d3164b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AnalyticZeroDivisor.Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AnalyticZeroDivisor.Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Divisor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Cell
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Finite analytic zero divisors

The divisor explicitly records every zero in one admitted cell together with
its positive multiplicity.  A rejected or absent proof object never inserts a
point into this divisor.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AnalyticZeroDivisor.Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65

namespace Mathematics.RHIsolation

open scoped BigOperators

structure AnalyticZeroDivisor
    (xi : ℂ → ℂ)
    (region : Set ℂ) where
  points : Finset ℂ
  multiplicity : ℂ → Nat
  mem_iff :
    ∀ z,
      z ∈ points ↔
        z ∈ region ∧ xi z = 0
  multiplicity_pos :
    ∀ z ∈ points,
      0 < multiplicity z

def AnalyticZeroDivisor.count
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region) :
    Nat :=
  ∑ z ∈ divisor.points, divisor.multiplicity z

theorem AnalyticZeroDivisor.card_le_count
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region) :
    divisor.points.card ≤ divisor.count := by
  rw [Finset.card_eq_sum_ones,
    AnalyticZeroDivisor.count]
  exact Finset.sum_le_sum fun z hz =>
    divisor.multiplicity_pos z hz

theorem AnalyticZeroDivisor.nonempty_of_count_pos
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region)
    (positive : 0 < divisor.count) :
    divisor.points.Nonempty := by
  by_contra empty
  have pointsEmpty : divisor.points = ∅ :=
    Finset.not_nonempty_iff_eq_empty.mp empty
  simp [AnalyticZeroDivisor.count, pointsEmpty] at positive

theorem AnalyticZeroDivisor.exists_zero_of_count_pos
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region)
    (positive : 0 < divisor.count) :
    ∃ z, z ∈ region ∧ xi z = 0 := by
  obtain ⟨z, hz⟩ :=
    divisor.nonempty_of_count_pos positive
  exact ⟨z, (divisor.mem_iff z).mp hz⟩

end Mathematics.RHIsolation
```
