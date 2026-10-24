# Complete source: GRWTSK.NumberTheory.Moebius.TwoPointCarlesonEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9419fe18fbf54d5842c11da5176674023e905e00` · SHA-256 `52aeb1899cd817fe40940411a8d314769ae2f7e1c6efc56fb9239615a52aaa0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #461. Direct stacked parent: draft PR #462 at
`01d47ed94dc9c50ecfbfa028d496647a420049b2`.
-/
import GRWTSK.NumberTheory.Moebius.TwoPointTreeSingletonMassObstruction

/-!
# Max-per-scale aligned-dyadic control of two-point Möbius prefixes

The complete unweighted tree energy is too large: its scale-zero layer sums
all singleton positions over all shifts and therefore has unavoidable
quadratic mass.  This module replaces that observable by one maximum per
aligned dyadic scale.

For a real sequence `a` on `[0,2^m)`, the scale maximum is

`max_(q < 2^(m-r)) |sum_(n in [q*2^r,(q+1)*2^r)) a n|`.

The Carleson energy is the sum of the squares of those maxima over
`0 <= r <= m`.  Every proper prefix has a binary decomposition using at most
one aligned block at each scale.  A recursive form of that decomposition and a
weighted two-term Cauchy inequality prove the exact finite maximal comparison.

The theorem is then specialized to the exact zero-padded two-point Möbius
source.  The scale-zero maximum is at most one, so summing its square over all
positive shifts is linear in the dyadic endpoint rather than quadratic.

The resulting all-scale Carleson premise is only a conditional arithmetic
supplier.  This module does not prove that premise, Chowla, Elliott, Sarnak,
Weak Mertens, Gonek--Hejhal, a new damping, or the Riemann Hypothesis.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- Maximum absolute aligned block sum at scale `r` inside `[0,2^m)`.
The index set has cardinality `2^(m-r)` and is therefore always nonempty;
consumers use the intended range `r <= m`. -/
def alignedDyadicScaleMaximum
    (m r : ℕ) (a : ℕ → ℝ) : ℝ :=
  (Finset.range (2 ^ (m - r))).sup' (by simp)
    (fun q => |alignedDyadicBlockSum a r q|)

/-- Sum of max-per-scale squares over the proper scales `0 <= r < m`. -/
def alignedDyadicProperCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.range m, alignedDyadicScaleMaximum m r a ^ 2

/-- Max-per-scale aligned-dyadic Carleson energy on `[0,2^m)`. -/
def alignedDyadicCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) : ℝ :=
  ∑ r ∈ Finset.range (m + 1), alignedDyadicScaleMaximum m r a ^ 2

/-- Every aligned block at an admissible index is bounded by the scale
maximum. -/
theorem abs_alignedDyadicBlockSum_le_scaleMaximum
    (m r : ℕ) (a : ℕ → ℝ) {q : ℕ}
    (hq : q < 2 ^ (m - r)) :
    |alignedDyadicBlockSum a r q| ≤
      alignedDyadicScaleMaximum m r a := by
  unfold alignedDyadicScaleMaximum
  exact Finset.le_sup'
    (fun t => |alignedDyadicBlockSum a r t|)
    (Finset.mem_range.mpr hq)

/-- Every scale maximum is nonnegative. -/
theorem alignedDyadicScaleMaximum_nonneg
    (m r : ℕ) (a : ℕ → ℝ) :
    0 ≤ alignedDyadicScaleMaximum m r a := by
  have h := abs_alignedDyadicBlockSum_le_scaleMaximum
    m r a (q := 0) (by positivity)
  exact (abs_nonneg _).trans h

/-- Enlarging the ambient dyadic interval preserves every left-half scale
maximum. -/
theorem alignedDyadicScaleMaximum_le_succ
    (m r : ℕ) (a : ℕ → ℝ) (hr : r ≤ m) :
    alignedDyadicScaleMaximum m r a ≤
      alignedDyadicScaleMaximum (m + 1) r a := by
  unfold alignedDyadicScaleMaximum
  refine Finset.sup'_le _ _ ?_
  intro q hq
  apply Finset.le_sup' (fun t => |alignedDyadicBlockSum a r t|) (b := q)
  apply Finset.mem_range.mpr
  have hq' := Finset.mem_range.mp hq
  have hsub : m + 1 - r = (m - r) + 1 := by omega
  rw [hsub, Nat.pow_succ]
  omega

