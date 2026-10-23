/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #625. Direct stacked parent: draft PR #624 at
`2474a78629ba870118753a7f9c0a56a0ee827a4b`.
-/
import GRWTSK.NumberTheory.Moebius.ParityResidueVarianceLargeModulusObstruction

/-!
# Signed residue convolution for the square-minus-diagonal Fourier term

The positive residue-variance majorant is obstructed at the natural scale by
large square moduli.  The exact parity/Fourier factorization, however, contains

`S_r(b,d,k)^2 - D_r(b,d,k)`

before any positive separation.  This module keeps that cancellation intact.

For one parity class, strict endpoint pairs `u<v` are grouped by the residue of

`floor(u/2) + floor(v/2) mod d^2`.

The resulting signed residue convolution has additive Fourier transform exactly

`S_r^2 - D_r`.

Absolute values are applied only after this signed object has been formed.  No
analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact residue coordinate used by the parity one-point Fourier sums. -/
def parityResidueCoordinate
    (d u : ℕ) [NeZero d] : ZMod (d * d) :=
  ((u / 2 : ℕ) : ZMod (d * d))

/-- Signed strict-pair convolution bucket.

The strict order removes the diagonal.  The factor two restores the two
ordered off-diagonal orientations appearing in the square of a sum. -/
def paritySignedResidueConvolutionBucket
    (b d r : ℕ) [NeZero d]
    (s : ZMod (d * d)) : ℂ :=
  2 * ∑ uv ∈ endpointParityStrictPairSet b r,
    if parityResidueCoordinate d uv.1 +
          parityResidueCoordinate d uv.2 = s then
      (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
    else 0

/-- Summing all residue buckets recovers the complete signed strict-pair mass.
No absolute value is inserted. -/
theorem sum_paritySignedResidueConvolutionBucket
    (b d r : ℕ) [NeZero d] :
    (∑ s : ZMod (d * d),
      paritySignedResidueConvolutionBucket b d r s) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ) := by
  classical
  unfold paritySignedResidueConvolutionBucket
  calc
    (∑ s : ZMod (d * d),
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        if parityResidueCoordinate d uv.1 +
              parityResidueCoordinate d uv.2 = s then
          (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
        else 0) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        ∑ s : ZMod (d * d),
          if parityResidueCoordinate d uv.1 +
                parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0 := by
            simp_rw [Finset.mul_sum]
            rw [Finset.sum_comm]
    _ = 2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ) := by
          apply congrArg (fun z : ℂ => 2 * z)
          apply Finset.sum_congr rfl
          intro uv _huv
          simp

/-- Additive Fourier transform of the signed residue convolution. -/
def paritySignedResidueConvolutionFourier
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ s : ZMod (d * d),
    paritySignedResidueConvolutionBucket b d r s *
      ZMod.stdAddChar (k * s)

/-- The signed residue transform is twice the strict-pair product sum. -/
theorem paritySignedResidueConvolutionFourier_eq_twice_pairSum
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    paritySignedResidueConvolutionFourier b d r k =
      2 * parityOnePointMobiusFourierPairSum b d r k := by
  classical
  unfold paritySignedResidueConvolutionFourier
    paritySignedResidueConvolutionBucket
  calc
    (∑ s : ZMod (d * d),
      (2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        if parityResidueCoordinate d uv.1 +
              parityResidueCoordinate d uv.2 = s then
          (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
        else 0) * ZMod.stdAddChar (k * s)) =
      2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        ∑ s : ZMod (d * d),
          (if parityResidueCoordinate d uv.1 +
                parityResidueCoordinate d uv.2 = s then
            (moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)
          else 0) * ZMod.stdAddChar (k * s) := by
            simp_rw [mul_assoc, Finset.mul_sum, Finset.sum_mul]
            rw [Finset.sum_comm]
            ring
    _ = 2 * ∑ uv ∈ endpointParityStrictPairSet b r,
        ((moebiusReal uv.1 : ℂ) * (moebiusReal uv.2 : ℂ)) *
          ZMod.stdAddChar
            (k * (parityResidueCoordinate d uv.1 +
              parityResidueCoordinate d uv.2)) := by
          apply congrArg (fun z : ℂ => 2 * z)
          apply Finset.sum_congr rfl
          intro uv _huv
          simp
    _ = 2 * parityOnePointMobiusFourierPairSum b d r k := by
          unfold parityOnePointMobiusFourierPairSum
            parityOnePointMobiusFourierTerm
            parityResidueCoordinate
          apply congrArg (fun z : ℂ => 2 * z)
          apply Finset.sum_congr rfl
          intro uv _huv
          have hphase :
              ZMod.stdAddChar
                  (k * (((uv.1 / 2 : ℕ) : ZMod (d * d)) +
                    ((uv.2 / 2 : ℕ) : ZMod (d * d)))) =
                ZMod.stdAddChar
                    (k * ((uv.1 / 2 : ℕ) : ZMod (d * d))) *
                  ZMod.stdAddChar
                    (k * ((uv.2 / 2 : ℕ) : ZMod (d * d))) := by
            rw [mul_add, AddChar.map_add_eq_mul]
          rw [hphase]
          ring

/-- Main exact identity: the signed residue convolution preserves the complete
square-minus-diagonal cancellation. -/
theorem paritySignedResidueConvolutionFourier_eq_square_sub_diagonal
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    paritySignedResidueConvolutionFourier b d r k =
      parityOnePointMobiusFourierSum b d r k ^ 2 -
        parityOnePointMobiusFourierDiagonal b d r k := by
  rw [paritySignedResidueConvolutionFourier_eq_twice_pairSum]
  exact parityPairSum_eq_half_square_sub_diagonal b d r k

/-- Pointwise majorant after the signed residue convolution has been formed. -/
def paritySignedResidueConvolutionFrequencyMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖paritySignedResidueConvolutionFourier b d 0 k‖ +
      ‖paritySignedResidueConvolutionFourier b d 1 k‖)

