# Complete source: GRWTSK.Analysis.Fourier.ZModLargerSlice

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ee1212cb57a0641a60c479b37337c31a65d593d` · SHA-256 `30d55d5222d916e06227b00119c8d1157f8cdc5964115910f80b1db7efd53fa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Combinatorics.Sequences.FixedSizeSubsetExposure
import GRWTSK.Analysis.Fourier.ZModLargerSliceBounds
import GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers

/-!
# Anti-concentration for larger fixed-size subset slices

Pham--Sauermann, arXiv:2602.15797v1, Corollary 1.4.

The proof uses actual two-stage finite subset exposure. Conditional residual
subset laws are averaged without asserting independence of nested subsets.
Small-cardinality and small-sample cases use the proved completion bound.
The remaining case applies the proved source Theorem 1.3 to each residual set.
-/

namespace GRWTSK.ZModLargerSlice

open scoped BigOperators
open GRWTSK.ZModLargerSliceParameters
open GRWTSK.ZModLargerSliceBounds

noncomputable section

attribute [local instance] Classical.propDecidable

variable {p m : ℕ} [NeZero p]

/-- Exact two-stage exposure law for the existing rational subset-sum
probability, viewed in the reals. -/
theorem subsetSumProbability_exposure
    (S : Finset (ZMod p)) (a b : ℕ)
    (hab : a + b ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S (a + b) z : ℝ) =
      (∑ A ∈ S.powersetCard a,
        (GRWTSK.ZModSubsetSum.subsetSumProbability
          (S \ A) b (z - ∑ x ∈ A, x) : ℝ)) /
        ((S.powersetCard a).card : ℝ) := by
  have hfiber (T : Finset (ZMod p)) (j : ℕ) (w : ZMod p) :
      GRWTSK.ZModSubsetSum.subsetSumFiber T j w =
        @Finset.filter (Finset (ZMod p))
          (fun R => (∑ x ∈ R, x) = w)
          (fun R => Classical.propDecidable ((∑ x ∈ R, x) = w))
          (T.powersetCard j) := by
    ext R
    simp only [GRWTSK.ZModSubsetSum.subsetSumFiber, Finset.mem_filter]
  unfold GRWTSK.ZModSubsetSum.subsetSumProbability
  push_cast
  simp_rw [hfiber]
  exact GRWTSK.FixedSizeSubsetExposure.sum_union_exposure
    S a b hab (fun x : ZMod p => x) z

/-- Uniform pointwise bounds on actual conditional residual laws average to
the same bound on the original fixed-size subset law. -/
theorem subsetSumProbability_le_of_exposure
    (S : Finset (ZMod p)) (a b : ℕ)
    (hab : a + b ≤ S.card) (z : ZMod p) (c : ℝ)
    (hconditional : ∀ A ∈ S.powersetCard a,
      (GRWTSK.ZModSubsetSum.subsetSumProbability
        (S \ A) b (z - ∑ x ∈ A, x) : ℝ) ≤ c) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S (a + b) z : ℝ) ≤ c := by
  rw [subsetSumProbability_exposure S a b hab z]
  have hfirst : (0 : ℝ) < (S.powersetCard a).card := by
    exact_mod_cast
      (GRWTSK.FixedSizeSubsetExposure.exposure_spaces_nonempty
        S a b hab).2.1.card_pos
  apply (div_le_iff₀ hfirst).mpr
  calc
    (∑ A ∈ S.powersetCard a,
        (GRWTSK.ZModSubsetSum.subsetSumProbability
          (S \ A) b (z - ∑ x ∈ A, x) : ℝ)) ≤
        ∑ _A ∈ S.powersetCard a, c :=
      Finset.sum_le_sum hconditional
    _ = c * ((S.powersetCard a).card : ℝ) := by
      simp [nsmul_eq_mul, mul_comm]

