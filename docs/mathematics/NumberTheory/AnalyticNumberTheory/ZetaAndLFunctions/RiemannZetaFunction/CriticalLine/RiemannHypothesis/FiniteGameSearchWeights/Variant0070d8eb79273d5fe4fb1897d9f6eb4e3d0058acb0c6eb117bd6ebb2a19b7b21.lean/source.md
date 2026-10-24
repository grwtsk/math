# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteGameSearchWeights.Variant0070d8eb79273d5fe4fb1897d9f6eb4e3d0058acb0c6eb117bd6ebb2a19b7b21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fab8d17f5ec2a76f59463f044a9afbfa9ce95ed` · SHA-256 `0070d8eb79273d5fe4fb1897d9f6eb4e3d0058acb0c6eb117bd6ebb2a19b7b21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Rat.Defs
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-!
# Exact finite-game search weights

The label update is the deterministic mean-payoff manuscript's update at
OpenAI mathematics commit `adc7f1241b42e322a6451854ab7e4b4c146bf78a`.
These are search weights, not arithmetic source coefficients. The favorable
support hypothesis is retained explicitly; deriving it requires the manuscript's
stationary-pivot argument or a separately proved source constraint.

Research framing, theorem selection, and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex. Lean checks the terms.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.FiniteGameSearchWeights

/-- `true` is a positive label and lightens the first search weight. -/
def dualWeightUpdate (positiveLabel : Bool) (a b : ℚ) : ℚ × ℚ :=
  if positiveLabel then (4 * a / 5, 8 * b / 5) else (8 * a / 5, 4 * b / 5)

theorem dualWeightUpdate_product (positiveLabel : Bool) (a b : ℚ) :
    (dualWeightUpdate positiveLabel a b).1 * (dualWeightUpdate positiveLabel a b).2 =
      (32 / 25 : ℚ) * (a * b) := by
  cases positiveLabel <;> simp [dualWeightUpdate] <;> ring

theorem dualWeightUpdate_positive (positiveLabel : Bool) {a b : ℚ}
    (ha : 0 < a) (hb : 0 < b) :
    0 < (dualWeightUpdate positiveLabel a b).1 ∧
      0 < (dualWeightUpdate positiveLabel a b).2 := by
  cases positiveLabel with
  | false =>
      change 0 < 8 * a / 5 ∧ 0 < 4 * b / 5
      constructor <;> positivity
  | true =>
      change 0 < 4 * a / 5 ∧ 0 < 8 * b / 5
      constructor <;> positivity

theorem dualWeightUpdate_product_strict (positiveLabel : Bool) {a b : ℚ}
    (ha : 0 < a) (hb : 0 < b) :
    a * b < (dualWeightUpdate positiveLabel a b).1 *
      (dualWeightUpdate positiveLabel a b).2 := by
  rw [dualWeightUpdate_product]
  nlinarith [mul_pos ha hb]

/-- Exact iteration along a finite sequence of witness labels. -/
def dualWeightRun : List Bool → ℚ → ℚ → ℚ × ℚ
  | [], a, b => (a, b)
  | label :: labels, a, b =>
      let next := dualWeightUpdate label a b
      dualWeightRun labels next.1 next.2

theorem dualWeightRun_product (labels : List Bool) (a b : ℚ) :
    (dualWeightRun labels a b).1 * (dualWeightRun labels a b).2 =
      (32 / 25 : ℚ) ^ labels.length * (a * b) := by
  induction labels generalizing a b with
  | nil => simp [dualWeightRun]
  | cons label labels ih =>
      simp only [dualWeightRun, ih, dualWeightUpdate_product, List.length_cons, pow_succ]
      ring

