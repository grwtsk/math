# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Ceiling.Variant47e09cb62e80e7f3e6eb823bb487197b11d6db8ea26504c44dc0021464fde335

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3762a336b9839a18a7ba68dbb21434d79d9f604e` · SHA-256 `82781a0bdb8191a597c4de18fd17735390e182e258649b7c054896ac681e872b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CeilingOfValidAt.Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CeilingOfValidAt.Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/PairCeiling/Ceiling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/PairCeiling/Ceiling.lean — the CEILING THEOREM in certificate language:
if a pair (c₀, r) satisfies the certificate inequality at ONE configuration whose form-factor measure has masses s_j at j/N
and whose fraction of simple points is p₁ — i.e. c₀ + Σ_j s_j r(j/N) ≤ p₁ — then its VALUE v = c₀ + ∫₀¹ r(k)k dk obeys
      v ≤ p₁ + |r(1)|·|D(1)| + |r′(1)|·|E(1)| + (sup|E|)·∫₀¹|r″|,
and the parametrised corollary with numeric bounds.  (The configuration-specific numbers for an instance come from
NumericCert.lean + Bridge.lean, or from RowCert.lean + NearCUE.lean; the N = 256 law is assembled in CeilingLaw256.lean.)
-/
import Zeta23.PairCeiling.Stability


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CeilingOfValidAt.Variantfee98c36afd0efeb279e784b4a0060eb558a5543bafb7f4fcd9b7ec9af58c3f9

open scoped BigOperators Interval
open MeasureTheory Set intervalIntegral

noncomputable section

namespace Zeta23
namespace PairCeiling

variable {s : ℕ → ℝ} {N : ℕ}

/-- **CEILING (abstract form).** Validity of the certificate at the configuration (masses s at j/N, simple fraction p₁)
bounds the certificate's value by p₁ plus the stability error. -/
theorem ceiling_of_valid_at (hN : 0 < N) {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable) {M p₁ c₀ : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hM : ∀ x ∈ Icc (0:ℝ) 1, |Efun s N x| ≤ M)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) ≤ p₁) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x
      ≤ p₁ + (|r 1| * |Dfun s N 1| + |g 1| * |Efun s N 1| + M * ∫ x in (0:ℝ)..1, |h x|) := by
  have hst := ceiling_stability hN hT hr hg hgh hh hM
  have : ∫ x in (0:ℝ)..1, r x * x ≤ ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N)
      + (|r 1| * |Dfun s N 1| + |g 1| * |Efun s N 1| + M * ∫ x in (0:ℝ)..1, |h x|) := by
    have := neg_abs_le (∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) - ∫ x in (0:ℝ)..1, r x * x)
    linarith
  linarith

/-- **CEILING (parametrised corollary).** With numeric bounds |D(1)| ≤ d₁, |E(1)| ≤ e₁, sup|E| ≤ M for the configuration
and |r(1)| ≤ a, |r′(1)| ≤ b, ∫₀¹|r″| ≤ c for the certificate:  v ≤ p₁ + d₁·a + e₁·b + M·c. -/
theorem ceiling_numeric (hN : 0 < N) {r g h : ℝ → ℝ} {T : Set ℝ} (hT : T.Countable)
    {M p₁ c₀ d₁ e₁ a b c : ℝ}
    (hr : ∀ x ∈ Icc (0:ℝ) 1, HasDerivAt r (g x) x) (hg : ContinuousOn g (Icc (0:ℝ) 1))
    (hgh : ∀ x ∈ Ioo (0:ℝ) 1 \ T, HasDerivAt g (h x) x) (hh : IntervalIntegrable h volume 0 1)
    (hM : ∀ x ∈ Icc (0:ℝ) 1, |Efun s N x| ≤ M)
    (hD1 : |Dfun s N 1| ≤ d₁) (hE1 : |Efun s N 1| ≤ e₁)
    (ha : |r 1| ≤ a) (hb : |g 1| ≤ b) (hc : ∫ x in (0:ℝ)..1, |h x| ≤ c)
    (hvalid : c₀ + ∑ j ∈ Finset.Icc 1 N, s j * r ((j:ℝ)/N) ≤ p₁) :
    c₀ + ∫ x in (0:ℝ)..1, r x * x ≤ p₁ + d₁ * a + e₁ * b + M * c := by
  have h0 := ceiling_of_valid_at hN hT hr hg hgh hh hM hvalid
  have hM0 : 0 ≤ M := le_trans (abs_nonneg _) (hM 0 ⟨le_rfl, zero_le_one⟩)
  have hint0 : 0 ≤ ∫ x in (0:ℝ)..1, |h x| :=
    intervalIntegral.integral_nonneg zero_le_one fun x _ => abs_nonneg _
  have h1 : |r 1| * |Dfun s N 1| ≤ d₁ * a := by
    calc |r 1| * |Dfun s N 1| ≤ a * d₁ := mul_le_mul ha hD1 (abs_nonneg _) ((abs_nonneg _).trans ha)
      _ = d₁ * a := mul_comm _ _
  have h2 : |g 1| * |Efun s N 1| ≤ e₁ * b := by
    calc |g 1| * |Efun s N 1| ≤ b * e₁ := mul_le_mul hb hE1 (abs_nonneg _) ((abs_nonneg _).trans hb)
      _ = e₁ * b := mul_comm _ _
  have h3 : M * ∫ x in (0:ℝ)..1, |h x| ≤ M * c := mul_le_mul_of_nonneg_left hc hM0
  linarith

end PairCeiling
end Zeta23

end
```