/-- The maximum of the right half at any old scale is bounded by the
corresponding maximum in the complete successor interval. -/
theorem alignedDyadicScaleMaximum_shifted_half_le_succ
    (m r : ℕ) (a : ℕ → ℝ) (hr : r ≤ m) :
    alignedDyadicScaleMaximum m r
        (shiftedSequence a (2 ^ m)) ≤
      alignedDyadicScaleMaximum (m + 1) r a := by
  unfold alignedDyadicScaleMaximum
  refine Finset.sup'_le _ _ ?_
  intro q hq
  rw [alignedDyadicBlockSum_shifted_half a hr]
  apply Finset.le_sup' (fun t => |alignedDyadicBlockSum a r t|)
    (b := 2 ^ (m - r) + q)
  apply Finset.mem_range.mpr
  have hq' := Finset.mem_range.mp hq
  have hsub : m + 1 - r = (m - r) + 1 := by omega
  rw [hsub, Nat.pow_succ]
  omega

/-- Proper-scale energy is nonnegative. -/
theorem alignedDyadicProperCarlesonEnergy_nonneg
    (m : ℕ) (a : ℕ → ℝ) :
    0 ≤ alignedDyadicProperCarlesonEnergy m a := by
  unfold alignedDyadicProperCarlesonEnergy
  exact Finset.sum_nonneg fun r _hr =>
    sq_nonneg (alignedDyadicScaleMaximum m r a)

/-- Complete Carleson energy is nonnegative. -/
theorem alignedDyadicCarlesonEnergy_nonneg
    (m : ℕ) (a : ℕ → ℝ) :
    0 ≤ alignedDyadicCarlesonEnergy m a := by
  unfold alignedDyadicCarlesonEnergy
  exact Finset.sum_nonneg fun r _hr =>
    sq_nonneg (alignedDyadicScaleMaximum m r a)

/-- The complete energy is the proper-scale energy plus the top scale. -/
theorem alignedDyadicCarlesonEnergy_eq_proper_add_top
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicCarlesonEnergy m a =
      alignedDyadicProperCarlesonEnergy m a +
        alignedDyadicScaleMaximum m m a ^ 2 := by
  simp [alignedDyadicCarlesonEnergy,
    alignedDyadicProperCarlesonEnergy, Finset.sum_range_succ]

/-- Old proper-scale energy embeds into the proper scales of the successor
interval. -/
theorem alignedDyadicProperCarlesonEnergy_le_succ
    (m : ℕ) (a : ℕ → ℝ) :
    alignedDyadicProperCarlesonEnergy m a ≤
      alignedDyadicProperCarlesonEnergy (m + 1) a := by
  unfold alignedDyadicProperCarlesonEnergy
  rw [Finset.sum_range_succ]
  have hsum :
      (∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum m r a ^ 2) ≤
        ∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2 := by
    apply Finset.sum_le_sum
    intro r hrange
    have hr : r ≤ m := Nat.le_of_lt (Finset.mem_range.mp hrange)
    exact (sq_le_sq₀
      (alignedDyadicScaleMaximum_nonneg m r a)
      (alignedDyadicScaleMaximum_nonneg (m + 1) r a)).2
        (alignedDyadicScaleMaximum_le_succ m r a hr)
  exact hsum.trans (le_add_of_nonneg_right (sq_nonneg _))

