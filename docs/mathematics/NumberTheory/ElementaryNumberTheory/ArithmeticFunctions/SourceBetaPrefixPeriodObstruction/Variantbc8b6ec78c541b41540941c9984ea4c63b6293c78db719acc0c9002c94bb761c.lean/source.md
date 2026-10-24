# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourceBetaPrefixPeriodObstruction.Variantbc8b6ec78c541b41540941c9984ea4c63b6293c78db719acc0c9002c94bb761c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b6d19e983e20c204373cb39b6a1c734fdbfd237` · SHA-256 `5540d8a732f614ca6825f407e0f2070a459e1fbe66593033376310883371b615`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RealMoebiusFour.Variant17235ef5ec89d431b09f6442bc0e10359d918706ae6577be62b40fa13a741f43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17235ef5ec89d431b09f6442bc0e10359d918706ae6577be62b40fa13a741f43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.RealMoebiusFour.Variant17235ef5ec89d431b09f6442bc0e10359d918706ae6577be62b40fa13a741f43","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"17235ef5ec89d431b09f6442bc0e10359d918706ae6577be62b40fa13a741f43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-restricted-mixed-source-v1/signed-storage-certificate-investigation-v1/SourceBetaPrefixPeriodObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCutoffFlux

/-!
# Literal centered prefixes do not have zero period mean

UNCOMPILED preparation. These finite arithmetic tests reuse the existing
centered coefficient and discrepancy theorem. They distinguish a coefficient
period from the prefix values that enter the actual Abel work. They prove no
inequality for the complete counterterm-paired covariance.

AI attribution: prepared with OpenAI Codex; no native Lean replay is recorded.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RealMoebiusFour.Variant17235ef5ec89d431b09f6442bc0e10359d918706ae6577be62b40fa13a741f43

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceBetaPrefixPeriodObstruction

open ArithmeticFunction SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering

noncomputable section

private theorem real_moebius_four : (moebius 4 : ℝ) = 0 := by
  have h : moebius (2 ^ 2) = 0 := by
    rw [moebius_apply_prime_pow Nat.prime_two (by decide : (2 : ℕ) ≠ 0)]
    norm_num
  exact_mod_cast h

/-- The first strict prefix for U=2 is negative, using the existing coefficient value. -/
theorem prefix_two_three :
    (∑ n ∈ Finset.Ioc 2 3, centeredBeta 2 n) = -(1 / 2 : ℝ) := by
  rw [show Finset.Ioc 2 3 = {3} by decide]
  simpa using centeredBeta_two_has_both_signs.1

/-- A complete coefficient period does have zero sum; this is not a prefix-period mean. -/
theorem coefficient_period_two_zero :
    (∑ n ∈ Finset.Ioc 2 4, centeredBeta 2 n) = 0 := by
  have h := Finset.sum_Ioc_consecutive (fun n ↦ centeredBeta 2 n)
    (by decide : 2 ≤ 3) (by decide : 3 ≤ 4)
  simp only [show Finset.Ioc 2 3 = {3} by decide,
    show Finset.Ioc 3 4 = {4} by decide, Finset.sum_singleton] at h
  rw [centeredBeta_two_has_both_signs.1, centeredBeta_two_has_both_signs.2] at h
  linarith

/-- The prefix values across that same coefficient period have a nonzero signed sum. -/
theorem prefix_period_two_nonzero_sum :
    (∑ k ∈ Finset.Icc 3 4, ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) =
      -(1 / 2 : ℝ) := by
  rw [show Finset.Icc 3 4 = {3, 4} by decide]
  norm_num [prefix_two_three, coefficient_period_two_zero]

/-- Consequently a universal zero-mean prefix-period claim is false already at U=2. -/
theorem zero_mean_prefix_period_claim_is_false :
    ¬ ∀ a : ℕ, 2 ≤ a →
      (∑ k ∈ Finset.Icc (a + 1) (a + 2),
        ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) = 0 := by
  intro h
  have h2 := h 2 (by norm_num)
  have hp := prefix_period_two_nonzero_sum
  change (∑ k ∈ Finset.Icc 3 4, ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) = 0 at h2
  linarith

/-- The literal U=4 prefix at five is negative; all quotient casts stay separate. -/
theorem prefix_four_five :
    (∑ n ∈ Finset.Ioc 4 5, centeredBeta 4 n) = -(5 / 6 : ℝ) := by
  rw [centeredBeta_interval_eq_discrepancy 4 4 5 (by norm_num) le_rfl (by norm_num)]
  norm_num [show Finset.Icc 1 4 = {1, 2, 3, 4} by decide, floorDiscrepancy,
    moebius_apply_prime Nat.prime_two, moebius_apply_prime (by decide : Nat.Prime 3),
    real_moebius_four]

/-- The next literal U=4 prefix is positive, despite retaining the same centered row. -/
theorem prefix_four_six :
    (∑ n ∈ Finset.Ioc 4 6, centeredBeta 4 n) = (1 / 3 : ℝ) := by
  rw [centeredBeta_interval_eq_discrepancy 4 4 6 (by norm_num) le_rfl (by norm_num)]
  norm_num [show Finset.Icc 1 4 = {1, 2, 3, 4} by decide, floorDiscrepancy,
    moebius_apply_prime Nat.prime_two, moebius_apply_prime (by decide : Nat.Prime 3),
    real_moebius_four]

/-- Prefix one-sign reasoning fails on the actual row, before any source kernel is applied. -/
theorem prefix_four_has_both_signs :
    (∑ n ∈ Finset.Ioc 4 5, centeredBeta 4 n) < 0 ∧
      0 < (∑ n ∈ Finset.Ioc 4 6, centeredBeta 4 n) := by
  rw [prefix_four_five, prefix_four_six]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceBetaPrefixPeriodObstruction
```
