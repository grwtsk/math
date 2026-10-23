/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #607. Direct stacked parent: draft PR #602 at
`7e96cdce562cbd82c9d10b3c2ddfeb81a3c19ee5`.
-/
import GRWTSK.NumberTheory.Moebius.AdditiveCharacterSquareModulusRepair
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Parity/midpoint factorization of additive-twisted Möbius correlations

The additive repair leaves the exact twist

`sum e_(d^2)(k(x+h)) * mu(x) * mu(x+2h)`

on the triangular support `x + 2h <= b`.

Set
`u=x` and `v=x+2h`.  Then `1 <= u < v <= b` and `u,v`
have the same parity. Conversely every such pair gives one unique positive
shift.  Splitting by parity and writing

`u = 2p+r`, `v = 2q+r`, `r in {0,1}`,

the midpoint phase factors as

`e(k*(u+v)/2) = e(k*r) * e(k*p) * e(k*q)`.

Therefore each parity piece is a square-minus-diagonal expression in a
one-point Möbius exponential sum.  This module records that finite algebraic
factorization and exposes the resulting one-point Fourier budget.

No Fourier estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Positive endpoint indices of parity `r`.  Only `r=0,1` is used below. -/
def endpointParitySet (b r : ℕ) : Finset ℕ :=
  (Finset.Icc 1 b).filter (fun u => u % 2 = r)

/-- Strict endpoint pairs of the selected parity. -/
def endpointParityStrictPairSet
    (b r : ℕ) : Finset (ℕ × ℕ) :=
  ((endpointParitySet b r).product (endpointParitySet b r)).filter
    (fun uv => uv.1 < uv.2)

/-- The one-point Möbius/Fourier term after dividing out the parity bit. -/
def parityOnePointMobiusFourierTerm
    (d : ℕ) [NeZero d]
    (k : ZMod (d * d))
    (u : ℕ) : ℂ :=
  (moebiusReal u : ℂ) *
    ZMod.stdAddChar
      (k * ((u / 2 : ℕ) : ZMod (d * d)))

/-- One-point Möbius exponential sum in one parity class. -/
def parityOnePointMobiusFourierSum
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ u ∈ endpointParitySet b r,
    parityOnePointMobiusFourierTerm d k u

/-- Diagonal contribution from squaring the one-point parity sum. -/
def parityOnePointMobiusFourierDiagonal
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ u ∈ endpointParitySet b r,
    parityOnePointMobiusFourierTerm d k u ^ 2

/-- Strict-pair product formed from the one-point parity terms. -/
def parityOnePointMobiusFourierPairSum
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ uv ∈ endpointParityStrictPairSet b r,
    parityOnePointMobiusFourierTerm d k uv.1 *
      parityOnePointMobiusFourierTerm d k uv.2

