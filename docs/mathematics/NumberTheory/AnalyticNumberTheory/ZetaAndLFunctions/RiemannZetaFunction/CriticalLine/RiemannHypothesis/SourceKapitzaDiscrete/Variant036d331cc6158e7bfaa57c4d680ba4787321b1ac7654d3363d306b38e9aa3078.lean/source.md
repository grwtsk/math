# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaDiscrete.Variant036d331cc6158e7bfaa57c4d680ba4787321b1ac7654d3363d306b38e9aa3078

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b203e708acc3c94ce062bc2d36fcbc85e604b659` · SHA-256 `b8564159efb9b50425d590366d4683defb4c4952c7f19db122e7ba18b7af087e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerDiscrepancy.Variant13eb8d3721a41e385bc77ce6b2d75e11fd4cb55537bac91e8637185c091b56ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13eb8d3721a41e385bc77ce6b2d75e11fd4cb55537bac91e8637185c091b56ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.IntegerDiscrepancy.Variant13eb8d3721a41e385bc77ce6b2d75e11fd4cb55537bac91e8637185c091b56ba","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"13eb8d3721a41e385bc77ce6b2d75e11fd4cb55537bac91e8637185c091b56ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaDiscrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerDiscrepancy.Variant13eb8d3721a41e385bc77ce6b2d75e11fd4cb55537bac91e8637185c091b56ba

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

/-- The physical endpoint sample differs from its integer-node sample by the full real phase. -/
theorem endpointValue_closed_phase (A : ℝ) (hA : 0 ≤ A) :
    Real.exp (2 * A) * endpointValue A =
      (⌊Real.exp (2 * A)⌋₊ : ℝ) * integerDiscrepancy ⌊Real.exp (2 * A)⌋₊ -
        (Real.exp (2 * A) - (⌊Real.exp (2 * A)⌋₊ : ℝ)) := by
  have hN : 1 ≤ ⌊Real.exp (2 * A)⌋₊ :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hN0 : (⌊Real.exp (2 * A)⌋₊ : ℝ) ≠ 0 := by
    exact_mod_cast (show ⌊Real.exp (2 * A)⌋₊ ≠ 0 by omega)
  have hx0 : Real.exp (2 * A) ≠ 0 := (Real.exp_pos _).ne'
  have hpref : chebyshevPrimePower (Real.exp (2 * A)) =
      chebyshevPrimePower (⌊Real.exp (2 * A)⌋₊ : ℕ) := by
    unfold chebyshevPrimePower
    rw [Nat.floor_natCast]
  rw [endpointValue, normalizedPsiError_eq_prefix, Real.exp_neg,
    integerDiscrepancy_eq_prefix hN, hpref]
  field_simp
  ring

/-- Compensation at the literal cutoff includes the exact fractional phase and initial unit. -/
theorem compensated_closed_cutoff_eq_endpoint (A : ℝ) (hA : 0 ≤ A) :
    (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊, compensatedImpulse n) =
      Real.exp (2 * A) * endpointValue A +
        (Real.exp (2 * A) - (⌊Real.exp (2 * A)⌋₊ : ℝ)) + 1 := by
  rw [compensated_closed_cutoff_eq A hA]
  linarith [endpointValue_closed_phase A hA]

/-- The real phase costs less than one; it is not silently set to zero. -/
theorem closed_cutoff_phase_bounds (A : ℝ) :
    0 ≤ Real.exp (2 * A) - (⌊Real.exp (2 * A)⌋₊ : ℝ) ∧
      Real.exp (2 * A) - (⌊Real.exp (2 * A)⌋₊ : ℝ) < 1 := by
  have hlo := Nat.floor_le (Real.exp_pos (2 * A)).le
  have hup := Nat.lt_floor_add_one (Real.exp (2 * A))
  constructor <;> linarith

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