/-- Exact equality with the live parity/Fourier pointwise majorant. -/
theorem paritySignedResidueConvolutionFrequencyMajorant_eq_parityFourier
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    paritySignedResidueConvolutionFrequencyMajorant b d k =
      parityFourierQuadraticMajorant b d k := by
  unfold paritySignedResidueConvolutionFrequencyMajorant
    parityFourierQuadraticMajorant
  rw [paritySignedResidueConvolutionFourier_eq_square_sub_diagonal,
    paritySignedResidueConvolutionFourier_eq_square_sub_diagonal]

/-- Normalized nonzero-frequency signed residue-convolution majorant for one
square modulus. -/
def paritySignedResidueConvolutionNonzeroModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      paritySignedResidueConvolutionFrequencyMajorant b d k

/-- Exact equality with the live nonzero-frequency modulus majorant. -/
theorem paritySignedResidueConvolutionNonzeroModulusMajorant_eq_parityFourier
    (b d : ℕ) [NeZero d] :
    paritySignedResidueConvolutionNonzeroModulusMajorant b d =
      parityFourierNonzeroModulusMajorant b d := by
  unfold paritySignedResidueConvolutionNonzeroModulusMajorant
    parityFourierNonzeroModulusMajorant
  apply congrArg
  apply Finset.sum_congr rfl
  intro k _hk
  exact
    paritySignedResidueConvolutionFrequencyMajorant_eq_parityFourier b d k

/-- Endpoint aggregate of the exact signed residue-convolution majorants. -/
def paritySignedResidueConvolutionEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      paritySignedResidueConvolutionNonzeroModulusMajorant b d
    else 0

/-- Exact equality with the pre-existing nonzero-frequency endpoint majorant. -/
theorem paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier
    (b : ℕ) :
    paritySignedResidueConvolutionEndpointMajorant b =
      parityFourierNonzeroFrequencyEndpointMajorant b := by
  unfold paritySignedResidueConvolutionEndpointMajorant
    parityFourierNonzeroFrequencyEndpointMajorant
    parityFourierNonzeroModulusMajorant
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  exact
    paritySignedResidueConvolutionNonzeroModulusMajorant_eq_parityFourier b d

/-- Natural-scale supplier stated directly on the exact signed residue
convolution. -/
def DyadicNaturalScaleSignedResidueConvolutionBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      paritySignedResidueConvolutionEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The signed residue-convolution budget is exactly equivalent to the live
nonzero-frequency parity/Fourier budget. -/
theorem dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier :
    DyadicNaturalScaleSignedResidueConvolutionBudget ↔
      DyadicNaturalScaleNonzeroParityFourierBudget := by
  constructor
  · intro hSigned δ hδ
    obtain ⟨C, hC, hscale⟩ := hSigned δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [← paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier]
    exact hscale j b hb
  · intro hFourier δ hδ
    obtain ⟨C, hC, hscale⟩ := hFourier δ hδ
    refine ⟨C, hC, ?_⟩
    intro j b hb
    rw [paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier]
    exact hscale j b hb

/-- Constructed proof-relevant repair value for the obstruction boundary from
PR #624.  It changes the representation, not the analytic evidence state. -/
def signedResidueConvolutionCancellationRepair :
    SignedSquareDiagonalCancellationRepair
      DyadicNaturalScaleSignedResidueConvolutionBudget where
  toExactNonzeroBudget :=
    dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier.mp

/-- Combining the pointwise ordinary-Mertens zero-mode premise with the exact
signed residue-convolution nonzero supplier reaches the natural-scale
congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_signedResidueConvolution
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hSigned : DyadicNaturalScaleSignedResidueConvolutionBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
    hPoint
    (dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier.mp
      hSigned)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionFourier_eq_square_sub_diagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.paritySignedResidueConvolutionEndpointMajorant_eq_parityFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.signedResidueConvolutionCancellationRepair
