-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ArithGeom.Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ArithGeom.Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45","mathematical_subject":"Topology.GeneralTopology","original_sha256":"497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecificLimits/ArithmeticGeometric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Arithmetic-geometric sequences

An arithmetic-geometric sequence is a sequence defined by the recurrence relation
`u (n + 1) = a * u n + b`.

## Main definitions

* `arithGeom a b u₀`: arithmetic-geometric sequence with starting value `u₀` and recurrence relation
  `u (n + 1) = a * u n + b`.

## Main statements

* `arithGeom_eq`: for `a ≠ 1`, `arithGeom a b u₀ n = a ^ n * (u₀ - (b / (1 - a))) + b / (1 - a)`
* `tendsto_arithGeom_atTop_of_one_lt`: if `1 < a` and `b / (1 - a) < u₀`, then `arithGeom a b u₀ n`
  tends to `+∞` as `n` tends to `+∞`.
  `tendsto_arithGeom_nhds_of_lt_one`: if `0 ≤ a < 1`, then `arithGeom a b u₀ n` tends to
  `b / (1 - a)` as `n` tends to `+∞`.
* `arithGeom_strictMono`: if `1 < a` and `b / (1 - a) < u₀`, then `arithGeom a b u₀` is strictly
  monotone.

-/


namespace GRWTSK.Topology.GeneralTopology.ArithGeom.Variant497ef18bfdbd4b3130764864082964025976fb3a245697094d7b47114b91ab45

@[expose] public section

open Filter

open scoped Topology

variable {R : Type*} {a b u₀ : R}

/-- Arithmetic-geometric sequence with starting value `u₀` and recurrence relation
`u (n + 1) = a * u n + b`. -/
def arithGeom [Mul R] [Add R] (a b u₀ : R) : ℕ → R
| 0 => u₀
| n + 1 => a * arithGeom a b u₀ n + b

@[simp] lemma arithGeom_zero [Mul R] [Add R] : arithGeom a b u₀ 0 = u₀ := rfl

lemma arithGeom_succ [Mul R] [Add R] (n : ℕ) :
    arithGeom a b u₀ (n + 1) = a * arithGeom a b u₀ n + b := rfl

lemma arithGeom_eq_add_sum [CommSemiring R] (n : ℕ) :
    arithGeom a b u₀ n = a ^ n * u₀ + b * ∑ k ∈ Finset.range n, a ^ k := by
  induction n with
  | zero => simp
  | succ n hn =>
    rw [arithGeom_succ, hn, mul_add, ← mul_assoc, add_comm n, pow_add, pow_one, add_assoc]
    congr
    rw [add_comm _ n, Finset.sum_range_succ', Finset.mul_sum, pow_zero, mul_add, mul_one,
      Finset.mul_sum, Finset.mul_sum]
    congr with k
    ring

lemma arithGeom_same_eq_sum [CommSemiring R] (n : ℕ) :
    arithGeom a b b n = b * ∑ k ∈ Finset.range (n + 1), a ^ k := by
  rw [arithGeom_eq_add_sum, Finset.sum_range_succ, mul_add, add_comm, mul_comm _ b]

lemma arithGeom_zero_eq_sum [CommSemiring R] (n : ℕ) :
    arithGeom a b 0 n = b * ∑ k ∈ Finset.range n, a ^ k := by
  simp [arithGeom_eq_add_sum]

variable [Field R]

lemma arithGeom_eq (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b u₀ n = a ^ n * (u₀ - (b / (1 - a))) + b / (1 - a) := by
  induction n with
  | zero => simp
  | succ n hn => unfold arithGeom; grind

lemma arithGeom_eq' (ha : a ≠ 1) :
    arithGeom a b u₀ = fun n ↦ a ^ n * (u₀ - (b / (1 - a))) + b / (1 - a) := by
  ext
  exact arithGeom_eq ha _

lemma arithGeom_same_eq_mul_div' (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b b n = b * (1 - a ^ (n + 1)) / (1 - a) := by
  rw [arithGeom_eq ha n]
  field [sub_ne_zero.mpr ha.symm]

lemma arithGeom_same_eq_mul_div (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b b n = b * (a ^ (n + 1) - 1) / (a - 1) := by
  rw [arithGeom_same_eq_mul_div' ha n, ← neg_sub _ a, div_neg,
    ← neg_sub _ (a ^ (n + 1)), mul_neg, neg_div, neg_neg]

lemma arithGeom_zero_eq_mul_div' (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b 0 n = b * (1 - a ^ n) / (1 - a) := by
  rw [arithGeom_eq ha n]
  ring

lemma arithGeom_zero_eq_mul_div (ha : a ≠ 1) (n : ℕ) :
    arithGeom a b 0 n = b * (a ^ n - 1) / (a - 1) := by
  rw [arithGeom_zero_eq_mul_div' ha n, ← neg_sub _ a, div_neg, ← neg_sub _ (a ^ n), mul_neg,
    neg_div, neg_neg]

variable [LinearOrder R] [IsStrictOrderedRing R]

lemma div_lt_arithGeom (ha_pos : 0 < a) (ha_ne : a ≠ 1) (h0 : b / (1 - a) < u₀) (n : ℕ) :
    b / (1 - a) < arithGeom a b u₀ n := by
  induction n with
  | zero => exact h0
  | succ n hn =>
    calc b / (1 - a)
    _ = a * (b / (1 - a)) + b := by grind
    _ < a * arithGeom a b u₀ n + b := by gcongr

lemma arithGeom_strictMono (ha : 1 < a) (h0 : b / (1 - a) < u₀) :
    StrictMono (arithGeom a b u₀) := by
  refine strictMono_nat_of_lt_succ fun n ↦ ?_
  have h_lt : b / (1 - a) < arithGeom a b u₀ n := div_lt_arithGeom (by positivity) ha.ne' h0 n
  rw [div_lt_iff_of_neg (sub_neg.mpr ha)] at h_lt
  rw [arithGeom_succ]
  linarith

lemma tendsto_arithGeom_atTop_of_one_lt [Archimedean R] (ha : 1 < a) (h0 : b / (1 - a) < u₀) :
    Tendsto (arithGeom a b u₀) atTop atTop := by
  rw [arithGeom_eq' ha.ne']
  refine tendsto_atTop_add_const_right _ _ ?_
  refine Tendsto.atTop_mul_const (sub_pos.mpr h0) ?_
  exact tendsto_pow_atTop_atTop_of_one_lt ha

lemma tendsto_arithGeom_nhds_of_lt_one [Archimedean R] [TopologicalSpace R] [OrderTopology R]
    (ha_pos : 0 ≤ a) (ha : a < 1) :
    Tendsto (arithGeom a b u₀) atTop (𝓝 (b / (1 - a))) := by
  rw [arithGeom_eq' ha.ne]
  conv_rhs => rw [← zero_add (b / (1 - a))]
  refine Tendsto.add ?_ tendsto_const_nhds
  conv_rhs => rw [← zero_mul (u₀ - (b / (1 - a)))]
  exact (tendsto_pow_atTop_nhds_zero_of_lt_one ha_pos ha).mul_const _