/-- Generic square-minus-diagonal identity for a finite set of natural
indices, with the strict order choosing one orientation of each off-diagonal
pair. -/
theorem finiteSquare_eq_diagonal_add_twice_strictPairs
    (s : Finset ℕ) (f : ℕ → ℂ) :
    (∑ u ∈ s, f u) ^ 2 =
      (∑ u ∈ s, f u ^ 2) +
        2 * ∑ uv ∈ (s.product s).filter (fun uv => uv.1 < uv.2),
          f uv.1 * f uv.2 := by
  classical
  rw [pow_two, Finset.sum_mul_sum, ← Finset.sum_product', ← Finset.product_eq_sprod]
  let diag : Finset (ℕ × ℕ) :=
    (s.product s).filter (fun uv => uv.1 = uv.2)
  let ltPairs : Finset (ℕ × ℕ) :=
    (s.product s).filter (fun uv => uv.1 < uv.2)
  let gtPairs : Finset (ℕ × ℕ) :=
    (s.product s).filter (fun uv => uv.2 < uv.1)
  have hpartition :
      s.product s = diag ∪ ltPairs ∪ gtPairs := by
    apply Finset.ext
    intro uv
    simp only [diag, ltPairs, gtPairs, Finset.mem_union, Finset.mem_filter]
    constructor
    · intro hm
      rcases lt_trichotomy uv.1 uv.2 with hl | he | hg
      · exact Or.inl (Or.inr ⟨hm, hl⟩)
      · exact Or.inl (Or.inl ⟨hm, he⟩)
      · exact Or.inr ⟨hm, hg⟩
    · rintro ((h | h) | h) <;> exact h.1
  have hDL : Disjoint diag ltPairs := by
    apply Finset.disjoint_left.mpr
    intro uv hd hl
    have heq := (Finset.mem_filter.mp hd).2
    have hlt := (Finset.mem_filter.mp hl).2
    omega
  have hDG : Disjoint diag gtPairs := by
    apply Finset.disjoint_left.mpr
    intro uv hd hg
    have heq := (Finset.mem_filter.mp hd).2
    have hgt := (Finset.mem_filter.mp hg).2
    omega
  have hLG : Disjoint ltPairs gtPairs := by
    apply Finset.disjoint_left.mpr
    intro uv hl hg
    have hlt := (Finset.mem_filter.mp hl).2
    have hgt := (Finset.mem_filter.mp hg).2
    omega
  have hdiag : (∑ uv ∈ diag, f uv.1 * f uv.2) = ∑ u ∈ s, f u ^ 2 := by
    unfold diag
    refine Finset.sum_bij' (fun uv _ => uv.1) (fun u _ => (u, u)) ?_ ?_ ?_ ?_ ?_
    · intro uv huv
      exact (Finset.mem_product.mp (Finset.mem_filter.mp huv).1).1
    · intro u hu
      exact Finset.mem_filter.mpr ⟨Finset.mem_product.mpr ⟨hu, hu⟩, rfl⟩
    · intro uv huv
      exact Prod.ext rfl (Finset.mem_filter.mp huv).2
    · intro u hu
      rfl
    · intro uv huv
      have he := (Finset.mem_filter.mp huv).2
      rw [he, pow_two]
  have hswap : (∑ uv ∈ gtPairs, f uv.1 * f uv.2) =
      ∑ uv ∈ ltPairs, f uv.1 * f uv.2 := by
    unfold gtPairs ltPairs
    apply Finset.sum_bij' (fun uv _ => (uv.2, uv.1)) (fun uv _ => (uv.2, uv.1)) <;>
      simp [mul_comm, Finset.product_eq_sprod, and_comm]
  conv_lhs => rw [hpartition, Finset.sum_union (Finset.disjoint_union_left.mpr ⟨hDG, hLG⟩),
    Finset.sum_union hDL, hdiag, hswap]
  change _ = _ + 2 * ∑ uv ∈ ltPairs, f uv.1 * f uv.2
  ring

/-- Specialization of the finite square identity to one parity class. -/
theorem parityPairSum_eq_half_square_sub_diagonal
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    2 * parityOnePointMobiusFourierPairSum b d r k =
      parityOnePointMobiusFourierSum b d r k ^ 2 -
        parityOnePointMobiusFourierDiagonal b d r k := by
  unfold parityOnePointMobiusFourierPairSum
    parityOnePointMobiusFourierSum
    parityOnePointMobiusFourierDiagonal
    endpointParityStrictPairSet
  have h :=
    finiteSquare_eq_diagonal_add_twice_strictPairs
      (endpointParitySet b r)
      (parityOnePointMobiusFourierTerm d k)
  rw [h]
  ring

-- Retain the published parity-domain parameter.
set_option linter.unusedVariables false in
/-- Arithmetic midpoint identity for equal-parity endpoints. -/
theorem midpoint_eq_halves_add_parity
    {u v r : ℕ}
    (hr : r < 2)
    (hu : u % 2 = r)
    (hv : v % 2 = r) :
    (u + v) / 2 = u / 2 + v / 2 + r := by
  omega

/-- On one parity class, the midpoint additive phase factors into one parity
phase and two one-point phases. -/
theorem midpointAdditivePhase_eq_parityProduct
    (d : ℕ) [NeZero d]
    (k : ZMod (d * d))
    {u v r : ℕ}
    (hr : r < 2)
    (hu : u % 2 = r)
    (hv : v % 2 = r) :
    ZMod.stdAddChar
        (k * (((u + v) / 2 : ℕ) : ZMod (d * d))) =
      ZMod.stdAddChar (k * (r : ZMod (d * d))) *
        ZMod.stdAddChar
          (k * ((u / 2 : ℕ) : ZMod (d * d))) *
        ZMod.stdAddChar
          (k * ((v / 2 : ℕ) : ZMod (d * d))) := by
  rw [midpoint_eq_halves_add_parity hr hu hv]
  push_cast
  ring_nf
  simp only [map_add_eq_mul]
  ring

/-- Midpoint-pair form of one parity component of the additive twist. -/
def parityMidpointPairTwist
    (b d r : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ uv ∈ endpointParityStrictPairSet b r,
    ZMod.stdAddChar
        (k * ((((uv.1 + uv.2) / 2 : ℕ)) : ZMod (d * d))) *
      (moebiusReal uv.1 : ℂ) *
      (moebiusReal uv.2 : ℂ)

/-- Exact factorization of one parity pair-twist through one-point Fourier
terms. -/
theorem parityMidpointPairTwist_eq_phase_mul_pairSum
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    parityMidpointPairTwist b d r k =
      ZMod.stdAddChar (k * (r : ZMod (d * d))) *
        parityOnePointMobiusFourierPairSum b d r k := by
  classical
  unfold parityMidpointPairTwist
    parityOnePointMobiusFourierPairSum
    endpointParityStrictPairSet
    parityOnePointMobiusFourierTerm
    endpointParitySet
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro uv huv
  have huv' := (Finset.mem_filter.mp huv)
  have hupar :
      uv.1 % 2 = r := by
    exact (Finset.mem_filter.mp
      (Finset.mem_product.mp huv'.1).1).2
  have hvpar :
      uv.2 % 2 = r := by
    exact (Finset.mem_filter.mp
      (Finset.mem_product.mp huv'.1).2).2
  rw [midpointAdditivePhase_eq_parityProduct d k hr hupar hvpar]
  ring

/-- Square-minus-diagonal factorization for one parity component. -/
theorem two_mul_parityMidpointPairTwist_eq_square_sub_diagonal
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (k : ZMod (d * d)) :
    2 * parityMidpointPairTwist b d r k =
      ZMod.stdAddChar (k * (r : ZMod (d * d))) *
        (parityOnePointMobiusFourierSum b d r k ^ 2 -
          parityOnePointMobiusFourierDiagonal b d r k) := by
  rw [parityMidpointPairTwist_eq_phase_mul_pairSum b d r hr k,
    ← parityPairSum_eq_half_square_sub_diagonal b d r k]
  ring

/-- All strict same-parity endpoint pairs, without choosing the parity first. -/
def endpointSameParityStrictPairSet
    (b : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.Icc 1 b).product (Finset.Icc 1 b)).filter
    (fun uv => uv.1 < uv.2 ∧ uv.1 % 2 = uv.2 % 2)

/-- Pair-coordinate form of the complete additive twist. -/
def endpointPairAdditiveTwist
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ uv ∈ endpointSameParityStrictPairSet b,
    ZMod.stdAddChar
        (k * ((((uv.1 + uv.2) / 2 : ℕ)) : ZMod (d * d))) *
      (moebiusReal uv.1 : ℂ) *
      (moebiusReal uv.2 : ℂ)

/-- The triangular `(n,a)` additive twist is exactly the strict same-parity
endpoint-pair sum under `u=a+1`, `v=a+1+2(b-n)`. -/
theorem additiveTwistedEndpointCrossCorrelation_eq_endpointPairs
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    additiveTwistedEndpointCrossCorrelation b d k =
      endpointPairAdditiveTwist b d k := by
  classical
  unfold additiveTwistedEndpointCrossCorrelation
    endpointPairAdditiveTwist
    endpointSameParityStrictPairSet
    mertensEndpointCrossCollisionBaseSet
    mertensCrossCollisionMidpoint
    mertensSquarefreeMidpointEndpointProduct
  rw [Finset.sum_sigma']
  refine Finset.sum_bij'
    (fun na _ => (na.2 + 1, na.2 + 1 + 2 * (b - na.1)))
    (fun uv _ => ⟨b - (uv.2 - uv.1) / 2, uv.1 - 1⟩) ?_ ?_ ?_ ?_ ?_
  · rintro ⟨n, a⟩ hna
    simp only [Finset.mem_sigma, Finset.mem_Ico, Finset.mem_range] at hna
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
      Finset.mem_Icc]
    omega
  · rintro ⟨u, v⟩ huv
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
      Finset.mem_Icc] at huv
    simp only [Finset.mem_sigma, Finset.mem_Ico, Finset.mem_range]
    omega
  · rintro ⟨n, a⟩ hna
    simp only [Finset.mem_sigma, Finset.mem_Ico, Finset.mem_range] at hna
    apply Sigma.ext
    · dsimp
      omega
    · exact heq_of_eq (by simp)
  · rintro ⟨u, v⟩ huv
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
      Finset.mem_Icc] at huv
    apply Prod.ext <;> dsimp <;> omega
  · rintro ⟨n, a⟩ hna
    have hmid : (a + 1 + (a + 1 + 2 * (b - n))) / 2 =
        a + 1 + (b - n) := by omega
    have hend : a + 1 + (b - n) + (b - n) = a + 1 + 2 * (b - n) := by omega
    simp only [hmid, hend, Complex.ofReal_mul, mul_assoc]

/-- The same-parity pair sum is the sum of its even and odd parity pieces. -/
theorem endpointPairAdditiveTwist_eq_even_add_odd
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    endpointPairAdditiveTwist b d k =
      parityMidpointPairTwist b d 0 k +
        parityMidpointPairTwist b d 1 k := by
  classical
  unfold endpointPairAdditiveTwist
    endpointSameParityStrictPairSet
    parityMidpointPairTwist
    endpointParityStrictPairSet
    endpointParitySet
  rw [← Finset.sum_union]
  · apply Finset.sum_congr
    · ext uv
      simp [Finset.product_eq_sprod]
      omega
    · intro uv _huv
      rfl
  · apply Finset.disjoint_left.mpr
    intro uv heven hodd
    simp only [Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product] at heven hodd
    have h0 := heven.1.1.2
    have h1 := hodd.1.1.2
    omega

/-- Final exact parity/Fourier factorization of the additive twist.

The left side is the binary additive-twisted Möbius correlation from PR #602.
The right side uses only two one-point Möbius exponential sums and their
diagonals. -/
theorem two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    2 * additiveTwistedEndpointCrossCorrelation b d k =
      (parityOnePointMobiusFourierSum b d 0 k ^ 2 -
        parityOnePointMobiusFourierDiagonal b d 0 k) +
      ZMod.stdAddChar (k * (1 : ZMod (d * d))) *
        (parityOnePointMobiusFourierSum b d 1 k ^ 2 -
          parityOnePointMobiusFourierDiagonal b d 1 k) := by
  rw [additiveTwistedEndpointCrossCorrelation_eq_endpointPairs,
    endpointPairAdditiveTwist_eq_even_add_odd,
    mul_add,
    two_mul_parityMidpointPairTwist_eq_square_sub_diagonal
      b d 0 (by norm_num) k,
    two_mul_parityMidpointPairTwist_eq_square_sub_diagonal
      b d 1 (by norm_num) k]
  simp

/-- Pointwise Fourier-quadratic majorant for one additive twist. -/
def parityFourierQuadraticMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℝ :=
  (1 / 2 : ℝ) *
    (‖parityOnePointMobiusFourierSum b d 0 k ^ 2 -
        parityOnePointMobiusFourierDiagonal b d 0 k‖ +
      ‖parityOnePointMobiusFourierSum b d 1 k ^ 2 -
        parityOnePointMobiusFourierDiagonal b d 1 k‖)

/-- Exact factorization yields the pointwise norm comparison to the
one-point Fourier-quadratic majorant. -/
theorem norm_additiveTwistedEndpointCrossCorrelation_le_parityFourierMajorant
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) :
    ‖additiveTwistedEndpointCrossCorrelation b d k‖ ≤
      parityFourierQuadraticMajorant b d k := by
  have hfac :=
    congrArg norm
      (two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier
        b d k)
  unfold parityFourierQuadraticMajorant
  have hphase :
      ‖ZMod.stdAddChar (k * (1 : ZMod (d * d)))‖ = 1 :=
    Circle.norm_coe (ZMod.toCircle (k * (1 : ZMod (d * d))))
  calc
    ‖additiveTwistedEndpointCrossCorrelation b d k‖ =
        (1 / 2 : ℝ) *
          ‖2 * additiveTwistedEndpointCrossCorrelation b d k‖ := by
      norm_num
      ring
    _ ≤ (1 / 2 : ℝ) *
        (‖parityOnePointMobiusFourierSum b d 0 k ^ 2 -
            parityOnePointMobiusFourierDiagonal b d 0 k‖ +
          ‖ZMod.stdAddChar (k * (1 : ZMod (d * d))) *
            (parityOnePointMobiusFourierSum b d 1 k ^ 2 -
              parityOnePointMobiusFourierDiagonal b d 1 k)‖) := by
      gcongr
      rw [two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier]
      exact norm_add_le _ _
    _ = _ := by
      rw [norm_mul, hphase, one_mul]

/-- Endpoint aggregate of the one-point Fourier-quadratic majorants after the
exact additive-Fourier residue repair. -/
def parityFourierEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k : ZMod (d * d),
          parityFourierQuadraticMajorant b d k
    else 0

/-- Analytic supplier at the natural endpoint scale, now expressed entirely in
one-point Möbius Fourier sums and explicit diagonal corrections. -/
def DyadicNaturalScaleParityFourierQuadraticBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityFourierEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The parity/Fourier quadratic budget is a sufficient source for the
natural-scale congruence-L1 supplier. -/
theorem naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget
    (hFourier : DyadicNaturalScaleParityFourierQuadraticBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hFourier δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  refine (mertensEndpointCrossCongruenceL1Mass_eq_effectiveSupport b).trans_le ?_
  calc
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      |mertensEndpointCrossCongruenceFibre b d|) ≤
      parityFourierEndpointMajorant b := by
        unfold parityFourierEndpointMajorant
        apply Finset.sum_le_sum
        intro d hd
        have hdpos :
            0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
        simp only [dif_pos hdpos]
        let : NeZero d := ⟨ne_of_gt hdpos⟩
        rw [← Real.norm_eq_abs, ← Complex.norm_real]
        rw [complex_cast_mertensEndpointCrossCongruenceFibre_eq_additiveFourier]
        unfold additiveFourierEndpointCrossCongruenceFibre
        have hqpos : 0 < ((d * d : ℕ) : ℝ) := by positivity
        calc
          ‖(((d * d : ℕ) : ℂ))⁻¹ *
              ∑ k : ZMod (d * d),
                additiveTwistedEndpointCrossCorrelation b d k‖ ≤
            (((d * d : ℕ) : ℝ))⁻¹ *
              ∑ k : ZMod (d * d),
                ‖additiveTwistedEndpointCrossCorrelation b d k‖ := by
                  rw [norm_mul, norm_inv, norm_natCast]
                  gcongr
                  exact norm_sum_le _ _
          _ ≤ (((d * d : ℕ) : ℝ))⁻¹ *
              ∑ k : ZMod (d * d),
                parityFourierQuadraticMajorant b d k := by
                  gcongr with k
                  exact
                    norm_additiveTwistedEndpointCrossCorrelation_le_parityFourierMajorant
                      b d k
    _ ≤ C * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) :=
      hscale j b hb

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.additiveTwistedEndpointCrossCorrelation_eq_endpointPairs
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget
