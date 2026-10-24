# Complete source: GRWTSK.NumberTheory.Moebius.ParityFourierResidueVariance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2014e78cd3486736ca7ad3be6001ba99a09f6798` · SHA-256 `ce036ed7df1e9d3b5624c273d70e98ee8b766d999fbd508c52e9a15f93124665`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #621. Direct stacked parent: draft PR #618 at
`0f98cd9101bd57fb193ea4b6655a52c6461e44c0`.
-/
import GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Residue-class variance for the nonzero parity Fourier modes

The parent route isolates the nonzero-frequency budget

`DyadicNaturalScaleNonzeroParityFourierBudget`.

For one parity and square modulus `q = d^2`, this module groups the one-point
Möbius Fourier sum by the residue of `floor(u / 2)` modulo `q`. Finite additive
Parseval then identifies the complete nonzero-frequency mean square with the
variance of those residue buckets after subtracting the zero mode exactly.

The explicit squarefree diagonal from the parity factorization is kept as a
separate nonzero-frequency L1 term. No variance, large-sieve, or diagonal
estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar Complex ComplexConjugate

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Möbius mass in one parity and one residue of `floor(u / 2)` modulo `d^2`.
No absolute value is inserted inside the bucket. -/
def parityMertensResidueBucket
    (b d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) : ℂ :=
  ∑ u ∈ endpointParitySet b r,
    if (((u / 2 : ℕ) : ZMod (d * d)) = a) then
      (moebiusReal u : ℂ)
    else 0

/-- Sum of squared residue-bucket magnitudes. -/
def parityMertensResidueEnergy
    (b d r : ℕ) [NeZero d] : ℝ :=
  ∑ a : ZMod (d * d),
    ‖parityMertensResidueBucket b d r a‖ ^ 2

/-- Exact variance after subtracting the zero Fourier mode. -/
def parityMertensResidueVariance
    (b d r : ℕ) [NeZero d] : ℝ :=
  parityMertensResidueEnergy b d r -
    parityMertensPrefix b r ^ 2 / (((d * d : ℕ) : ℝ))

/-- The residue buckets partition the parity-restricted Mertens prefix. -/
theorem sum_parityMertensResidueBucket
    (b d r : ℕ) [NeZero d] :
    (∑ a : ZMod (d * d),
      parityMertensResidueBucket b d r a) =
      (parityMertensPrefix b r : ℂ) := by
  classical
  unfold parityMertensResidueBucket parityMertensPrefix
  rw [Finset.sum_comm]
  push_cast
  apply Finset.sum_congr rfl
  intro u _hu
  simp

/-- Exact regrouping of the one-point parity Fourier sum by residue classes. -/
theorem parityOnePointMobiusFourierSum_eq_residueBuckets
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityOnePointMobiusFourierSum b d r k =
      ∑ a : ZMod (d * d),
        parityMertensResidueBucket b d r a *
          ZMod.stdAddChar (k * a) := by
  classical
  unfold parityOnePointMobiusFourierSum
    parityOnePointMobiusFourierTerm
    parityMertensResidueBucket
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro u _hu
  simp

/-- Orthogonality of the standard additive characters, in the conjugate form
needed for Parseval. -/
theorem stdAddChar_conj_mul_orthogonality
    (N : ℕ) [NeZero N]
    (a c : ZMod N) :
    (∑ k : ZMod N,
      conj (ZMod.stdAddChar (k * a)) *
        ZMod.stdAddChar (k * c)) =
      if a = c then (N : ℂ) else 0 := by
  classical
  have hconj (x : ZMod N) :
      conj (ZMod.stdAddChar x) = ZMod.stdAddChar (-x) := by
    rw [ZMod.stdAddChar_apply, ← Circle.coe_inv_eq_conj]
    simpa only [ZMod.stdAddChar_apply, Circle.coe_inv] using congrArg Subtype.val
      ((ZMod.toCircle (N := N)).map_neg_eq_inv x).symm
  simp_rw [hconj, ← AddChar.map_add_eq_mul]
  have hsum :=
    AddChar.sum_mulShift
      (ψ := ZMod.stdAddChar (N := N))
      (c - a) (ZMod.isPrimitive_stdAddChar N)
  convert hsum using 1
  · apply Finset.sum_congr rfl
    intro k _
    congr 1
    ring
  · by_cases hac : a = c
    · subst c; simp
    · have hca : c - a ≠ 0 := sub_ne_zero.mpr (Ne.symm hac)
      simp [hac, hca]