/-- A complete left-half block together with a proper right prefix occupies
at most one global block at each proper successor scale. -/
theorem topBlock_sq_add_shiftedProperEnergy_le_succ
    (m : ℕ) (a : ℕ → ℝ) :
    finitePrefixSum a (2 ^ m) ^ 2 +
        alignedDyadicProperCarlesonEnergy m
          (shiftedSequence a (2 ^ m)) ≤
      alignedDyadicProperCarlesonEnergy (m + 1) a := by
  have htopAbs :
      |alignedDyadicBlockSum a m 0| ≤
        alignedDyadicScaleMaximum (m + 1) m a :=
    abs_alignedDyadicBlockSum_le_scaleMaximum
      (m + 1) m a (q := 0) (by simp)
  have htop :
      finitePrefixSum a (2 ^ m) ^ 2 ≤
        alignedDyadicScaleMaximum (m + 1) m a ^ 2 := by
    have hs := (sq_le_sq₀
      (abs_nonneg (alignedDyadicBlockSum a m 0))
      (alignedDyadicScaleMaximum_nonneg (m + 1) m a)).2 htopAbs
    simpa [sq_abs] using hs
  have hright :
      alignedDyadicProperCarlesonEnergy m
          (shiftedSequence a (2 ^ m)) ≤
        ∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2 := by
    unfold alignedDyadicProperCarlesonEnergy
    apply Finset.sum_le_sum
    intro r hrange
    have hr : r ≤ m := Nat.le_of_lt (Finset.mem_range.mp hrange)
    exact (sq_le_sq₀
      (alignedDyadicScaleMaximum_nonneg m r
        (shiftedSequence a (2 ^ m)))
      (alignedDyadicScaleMaximum_nonneg (m + 1) r a)).2
        (alignedDyadicScaleMaximum_shifted_half_le_succ m r a hr)
  calc
    finitePrefixSum a (2 ^ m) ^ 2 +
        alignedDyadicProperCarlesonEnergy m
          (shiftedSequence a (2 ^ m)) ≤
      alignedDyadicScaleMaximum (m + 1) m a ^ 2 +
        ∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2 :=
      add_le_add htop hright
    _ = (∑ r ∈ Finset.range m,
          alignedDyadicScaleMaximum (m + 1) r a ^ 2) +
        alignedDyadicScaleMaximum (m + 1) m a ^ 2 := by ring
    _ = alignedDyadicProperCarlesonEnergy (m + 1) a := by
      simp [alignedDyadicProperCarlesonEnergy,
        Finset.sum_range_succ]

/-- Weighted two-term Cauchy inequality, including the zero-weight base case. -/
private theorem add_sq_le_succ_weight
    {k x y E : ℝ} (hk : 0 ≤ k) (hE : 0 ≤ E)
    (hy : y ^ 2 ≤ k * E) :
    (x + y) ^ 2 ≤ (k + 1) * (x ^ 2 + E) := by
  by_cases hk0 : k = 0
  · subst k
    have hy0 : y = 0 := by
      nlinarith [sq_nonneg y]
    subst y
    nlinarith [sq_nonneg x]
  · have hkpos : 0 < k := lt_of_le_of_ne hk (Ne.symm hk0)
    have hsquare : 0 ≤ (k * x - y) ^ 2 := sq_nonneg _
    have hgap : 0 ≤ k * E - y ^ 2 := sub_nonneg.mpr hy
    have hproduct : 0 ≤ (k + 1) * (k * E - y ^ 2) :=
      mul_nonneg (by linarith) hgap
    have hmul :
        k * (x + y) ^ 2 ≤
          k * ((k + 1) * (x ^ 2 + E)) := by
      nlinarith
    nlinarith

