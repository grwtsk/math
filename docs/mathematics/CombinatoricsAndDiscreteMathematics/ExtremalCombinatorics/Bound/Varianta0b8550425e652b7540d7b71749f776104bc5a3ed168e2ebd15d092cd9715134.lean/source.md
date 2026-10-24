# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.Bound.Varianta0b8550425e652b7540d7b71749f776104bc5a3ed168e2ebd15d092cd9715134

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90afccc542a3f76f94c1e0b4c2fe5ae141f3c48d` · SHA-256 `066355fc20f2545f12789ca9cf5db16e1a4d1227cc7a64aa7419480550b42ac3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.StepBound.Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.ExtremalCombinatorics.SourceCorpus.StepBound.Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850","mathematical_subject":"Combinatorics.ExtremalCombinatorics","original_sha256":"2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Combinatorics/SimpleGraph/Regularity/Bound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Order.Partition.Equipartition


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.StepBound.Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850

#align_import combinatorics.simple_graph.regularity.bound from "leanprover-community/mathlib"@"bf7ef0e83e5b7e6c1169e97f055e58a2e4e9d52d"

/-!
# Numerical bounds for Szemerédi Regularity Lemma

This file gathers the numerical facts required by the proof of Szemerédi's regularity lemma.

This entire file is internal to the proof of Szemerédi Regularity Lemma.

## Main declarations

* `SzemerediRegularity.stepBound`: During the inductive step, a partition of size `n` is blown to
  size at most `stepBound n`.
* `SzemerediRegularity.initialBound`: The size of the partition we start the induction with.
* `SzemerediRegularity.bound`: The upper bound on the size of the partition produced by our version
  of Szemerédi's regularity lemma.

## References

[Yaël Dillies, Bhavik Mehta, *Formalising Szemerédi’s Regularity Lemma in Lean*][srl_itp]
-/


open Finset Fintype Function Real

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

open BigOperators

namespace SzemerediRegularity

/-- Auxiliary function for Szemerédi's regularity lemma. Blowing up a partition of size `n` during
the induction results in a partition of size at most `stepBound n`. -/
def stepBound (n : ℕ) : ℕ :=
  n * 4 ^ n
#align szemeredi_regularity.step_bound SzemerediRegularity.stepBound

theorem le_stepBound : id ≤ stepBound := fun n => Nat.le_mul_of_pos_right <| pow_pos (by norm_num) n
#align szemeredi_regularity.le_step_bound SzemerediRegularity.le_stepBound

theorem stepBound_mono : Monotone stepBound := fun a b h =>
  Nat.mul_le_mul h <| Nat.pow_le_pow_of_le_right (by norm_num) h
#align szemeredi_regularity.step_bound_mono SzemerediRegularity.stepBound_mono

theorem stepBound_pos_iff {n : ℕ} : 0 < stepBound n ↔ 0 < n :=
  zero_lt_mul_right <| by positivity
#align szemeredi_regularity.step_bound_pos_iff SzemerediRegularity.stepBound_pos_iff

alias ⟨_, stepBound_pos⟩ := stepBound_pos_iff
#align szemeredi_regularity.step_bound_pos SzemerediRegularity.stepBound_pos

end SzemerediRegularity

open SzemerediRegularity

variable {α : Type*} [DecidableEq α] [Fintype α] {P : Finpartition (univ : Finset α)}
  {u : Finset α} {ε : ℝ}

local notation3 (prettyPrint := false)
  "m" => (card α / stepBound P.parts.card : ℕ)

local notation3 (prettyPrint := false)
  "a" => (card α / P.parts.card - m * 4 ^ P.parts.card : ℕ)

namespace SzemerediRegularity.Positivity

private theorem eps_pos {ε : ℝ} {n : ℕ} (h : 100 ≤ (4 : ℝ) ^ n * ε ^ 5) : 0 < ε :=
  (Odd.pow_pos_iff (by norm_num)).mp
    (pos_of_mul_pos_right ((show 0 < (100 : ℝ) by norm_num).trans_le h) (by positivity))

private theorem m_pos [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) : 0 < m :=
  Nat.div_pos ((Nat.mul_le_mul_left _ <| Nat.pow_le_pow_of_le_left (by norm_num) _).trans hPα) <|
    stepBound_pos (P.parts_nonempty <| univ_nonempty.ne_empty).card_pos

/-- Local extension for the `positivity` tactic: A few facts that are needed many times for the
proof of Szemerédi's regularity lemma. -/
-- Porting note: positivity extensions must now be global, and this did not seem like a good
-- match for positivity anymore, so I wrote a new tactic (kmill)
scoped macro "sz_positivity" : tactic =>
  `(tactic|
      { try have := m_pos ‹_›
        try have := eps_pos ‹_›
        positivity })

-- Original meta code
/- meta def positivity_szemeredi_regularity : expr → tactic strictness
| `(%%n / step_bound (finpartition.parts %%P).card) := do
    p ← to_expr
      ``((finpartition.parts %%P).card * 16^(finpartition.parts %%P).card ≤ %%n)
      >>= find_assumption,
    positive <$> mk_app ``m_pos [p]
