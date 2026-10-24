# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9SourceKapitzaDis.Variantac3172239e3a58ab2fb8abf7347b51367931b297247e71244c112c6c40490aae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38d1f6d31462d7a84bbe4616af20abce5d598d7b` · SHA-256 `fba62ad03449ae4ceea757f3ad4dbf0fc5bf1c845e55ead59732a4904aa46a53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerDiscrepancy.Variant73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.IntegerDiscrepancy.Variant73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/73/73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9--SourceKapitzaDiscrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# Exact compensated prime-cell recurrence

Task RH16-KAPITZA-20261007, cycle K-C3. grwtsk contributors supplied the
originating Kapitza direction; its original date is unverified. This recovery
is dated 7 October 2026. Codex supplies these particular source calculations
and formalizations, following a proposal returned by the destination review.

Return: https://chatgpt.com/g/g-p-6abfd4d5cba0819187bc5ffdb6641342-riemann/c/6ac66887-fbd4-83e8-be38-1248b35f5e37

The count is the original complete closed Chebyshev prefix. Its compensated
forcing has both signs and no mean-zero assumption. The local contraction is
not a uniform arithmetic-work bound. No RH/#16 premise or conclusion is used.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerDiscrepancy.Variant73b4c2e30afc75341d9c83835eb98e9091eb9fae6c87cd9057ddbbd4c40a5be9

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete

open SourcePairing SourceKapitzaReconstruction SourceKapitzaSourceStorage

/-- Actual integer-node discrepancy, including the closed event at log n. -/
def integerDiscrepancy (n : ℕ) : ℝ := normalizedPsiError (Real.log n)

/-- The actual nonaffine readout at the same node; arithmetic A is unrestricted. -/
def integerNonaffine (A : ℝ) (n : ℕ) : ℝ := nonaffineDiscrepancy A (Real.log n)

/-- Literal compensated coefficient of each natural, including every prime power. -/
def compensatedImpulse (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n - 1

theorem closed_prefix_succ {n : ℕ} (hn : 1 ≤ n) :
    chebyshevPrimePower (n + 1 : ℕ) =
      chebyshevPrimePower n + ArithmeticFunction.vonMangoldt (n + 1) := by
  unfold chebyshevPrimePower
  simp only [Nat.floor_natCast]
  exact Finset.sum_Icc_succ_top (by omega) _

theorem integerDiscrepancy_eq_prefix {n : ℕ} (hn : 1 ≤ n) :
    integerDiscrepancy n = chebyshevPrimePower n / (n : ℝ) - 1 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  rw [integerDiscrepancy, normalizedPsiError_eq_prefix, Real.exp_neg,
    Real.exp_log hn0]
  ring

theorem integerDiscrepancy_one : integerDiscrepancy 1 = -1 := by
  simpa only [integerDiscrepancy, Nat.cast_one, Real.log_one] using normalizedPsiError_zero

/-- Exact source recurrence: the next event is included with its full coefficient. -/
theorem integerDiscrepancy_succ {n : ℕ} (hn : 1 ≤ n) :
    integerDiscrepancy (n + 1) =
      (n : ℝ) / (n + 1 : ℕ) * integerDiscrepancy n +
        compensatedImpulse (n + 1) / (n + 1 : ℕ) := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by omega)
  have hnext0 : ((n + 1 : ℕ) : ℝ) ≠ 0 := by positivity
  rw [integerDiscrepancy_eq_prefix (by omega : 1 ≤ n + 1),
    integerDiscrepancy_eq_prefix hn, closed_prefix_succ hn]
  unfold compensatedImpulse
  push_cast
  field_simp
  ring

theorem affineTrend_log_succ (A : ℝ) (n : ℕ) :
    affineTrend A (Real.log (n + 1 : ℕ)) = affineTrend A (Real.log n) -
      endpointSlope A * (Real.log (n + 1 : ℕ) - Real.log n) := by
  unfold affineTrend
  ring

/-- Exact recurrence after affine subtraction, preserving slope and real arithmetic scale. -/
theorem integerNonaffine_succ (A : ℝ) {n : ℕ} (hn : 1 ≤ n) :
    integerNonaffine A (n + 1) =
      (n : ℝ) / (n + 1 : ℕ) * integerNonaffine A n +
        (compensatedImpulse (n + 1) - affineTrend A (Real.log n)) / (n + 1 : ℕ) +
        endpointSlope A * (Real.log (n + 1 : ℕ) - Real.log n) := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by omega)
  have hnext0 : ((n + 1 : ℕ) : ℝ) ≠ 0 := by positivity
  change integerDiscrepancy (n + 1) - affineTrend A (Real.log (n + 1 : ℕ)) = _
  rw [integerDiscrepancy_succ hn, affineTrend_log_succ]
  change _ = (n : ℝ) / (n + 1 : ℕ) *
    (integerDiscrepancy n - affineTrend A (Real.log n)) + _ + _
  push_cast
  field_simp
  ring

/-- Equivalent state/forcing recurrence; the slope correction pays its entire cost. -/
theorem integerNonaffine_succ_forcing (A : ℝ) {n : ℕ} (hn : 1 ≤ n) :
    integerNonaffine A (n + 1) =
      (n : ℝ) / (n + 1 : ℕ) * integerNonaffine A n +
        (ArithmeticFunction.vonMangoldt (n + 1) + sourceForcing A (Real.log n)) /
          (n + 1 : ℕ) +
        endpointSlope A *
          (Real.log (n + 1 : ℕ) - Real.log n - 1 / (n + 1 : ℕ)) := by
  rw [integerNonaffine_succ A hn]
  unfold compensatedImpulse sourceForcing
  ring