/-- Source Corollary 1.4 with an explicit constant depending only on epsilon.
There is no logarithmic lower restriction on the sample size. -/
theorem subsetSumProbability_le_largerSlice
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card)
    (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p +
        largerSliceConstant ε * Real.sqrt (Real.log S.card) /
          ((S.card : ℝ) * Real.sqrt m) := by
  have hmn : m ≤ S.card := by
    have hnonneg : 0 ≤ ε * (S.card : ℝ) :=
      mul_nonneg hε.le (Nat.cast_nonneg S.card)
    have hmnR : (m : ℝ) ≤ S.card := by
      nlinarith [hdensity]
    exact_mod_cast hmnR
  have hcompletion :=
    completion_margin_bound S m z hn hm hε hdensity
  by_cases hcard : (S.card : ℝ) ≤ sliceThreshold ε ^ 2
  · have herror :=
      margin_reciprocal_le_error_of_small_card
        S.card m hn hm hmn hε hcard
    calc
      (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
          1 / (ε * S.card) := hcompletion
      _ ≤ largerSliceConstant ε * Real.sqrt (Real.log S.card) /
          ((S.card : ℝ) * Real.sqrt m) := herror
      _ ≤ 1 / p +
          largerSliceConstant ε * Real.sqrt (Real.log S.card) /
            ((S.card : ℝ) * Real.sqrt m) :=
        le_add_of_nonneg_left (by positivity)
  · by_cases hsample :
        (m : ℝ) ≤ sourceConstant * Real.log S.card
    · have herror :=
        margin_reciprocal_le_error_of_small_sample
          S.card m hn hm hε hε1.le hsample
      calc
        (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
            1 / (ε * S.card) := hcompletion
        _ ≤ largerSliceConstant ε * Real.sqrt (Real.log S.card) /
            ((S.card : ℝ) * Real.sqrt m) := herror
        _ ≤ 1 / p +
            largerSliceConstant ε * Real.sqrt (Real.log S.card) /
              ((S.card : ℝ) * Real.sqrt m) :=
          le_add_of_nonneg_left (by positivity)
    · have hlarge : sliceThreshold ε ^ 2 ≤ (S.card : ℝ) :=
        (lt_of_not_ge hcard).le
      have hsample' :
          sourceConstant * Real.log S.card < (m : ℝ) :=
        lt_of_not_ge hsample
      let k := retainedSliceSize ε S.card m
      let r := S.card - m + k
      obtain ⟨_hk2, hkm, _hkC, _hkUpper, hkLower⟩ :=
        retainedSliceSize_bounds ε hε hε1 S.card m hn hm
          hdensity hlarge hsample'
      obtain ⟨hdecomp, _hkr, _hrn, hrLower, hr2,
          hSourceLower, hSourceUpper⟩ :=
        residualSliceSize_source_range ε hε hε1 S.card m hn hm
          hdensity hlarge hsample'
      change k ≤ m at hkm
      change ε * (m : ℝ) / (2000 * Real.log S.card) ≤
        (k : ℝ) at hkLower
      change S.card - (m - k) = r at hdecomp
      change ε * (S.card : ℝ) ≤ (r : ℝ) at hrLower
      change 2 ≤ r at hr2
      change sourceConstant * Real.log r ≤ (k : ℝ) at hSourceLower
      change (k : ℝ) ≤
        (1 / 1000 : ℝ) * r / Real.log r at hSourceUpper
      have hsplit : m - k + k = m :=
        Nat.sub_add_cancel hkm
      have hsplitSize : m - k + k ≤ S.card := by
        rw [hsplit]
        exact hmn
      have herror :=
        slice_error_le S.card m r k hn hm hε hε1.le hrLower hkLower
      have hbound :
          (GRWTSK.ZModSubsetSum.subsetSumProbability
            S ((m - k) + k) z : ℝ) ≤
            1 / p +
              largerSliceConstant ε * Real.sqrt (Real.log S.card) /
                ((S.card : ℝ) * Real.sqrt m) := by
        apply subsetSumProbability_le_of_exposure
          S (m - k) k hsplitSize z
          (1 / p +
            largerSliceConstant ε * Real.sqrt (Real.log S.card) /
              ((S.card : ℝ) * Real.sqrt m))
        intro A hA
        obtain ⟨hAS, hAm⟩ := Finset.mem_powersetCard.mp hA
        have hAc : (S \ A).card = r := by
          calc
            (S \ A).card = S.card - (m - k) := by
              rw [Finset.card_sdiff_of_subset hAS, hAm]
            _ = r := hdecomp
        have hsource :=
          GRWTSK.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant
            (m := k) hp (S \ A)
            (by simpa only [hAc] using hr2)
            (by simpa only [hAc, sourceConstant] using hSourceLower)
            (by simpa only [hAc] using hSourceUpper)
            (z - ∑ x ∈ A, x)
        have hsource' :
            (GRWTSK.ZModSubsetSum.subsetSumProbability
              (S \ A) k (z - ∑ x ∈ A, x) : ℝ) ≤
              1 / p + sourceConstant / ((r : ℝ) * Real.sqrt k) := by
          simpa only [hAc, sourceConstant] using hsource
        exact hsource'.trans (add_le_add le_rfl herror)
      simpa only [hsplit] using hbound

omit [NeZero p] in
/-- Prime-only facade: nonzero modulus is derived from primality. -/
theorem prime_subsetSumProbability_le_largerSlice
    (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hm : 1 ≤ m)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdensity : (m : ℝ) ≤ (1 - ε) * S.card)
    (z : ZMod p) :
    (@GRWTSK.ZModSubsetSum.subsetSumProbability
      p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
      1 / p +
        largerSliceConstant ε * Real.sqrt (Real.log S.card) /
          ((S.card : ℝ) * Real.sqrt m) := by
  let : NeZero p := ⟨hp.ne_zero⟩
  exact subsetSumProbability_le_largerSlice
    hp S hn hm ε hε hε1 hdensity z

/-- The Corollary 1.4 constant depends only on epsilon and is uniform in the
prime modulus, finite residue set, positive sample size, and target residue. -/
theorem exists_larger_slice_anticoncentration_constant
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∃ C : ℝ, 0 < C ∧
      ∀ (q : ℕ) (hq : q.Prime),
        ∀ (S : Finset (ZMod q)) (k : ℕ),
          2 ≤ S.card →
          1 ≤ k →
          (k : ℝ) ≤ (1 - ε) * S.card →
          ∀ z : ZMod q,
            (@GRWTSK.ZModSubsetSum.subsetSumProbability
              q ⟨hq.ne_zero⟩ S k z : ℝ) ≤
              1 / q +
                C * Real.sqrt (Real.log S.card) /
                  ((S.card : ℝ) * Real.sqrt k) := by
  refine ⟨largerSliceConstant ε, larger_constant_positive hε, ?_⟩
  intro q hq S k hn hk hdensity z
  exact prime_subsetSumProbability_le_largerSlice
    hq S hn hk ε hε hε1 hdensity z

end

end GRWTSK.ZModLargerSlice
```
