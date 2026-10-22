/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib's finite-product, powerset, and summation results retain their attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#628. Connections: #121, #444, #453, #516; RH target #15.
-/
import Mathlib

/-!
# Finite Walsh reconstruction of binary cylinder counts

For any finite set of positions and any finite sequence of actual binary
observations, the signed monomial correlations determine the count of each
exact sign pattern. No Liouville cancellation, independence, ergodicity,
sofic-limit existence, or RH statement is assumed or proved here.

The empty-subset correlation is retained, and the identities do not divide
by the number of samples: N = 0 is allowed. The main theorem is deliberately
generic, so a source-bound Liouville adapter can be added independently.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.FiniteSum.WalshCylinder

open scoped BigOperators

variable {ι : Type*}

/-- Encode a Boolean as one of the two real signs. -/
def bitSign (b : Bool) : ℝ :=
  if b then 1 else -1

/-- Unnormalized correlation at the exact finite sample horizon, including the
empty-product moment. The observations need not be probabilistic. -/
def finiteMoment (observations : ℕ → ι → ℝ) (t : Finset ι) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, ∏ i ∈ t, observations n i

/-- Polynomial cylinder numerator for arbitrary real sample labels. -/
def rawCylinderSum (s : Finset ι) (pattern : ι → ℝ)
    (observations : ℕ → ι → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    ∏ i ∈ s, (1 + pattern i * observations n i)

/-- Exact number of observed binary patterns, embedded in the reals.
Each sample contributes exactly 0 or 1. -/
def binaryPatternCount (s : Finset ι) (pattern : ι → Bool)
    (observations : ℕ → ι → Bool) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N,
    ∏ i ∈ s, (if pattern i = observations n i then (1 : ℝ) else 0)

/-- The empty correlation is the complete sample mass, not zero. -/
@[simp] theorem finiteMoment_empty
    (observations : ℕ → ι → ℝ) (N : ℕ) :
    finiteMoment observations (∅ : Finset ι) N = (N : ℝ) := by
  simp [finiteMoment]

/-- An empty observed block matches every sample. -/
@[simp] theorem binaryPatternCount_empty
    (pattern : ι → Bool) (observations : ℕ → ι → Bool) (N : ℕ) :
    binaryPatternCount (∅ : Finset ι) pattern observations N = (N : ℝ) := by
  simp [binaryPatternCount]

/-- Algebraic core: expand each cylinder product using Mathlib's exact
powerset-product formula, then transpose the two finite summations.
No arithmetic estimate enters this equality. -/
theorem rawCylinderSum_eq_sum_moments
    (s : Finset ι) (pattern : ι → ℝ)
    (observations : ℕ → ι → ℝ) (N : ℕ) :
    rawCylinderSum s pattern observations N =
      ∑ t ∈ s.powerset,
        (∏ i ∈ t, pattern i) * finiteMoment observations t N := by
  classical
  unfold rawCylinderSum
  calc
    (∑ n ∈ Finset.range N, ∏ i ∈ s, (1 + pattern i * observations n i)) =
        ∑ n ∈ Finset.range N,
          ∑ t ∈ s.powerset, ∏ i ∈ t, pattern i * observations n i := by
      apply Finset.sum_congr rfl
      intro n hn
      exact Finset.prod_one_add s
    _ = ∑ t ∈ s.powerset,
          ∑ n ∈ Finset.range N, ∏ i ∈ t, pattern i * observations n i := by
      rw [Finset.sum_comm]
    _ = ∑ t ∈ s.powerset,
          (∏ i ∈ t, pattern i) * finiteMoment observations t N := by
      apply Finset.sum_congr rfl
      intro t ht
      simp only [finiteMoment, Finset.prod_mul_distrib, Finset.mul_sum]

/-- The Boolean equality selector is exactly one half of the signed factor.
This is a four-case finite identity, not a randomness assumption. -/
theorem bitSign_match_factor (b c : Bool) :
    (2 : ℝ) * (if b = c then (1 : ℝ) else 0) =
      1 + bitSign b * bitSign c := by
  cases b <;> cases c <;> norm_num [bitSign]

/-- With actual Boolean labels, the cylinder numerator is precisely the
pattern count multiplied by 2 to the number of observed coordinates. -/
theorem rawCylinderSum_eq_scaled_binaryPatternCount
    (s : Finset ι) (pattern : ι → Bool)
    (observations : ℕ → ι → Bool) (N : ℕ) :
    rawCylinderSum s (fun i => bitSign (pattern i))
        (fun n i => bitSign (observations n i)) N =
      (2 : ℝ) ^ s.card * binaryPatternCount s pattern observations N := by
  classical
  unfold rawCylinderSum binaryPatternCount
  calc
    (∑ n ∈ Finset.range N,
      ∏ i ∈ s, (1 + bitSign (pattern i) * bitSign (observations n i))) =
        ∑ n ∈ Finset.range N,
          ∏ i ∈ s,
            ((2 : ℝ) *
              (if pattern i = observations n i then (1 : ℝ) else 0)) := by
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.prod_congr rfl
      intro i hi
      exact (bitSign_match_factor (pattern i) (observations n i)).symm
    _ = (2 : ℝ) ^ s.card *
        (∑ n ∈ Finset.range N,
          ∏ i ∈ s,
            (if pattern i = observations n i then (1 : ℝ) else 0)) := by
      simp only [Finset.prod_mul_distrib, Finset.prod_const, Finset.mul_sum]

/-- The finite Walsh cylinder reconstruction theorem. All moments, including
the empty one, and their original sample horizon are preserved.

This is a theorem about any binary data, not a proof that the Liouville data
obey Chowla or approach the Bernoulli product measure. -/
theorem binaryPatternCount_walsh
    (s : Finset ι) (pattern : ι → Bool)
    (observations : ℕ → ι → Bool) (N : ℕ) :
    (2 : ℝ) ^ s.card * binaryPatternCount s pattern observations N =
      ∑ t ∈ s.powerset,
        (∏ i ∈ t, bitSign (pattern i)) *
          finiteMoment (fun n i => bitSign (observations n i)) t N := by
  calc
    (2 : ℝ) ^ s.card * binaryPatternCount s pattern observations N =
        rawCylinderSum s (fun i => bitSign (pattern i))
          (fun n i => bitSign (observations n i)) N :=
      (rawCylinderSum_eq_scaled_binaryPatternCount s pattern observations N).symm
    _ = _ :=
      rawCylinderSum_eq_sum_moments s (fun i => bitSign (pattern i))
        (fun n i => bitSign (observations n i)) N

end GRWTSK.Analysis.FiniteSum.WalshCylinder
