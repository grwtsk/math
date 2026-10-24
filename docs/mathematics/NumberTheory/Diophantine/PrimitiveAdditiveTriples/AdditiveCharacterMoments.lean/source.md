# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7edc897363a166ae03c8a1955f778b4343778d4` · SHA-256 `02caeebf59ce42acce67a9d53ab7ec9164c1d73681e3ade06f8e7b802dc8c415`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex. Mathlib finite sums and canonical
complex characters retain upstream attribution and Apache-2.0 licensing.
Only exact finite complex identities are proved; all abc estimates stay open. -/
import GRWTSK.Analysis.Fourier.FiniteAdditiveProjector
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open scoped BigOperators
open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

/-- A closed finite cube with the normalized unscaled additive projector and
an arbitrary joint complex weight, with all three coordinates scaled by `d`. -/
noncomputable def projectedJointMoment (M d q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) : ℂ :=
  ∑ u ∈ Finset.Icc 1 M, ∑ v ∈ Finset.Icc 1 M, ∑ w ∈ Finset.Icc 1 M,
    characterProjector q u v w * W (d * u) (d * v) (d * w)

/-- The same finite joint character sum with the frequency summation first.
The factor `q⁻¹` is retained and the weight is never factorized. -/
noncomputable def frequencyJointMoment (M d q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) : ℂ :=
  (q : ℂ)⁻¹ * ∑ k : ZMod q,
    ∑ u ∈ Finset.Icc 1 M, ∑ v ∈ Finset.Icc 1 M, ∑ w ∈ Finset.Icc 1 M,
      ZMod.stdAddChar (k * ((u : ZMod q) + (v : ZMod q) - (w : ZMod q))) *
        W (d * u) (d * v) (d * w)

/-- Literal finite interchange of the full frequency set with the three
coordinate sums. This identity needs no no-wrap hypothesis. -/
theorem projectedJointMoment_eq_frequencyJointMoment (M d q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) :
    projectedJointMoment M d q W = frequencyJointMoment M d q W := by
  unfold projectedJointMoment frequencyJointMoment
  simp_rw [characterProjector_eq_average, mul_assoc, Finset.sum_mul]
  simp_rw [← Finset.mul_sum]
  congr 1
  symm
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro u _
  rw [Finset.sum_comm]

/-- No-wrap character orthogonality enforces the actual equation `u+v=w`
on the independent closed cube. All three joint-weight coordinates survive. -/
theorem scaled_additive_sum_eq_character_cube (M d q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) (hq : 2 * M < q) :
    (∑ p ∈ additivePairs M,
      W (d * p.1) (d * p.2) (d * (p.1 + p.2))) =
      projectedJointMoment M d q W := by
  classical
  unfold projectedJointMoment additivePairs
  rw [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro u hu
  apply Finset.sum_congr rfl
  intro v hv
  have hproject :
      (∑ w ∈ Finset.Icc 1 M,
        characterProjector q u v w * W (d * u) (d * v) (d * w)) =
      ∑ w ∈ Finset.Icc 1 M,
        (if u + v = w then (1 : ℂ) else 0) * W (d * u) (d * v) (d * w) := by
    apply Finset.sum_congr rfl
    intro w hw
    rw [characterProjector_eq_indicator_of_noWrap hq hu hv hw]
  rw [hproject]
  by_cases hsum : u + v ≤ M
  · have hmem : u + v ∈ Finset.Icc 1 M :=
      Finset.mem_Icc.mpr ⟨by have h := (Finset.mem_Icc.mp hu).1; omega, hsum⟩
    rw [Finset.sum_eq_single (u + v)]
    · simp only [hsum, if_true, one_mul]
    · intro w _ hw
      simp only [if_neg (Ne.symm hw), zero_mul]
    · intro hnot
      exact (hnot hmem).elim
  · simp only [hsum, if_false]
    symm
    apply Finset.sum_eq_zero
    intro w hw
    have hne : u + v ≠ w := by have h := (Finset.mem_Icc.mp hw).2; omega
    simp only [if_neg hne, zero_mul]

/-- A positive divisor sector is the projected cube at its exact floor
cutoff. The projector uses the unscaled equation; no modular cancellation of
the divisor is required or asserted. -/
theorem commonDivisorWeightedMoment_eq_character_cube (N d q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) (hd : 0 < d) (hq : 2 * (N / d) < q) :
    commonDivisorWeightedMoment N d W = projectedJointMoment (N / d) d q W := by
  rw [commonDivisorWeightedMoment_eq_scaled_sum N d W hd,
    scaled_additive_sum_eq_character_cube (N / d) d q W hq]

/-- One modulus `q > 2*N` works for every positive Möbius divisor sector.
This is a finite complex identity, with no radical estimate or ring transfer. -/
theorem typedPrimitiveWeightedMoment_eq_moebius_character_cube (N q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) (hq : 2 * N < q) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : ℂ) * projectedJointMoment (N / d) d q W := by
  rw [typedPrimitiveWeightedMoment_eq_moebius_scaled_sum]
  apply Finset.sum_congr rfl
  intro d _
  rw [scaled_additive_sum_eq_character_cube (N / d) d q W
    (lt_of_le_of_lt (Nat.mul_le_mul_left 2 (Nat.div_le_self N d)) hq)]

/-- The same exact primitive moment in literal frequency-first form. -/
theorem typedPrimitiveWeightedMoment_eq_moebius_frequency_sum (N q : ℕ) [NeZero q]
    (W : ℕ → ℕ → ℕ → ℂ) (hq : 2 * N < q) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : ℂ) * frequencyJointMoment (N / d) d q W := by
  rw [typedPrimitiveWeightedMoment_eq_moebius_character_cube N q W hq]
  apply Finset.sum_congr rfl
  intro d _
  rw [projectedJointMoment_eq_frequencyJointMoment]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