/-- Every proper prefix uses at most one aligned block at each proper scale. -/
private theorem finitePrefixSum_sq_le_properCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N < 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      (m : ℝ) * alignedDyadicProperCarlesonEnergy m a := by
  induction m generalizing a N with
  | zero =>
      have hzero : N = 0 := by
        norm_num at hN
        omega
      subst N
      simp [finitePrefixSum, alignedDyadicProperCarlesonEnergy]
  | succ m ih =>
      let H : ℕ := 2 ^ m
      let right : ℕ → ℝ := shiftedSequence a H
      have hpow : 2 ^ Nat.succ m = H + H := by
        dsimp [H]
        rw [Nat.pow_succ]
        omega
      rw [hpow] at hN
      by_cases hleft : N < H
      · have hprefix := ih a N (by simpa [H] using hleft)
        have hproper := alignedDyadicProperCarlesonEnergy_le_succ m a
        have hnonneg :=
          alignedDyadicProperCarlesonEnergy_nonneg (m + 1) a
        calc
          finitePrefixSum a N ^ 2 ≤
              (m : ℝ) * alignedDyadicProperCarlesonEnergy m a := hprefix
          _ ≤ (m : ℝ) *
              alignedDyadicProperCarlesonEnergy (m + 1) a :=
            mul_le_mul_of_nonneg_left hproper (Nat.cast_nonneg m)
          _ ≤ (Nat.succ m : ℝ) *
              alignedDyadicProperCarlesonEnergy (m + 1) a := by
            exact mul_le_mul_of_nonneg_right
              (by exact_mod_cast Nat.le_succ m) hnonneg
      · have hHle : H ≤ N := Nat.le_of_not_gt hleft
        have hrem : N - H < H := by omega
        have hrightPrefix := ih right (N - H)
          (by simpa [H] using hrem)
        have hdecomp : H + (N - H) = N := Nat.add_sub_of_le hHle
        have hsplit :
            finitePrefixSum a N =
              finitePrefixSum a H + finitePrefixSum right (N - H) := by
          calc
            finitePrefixSum a N = finitePrefixSum a (H + (N - H)) := by
              rw [hdecomp]
            _ = finitePrefixSum a H +
                finitePrefixSum right (N - H) := by
              simpa [right] using finitePrefixSum_add a H (N - H)
        have hcombine :
            (finitePrefixSum a H + finitePrefixSum right (N - H)) ^ 2 ≤
              ((m : ℝ) + 1) *
                (finitePrefixSum a H ^ 2 +
                  alignedDyadicProperCarlesonEnergy m right) :=
          add_sq_le_succ_weight
            (Nat.cast_nonneg m)
            (alignedDyadicProperCarlesonEnergy_nonneg m right)
            hrightPrefix
        have hcontain :
            finitePrefixSum a H ^ 2 +
                alignedDyadicProperCarlesonEnergy m right ≤
              alignedDyadicProperCarlesonEnergy (m + 1) a := by
          simpa [right, H] using
            topBlock_sq_add_shiftedProperEnergy_le_succ m a
        calc
          finitePrefixSum a N ^ 2 =
              (finitePrefixSum a H +
                finitePrefixSum right (N - H)) ^ 2 := by rw [hsplit]
          _ ≤ ((m : ℝ) + 1) *
              (finitePrefixSum a H ^ 2 +
                alignedDyadicProperCarlesonEnergy m right) := hcombine
          _ ≤ ((m : ℝ) + 1) *
              alignedDyadicProperCarlesonEnergy (m + 1) a :=
            mul_le_mul_of_nonneg_left hcontain (by positivity)
          _ = (Nat.succ m : ℝ) *
              alignedDyadicProperCarlesonEnergy (m + 1) a := by
            rw [Nat.cast_succ]