/-- The initial natural cell starts at the actual lower trace, not an omitted log zero. -/
theorem integerNonaffine_one (A : ℝ) :
    integerNonaffine A 1 = -1 - affineTrend A 0 := by
  simp only [integerNonaffine, nonaffineDiscrepancy, Nat.cast_one, Real.log_one,
    normalizedPsiError_zero]

/-- If the cutoff touches a natural event, use its post-event closed discrepancy. -/
theorem integerNonaffine_touching_cutoff (A : ℝ) {N : ℕ}
    (hcut : (N : ℝ) = Real.exp (2 * A)) : integerNonaffine A N = 0 := by
  rw [integerNonaffine, hcut, Real.log_exp]
  exact nonaffineDiscrepancy_upper A

/-- The one-step multiplier is strictly contractive, but depends on the natural inventory. -/
theorem node_multiplier_lt_one {n : ℕ} (hn : 1 ≤ n) :
    0 < (n : ℝ) / (n + 1 : ℕ) ∧ (n : ℝ) / (n + 1 : ℕ) < 1 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hnext0 : (0 : ℝ) < (n + 1 : ℕ) := by positivity
  constructor
  · exact div_pos hn0 hnext0
  · apply (div_lt_one hnext0).mpr
    exact_mod_cast Nat.lt_succ_self n

/-- No fixed rho<1 controls all of these natural-node multipliers. -/
theorem no_uniform_node_multiplier {rho : ℝ} (hrho : rho < 1) :
    ∃ n : ℕ, 1 ≤ n ∧ rho < (n : ℝ) / (n + 1 : ℕ) := by
  have hgap : 0 < 1 - rho := by linarith
  obtain ⟨n, hn⟩ := exists_nat_gt (max 1 (rho / (1 - rho)))
  have hn1 : (1 : ℝ) < n := (le_max_left _ _).trans_lt hn
  have hnratio : rho / (1 - rho) < (n : ℝ) := (le_max_right _ _).trans_lt hn
  have hb := (div_lt_iff₀ hgap).mp hnratio
  refine ⟨n, ?_, ?_⟩
  · exact_mod_cast hn1.le
  · have hnext0 : (0 : ℝ) < (n + 1 : ℕ) := by positivity
    apply (lt_div_iff₀ hnext0).mpr
    push_cast
    nlinarith

/-- Exact accumulated compensated forcing; this is deterministic prefix error. -/
theorem compensated_prefix_eq {N : ℕ} (hN : 1 ≤ N) :
    (∑ n ∈ Finset.Icc 2 N, compensatedImpulse n) =
      chebyshevPrimePower N - ((N : ℝ) - 1) := by
  have hcard : (Finset.Icc 2 N).card = N - 1 := by rw [Nat.card_Icc]; omega
  unfold compensatedImpulse chebyshevPrimePower
  rw [Nat.floor_natCast, Finset.sum_sub_distrib]
  simp only [Finset.sum_const, hcard, nsmul_eq_mul, mul_one]
  rw [Nat.cast_sub hN, Nat.cast_one]

/-- Compensation telescopes to the full original discrepancy with the initial minus one. -/
theorem compensated_prefix_eq_discrepancy {N : ℕ} (hN : 1 ≤ N) :
    (N : ℝ) * integerDiscrepancy N =
      (∑ n ∈ Finset.Icc 2 N, compensatedImpulse n) - 1 := by
  have hN0 : (N : ℝ) ≠ 0 := by exact_mod_cast (show N ≠ 0 by omega)
  rw [compensated_prefix_eq hN, integerDiscrepancy_eq_prefix hN]
  field_simp
  ring

/-- Full literal closed arithmetic inventory, with its initial trace retained. -/
theorem compensated_closed_cutoff_eq (A : ℝ) (hA : 0 ≤ A) :
    (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊, compensatedImpulse n) =
      (⌊Real.exp (2 * A)⌋₊ : ℝ) * integerDiscrepancy ⌊Real.exp (2 * A)⌋₊ + 1 := by
  have hN : 1 ≤ ⌊Real.exp (2 * A)⌋₊ :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  linarith [compensated_prefix_eq_discrepancy hN]

theorem compensatedImpulse_ge_neg_one (n : ℕ) : -1 ≤ compensatedImpulse n := by
  unfold compensatedImpulse
  linarith [ArithmeticFunction.vonMangoldt_nonneg (n := n)]

/-- Negative deterministic compensated forcing occurs even at every positive power of two. -/
theorem compensatedImpulse_two_power_neg {k : ℕ} (hk : k ≠ 0) :
    compensatedImpulse (2 ^ k) < 0 := by
  rw [compensatedImpulse, ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
  have hl := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    (by norm_num : (2 : ℝ) ≠ 1)
  norm_num at hl ⊢
  linarith

/-- Positive deterministic compensated forcing occurs at every positive power of three. -/
theorem compensatedImpulse_three_power_pos {k : ℕ} (hk : k ≠ 0) :
    0 < compensatedImpulse (3 ^ k) := by
  rw [compensatedImpulse, ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)]
  have hl : (1 : ℝ) < Real.log 3 :=
    (Real.lt_log_iff_exp_lt (by norm_num : (0 : ℝ) < 3)).mpr Real.exp_one_lt_three
  norm_num only [Nat.cast_ofNat]
  linarith

end FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete
```