| ε := do
    typ ← infer_type ε,
    unify typ `(ℝ),
    p ← to_expr ``(100 ≤ 4 ^ _ * %%ε ^ 5) >>= find_assumption,
    positive <$> mk_app ``eps_pos [p] -/

end SzemerediRegularity.Positivity

namespace SzemerediRegularity

open scoped SzemerediRegularity.Positivity

theorem m_pos [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) : 0 < m := by
  sz_positivity
#align szemeredi_regularity.m_pos SzemerediRegularity.m_pos

theorem coe_m_add_one_pos : 0 < (m : ℝ) + 1 := by positivity
#align szemeredi_regularity.coe_m_add_one_pos SzemerediRegularity.coe_m_add_one_pos

theorem one_le_m_coe [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) : (1 : ℝ) ≤ m :=
  Nat.one_le_cast.2 <| m_pos hPα
#align szemeredi_regularity.one_le_m_coe SzemerediRegularity.one_le_m_coe

theorem eps_pow_five_pos (hPε : 100 ≤ (4 : ℝ) ^ P.parts.card * ε ^ 5) : ↑0 < ε ^ 5 :=
  pos_of_mul_pos_right ((by norm_num : (0 : ℝ) < 100).trans_le hPε) <| pow_nonneg (by norm_num) _
#align szemeredi_regularity.eps_pow_five_pos SzemerediRegularity.eps_pow_five_pos

theorem eps_pos (hPε : 100 ≤ (4 : ℝ) ^ P.parts.card * ε ^ 5) : 0 < ε :=
  (Odd.pow_pos_iff (by norm_num)).mp (eps_pow_five_pos hPε)
#align szemeredi_regularity.eps_pos SzemerediRegularity.eps_pos

theorem hundred_div_ε_pow_five_le_m [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α)
    (hPε : 100 ≤ (4 : ℝ) ^ P.parts.card * ε ^ 5) : 100 / ε ^ 5 ≤ m :=
  (div_le_of_nonneg_of_le_mul (eps_pow_five_pos hPε).le (by positivity) hPε).trans
    (by
      norm_cast
      rwa [Nat.le_div_iff_mul_le' (stepBound_pos (P.parts_nonempty <|
        univ_nonempty.ne_empty).card_pos), stepBound, mul_left_comm, ← mul_pow])
#align szemeredi_regularity.hundred_div_ε_pow_five_le_m SzemerediRegularity.hundred_div_ε_pow_five_le_m

theorem hundred_le_m [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α)
    (hPε : 100 ≤ (4 : ℝ) ^ P.parts.card * ε ^ 5) (hε : ε ≤ 1) : 100 ≤ m := by
  exact_mod_cast
    (hundred_div_ε_pow_five_le_m hPα hPε).trans'
      (le_div_self (by norm_num) (by sz_positivity) <| pow_le_one _ (by sz_positivity) hε)
#align szemeredi_regularity.hundred_le_m SzemerediRegularity.hundred_le_m

theorem a_add_one_le_four_pow_parts_card : a + 1 ≤ 4 ^ P.parts.card := by
  have h : 1 ≤ 4 ^ P.parts.card := one_le_pow_of_one_le (by norm_num) _
  rw [stepBound, ← Nat.div_div_eq_div_mul]
  conv_rhs => rw [← Nat.sub_add_cancel h]
  rw [add_le_add_iff_right, tsub_le_iff_left, ← Nat.add_sub_assoc h]
  exact Nat.le_pred_of_lt (Nat.lt_div_mul_add h)
#align szemeredi_regularity.a_add_one_le_four_pow_parts_card SzemerediRegularity.a_add_one_le_four_pow_parts_card

theorem card_aux₁ (hucard : u.card = m * 4 ^ P.parts.card + a) :
    (4 ^ P.parts.card - a) * m + a * (m + 1) = u.card := by
  rw [hucard, mul_add, mul_one, ← add_assoc, ← add_mul,
    Nat.sub_add_cancel ((Nat.le_succ _).trans a_add_one_le_four_pow_parts_card), mul_comm]
#align szemeredi_regularity.card_aux₁ SzemerediRegularity.card_aux₁

theorem card_aux₂ (hP : P.IsEquipartition) (hu : u ∈ P.parts)
    (hucard : ¬u.card = m * 4 ^ P.parts.card + a) :
    (4 ^ P.parts.card - (a + 1)) * m + (a + 1) * (m + 1) = u.card := by
  have : m * 4 ^ P.parts.card ≤ card α / P.parts.card := by
    rw [stepBound, ← Nat.div_div_eq_div_mul]
    exact Nat.div_mul_le_self _ _
  rw [Nat.add_sub_of_le this] at hucard
  rw [(hP.card_parts_eq_average hu).resolve_left hucard, mul_add, mul_one, ← add_assoc, ← add_mul,
    Nat.sub_add_cancel a_add_one_le_four_pow_parts_card, ← add_assoc, mul_comm,
    Nat.add_sub_of_le this, card_univ]
#align szemeredi_regularity.card_aux₂ SzemerediRegularity.card_aux₂

theorem pow_mul_m_le_card_part (hP : P.IsEquipartition) (hu : u ∈ P.parts) :
    (4 : ℝ) ^ P.parts.card * m ≤ u.card := by
  norm_cast
  rw [stepBound, ← Nat.div_div_eq_div_mul]
  exact (Nat.mul_div_le _ _).trans (hP.average_le_card_part hu)
#align szemeredi_regularity.pow_mul_m_le_card_part SzemerediRegularity.pow_mul_m_le_card_part

variable (P ε) (l : ℕ)

/-- Auxiliary function for Szemerédi's regularity lemma. The size of the partition by which we start
blowing. -/
noncomputable def initialBound : ℕ :=
  max 7 <| max l <| ⌊log (100 / ε ^ 5) / log 4⌋₊ + 1
#align szemeredi_regularity.initial_bound SzemerediRegularity.initialBound

theorem le_initialBound : l ≤ initialBound ε l :=
  (le_max_left _ _).trans <| le_max_right _ _
#align szemeredi_regularity.le_initial_bound SzemerediRegularity.le_initialBound

theorem seven_le_initialBound : 7 ≤ initialBound ε l :=
  le_max_left _ _
#align szemeredi_regularity.seven_le_initial_bound SzemerediRegularity.seven_le_initialBound

theorem initialBound_pos : 0 < initialBound ε l :=
  Nat.succ_pos'.trans_le <| seven_le_initialBound _ _
#align szemeredi_regularity.initial_bound_pos SzemerediRegularity.initialBound_pos

theorem hundred_lt_pow_initialBound_mul {ε : ℝ} (hε : 0 < ε) (l : ℕ) :
    100 < ↑4 ^ initialBound ε l * ε ^ 5 := by
  rw [← rpow_nat_cast 4, ← div_lt_iff (pow_pos hε 5), lt_rpow_iff_log_lt _ zero_lt_four, ←
    div_lt_iff, initialBound, Nat.cast_max, Nat.cast_max]
  · push_cast
    exact lt_max_of_lt_right (lt_max_of_lt_right <| Nat.lt_floor_add_one _)
  · exact log_pos (by norm_num)
  · exact div_pos (by norm_num) (pow_pos hε 5)
#align szemeredi_regularity.hundred_lt_pow_initial_bound_mul SzemerediRegularity.hundred_lt_pow_initialBound_mul

/-- An explicit bound on the size of the equipartition whose existence is given by Szemerédi's
regularity lemma. -/
noncomputable def bound : ℕ :=
  (stepBound^[⌊4 / ε ^ 5⌋₊] <| initialBound ε l) *
    16 ^ (stepBound^[⌊4 / ε ^ 5⌋₊] <| initialBound ε l)
#align szemeredi_regularity.bound SzemerediRegularity.bound

theorem initialBound_le_bound : initialBound ε l ≤ bound ε l :=
  (id_le_iterate_of_id_le le_stepBound _ _).trans <| Nat.le_mul_of_pos_right <| by positivity
#align szemeredi_regularity.initial_bound_le_bound SzemerediRegularity.initialBound_le_bound

theorem le_bound : l ≤ bound ε l :=
  (le_initialBound ε l).trans <| initialBound_le_bound ε l
#align szemeredi_regularity.le_bound SzemerediRegularity.le_bound

theorem bound_pos : 0 < bound ε l :=
  (initialBound_pos ε l).trans_le <| initialBound_le_bound ε l
#align szemeredi_regularity.bound_pos SzemerediRegularity.bound_pos

variable {ι 𝕜 : Type*} [LinearOrderedField 𝕜] (r : ι → ι → Prop) [DecidableRel r] {s t : Finset ι}
  {x : 𝕜}

theorem mul_sq_le_sum_sq (hst : s ⊆ t) (f : ι → 𝕜) (hs : x ^ 2 ≤ ((∑ i in s, f i) / s.card) ^ 2)
    (hs' : (s.card : 𝕜) ≠ 0) : (s.card : 𝕜) * x ^ 2 ≤ ∑ i in t, f i ^ 2 :=
  (mul_le_mul_of_nonneg_left (hs.trans sum_div_card_sq_le_sum_sq_div_card) <|
    Nat.cast_nonneg _).trans <| (mul_div_cancel' _ hs').le.trans <|
      sum_le_sum_of_subset_of_nonneg hst fun _ _ _ => sq_nonneg _
#align szemeredi_regularity.mul_sq_le_sum_sq SzemerediRegularity.mul_sq_le_sum_sq

theorem add_div_le_sum_sq_div_card (hst : s ⊆ t) (f : ι → 𝕜) (d : 𝕜) (hx : 0 ≤ x)
    (hs : x ≤ |(∑ i in s, f i) / s.card - (∑ i in t, f i) / t.card|)
    (ht : d ≤ ((∑ i in t, f i) / t.card) ^ 2) :
    d + s.card / t.card * x ^ 2 ≤ (∑ i in t, f i ^ 2) / t.card := by
  obtain hscard | hscard := (s.card.cast_nonneg : (0 : 𝕜) ≤ s.card).eq_or_lt
  · simpa [← hscard] using ht.trans sum_div_card_sq_le_sum_sq_div_card
  have htcard : (0 : 𝕜) < t.card := hscard.trans_le (Nat.cast_le.2 (card_le_of_subset hst))
  have h₁ : x ^ 2 ≤ ((∑ i in s, f i) / s.card - (∑ i in t, f i) / t.card) ^ 2 :=
    sq_le_sq.2 (by rwa [abs_of_nonneg hx])
  have h₂ : x ^ 2 ≤ ((∑ i in s, (f i - (∑ j in t, f j) / t.card)) / s.card) ^ 2 := by
    apply h₁.trans
    rw [sum_sub_distrib, sum_const, nsmul_eq_mul, sub_div, mul_div_cancel_left _ hscard.ne']
  apply (add_le_add_right ht _).trans
  rw [← mul_div_right_comm, le_div_iff htcard, add_mul, div_mul_cancel _ htcard.ne']
  have h₃ := mul_sq_le_sum_sq hst (fun i => (f i - (∑ j in t, f j) / t.card)) h₂ hscard.ne'
  apply (add_le_add_left h₃ _).trans
  -- Porting note: was
  -- `simp [← mul_div_right_comm _ (t.card : 𝕜), sub_div' _ _ _ htcard.ne', ← sum_div, ← add_div,`
  -- `  mul_pow, div_le_iff (sq_pos_of_ne_zero _ htcard.ne'), sub_sq, sum_add_distrib, ← sum_mul, ←`
  -- `  mul_sum]`
  simp_rw [sub_div' _ _ _ htcard.ne']
  conv_lhs => enter [2, 2, x]; rw [div_pow]
  rw [div_pow, ← sum_div, ← mul_div_right_comm _ (t.card : 𝕜), ← add_div,
    div_le_iff (sq_pos_of_ne_zero _ htcard.ne')]
  simp_rw [sub_sq, sum_add_distrib, sum_const, nsmul_eq_mul, sum_sub_distrib, mul_pow, ← sum_mul,
    ← mul_sum, ← sum_mul]
  ring_nf; rfl
#align szemeredi_regularity.add_div_le_sum_sq_div_card SzemerediRegularity.add_div_le_sum_sq_div_card

end SzemerediRegularity

namespace Tactic

open Lean.Meta Qq

/-- Extension for the `positivity` tactic: `SzemerediRegularity.initialBound` is always positive. -/
@[positivity SzemerediRegularity.initialBound _ _]
def evalInitialBound : Mathlib.Meta.Positivity.PositivityExt where eval {_ _} _ _ e := do
  let (.app (.app _ (ε : Q(ℝ))) (l : Q(ℕ))) ← whnfR e | throwError "not initialBound"
  pure (.positive (q(SzemerediRegularity.initialBound_pos $ε $l) : Lean.Expr))

example (ε : ℝ) (l : ℕ) : 0 < SzemerediRegularity.initialBound ε l := by positivity

/-- Extension for the `positivity` tactic: `SzemerediRegularity.bound` is always positive. -/
@[positivity SzemerediRegularity.bound _ _]
def evalBound : Mathlib.Meta.Positivity.PositivityExt where eval {_ _} _ _ e := do
  let (.app (.app _ (ε : Q(ℝ))) (l : Q(ℕ))) ← whnfR e | throwError "not bound"
  pure (.positive (q(SzemerediRegularity.bound_pos $ε $l) : Lean.Expr))

example (ε : ℝ) (l : ℕ) : 0 < SzemerediRegularity.bound ε l := by positivity

end Tactic
```
