/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #619. Direct stacked parent: draft PR #618 at
`0f98cd9101bd57fb193ea4b6655a52c6461e44c0`.
-/
import GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric
import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality

/-!
# Parseval reduction of the nonzero square-modulus Fourier branch

The zero Fourier mode has been separated and reduced to the ordinary Mertens
square-root envelope.  This module advances only the independent `k != 0`
branch.

For each parity and square modulus, the one-point Möbius Fourier sum is the
finite Fourier transform of residue-class Möbius sums indexed by
`floor(u / 2) mod d^2`.  Exact character orthogonality gives Parseval, turning
the frequency-square contribution into a residue-class `L2` energy.

The explicit squarefree diagonal is retained as a separate normalized
frequency-`L1` object.  No estimate for either object is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive-sign finite Fourier transform on `ZMod N`. -/
def positiveZModFourier
    {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ)
    (k : ZMod N) : ℂ :=
  ∑ a : ZMod N, ZMod.stdAddChar (k * a) * Φ a

/-- Complex-valued Parseval identity before taking real norms. -/
theorem positiveZModFourier_parseval_conj
    {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ) :
    (∑ k : ZMod N,
      conj (positiveZModFourier Φ k) *
        positiveZModFourier Φ k) =
      (N : ℂ) *
        ∑ a : ZMod N, conj (Φ a) * Φ a := by
  classical
  unfold positiveZModFourier
  simp_rw [map_sum, map_mul, map_neg_eq_conj]
  simp_rw [Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  simp_rw [Finset.sum_comm (s := Finset.univ)]
  simp_rw [← Finset.mul_sum]
  have horth (a c : ZMod N) :
      (∑ k : ZMod N,
        ZMod.stdAddChar (k * a) *
          ZMod.stdAddChar (-(k * c))) =
        if a = c then (N : ℂ) else 0 := by
    rw [← Finset.sum_congr rfl (fun k _ => by
      rw [← map_add_eq_mul]
      congr 2
      ring)]
    simpa [sub_eq_zero] using
      AddChar.sum_mulShift (a - c)
        (ZMod.isPrimitive_stdAddChar N)
  simp_rw [horth]
  simp only [ite_mul, zero_mul, Finset.sum_ite_eq',
    Finset.mem_univ, ite_true]
  ring

/-- Real norm-square Parseval identity for the positive transform. -/
theorem positiveZModFourier_parseval
    {N : ℕ} [NeZero N]
    (Φ : ZMod N → ℂ) :
    (∑ k : ZMod N, ‖positiveZModFourier Φ k‖ ^ 2) =
      (N : ℝ) * ∑ a : ZMod N, ‖Φ a‖ ^ 2 := by
  apply Complex.ofReal_injective
  simp_rw [map_sum, map_mul, Complex.ofReal_natCast,
    ← Complex.normSq_eq_norm_sq,
    Complex.normSq_eq_conj_mul_self]
  exact positiveZModFourier_parseval_conj Φ

/-- Möbius mass in one parity and one `floor(u/2)` residue class modulo the
exact square modulus. -/
def parityMobiusResidueSum
    (b d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) : ℂ :=
  ∑ u ∈ endpointParitySet b r,
    if ((u / 2 : ℕ) : ZMod (d * d)) = a then
      (moebiusReal u : ℂ)
    else 0

/-- Squarefree mass in the same residue class. -/
def paritySquarefreeResidueSum
    (b d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) : ℂ :=
  ∑ u ∈ endpointParitySet b r,
    if ((u / 2 : ℕ) : ZMod (d * d)) = a then
      ((moebiusReal u : ℂ) ^ 2)
    else 0

/-- The one-point Möbius sum from the parity factorization is exactly the
positive Fourier transform of the residue-class Möbius masses. -/
theorem parityOnePointMobiusFourierSum_eq_positiveFourier_residues
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityOnePointMobiusFourierSum b d r k =
      positiveZModFourier
        (parityMobiusResidueSum b d r) k := by
  classical
  unfold parityOnePointMobiusFourierSum
    parityOnePointMobiusFourierTerm
    positiveZModFourier
    parityMobiusResidueSum
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro u hu
  simp [hu]

/-- The explicit diagonal is the positive Fourier transform of squarefree
residue masses, evaluated at the doubled frequency. -/
theorem parityOnePointMobiusFourierDiagonal_eq_positiveFourier_residues
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    parityOnePointMobiusFourierDiagonal b d r k =
      positiveZModFourier
        (paritySquarefreeResidueSum b d r) (2 * k) := by
  classical
  unfold parityOnePointMobiusFourierDiagonal
    parityOnePointMobiusFourierTerm
    positiveZModFourier
    paritySquarefreeResidueSum
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro u hu
  simp [hu, pow_two, ← map_add_eq_mul]
  ring

/-- Exact Parseval identity for the parity Möbius Fourier sums. -/
theorem parityMobiusFourier_parseval
    (b d r : ℕ) [NeZero d] :
    (∑ k : ZMod (d * d),
      ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2) =
      ((d * d : ℕ) : ℝ) *
        ∑ a : ZMod (d * d),
          ‖parityMobiusResidueSum b d r a‖ ^ 2 := by
  simp_rw [parityOnePointMobiusFourierSum_eq_positiveFourier_residues]
  exact positiveZModFourier_parseval
    (parityMobiusResidueSum b d r)

/-- Residue-class `L2` energy of the parity Möbius masses. -/
def parityMobiusResidueL2Energy
    (b d r : ℕ) [NeZero d] : ℝ :=
  ∑ a : ZMod (d * d),
    ‖parityMobiusResidueSum b d r a‖ ^ 2

/-- Residue-class `L2` energy of the parity squarefree masses.  It is recorded
for the next diagonal-analysis layer but is not used as an estimate here. -/
def paritySquarefreeResidueL2Energy
    (b d r : ℕ) [NeZero d] : ℝ :=
  ∑ a : ZMod (d * d),
    ‖paritySquarefreeResidueSum b d r a‖ ^ 2

/-- Normalized nonzero-frequency `L1` mass of the explicit squarefree
diagonal. -/
def paritySquarefreeDiagonalNonzeroFrequencyL1
    (b d r : ℕ) [NeZero d] : ℝ :=
  (((d * d : ℕ) : ℝ))⁻¹ *
    ∑ k ∈ nonzeroSquareModulusFrequencySet d,
      ‖parityOnePointMobiusFourierDiagonal b d r k‖

/-- Parseval-residue plus explicit-diagonal endpoint majorant for one square
modulus. -/
def parityResidueL2DiagonalL1ModulusMajorant
    (b d : ℕ) [NeZero d] : ℝ :=
  (1 / 2 : ℝ) *
    (parityMobiusResidueL2Energy b d 0 +
      parityMobiusResidueL2Energy b d 1 +
      paritySquarefreeDiagonalNonzeroFrequencyL1 b d 0 +
      paritySquarefreeDiagonalNonzeroFrequencyL1 b d 1)

/-- Endpoint sum of the residue-energy/diagonal majorants over the effective
square-modulus support. -/
def parityResidueL2DiagonalL1EndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      parityResidueL2DiagonalL1ModulusMajorant b d
    else 0

/-- Pointwise square-minus-diagonal norm bound. -/
theorem norm_square_sub_diagonal_le
    (S D : ℂ) :
    ‖S ^ 2 - D‖ ≤ ‖S‖ ^ 2 + ‖D‖ := by
  calc
    ‖S ^ 2 - D‖ ≤ ‖S ^ 2‖ + ‖D‖ := norm_sub_le _ _
    _ = ‖S‖ ^ 2 + ‖D‖ := by rw [norm_pow]

/-- For one parity and modulus, the normalized nonzero-frequency contribution
is bounded by the exact Möbius residue `L2` energy plus the retained diagonal
frequency `L1` mass. -/
theorem normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1
    (b d r : ℕ) [NeZero d] :
    (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          ‖parityOnePointMobiusFourierSum b d r k ^ 2 -
            parityOnePointMobiusFourierDiagonal b d r k‖ ≤
      parityMobiusResidueL2Energy b d r +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
  let q : ℝ := ((d * d : ℕ) : ℝ)
  have hq0 : 0 ≤ q⁻¹ := by positivity
  calc
    q⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          ‖parityOnePointMobiusFourierSum b d r k ^ 2 -
            parityOnePointMobiusFourierDiagonal b d r k‖ ≤
      q⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          (‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 +
            ‖parityOnePointMobiusFourierDiagonal b d r k‖) := by
      apply mul_le_mul_of_nonneg_left ?_ hq0
      apply Finset.sum_le_sum
      intro k _hk
      exact norm_square_sub_diagonal_le _ _
    _ = q⁻¹ *
          ∑ k ∈ nonzeroSquareModulusFrequencySet d,
            ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
      unfold paritySquarefreeDiagonalNonzeroFrequencyL1
      rw [Finset.sum_add_distrib, mul_add]
    _ ≤ q⁻¹ *
          ∑ k : ZMod (d * d),
            ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
      gcongr
      apply Finset.sum_le_sum_of_subset_of_nonneg
      · exact Finset.erase_subset _ _
      · intro k _hk _hnot
        positivity
    _ = parityMobiusResidueL2Energy b d r +
        paritySquarefreeDiagonalNonzeroFrequencyL1 b d r := by
      rw [parityMobiusFourier_parseval]
      unfold parityMobiusResidueL2Energy
      have hqne : q ≠ 0 := by
        dsimp [q]
        positivity
      field_simp

/-- The exact nonzero-frequency endpoint majorant is bounded by the new
Parseval residue-energy/diagonal endpoint majorant. -/
theorem parityFourierNonzeroFrequencyEndpointMajorant_le_residueL2DiagonalL1
    (b : ℕ) :
    parityFourierNonzeroFrequencyEndpointMajorant b ≤
      parityResidueL2DiagonalL1EndpointMajorant b := by
  classical
  unfold parityFourierNonzeroFrequencyEndpointMajorant
    parityResidueL2DiagonalL1EndpointMajorant
    parityFourierQuadraticMajorant
    parityResidueL2DiagonalL1ModulusMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  letI : NeZero d := ⟨ne_of_gt hdpos⟩
  have h0 :=
    normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1
      b d 0
  have h1 :=
    normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1
      b d 1
  nlinarith

/-- All-scale source proposition after exact Parseval reduction. -/
def DyadicNaturalScaleResidueL2DiagonalL1Budget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityResidueL2DiagonalL1EndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The residue-energy/diagonal budget supplies the independent nonzero
Fourier budget from PR #612. -/
theorem nonzeroParityFourierBudget_of_residueL2DiagonalL1
    (hResidue : DyadicNaturalScaleResidueL2DiagonalL1Budget) :
    DyadicNaturalScaleNonzeroParityFourierBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hResidue δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact
    (parityFourierNonzeroFrequencyEndpointMajorant_le_residueL2DiagonalL1 b).trans
      (hscale j b hb)

/-- Combining the still-open pointwise Mertens premise with the new
residue-energy/diagonal premise reaches the natural-scale congruence target. -/
theorem naturalScaleCongruenceL1_of_pointwiseMertens_and_residueL2DiagonalL1
    (hMertens : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hResidue : DyadicNaturalScaleResidueL2DiagonalL1Budget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwiseMertens_and_nonzero
    hMertens
    (nonzeroParityFourierBudget_of_residueL2DiagonalL1 hResidue)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.positiveZModFourier_parseval
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityMobiusFourier_parseval
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityFourierNonzeroFrequencyEndpointMajorant_le_residueL2DiagonalL1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_pointwiseMertens_and_residueL2DiagonalL1
