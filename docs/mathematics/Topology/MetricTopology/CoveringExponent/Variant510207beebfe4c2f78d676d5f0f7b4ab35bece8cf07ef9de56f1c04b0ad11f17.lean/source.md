# Complete source: GRWTSK.Topology.MetricTopology.CoveringExponent.Variant510207beebfe4c2f78d676d5f0f7b4ab35bece8cf07ef9de56f1c04b0ad11f17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5163fc86b6b284a6b3053432a7b6c53f10e72ec` · SHA-256 `bd1e2cdd141b3d7363852a143e702110eb6b69c5a98ddb2bb87d435680c4ef37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.HasCoveringExponent.Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.HasCoveringExponent.Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba","mathematical_subject":"Topology.MetricSpaces","original_sha256":"4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/CoveringExponent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.Analysis.SpecialFunctions.Pow.NNReal
public import Mathlib.Topology.MetricSpace.CoveringNumbers

/-!
# Sets with bounded covering exponent

A property of sets in a pseudoemetric space that bounds the growth of their covering numbers as the
radius of the balls goes to zero.
This will be used in the proof of the Kolmogorov-Chentsov theorem, that gives a sufficient condition
for a stochastic process to have a modification with Hölder continuous paths.

## Main definitions

* `HasCoveringExponent A c d` : a set `A` in a pseudoemetric space has bounded covering number with
  constant `c` and exponent `d` if it has finite diameter and for all `ε ∈ (0, diam(A)]`,
  the covering number of `A` at scale `ε` is bounded by `c * ε^{-d}`.

## Main statements

* `HasCoveringExponent.subset`: if `A` has bounded covering exponent with constant `c` and
  exponent `d`, then any subset of `A` has bounded covering exponent with constant `2^d * c` and
  exponent `d`.

-/


namespace GRWTSK.Topology.MetricTopology.HasCoveringExponent.Variant4e64dfa64ac6efcf803365d9f64bc0a6e10c9247f08801582b9af54e8575aeba

@[expose] public section

open scoped ENNReal NNReal

namespace Metric

variable {T : Type*} [PseudoEMetricSpace T] {A B : Set T} {c : ℝ≥0∞} {ε : ℝ≥0} {d : ℝ}

/-- A set `A` in a pseudoemetric space has bounded covering number with constant `c` and exponent
`d` if it has finite diameter and for all `ε ∈ (0, diam(A)]`, the covering number of `A`
at scale `ε` is bounded by `c * ε^{-d}`. -/
structure HasCoveringExponent (A : Set T) (c : ℝ≥0∞) (d : ℝ) : Prop where
  ediam_lt_top : Metric.ediam A < ∞
  coveringNumber_le : ∀ ε : ℝ≥0, ε ≤ Metric.ediam A → coveringNumber ε A ≤ c * (ε : ℝ≥0∞)⁻¹ ^ d

lemma HasCoveringExponent.coveringNumber_lt_top (h : HasCoveringExponent A c d) (hε_ne : ε ≠ 0)
    (hc : c ≠ ∞) (hd : 0 ≤ d) :
    coveringNumber ε A < ⊤ := by
  by_cases hε_le : ε ≤ Metric.ediam A
  · suffices (coveringNumber ε A : ℝ≥0∞) < ∞ by norm_cast at this
    calc (coveringNumber ε A : ℝ≥0∞)
    _ ≤ c * (ε : ℝ≥0∞)⁻¹ ^ d := h.coveringNumber_le _ hε_le
    _ < ∞ := by finiteness
  · calc coveringNumber ε A
    _ ≤ 1 := coveringNumber_le_one_of_ediam_le (not_le.mp hε_le).le
    _ < ⊤ := by simp

lemma HasCoveringExponent.coveringNumber_ne_top (h : HasCoveringExponent A c d) (hε_ne : ε ≠ 0)
    (hc : c ≠ ∞) (hd : 0 ≤ d) :
    coveringNumber ε A ≠ ⊤ :=
  (h.coveringNumber_lt_top hε_ne hc hd).ne

lemma HasCoveringExponent.subset (h : HasCoveringExponent A c d) (hBA : B ⊆ A) (hd : 0 ≤ d) :
    HasCoveringExponent B (2 ^ d * c) d where
  ediam_lt_top := lt_of_le_of_lt (Metric.ediam_mono hBA) h.ediam_lt_top
  coveringNumber_le ε hε_le :=
    calc (coveringNumber ε B : ℝ≥0∞)
    _ ≤ coveringNumber (ε / 2) A := mod_cast coveringNumber_subset_le hBA
    _ ≤ c * (ε / 2 : ℝ≥0∞)⁻¹ ^ d := by
      replace h := h.coveringNumber_le (ε / 2) ?_
      · simpa using h
      · simp only [ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, ENNReal.coe_div,
          ENNReal.coe_ofNat]
        calc (ε / 2 : ℝ≥0∞) ≤ ε := ENNReal.half_le_self
        _ ≤ Metric.ediam B := hε_le
        _ ≤ Metric.ediam A := Metric.ediam_mono hBA
    _ = 2 ^ d * c * (ε : ℝ≥0∞)⁻¹ ^ d := by
      rw [div_eq_mul_inv, ENNReal.mul_inv (by simp) (by simp), inv_inv,
        ENNReal.mul_rpow_of_nonneg _ _ hd]
      ring

end Metric
```
