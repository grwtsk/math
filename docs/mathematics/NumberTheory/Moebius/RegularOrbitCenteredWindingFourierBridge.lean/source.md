# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingFourierBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67adcf3f0de8eaf3e1ec9fb960717a82f52dcb2f` · SHA-256 `c13a8934dd190cbc60dad51a384fb60cdbe85ee4b7c6f0888831bbb0d94d7209`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #841. Direct stacked parent: draft PR #837 at exact head
`b6314e628441e1b2705cf5be0c4f303ff31ca666`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingResidueDispersion
import GRWTSK.NumberTheory.Moebius.RegularOrbitFullFrequencyL2Reduction
import GRWTSK.NumberTheory.Moebius.ParityFourierResidueVariance

/-!
# Fourier bridge for centered winding residue dispersion

The centered residue fiber from the parent is indexed by natural residue
representatives.  The pre-existing regular-orbit Fourier route uses the same
signed binary Möbius mass indexed by `ZMod (d^2)`, with an explicit factor two.

This module proves that identification exactly.  For the even and odd
half-shift families, if `F(s)` is the centered half-index residue fiber and
`B(s)` is the existing signed residue bucket, then

`B(s) = 2 * F(s)`.

Finite Parseval therefore gives

`(d^2)^(-1) * sum_k |Bhat(k)|^2
  = zero-winding fiber energy + nonzero-winding wrap correlation`.

Equivalently, the wrap term is normalized full-frequency energy minus the
zero-winding fiber energy.  The four-family endpoint aggregate is shown to be
exactly the residue-dispersion aggregate from the parent.

No Fourier-energy estimate or cancellation theorem is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The centered signed binary Möbius mass in one `ZMod (d^2)` center residue. -/
def parityHalfIndexCenteredResidueFiberZMod
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (s : ZMod (d * d)) : ℝ :=
  ∑ h ∈ H,
    ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
      if (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) = s then
        halfIndexBinaryMobiusCoefficient r m h
      else 0

/-- Four times the square mass of the `ZMod`-indexed centered residue fibers. -/
def parityHalfIndexCenteredResidueSquareMassZMod
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ s : ZMod (d * d),
    parityHalfIndexCenteredResidueFiberZMod b d r H s ^ 2

/-- Generic square expansion of the `ZMod`-indexed centered residue fibers. -/
theorem centeredResidueFiberZModSquareExpansion
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ s : ZMod (d * d),
      parityHalfIndexCenteredResidueFiberZMod b d r H s ^ 2) =
      ∑ h ∈ H,
        ∑ g ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
              if halfIndexZeroWindingCoordinate m h ≡
                  halfIndexZeroWindingCoordinate n g [MOD d * d] then
                halfIndexBinaryMobiusCoefficient r m h *
                  halfIndexBinaryMobiusCoefficient r n g
              else 0 := by
  classical
  unfold parityHalfIndexCenteredResidueFiberZMod
  simp only [pow_two, Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  conv_lhs =>
    arg 2
    ext h
    rw [Finset.sum_comm]
    arg 2
    ext g
    rw [Finset.sum_comm]
    arg 2
    ext m
    rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  apply Finset.sum_congr rfl
  intro g _hg
  apply Finset.sum_congr rfl
  intro m _hm
  apply Finset.sum_congr rfl
  intro n _hn
  by_cases hmod :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d]
  · have hcast :
        (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) =
          (halfIndexZeroWindingCoordinate n g : ZMod (d * d)) :=
      (ZMod.natCast_eq_natCast_iff _ _ (d * d)).2 hmod
    rw [hcast]
    rw [Finset.sum_eq_single
      (halfIndexZeroWindingCoordinate n g : ZMod (d * d))]
    · simp [hmod]
    · intro s _hs hsne
      have hne :
          (halfIndexZeroWindingCoordinate n g : ZMod (d * d)) ≠ s :=
        Ne.symm hsne
      simp [hne]
    · simp
  · have hcast :
        (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) ≠
          (halfIndexZeroWindingCoordinate n g : ZMod (d * d)) := by
      intro hEq
      exact hmod
        ((ZMod.natCast_eq_natCast_iff _ _ (d * d)).1 hEq)
    simp [hmod, hcast]

/-- The `ZMod` square mass is the same full signed congruence surface used by
the natural-residue formulation. -/
theorem parityHalfIndexCenteredResidueSquareMassZMod_eq_congruence
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredResidueSquareMassZMod b d r H =
      parityHalfIndexCenteredSignedQuarticCongruence b d r H := by
  unfold parityHalfIndexCenteredResidueSquareMassZMod
    parityHalfIndexCenteredSignedQuarticCongruence
  rw [centeredResidueFiberZModSquareExpansion]
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro h _hh
  apply Finset.sum_congr rfl
  intro g _hg
  apply Finset.sum_congr rfl
  intro m _hm
  apply Finset.sum_congr rfl
  intro n _hn
  rw [halfIndexQuarticMobiusCoefficient_eq_binary_mul]

/-- The natural representative and `ZMod` formulations have exactly the same
centered residue square mass. -/
theorem parityHalfIndexCenteredResidueSquareMassZMod_eq_nat
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexCenteredResidueSquareMassZMod b d r H =
      parityHalfIndexCenteredResidueSquareMass b d r H := by
  calc
    parityHalfIndexCenteredResidueSquareMassZMod b d r H =
        parityHalfIndexCenteredSignedQuarticCongruence b d r H :=
      parityHalfIndexCenteredResidueSquareMassZMod_eq_congruence b d r H
    _ = parityHalfIndexCenteredResidueSquareMass b d r H :=
      (parityHalfIndexCenteredResidueSquareMass_eq_congruence b d r H).symm

/-- On endpoint parity `r<2`, the existing affine signed-residue bucket over an
arbitrary half-shift family is twice the centered half-index residue fiber. -/
theorem sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (hr : r < 2)
    (s : ZMod (d * d)) :
    (∑ h ∈ H,
      parityAffineShiftResidueCorrelation b d r h s) =
      (2 : ℂ) *
        (parityHalfIndexCenteredResidueFiberZMod b d r H s : ℂ) := by
  classical
  calc
    (∑ h ∈ H,
      parityAffineShiftResidueCorrelation b d r h s) =
        ∑ h ∈ H,
          (2 : ℂ) *
            ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
              if (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) = s then
                (halfIndexBinaryMobiusCoefficient r m h : ℂ)
              else 0 := by
      apply Finset.sum_congr rfl
      intro h _hh
      unfold parityAffineShiftResidueCorrelation
      rw [sum_parityAffineShiftBaseSet_eq_halfIndex b r h hr]
      apply congrArg (fun z : ℂ => (2 : ℂ) * z)
      apply Finset.sum_congr rfl
      intro m _hm
      have hcoord :
          parityAffineShiftResidueCoordinate d (2 * m + r) h =
            (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) := by
        rw [parityAffineShiftResidueCoordinate_reconstructed d m r h hr]
        unfold halfIndexZeroWindingCoordinate
        push_cast
        ring
      rw [hcoord]
      simp [halfIndexBinaryMobiusCoefficient]
    _ = (2 : ℂ) *
        ∑ h ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            if (halfIndexZeroWindingCoordinate m h : ZMod (d * d)) = s then
              (halfIndexBinaryMobiusCoefficient r m h : ℂ)
            else 0 := by
      rw [Finset.mul_sum]
    _ = (2 : ℂ) *
        (parityHalfIndexCenteredResidueFiberZMod b d r H s : ℂ) := by
      unfold parityHalfIndexCenteredResidueFiberZMod
      push_cast
      simp_rw [apply_ite (fun x : ℝ => (x : ℂ)), Complex.ofReal_zero]

/-- Exact factor-two bridge for the even half-shift residue bucket. -/
theorem parityEvenHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (s : ZMod (d * d)) :
    parityEvenHalfShiftSignedResidueBucket b d r s =
      (2 : ℂ) *
        (parityHalfIndexCenteredResidueFiberZMod
          b d r (positiveEndpointEvenShiftSet b) s : ℂ) := by
  unfold parityEvenHalfShiftSignedResidueBucket
  exact
    sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
      b d r (positiveEndpointEvenShiftSet b) hr s

/-- Exact factor-two bridge for the odd half-shift residue bucket. -/
theorem parityOddHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (s : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueBucket b d r s =
      (2 : ℂ) *
        (parityHalfIndexCenteredResidueFiberZMod
          b d r (positiveEndpointOddShiftSet b) s : ℂ) := by
  unfold parityOddHalfShiftSignedResidueBucket
  exact
    sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
      b d r (positiveEndpointOddShiftSet b) hr s

/-- Additive Fourier transform of the centered `ZMod` residue fiber. -/
def parityHalfIndexCenteredResidueFourier
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    (parityHalfIndexCenteredResidueFiberZMod b d r H s : ℂ) *
      ZMod.stdAddChar (k * s)

/-- The existing even-half-shift Fourier transform is twice the centered
residue Fourier transform. -/
theorem parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityEvenHalfShiftSignedResidueFourier b d r k =
      (2 : ℂ) *
        parityHalfIndexCenteredResidueFourier
          b d r (positiveEndpointEvenShiftSet b) k := by
  unfold parityEvenHalfShiftSignedResidueFourier
    parityHalfIndexCenteredResidueFourier
  calc
    (∑ s : ZMod (d * d),
      parityEvenHalfShiftSignedResidueBucket b d r s *
        ZMod.stdAddChar (k * s)) =
      ∑ s : ZMod (d * d),
        ((2 : ℂ) *
          (parityHalfIndexCenteredResidueFiberZMod
            b d r (positiveEndpointEvenShiftSet b) s : ℂ)) *
          ZMod.stdAddChar (k * s) := by
      apply Finset.sum_congr rfl
      intro s _hs
      rw [parityEvenHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod
        b d r hr s]
    _ = (2 : ℂ) *
        ∑ s : ZMod (d * d),
          (parityHalfIndexCenteredResidueFiberZMod
            b d r (positiveEndpointEvenShiftSet b) s : ℂ) *
            ZMod.stdAddChar (k * s) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro s _hs
      ring

/-- The existing odd-half-shift Fourier transform is twice the centered
residue Fourier transform. -/
theorem parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityOddHalfShiftSignedResidueFourier b d r k =
      (2 : ℂ) *
        parityHalfIndexCenteredResidueFourier
          b d r (positiveEndpointOddShiftSet b) k := by
  unfold parityOddHalfShiftSignedResidueFourier
    parityHalfIndexCenteredResidueFourier
  calc
    (∑ s : ZMod (d * d),
      parityOddHalfShiftSignedResidueBucket b d r s *
        ZMod.stdAddChar (k * s)) =
      ∑ s : ZMod (d * d),
        ((2 : ℂ) *
          (parityHalfIndexCenteredResidueFiberZMod
            b d r (positiveEndpointOddShiftSet b) s : ℂ)) *
          ZMod.stdAddChar (k * s) := by
      apply Finset.sum_congr rfl
      intro s _hs
      rw [parityOddHalfShiftSignedResidueBucket_eq_two_mul_centeredFiberZMod
        b d r hr s]
    _ = (2 : ℂ) *
        ∑ s : ZMod (d * d),
          (parityHalfIndexCenteredResidueFiberZMod
            b d r (positiveEndpointOddShiftSet b) s : ℂ) *
            ZMod.stdAddChar (k * s) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro s _hs
      ring

/-- Parseval for the centered residue Fourier transform. -/
theorem sum_norm_sq_parityHalfIndexCenteredResidueFourier
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ k : ZMod (d * d),
      ‖parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        ∑ s : ZMod (d * d),
          parityHalfIndexCenteredResidueFiberZMod b d r H s ^ 2 := by
  have hparseval :=
    stdAddChar_parseval_norm_sq (d * d)
      (fun s : ZMod (d * d) =>
        (parityHalfIndexCenteredResidueFiberZMod b d r H s : ℂ))
  simpa [parityHalfIndexCenteredResidueFourier,
    Complex.norm_real, Real.norm_eq_abs, sq_abs] using hparseval

/-- The Fourier energy of twice the centered transform is exactly `d^2` times
the centered residue square mass from the parent. -/
theorem sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ k : ZMod (d * d),
      ‖(2 : ℂ) *
        parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass b d r H := by
  have hparseval :=
    sum_norm_sq_parityHalfIndexCenteredResidueFourier b d r H
  calc
    (∑ k : ZMod (d * d),
      ‖(2 : ℂ) *
        parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) =
        4 * ∑ k : ZMod (d * d),
          ‖parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2 := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _hk
      rw [norm_mul]
      norm_num
      ring
    _ = 4 *
        ((((d * d : ℕ) : ℝ)) *
          ∑ s : ZMod (d * d),
            parityHalfIndexCenteredResidueFiberZMod b d r H s ^ 2) := by
      rw [hparseval]
    _ = (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMassZMod b d r H := by
      unfold parityHalfIndexCenteredResidueSquareMassZMod
      ring
    _ = (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass b d r H := by
      rw [parityHalfIndexCenteredResidueSquareMassZMod_eq_nat]

/-- Full-frequency form of the centered winding dispersion for an arbitrary
half-shift family. -/
def parityCenteredWindingFullFrequencyDispersion
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k : ZMod (d * d),
        ‖(2 : ℂ) *
          parityHalfIndexCenteredResidueFourier b d r H k‖ ^ 2) -
    parityHalfIndexZeroWindingFiberEnergy b r H

/-- The generic full-frequency dispersion is exactly the nonzero-winding wrap
surface. -/
theorem parityCenteredWindingFullFrequencyDispersion_eq_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingFullFrequencyDispersion b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  unfold parityCenteredWindingFullFrequencyDispersion
  rw [sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass]
  rw [parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap]
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast (Nat.mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  field_simp [hq]
  ring

/-- Existing even-half-shift full-frequency energy equals `d^2` times the
centered residue square mass. -/
theorem sum_norm_sq_parityEvenHalfShiftSignedResidueFourier_eq_square_mul_squareMass
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    (∑ k : ZMod (d * d),
      ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass
          b d r (positiveEndpointEvenShiftSet b) := by
  calc
    (∑ k : ZMod (d * d),
      ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      ∑ k : ZMod (d * d),
        ‖(2 : ℂ) *
          parityHalfIndexCenteredResidueFourier
            b d r (positiveEndpointEvenShiftSet b) k‖ ^ 2 := by
      apply Finset.sum_congr rfl
      intro k _hk
      rw [parityEvenHalfShiftSignedResidueFourier_eq_two_mul_centered
        b d r hr k]
    _ = (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass
          b d r (positiveEndpointEvenShiftSet b) :=
      sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
        b d r (positiveEndpointEvenShiftSet b)

/-- Existing odd-half-shift full-frequency energy equals `d^2` times the
centered residue square mass. -/
theorem sum_norm_sq_parityOddHalfShiftSignedResidueFourier_eq_square_mul_squareMass
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    (∑ k : ZMod (d * d),
      ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass
          b d r (positiveEndpointOddShiftSet b) := by
  calc
    (∑ k : ZMod (d * d),
      ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      ∑ k : ZMod (d * d),
        ‖(2 : ℂ) *
          parityHalfIndexCenteredResidueFourier
            b d r (positiveEndpointOddShiftSet b) k‖ ^ 2 := by
      apply Finset.sum_congr rfl
      intro k _hk
      rw [parityOddHalfShiftSignedResidueFourier_eq_two_mul_centered
        b d r hr k]
    _ = (((d * d : ℕ) : ℝ)) *
        parityHalfIndexCenteredResidueSquareMass
          b d r (positiveEndpointOddShiftSet b) :=
      sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
        b d r (positiveEndpointOddShiftSet b)

/-- Normalized even-half-shift full-frequency energy is exactly zero winding
plus nonzero winding. -/
theorem normalized_evenFullFrequencyEnergy_eq_zeroEnergy_add_wrap
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    (((d * d : ℕ) : ℝ))⁻¹ *
        (∑ k : ZMod (d * d),
          ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      parityHalfIndexZeroWindingFiberEnergy
          b r (positiveEndpointEvenShiftSet b) +
        parityHalfIndexSignedQuarticWrap
          b d r (positiveEndpointEvenShiftSet b) := by
  rw [sum_norm_sq_parityEvenHalfShiftSignedResidueFourier_eq_square_mul_squareMass
    b d r hr]
  rw [parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap]
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast (Nat.mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  field_simp [hq]

/-- Normalized odd-half-shift full-frequency energy is exactly zero winding
plus nonzero winding. -/
theorem normalized_oddFullFrequencyEnergy_eq_zeroEnergy_add_wrap
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    (((d * d : ℕ) : ℝ))⁻¹ *
        (∑ k : ZMod (d * d),
          ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2) =
      parityHalfIndexZeroWindingFiberEnergy
          b r (positiveEndpointOddShiftSet b) +
        parityHalfIndexSignedQuarticWrap
          b d r (positiveEndpointOddShiftSet b) := by
  rw [sum_norm_sq_parityOddHalfShiftSignedResidueFourier_eq_square_mul_squareMass
    b d r hr]
  rw [parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap]
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast (Nat.mul_ne_zero (NeZero.ne d) (NeZero.ne d))
  field_simp [hq]

/-- The even-half-shift wrap term is normalized full-frequency energy minus
zero-winding fiber energy. -/
theorem parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityHalfIndexSignedQuarticWrap
        b d r (positiveEndpointEvenShiftSet b) =
      (((d * d : ℕ) : ℝ))⁻¹ *
          (∑ k : ZMod (d * d),
            ‖parityEvenHalfShiftSignedResidueFourier b d r k‖ ^ 2) -
        parityHalfIndexZeroWindingFiberEnergy
          b r (positiveEndpointEvenShiftSet b) := by
  have h := normalized_evenFullFrequencyEnergy_eq_zeroEnergy_add_wrap b d r hr
  linarith

/-- The odd-half-shift wrap term is normalized full-frequency energy minus
zero-winding fiber energy. -/
theorem parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy
    (b d r : ℕ) [NeZero d]
    (hr : r < 2) :
    parityHalfIndexSignedQuarticWrap
        b d r (positiveEndpointOddShiftSet b) =
      (((d * d : ℕ) : ℝ))⁻¹ *
          (∑ k : ZMod (d * d),
            ‖parityOddHalfShiftSignedResidueFourier b d r k‖ ^ 2) -
        parityHalfIndexZeroWindingFiberEnergy
          b r (positiveEndpointOddShiftSet b) := by
  have h := normalized_oddFullFrequencyEnergy_eq_zeroEnergy_add_wrap b d r hr
  linarith

/-- Absolute four-family Fourier dispersion at one effective square modulus. -/
def regularCenteredWindingFullFrequencyDispersionAtModulus
    (b d : ℕ) [NeZero d] : ℝ :=
  |(((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k : ZMod (d * d),
        ‖parityEvenHalfShiftSignedResidueFourier b d 0 k‖ ^ 2) -
      parityHalfIndexZeroWindingFiberEnergy
        b 0 (positiveEndpointEvenShiftSet b)| +
    |(((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k : ZMod (d * d),
        ‖parityOddHalfShiftSignedResidueFourier b d 0 k‖ ^ 2) -
      parityHalfIndexZeroWindingFiberEnergy
        b 0 (positiveEndpointOddShiftSet b)| +
    |(((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k : ZMod (d * d),
        ‖parityEvenHalfShiftSignedResidueFourier b d 1 k‖ ^ 2) -
      parityHalfIndexZeroWindingFiberEnergy
        b 1 (positiveEndpointEvenShiftSet b)| +
    |(((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k : ZMod (d * d),
        ‖parityOddHalfShiftSignedResidueFourier b d 1 k‖ ^ 2) -
      parityHalfIndexZeroWindingFiberEnergy
        b 1 (positiveEndpointOddShiftSet b)|

/-- The four-family Fourier dispersion is exactly the four-family centered
residue dispersion from the parent. -/
theorem regularCenteredWindingFullFrequencyDispersionAtModulus_eq_residue
    (b d : ℕ) [NeZero d] :
    regularCenteredWindingFullFrequencyDispersionAtModulus b d =
      regularCenteredWindingResidueDispersionAtModulus b d := by
  unfold regularCenteredWindingFullFrequencyDispersionAtModulus
    regularCenteredWindingResidueDispersionAtModulus
  rw [parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap,
    parityCenteredWindingResidueDispersion_eq_wrap]
  rw [parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy
      b d 0 (by norm_num),
    parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy
      b d 0 (by norm_num),
    parityHalfIndexSignedQuarticWrap_eq_evenFullFrequency_sub_zeroEnergy
      b d 1 (by norm_num),
    parityHalfIndexSignedQuarticWrap_eq_oddFullFrequency_sub_zeroEnergy
      b d 1 (by norm_num)]

/-- Effective-modulus endpoint aggregate in full-frequency coordinates. -/
def regularCenteredWindingFullFrequencyDispersionEndpoint
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      regularCenteredWindingFullFrequencyDispersionAtModulus b d
    else 0

/-- Exact endpoint identification of the full-frequency and residue-dispersion
coordinates. -/
theorem regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue
    (b : ℕ) :
    regularCenteredWindingFullFrequencyDispersionEndpoint b =
      regularCenteredWindingResidueDispersionEndpoint b := by
  unfold regularCenteredWindingFullFrequencyDispersionEndpoint
    regularCenteredWindingResidueDispersionEndpoint
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  exact regularCenteredWindingFullFrequencyDispersionAtModulus_eq_residue b d

/-- Parameterized analytic boundary in full-frequency Fourier coordinates. -/
def RegularCenteredWindingFullFrequencyDispersionEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ,
    regularCenteredWindingFullFrequencyDispersionEndpoint b ≤ E b

/-- The full-frequency and residue-dispersion analytic envelopes are exactly
equivalent. -/
theorem regularCenteredWindingFullFrequencyDispersionEnvelope_iff_residue
    (E : ℕ → ℝ) :
    RegularCenteredWindingFullFrequencyDispersionEnvelope E ↔
      RegularCenteredWindingResidueDispersionEnvelope E := by
  constructor
  · intro h b
    rw [← regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue]
    exact h b
  · intro h b
    rw [regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue]
    exact h b

/-- Conservative source profile for the exact bridge from centered winding
residue dispersion to the existing full-frequency regular-orbit route. -/
structure RegularCenteredWindingFullFrequencyBridgeSourceData where
  theoremStatement : Prop
  zmodCenteredResidueFiberMatched : Prop
  naturalAndZModSquareMassesMatched : Prop
  existingBucketFactorTwoMatched : Prop
  existingFourierFactorTwoMatched : Prop
  finiteParsevalReused : Prop
  zeroWindingEnergyMatched : Prop
  nonzeroWindingWrapMatched : Prop
  fourParityShiftFamiliesMatched : Prop
  effectiveModulusAggregationMatched : Prop
  analyticEnvelopeEquivalenceMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingFullFrequencyBridgeSource
    (d : RegularCenteredWindingFullFrequencyBridgeSourceData) : Prop :=
  d.theoremStatement ∧
    d.zmodCenteredResidueFiberMatched ∧
    d.naturalAndZModSquareMassesMatched ∧
    d.existingBucketFactorTwoMatched ∧
    d.existingFourierFactorTwoMatched ∧
    d.finiteParsevalReused ∧
    d.zeroWindingEnergyMatched ∧
    d.nonzeroWindingWrapMatched ∧
    d.fourParityShiftFamiliesMatched ∧
    d.effectiveModulusAggregationMatched ∧
    d.analyticEnvelopeEquivalenceMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredResidueFiberZModSquareExpansion
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_parityAffineShiftResidueCorrelation_eq_two_mul_centeredFiberZMod
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_norm_sq_two_mul_centeredResidueFourier_eq_square_mul_squareMass
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredWindingFullFrequencyDispersion_eq_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularCenteredWindingFullFrequencyDispersionEndpoint_eq_residue
```