/-- Every finite prefix is controlled by `m+1` times the max-per-scale
Carleson energy. -/
theorem finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N ≤ 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
  by_cases hfull : N = 2 ^ m
  · subst N
    have htopAbs :
        |alignedDyadicBlockSum a m 0| ≤
          alignedDyadicScaleMaximum m m a :=
      abs_alignedDyadicBlockSum_le_scaleMaximum
        m m a (q := 0) (by simp)
    have htop :
        finitePrefixSum a (2 ^ m) ^ 2 ≤
          alignedDyadicScaleMaximum m m a ^ 2 := by
      have hs := (sq_le_sq₀
        (abs_nonneg (alignedDyadicBlockSum a m 0))
        (alignedDyadicScaleMaximum_nonneg m m a)).2 htopAbs
      simpa [sq_abs] using hs
    have htopEnergy :
        alignedDyadicScaleMaximum m m a ^ 2 ≤
          alignedDyadicCarlesonEnergy m a := by
      rw [alignedDyadicCarlesonEnergy_eq_proper_add_top]
      exact le_add_of_nonneg_left
        (alignedDyadicProperCarlesonEnergy_nonneg m a)
    have henergy := alignedDyadicCarlesonEnergy_nonneg m a
    calc
      finitePrefixSum a (2 ^ m) ^ 2 ≤
          alignedDyadicScaleMaximum m m a ^ 2 := htop
      _ ≤ alignedDyadicCarlesonEnergy m a := htopEnergy
      _ ≤ ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
        nlinarith [show (0 : ℝ) ≤ (m : ℝ) from Nat.cast_nonneg m]
  · have hproper : N < 2 ^ m := lt_of_le_of_ne hN hfull
    have hprefix :=
      finitePrefixSum_sq_le_properCarlesonEnergy m a N hproper
    have hproperEnergy :
        alignedDyadicProperCarlesonEnergy m a ≤
          alignedDyadicCarlesonEnergy m a := by
      rw [alignedDyadicCarlesonEnergy_eq_proper_add_top]
      exact le_add_of_nonneg_right (sq_nonneg _)
    have henergy := alignedDyadicCarlesonEnergy_nonneg m a
    calc
      finitePrefixSum a N ^ 2 ≤
          (m : ℝ) * alignedDyadicProperCarlesonEnergy m a := hprefix
      _ ≤ (m : ℝ) * alignedDyadicCarlesonEnergy m a :=
        mul_le_mul_of_nonneg_left hproperEnergy (Nat.cast_nonneg m)
      _ ≤ ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
        nlinarith

/-- The exact maximum over all prefixes satisfies the same Carleson bound. -/
theorem dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicPrefixMaximum m a ^ 2 ≤
      ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a := by
  let B : ℝ := ((m : ℝ) + 1) * alignedDyadicCarlesonEnergy m a
  have hB : 0 ≤ B := by
    dsimp [B]
    exact mul_nonneg (by positivity)
      (alignedDyadicCarlesonEnergy_nonneg m a)
  have hpoint : ∀ N : ℕ, N ≤ 2 ^ m →
      |finitePrefixSum a N| ≤ Real.sqrt B := by
    intro N hN
    have hsquare := finitePrefixSum_sq_le_alignedDyadicCarlesonEnergy
      m a N hN
    have habsSquare :
        |finitePrefixSum a N| ^ 2 ≤ (Real.sqrt B) ^ 2 := by
      rw [sq_abs, Real.sq_sqrt hB]
      simpa [B] using hsquare
    exact (sq_le_sq₀ (abs_nonneg _) (Real.sqrt_nonneg _)).mp habsSquare
  have hmax : dyadicPrefixMaximum m a ≤ Real.sqrt B := by
    exact (partialSups_le_iff).2 hpoint
  have hmaxNonneg : 0 ≤ dyadicPrefixMaximum m a := by
    have hzero := le_partialSups_of_le
      (fun N : ℕ => |finitePrefixSum a N|)
      (Nat.zero_le (2 ^ m))
    exact (abs_nonneg (finitePrefixSum a 0)).trans hzero
  have hmaxSquare :
      dyadicPrefixMaximum m a ^ 2 ≤ (Real.sqrt B) ^ 2 :=
    (sq_le_sq₀ hmaxNonneg (Real.sqrt_nonneg _)).2 hmax
  rw [Real.sq_sqrt hB] at hmaxSquare
  simpa [B] using hmaxSquare

/-- At scale zero, a pointwise coefficient bound controls the complete scale
maximum. -/
theorem alignedDyadicScaleMaximum_zero_le_of_abs_le
    (m : ℕ) (a : ℕ → ℝ) {C : ℝ}
    (hC : ∀ q : ℕ, q < 2 ^ m → |a q| ≤ C) :
    alignedDyadicScaleMaximum m 0 a ≤ C := by
  unfold alignedDyadicScaleMaximum
  refine Finset.sup'_le _ _ ?_
  intro q hq
  simpa using hC q (Finset.mem_range.mp hq)

end GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace TwoPointConjectureJunction

open GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- Max-per-scale Carleson energy of one exact zero-padded two-point source. -/
def twoPointCarlesonEnergy
    (f g : ℕ → ℝ) (j h : ℕ) : ℝ :=
  alignedDyadicCarlesonEnergy (j + 1)
    (paddedTwoPointSequence f g j h)

/-- Sum of the max-per-scale energies over every positive shift. -/
def twoPointCarlesonEnergySum
    (f g : ℕ → ℝ) (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    twoPointCarlesonEnergy f g j h

/-- The exact scale-zero contribution after summing all positive shifts. -/
def mertensTwoPointCarlesonSingletonSum (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    alignedDyadicScaleMaximum (j + 1) 0
      (paddedTwoPointSequence moebiusReal moebiusReal j h) ^ 2

/-- Every zero-padded two-point Möbius coefficient has absolute value at most
one. -/
theorem abs_paddedTwoPointMoebius_le_one
    (j h n : ℕ) :
    |paddedTwoPointSequence moebiusReal moebiusReal j h n| ≤ 1 := by
  by_cases hn : n < dyadicTwoPointCutoff j h
  · rw [paddedTwoPointSequence, if_pos hn]
    simp only [twoPointSequence, abs_mul]
    calc
      |moebiusReal (n + 1)| * |moebiusReal (n + 1 + h)| ≤
          1 * |moebiusReal (n + 1 + h)| :=
        mul_le_mul_of_nonneg_right
          (moebiusReal_abs_le_one (n + 1)) (abs_nonneg _)
      _ ≤ 1 * 1 :=
        mul_le_mul_of_nonneg_left
          (moebiusReal_abs_le_one (n + 1 + h)) zero_le_one
      _ = 1 := by norm_num
  · simp [paddedTwoPointSequence, hn]

/-- The singleton-scale maximum is at most one for every shift. -/
theorem mertensTwoPointCarlesonScaleZeroMaximum_le_one
    (j h : ℕ) :
    alignedDyadicScaleMaximum (j + 1) 0
      (paddedTwoPointSequence moebiusReal moebiusReal j h) ≤ 1 := by
  apply alignedDyadicScaleMaximum_zero_le_of_abs_le
  intro q _hq
  exact abs_paddedTwoPointMoebius_le_one j h q

/-- Summing the singleton-scale maxima over all shifts costs at most the dyadic
endpoint, rather than the quadratic mass forced by the complete tree energy. -/
theorem mertensTwoPointCarlesonSingletonSum_le_endpoint
    (j : ℕ) :
    mertensTwoPointCarlesonSingletonSum j ≤
      ((2 ^ (j + 1) : ℕ) : ℝ) := by
  let Y : ℕ := 2 ^ (j + 1)
  have hsquare : ∀ h ∈ Finset.Ico 1 Y,
      alignedDyadicScaleMaximum (j + 1) 0
          (paddedTwoPointSequence moebiusReal moebiusReal j h) ^ 2 ≤ 1 := by
    intro h _hh
    simpa only [one_pow] using (sq_le_sq₀
      (alignedDyadicScaleMaximum_nonneg (j + 1) 0
        (paddedTwoPointSequence moebiusReal moebiusReal j h))
      zero_le_one).2
        (mertensTwoPointCarlesonScaleZeroMaximum_le_one j h)
  calc
    mertensTwoPointCarlesonSingletonSum j ≤
        ∑ _h ∈ Finset.Ico 1 Y, (1 : ℝ) := by
      unfold mertensTwoPointCarlesonSingletonSum
      simpa [Y] using Finset.sum_le_sum hsquare
    _ = (((Finset.Ico 1 Y).card : ℕ) : ℝ) := by simp
    _ = ((Y - 1 : ℕ) : ℝ) := by rw [Nat.card_Ico]
    _ ≤ (Y : ℝ) := by exact_mod_cast Nat.sub_le Y 1
    _ = ((2 ^ (j + 1) : ℕ) : ℝ) := by rfl

/-- One exact shift-wise connection from the canonical Möbius prefix maximum to
the max-per-scale Carleson energy. -/
theorem mertensTwoPointPrefixMax_sq_le_twoPointCarlesonEnergy
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ^ 2 ≤
      ((j : ℝ) + 2) *
        twoPointCarlesonEnergy moebiusReal moebiusReal j h := by
  have hmax :=
    mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum j h
  have hsquare :
      mertensTwoPointPrefixMax j h ^ 2 ≤
        twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h ^ 2 :=
    (sq_le_sq₀
      (mertensTwoPointPrefixMax_nonneg j h)
      (twoPointDyadicPrefixMaximum_nonneg
        moebiusReal moebiusReal j h)).2 hmax
  have hcarleson :=
    dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy
      (j + 1) (paddedTwoPointSequence moebiusReal moebiusReal j h)
  calc
    mertensTwoPointPrefixMax j h ^ 2 ≤
        twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h ^ 2 :=
      hsquare
    _ ≤ (((j + 1 : ℕ) : ℝ) + 1) *
        alignedDyadicCarlesonEnergy (j + 1)
          (paddedTwoPointSequence moebiusReal moebiusReal j h) := by
      simpa [twoPointDyadicPrefixMaximum] using hcarleson
    _ = ((j : ℝ) + 2) *
        twoPointCarlesonEnergy moebiusReal moebiusReal j h := by
      dsimp [twoPointCarlesonEnergy]
      push_cast
      ring

/-- Summing the shift-wise comparison gives the exact finite connection to the
canonical maximal quadratic energy. -/
theorem mertensTwoPointMaximalQuadraticEnergy_le_carlesonEnergySum
    (j : ℕ) :
    mertensTwoPointMaximalQuadraticEnergy j ≤
      ((j : ℝ) + 2) *
        twoPointCarlesonEnergySum moebiusReal moebiusReal j := by
  unfold mertensTwoPointMaximalQuadraticEnergy twoPointCarlesonEnergySum
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefixMax j h ^ 2) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ((j : ℝ) + 2) *
          twoPointCarlesonEnergy moebiusReal moebiusReal j h := by
      apply Finset.sum_le_sum
      intro h _hh
      exact mertensTwoPointPrefixMax_sq_le_twoPointCarlesonEnergy j h
    _ = ((j : ℝ) + 2) *
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          twoPointCarlesonEnergy moebiusReal moebiusReal j h := by
      rw [Finset.mul_sum]

/-- Source-facing all-scale Carleson supplier, retaining the exact depth cost. -/
def SubpolynomialDyadicTwoPointCarlesonEnergyWithDepthCost
    (f g : ℕ → ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
    ((j : ℝ) + 2) * twoPointCarlesonEnergySum f g j ≤
      (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ)

/-- Exact Möbius specialization of the all-scale Carleson supplier. -/
def SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost : Prop :=
  SubpolynomialDyadicTwoPointCarlesonEnergyWithDepthCost
    moebiusReal moebiusReal

/-- The Carleson supplier discharges the canonical maximal-prefix premise. -/
theorem subpolynomialDyadicMaximalMertensTwoPointEnergy_of_carleson
    (hCarleson :
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost) :
    SubpolynomialDyadicMaximalMertensTwoPointEnergy := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := hCarleson δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  refine ⟨mul_nonneg hA (by positivity), ?_⟩
  exact
    (mertensTwoPointMaximalQuadraticEnergy_le_carlesonEnergySum j).trans
      (hscale j)

/-- Conditional RH endpoint from the explicit max-per-scale arithmetic
supplier.  The supplier itself remains open. -/
theorem riemannHypothesis_of_mertensTwoPointCarlesonEnergy
    (hCarleson :
      SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
    (subpolynomialDyadicMaximalMertensTwoPointEnergy_of_carleson hCarleson)

end TwoPointConjectureJunction
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal.dyadicPrefixMaximum_sq_le_alignedDyadicCarlesonEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.mertensTwoPointCarlesonSingletonSum_le_endpoint
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.mertensTwoPointMaximalQuadraticEnergy_le_carlesonEnergySum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.riemannHypothesis_of_mertensTwoPointCarlesonEnergy
```