/-- Positive initial products cross the mass base threshold after a finite
number of updates, independently of the label sequence. -/
theorem dualWeightRun_threshold {a b : ℚ} (ha : 0 < a) (hb : 0 < b) :
    ∃ k : ℕ, ∀ labels : List Bool, labels.length = k →
      1 < (dualWeightRun labels a b).1 * (dualWeightRun labels a b).2 := by
  obtain ⟨k, hk⟩ := exists_pow_lt_of_lt_one (mul_pos ha hb)
    (by norm_num : (25 / 32 : ℚ) < 1)
  refine ⟨k, fun labels hlength => ?_⟩
  rw [dualWeightRun_product, hlength]
  have hm := mul_lt_mul_of_pos_left hk (pow_pos (by norm_num : (0 : ℚ) < 32 / 25) k)
  have hp : (32 / 25 : ℚ) ^ k * (25 / 32 : ℚ) ^ k = 1 := by
    rw [← mul_pow]
    norm_num
  rwa [hp] at hm

/-- A support's favorable labels receive `4/5`; its other labels receive `8/5`. -/
def reweightedSupportMass (total favorable : ℚ) : ℚ :=
  4 * favorable / 5 + 8 * (total - favorable) / 5

theorem reweightedSupportMass_eq (total favorable : ℚ) :
    reweightedSupportMass total favorable = 8 * total / 5 - 4 * favorable / 5 := by
  unfold reweightedSupportMass
  ring

/-- This applies to each of the two witness obligations only after its favorable
absolute support mass has been proved greater than `3/4`. -/
theorem support_survives {total favorable : ℚ}
    (htotal : total ≤ 1) (hfavorable : 3 / 4 < favorable) :
    reweightedSupportMass total favorable < 1 := by
  rw [reweightedSupportMass_eq]
  linarith

/-- The favorable-support premise cannot be dropped from witness survival. -/
theorem unsupported_reweighting_fails : 1 < reweightedSupportMass 1 0 := by
  norm_num [reweightedSupportMass]

/-- A strictly contracting numerical search rank. It is not a source error budget. -/
def inverseProductRank {ι : Type*} (S : Finset ι) (a b : ι → ℚ) : ℚ :=
  ∑ i ∈ S, (a i * b i)⁻¹

theorem dualWeightUpdate_inverse_product (positiveLabel : Bool) (a b : ℚ) :
    ((dualWeightUpdate positiveLabel a b).1 *
        (dualWeightUpdate positiveLabel a b).2)⁻¹ =
      (25 / 32 : ℚ) * (a * b)⁻¹ := by
  rw [dualWeightUpdate_product, mul_inv_rev]
  norm_num
  ring

theorem inverseProductRank_contracts {ι : Type*} (S : Finset ι)
    (labels : ι → Bool) (a b : ι → ℚ) :
    inverseProductRank S (fun i => (dualWeightUpdate (labels i) (a i) (b i)).1)
        (fun i => (dualWeightUpdate (labels i) (a i) (b i)).2) =
      (25 / 32 : ℚ) * inverseProductRank S a b := by
  simp only [inverseProductRank, dualWeightUpdate_inverse_product, Finset.mul_sum]

theorem inverseProductRank_positive {ι : Type*} {S : Finset ι} (hS : S.Nonempty)
    (a b : ι → ℚ) (ha : ∀ i ∈ S, 0 < a i) (hb : ∀ i ∈ S, 0 < b i) :
    0 < inverseProductRank S a b := by
  exact Finset.sum_pos (fun i hi => inv_pos.mpr (mul_pos (ha i hi) (hb i hi))) hS

theorem inverseProductRank_strict {ι : Type*} {S : Finset ι} (hS : S.Nonempty)
    (labels : ι → Bool) (a b : ι → ℚ)
    (ha : ∀ i ∈ S, 0 < a i) (hb : ∀ i ∈ S, 0 < b i) :
    inverseProductRank S (fun i => (dualWeightUpdate (labels i) (a i) (b i)).1)
        (fun i => (dualWeightUpdate (labels i) (a i) (b i)).2) <
      inverseProductRank S a b := by
  rw [inverseProductRank_contracts]
  have hr := inverseProductRank_positive hS a b ha hb
  linarith

end FormalResearch.RiemannHypothesis.FiniteGameSearchWeights
```