/-- Finite Parseval identity for the standard additive characters on `ZMod N`.
The transform convention uses the positive phase, which has the same norm as
Mathlib's bundled DFT convention. -/
theorem stdAddChar_parseval_norm_sq
    (N : ℕ) [NeZero N]
    (F : ZMod N → ℂ) :
    (∑ k : ZMod N,
      ‖∑ a : ZMod N,
        F a * ZMod.stdAddChar (k * a)‖ ^ 2) =
      (N : ℝ) * ∑ a : ZMod N, ‖F a‖ ^ 2 := by
  classical
  have hcomplex :
      (∑ k : ZMod N,
        conj (∑ a : ZMod N,
          F a * ZMod.stdAddChar (k * a)) *
        (∑ c : ZMod N,
          F c * ZMod.stdAddChar (k * c))) =
        (N : ℂ) *
          ∑ a : ZMod N, conj (F a) * F a := by
    simp_rw [map_sum, map_mul]
    conv_lhs => simp only [Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    conv_lhs =>
      arg 2
      ext a
      rw [Finset.sum_comm]
    rw [Finset.sum_comm]
    calc
      (∑ a : ZMod N,
        ∑ c : ZMod N,
          ∑ k : ZMod N,
            (conj (F a) *
              conj (ZMod.stdAddChar (k * a))) *
              (F c * ZMod.stdAddChar (k * c))) =
        ∑ a : ZMod N,
          ∑ c : ZMod N,
            (conj (F a) * F c) *
              (∑ k : ZMod N,
                conj (ZMod.stdAddChar (k * a)) *
                  ZMod.stdAddChar (k * c)) := by
          apply Finset.sum_congr rfl
          intro a _ha
          apply Finset.sum_congr rfl
          intro c _hc
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro k _hk
          ring
      _ = ∑ a : ZMod N,
          ∑ c : ZMod N,
            (conj (F a) * F c) *
              (if a = c then (N : ℂ) else 0) := by
          simp_rw [stdAddChar_conj_mul_orthogonality]
      _ = (N : ℂ) *
          ∑ a : ZMod N, conj (F a) * F a := by
          simp [Finset.mul_sum, mul_comm, mul_left_comm]
  simp_rw [← Complex.normSq_eq_conj_mul_self] at hcomplex
  have hreal : (∑ k : ZMod N, Complex.normSq (∑ a : ZMod N,
      F a * ZMod.stdAddChar (k * a))) =
      (N : ℝ) * ∑ a : ZMod N, Complex.normSq (F a) := by
    exact_mod_cast hcomplex
  simpa only [Complex.normSq_eq_norm_sq] using hreal

/-- Parseval for the exact parity-residue regrouping. -/
theorem sum_norm_sq_parityOnePointMobiusFourierSum
    (b d r : ℕ) [NeZero d] :
    (∑ k : ZMod (d * d),
      ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        parityMertensResidueEnergy b d r := by
  rw [show parityMertensResidueEnergy b d r =
      ∑ a : ZMod (d * d),
        ‖parityMertensResidueBucket b d r a‖ ^ 2 by rfl]
  simpa [parityOnePointMobiusFourierSum_eq_residueBuckets]
    using stdAddChar_parseval_norm_sq (d * d)
      (parityMertensResidueBucket b d r)

/-- Removing the zero Fourier mode gives the residue variance exactly. -/
theorem normalized_nonzero_parityFourierEnergy_eq_residueVariance
    (b d r : ℕ) [NeZero d] :
    (((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k ∈ nonzeroSquareModulusFrequencySet d,
        ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2) =
      parityMertensResidueVariance b d r := by
  classical
  have hfull :=
    sum_norm_sq_parityOnePointMobiusFourierSum b d r
  have hsplit :
      (∑ k : ZMod (d * d),
        ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2) =
      ‖parityOnePointMobiusFourierSum b d r
        (0 : ZMod (d * d))‖ ^ 2 +
      ∑ k ∈ nonzeroSquareModulusFrequencySet d,
        ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 := by
    rw [Finset.sum_eq_sum_sdiff_singleton_add
      (Finset.mem_univ (0 : ZMod (d * d)))]
    simp [nonzeroSquareModulusFrequencySet, add_comm]
  rw [hsplit, parityOnePointMobiusFourierSum_zero] at hfull
  unfold parityMertensResidueVariance
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast mul_ne_zero (NeZero.ne d) (NeZero.ne d)
  rw [Complex.norm_real, Real.norm_eq_abs, sq_abs] at hfull
  field_simp [hq]
  nlinarith [hfull]

/-- Residue variance is nonnegative because it is a normalized sum of squared
nonzero Fourier coefficients. -/
theorem parityMertensResidueVariance_nonneg
    (b d r : ℕ) [NeZero d] :
    0 ≤ parityMertensResidueVariance b d r := by
  rw [← normalized_nonzero_parityFourierEnergy_eq_residueVariance]
  positivity

/-- Normalized L1 contribution of the explicit squarefree diagonal on nonzero
frequencies. This term remains analytically open. -/
def paritySquarefreeDiagonalNonzeroFourierL1
    (b d r : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      ‖parityOnePointMobiusFourierDiagonal b d r k‖

/-- The residue-variance-plus-diagonal majorant for one square modulus. -/
def parityResidueVarianceDiagonalModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (1 / 2 : ℝ) *
    (parityMertensResidueVariance b d 0 +
      parityMertensResidueVariance b d 1 +
      paritySquarefreeDiagonalNonzeroFourierL1 b d 0 +
      paritySquarefreeDiagonalNonzeroFourierL1 b d 1)

/-- Normalized nonzero contribution from the original parity/Fourier
quadratic majorant for one square modulus. -/
def parityFourierNonzeroModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      parityFourierQuadraticMajorant b d k

/-- Pointwise triangle inequality separating the one-point Fourier energy from
the explicit squarefree diagonal. -/
theorem parityFourierQuadraticMajorant_le_energy_add_diagonal
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityFourierQuadraticMajorant b d k ≤
      (1 / 2 : ℝ) *
        (‖parityOnePointMobiusFourierSum b d 0 k‖ ^ 2 +
          ‖parityOnePointMobiusFourierSum b d 1 k‖ ^ 2 +
          ‖parityOnePointMobiusFourierDiagonal b d 0 k‖ +
          ‖parityOnePointMobiusFourierDiagonal b d 1 k‖) := by
  unfold parityFourierQuadraticMajorant
  have h0 := norm_sub_le
    (parityOnePointMobiusFourierSum b d 0 k ^ 2)
    (parityOnePointMobiusFourierDiagonal b d 0 k)
  have h1 := norm_sub_le
    (parityOnePointMobiusFourierSum b d 1 k ^ 2)
    (parityOnePointMobiusFourierDiagonal b d 1 k)
  simp only [norm_pow] at h0 h1
  nlinarith

/-- The exact residue variance plus the separate diagonal L1 term dominates
the original nonzero-frequency modulus contribution. -/
theorem parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal
    (b d : ℕ) [NeZero d] :
    parityFourierNonzeroModulusMajorant b d ≤
      parityResidueVarianceDiagonalModulusMajorant b d := by
  unfold parityFourierNonzeroModulusMajorant
    parityResidueVarianceDiagonalModulusMajorant
    paritySquarefreeDiagonalNonzeroFourierL1
  have hqnonneg :
      0 ≤ (((d * d : ℕ) : ℝ))⁻¹ := by positivity
  calc
    (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          parityFourierQuadraticMajorant b d k ≤
      (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          (1 / 2 : ℝ) *
            (‖parityOnePointMobiusFourierSum b d 0 k‖ ^ 2 +
              ‖parityOnePointMobiusFourierSum b d 1 k‖ ^ 2 +
              ‖parityOnePointMobiusFourierDiagonal b d 0 k‖ +
              ‖parityOnePointMobiusFourierDiagonal b d 1 k‖) := by
          apply mul_le_mul_of_nonneg_left ?_ hqnonneg
          apply Finset.sum_le_sum
          intro k _hk
          exact parityFourierQuadraticMajorant_le_energy_add_diagonal b d k
    _ = (1 / 2 : ℝ) *
        (parityMertensResidueVariance b d 0 +
          parityMertensResidueVariance b d 1 +
          (((d * d : ℕ) : ℝ))⁻¹ *
            ∑ k ∈ nonzeroSquareModulusFrequencySet d,
              ‖parityOnePointMobiusFourierDiagonal b d 0 k‖ +
          (((d * d : ℕ) : ℝ))⁻¹ *
            ∑ k ∈ nonzeroSquareModulusFrequencySet d,
              ‖parityOnePointMobiusFourierDiagonal b d 1 k‖) := by
          rw [← normalized_nonzero_parityFourierEnergy_eq_residueVariance
              b d 0,
            ← normalized_nonzero_parityFourierEnergy_eq_residueVariance
              b d 1]
          simp only [Finset.mul_sum, mul_add, Finset.sum_add_distrib]
          ring_nf

/-- Endpoint aggregate expressed through residue variance and the separate
squarefree-diagonal nonzero-frequency L1 term. -/
def parityResidueVarianceDiagonalEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      parityResidueVarianceDiagonalModulusMajorant b d
    else 0

/-- Endpoint comparison to the original nonzero-frequency majorant. -/
theorem parityFourierNonzeroFrequencyEndpointMajorant_le_residueVarianceDiagonal
    (b : ℕ) :
    parityFourierNonzeroFrequencyEndpointMajorant b ≤
      parityResidueVarianceDiagonalEndpointMajorant b := by
  unfold parityFourierNonzeroFrequencyEndpointMajorant
    parityResidueVarianceDiagonalEndpointMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  exact
    parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal b d

/-- Natural-scale supplier stated entirely in terms of residue variance and the
explicit squarefree diagonal L1 contribution. -/
def DyadicNaturalScaleParityResidueVarianceDiagonalBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityResidueVarianceDiagonalEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The residue-variance-plus-diagonal supplier discharges the nonzero Fourier
budget from PR #612. -/
theorem nonzeroParityFourierBudget_of_residueVarianceDiagonal
    (hResidue : DyadicNaturalScaleParityResidueVarianceDiagonalBudget) :
    DyadicNaturalScaleNonzeroParityFourierBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hResidue δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact
    (parityFourierNonzeroFrequencyEndpointMajorant_le_residueVarianceDiagonal b).trans
      (hscale j b hb)

/-- Combining the pointwise ordinary-Mertens zero-mode premise with the exact
residue-variance-plus-diagonal nonzero supplier reaches the natural-scale
congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_residueVarianceDiagonal
    (hPoint : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hResidue : DyadicNaturalScaleParityResidueVarianceDiagonalBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
    hPoint
    (nonzeroParityFourierBudget_of_residueVarianceDiagonal hResidue)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.stdAddChar_parseval_norm_sq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalized_nonzero_parityFourierEnergy_eq_residueVariance
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.nonzeroParityFourierBudget_of_residueVarianceDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwiseMertens_and_residueVarianceDiagonal
```
