/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #623. Direct stacked parent: draft PR #622 at
`8013bee4611ee6545a5b8ae470a90e36395abb41`.
-/
import GRWTSK.NumberTheory.Moebius.ParityFourierResidueVariance
import Mathlib.Data.Nat.ModEq
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Large-square-modulus obstruction to the positive residue-variance majorant

The parent replaces the exact nonzero Fourier expression by a positive sum of
residue variances and squarefree-diagonal L1 masses.  This module records the
large-modulus floor carried by that positive majorant.

At endpoint `b = m^2`, every modulus parameter in

`9m/10 < d < m`

satisfies `d^2 < b` but `d^2 > 4b/5`.  On each parity support the map

`u ↦ floor(u/2) mod d^2`

is then injective.  Hence each residue bucket is a singleton and its positive
L2 energy is the complete squarefree mass of that parity class.  The positive
variance therefore has a macroscopic contribution for every modulus in a
window containing a positive proportion of `m` values.

The finite lower bound is proved from an explicit squarefree-mass window.  The
asymptotic squarefree-density input and elementary dyadic-growth input are kept
as separately typed sources.  No squarefree-density theorem is imported here.

The exact Parseval identities from the parent are not refuted.  The failed
step is the positive triangle-inequality majorization that separates
`S_r^2 - D_r` into `|S_r|^2 + |D_r|`.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Total squarefree Möbius mass through the endpoint. -/
def squarefreeMobiusMass (b : ℕ) : ℝ :=
  ∑ u ∈ Finset.Icc 1 b, moebiusReal u ^ 2

/-- The total squarefree mass is the sum of the even and odd parity
squarefree diagonals. -/
theorem squarefreeMobiusMass_eq_parityDiagonals
    (b : ℕ) :
    squarefreeMobiusMass b =
      paritySquarefreeDiagonal b 0 +
        paritySquarefreeDiagonal b 1 := by
  classical
  unfold squarefreeMobiusMass paritySquarefreeDiagonal endpointParitySet
  have hcover :
      (Finset.Icc 1 b).filter (fun u => u % 2 = 0) ∪
          (Finset.Icc 1 b).filter (fun u => u % 2 = 1) =
        Finset.Icc 1 b := by
    ext u
    simp
    omega
  have hdisj :
      Disjoint
        ((Finset.Icc 1 b).filter (fun u => u % 2 = 0))
        ((Finset.Icc 1 b).filter (fun u => u % 2 = 1)) := by
    simp [Finset.disjoint_left]
  rw [← Finset.sum_union hdisj, hcover]

/-- For the real-valued repository wrapper, absolute Möbius value equals its
square. -/
theorem abs_moebiusReal_eq_sq
    (u : ℕ) :
    |moebiusReal u| = moebiusReal u ^ 2 := by
  unfold moebiusReal
  have hle := ArithmeticFunction.abs_moebius_le_one u
  have hcases :
      ArithmeticFunction.moebius u = -1 ∨
      ArithmeticFunction.moebius u = 0 ∨
      ArithmeticFunction.moebius u = 1 := by
    omega
  rcases hcases with hneg | hzero | hone
  · simp [hneg]
  · simp [hzero]
  · simp [hone]

/-- Absolute parity-Mertens mass is bounded by its squarefree diagonal. -/
theorem abs_parityMertensPrefix_le_squarefreeDiagonal
    (b r : ℕ) :
    |parityMertensPrefix b r| ≤
      paritySquarefreeDiagonal b r := by
  unfold parityMertensPrefix paritySquarefreeDiagonal
  calc
    |∑ u ∈ endpointParitySet b r, moebiusReal u| ≤
        ∑ u ∈ endpointParitySet b r, |moebiusReal u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ u ∈ endpointParitySet b r, moebiusReal u ^ 2 := by
      apply Finset.sum_congr rfl
      intro u _hu
      exact abs_moebiusReal_eq_sq u

/-- The two parity Mertens squares are bounded by the square of the total
squarefree mass. -/
theorem parityMertensSquares_le_squarefreeMobiusMass_sq
    (b : ℕ) :
    parityMertensPrefix b 0 ^ 2 +
        parityMertensPrefix b 1 ^ 2 ≤
      squarefreeMobiusMass b ^ 2 := by
  have hq0 := paritySquarefreeDiagonal_nonneg b 0
  have hq1 := paritySquarefreeDiagonal_nonneg b 1
  have hm0 := abs_parityMertensPrefix_le_squarefreeDiagonal b 0
  have hm1 := abs_parityMertensPrefix_le_squarefreeDiagonal b 1
  have hs0 :
      parityMertensPrefix b 0 ^ 2 ≤
        paritySquarefreeDiagonal b 0 ^ 2 := by
    nlinarith [sq_nonneg (parityMertensPrefix b 0)]
  have hs1 :
      parityMertensPrefix b 1 ^ 2 ≤
        paritySquarefreeDiagonal b 1 ^ 2 := by
    nlinarith [sq_nonneg (parityMertensPrefix b 1)]
  rw [squarefreeMobiusMass_eq_parityDiagonals]
  nlinarith [mul_nonneg hq0 hq1]

/-- On one parity support, reduction of `floor(u/2)` modulo `d^2` is injective
as soon as `d^2` exceeds the complete half-endpoint range. -/
theorem parityHalfResidue_injective_of_half_lt_square
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (hq : b / 2 < d * d) :
    Set.InjOn
      (fun u : ℕ => ((u / 2 : ℕ) : ZMod (d * d)))
      (endpointParitySet b r : Set ℕ) := by
  intro u hu v hv huv
  rcases Finset.mem_filter.mp hu with ⟨huI, huParity⟩
  rcases Finset.mem_filter.mp hv with ⟨hvI, hvParity⟩
  have huHalf : u / 2 < d * d :=
    (Nat.div_le_div_right huI.2).trans_lt hq
  have hvHalf : v / 2 < d * d :=
    (Nat.div_le_div_right hvI.2).trans_lt hq
  have hval := congrArg ZMod.val huv
  rw [ZMod.val_natCast_of_lt huHalf,
    ZMod.val_natCast_of_lt hvHalf] at hval
  have huDecomp : 2 * (u / 2) + r = u := by
    omega
  have hvDecomp : 2 * (v / 2) + r = v := by
    omega
  omega

/-- Generic singleton-fibre square identity for an injective finite residue
map. -/
theorem sum_sq_indicatorFibres_eq_of_injOn
    {α β : Type*}
    [DecidableEq α] [Fintype β] [DecidableEq β]
    (s : Finset α)
    (f : α → β)
    (w : α → ℝ)
    (hf : Set.InjOn f (s : Set α)) :
    (∑ y : β,
      (∑ x ∈ s, if f x = y then w x else 0) ^ 2) =
      ∑ x ∈ s, w x ^ 2 := by
  classical
  calc
    (∑ y : β,
      (∑ x ∈ s, if f x = y then w x else 0) ^ 2) =
      ∑ x ∈ s,
        ∑ z ∈ s,
          if f x = f z then w x * w z else 0 := by
        simp_rw [pow_two, Finset.sum_mul]
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro x hx
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro z hz
        by_cases h : f x = f z
        · simp [h]
        · simp [h]
    _ = ∑ x ∈ s, w x ^ 2 := by
        apply Finset.sum_congr rfl
        intro x hx
        rw [Finset.sum_eq_single x]
        · simp [pow_two]
        · intro z hz hzx
          have hne : f x ≠ f z := by
            intro h
            exact hzx (hf hx hz h)
          simp [hne]
        · intro hxnot
          exact (hxnot hx).elim

/-- For a large square modulus, every parity residue bucket is a singleton and
its L2 energy is exactly the parity squarefree diagonal. -/
theorem parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
    (b d r : ℕ) [NeZero d]
    (hr : r < 2)
    (hq : b / 2 < d * d) :
    parityMertensResidueEnergy b d r =
      paritySquarefreeDiagonal b r := by
  classical
  unfold parityMertensResidueEnergy
    parityMertensResidueBucket
    paritySquarefreeDiagonal
  have hinj :=
    parityHalfResidue_injective_of_half_lt_square b d r hr hq
  have hreal :=
    sum_sq_indicatorFibres_eq_of_injOn
      (endpointParitySet b r)
      (fun u : ℕ => ((u / 2 : ℕ) : ZMod (d * d)))
      moebiusReal
      hinj
  simpa [Complex.norm_real, sq_abs] using hreal

/-- Explicit arithmetic input used by the large-modulus obstruction.

It is kept separate from the finite Fourier algebra. -/
def QuarterThreeQuarterSquarefreeMass
    (b : ℕ) : Prop :=
  (b : ℝ) / 4 ≤ squarefreeMobiusMass b ∧
    squarefreeMobiusMass b ≤ 3 * (b : ℝ) / 4

/-- Under the explicit squarefree-mass window, every sufficiently large square
modulus carries macroscopic positive variance. -/
theorem parityResidueVarianceSum_ge_endpoint_div_64
    (b d : ℕ) [NeZero d]
    (hHalf : b / 2 < d * d)
    (hFourFifths : 4 * b ≤ 5 * (d * d))
    (hMass : QuarterThreeQuarterSquarefreeMass b) :
    (b : ℝ) / 64 ≤
      parityMertensResidueVariance b d 0 +
        parityMertensResidueVariance b d 1 := by
  let Q : ℝ := squarefreeMobiusMass b
  let q : ℝ := ((d * d : ℕ) : ℝ)
  have hqpos : 0 < q := by
    dsimp [q]
    positivity
  have hE0 :=
    parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
      b d 0 (by norm_num) hHalf
  have hE1 :=
    parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
      b d 1 (by norm_num) hHalf
  have hM := parityMertensSquares_le_squarefreeMobiusMass_sq b
  have hQ0 : 0 ≤ Q := by
    dsimp [Q, squarefreeMobiusMass]
    positivity
  have hLower : (b : ℝ) / 4 ≤ Q := hMass.1
  have hUpper : Q ≤ 3 * (b : ℝ) / 4 := hMass.2
  have hqScale : 4 * (b : ℝ) ≤ 5 * q := by
    exact_mod_cast hFourFifths
  have hQq : 16 * Q ≤ 15 * q := by
    nlinarith
  have hfrac : Q ^ 2 / q ≤ 15 * Q / 16 := by
    rw [div_le_iff₀ hqpos]
    nlinarith [mul_nonneg hQ0 (sub_nonneg.mpr hQq)]
  have hvar :
      parityMertensResidueVariance b d 0 +
          parityMertensResidueVariance b d 1 =
        Q -
          (parityMertensPrefix b 0 ^ 2 +
            parityMertensPrefix b 1 ^ 2) / q := by
    unfold parityMertensResidueVariance
    rw [hE0, hE1,
      ← squarefreeMobiusMass_eq_parityDiagonals]
    dsimp [Q, q]
    ring
  rw [hvar]
  have hMdiv :
      (parityMertensPrefix b 0 ^ 2 +
          parityMertensPrefix b 1 ^ 2) / q ≤
        Q ^ 2 / q := by
    exact div_le_div_of_nonneg_right hM hqpos.le
  nlinarith

/-- The separate squarefree-diagonal terms are nonnegative, so the complete
positive modulus majorant inherits half of the variance floor. -/
theorem parityResidueVarianceDiagonalModulusMajorant_ge_endpoint_div_128
    (b d : ℕ) [NeZero d]
    (hHalf : b / 2 < d * d)
    (hFourFifths : 4 * b ≤ 5 * (d * d))
    (hMass : QuarterThreeQuarterSquarefreeMass b) :
    (b : ℝ) / 128 ≤
      parityResidueVarianceDiagonalModulusMajorant b d := by
  unfold parityResidueVarianceDiagonalModulusMajorant
  have hvar :=
    parityResidueVarianceSum_ge_endpoint_div_64
      b d hHalf hFourFifths hMass
  have hdiag0 :
      0 ≤ paritySquarefreeDiagonalNonzeroFourierL1 b d 0 := by
    unfold paritySquarefreeDiagonalNonzeroFourierL1
    positivity
  have hdiag1 :
      0 ≤ paritySquarefreeDiagonalNonzeroFourierL1 b d 1 := by
    unfold paritySquarefreeDiagonalNonzeroFourierL1
    positivity
  nlinarith

/-- Large square-modulus window used by the obstruction. -/
def largeSquareModulusWindow
    (m : ℕ) : Finset ℕ :=
  Finset.Ico (9 * m / 10 + 1) m

/-- Every modulus in the large window is an effective square modulus for
endpoint `m^2`. -/
theorem largeSquareModulusWindow_subset_effective
    {m d : ℕ} (hm : 20 ≤ m)
    (hd : d ∈ largeSquareModulusWindow m) :
    d ∈ effectiveEndpointSquareModulusSet (m * m) := by
  unfold largeSquareModulusWindow at hd
  rcases Finset.mem_Ico.mp hd with ⟨hdLower, hdUpper⟩
  unfold effectiveEndpointSquareModulusSet
  apply Finset.mem_filter.mpr
  constructor
  · exact Finset.mem_Ico.mpr ⟨by omega, by nlinarith⟩
  · nlinarith

/-- Every modulus in the large window exceeds the half-endpoint threshold and
the four-fifths square threshold. -/
theorem largeSquareModulusWindow_scale
    {m d : ℕ} (hm : 20 ≤ m)
    (hd : d ∈ largeSquareModulusWindow m) :
    (m * m) / 2 < d * d ∧
      4 * (m * m) ≤ 5 * (d * d) := by
  unfold largeSquareModulusWindow at hd
  rcases Finset.mem_Ico.mp hd with ⟨hdLower, _hdUpper⟩
  have hratioNat : 9 * m < 10 * d := by
    omega
  have hratio : (9 : ℝ) * m < 10 * d := by
    exact_mod_cast hratioNat
  have hprod :
      0 < ((10 : ℝ) * d - 9 * m) *
        ((10 : ℝ) * d + 9 * m) := by
    exact mul_pos (sub_pos.mpr hratio) (by positivity)
  constructor <;> nlinarith

/-- The large modulus window contains at least `m/20` parameters once
`m >= 20`. -/
theorem card_largeSquareModulusWindow_ge
    {m : ℕ} (hm : 20 ≤ m) :
    m / 20 ≤ (largeSquareModulusWindow m).card := by
  unfold largeSquareModulusWindow
  rw [Finset.card_Ico]
  omega

/-- The positive modulus majorant is nonnegative. -/
theorem parityResidueVarianceDiagonalModulusMajorant_nonneg
    (b d : ℕ) [NeZero d] :
    0 ≤ parityResidueVarianceDiagonalModulusMajorant b d := by
  unfold parityResidueVarianceDiagonalModulusMajorant
  have hv0 := parityMertensResidueVariance_nonneg b d 0
  have hv1 := parityMertensResidueVariance_nonneg b d 1
  have hd0 :
      0 ≤ paritySquarefreeDiagonalNonzeroFourierL1 b d 0 := by
    unfold paritySquarefreeDiagonalNonzeroFourierL1
    positivity
  have hd1 :
      0 ≤ paritySquarefreeDiagonalNonzeroFourierL1 b d 1 := by
    unfold paritySquarefreeDiagonalNonzeroFourierL1
    positivity
  positivity

/-- Finite large-window lower bound before converting cardinality into a cubic
endpoint scale. -/
theorem parityResidueVarianceDiagonalEndpointMajorant_ge_window
    {m : ℕ} (hm : 20 ≤ m)
    (hMass : QuarterThreeQuarterSquarefreeMass (m * m)) :
    (((largeSquareModulusWindow m).card : ℝ)) *
        (((m * m : ℕ) : ℝ) / 128) ≤
      parityResidueVarianceDiagonalEndpointMajorant (m * m) := by
  classical
  unfold parityResidueVarianceDiagonalEndpointMajorant
  calc
    (((largeSquareModulusWindow m).card : ℝ)) *
        (((m * m : ℕ) : ℝ) / 128) =
      ∑ d ∈ largeSquareModulusWindow m,
        (((m * m : ℕ) : ℝ) / 128) := by
          simp [nsmul_eq_mul]
    _ ≤ ∑ d ∈ largeSquareModulusWindow m,
        if hd : 0 < d then
          letI : NeZero d := ⟨ne_of_gt hd⟩
          parityResidueVarianceDiagonalModulusMajorant (m * m) d
        else 0 := by
          apply Finset.sum_le_sum
          intro d hd
          have hdpos : 0 < d := by
            have heff := largeSquareModulusWindow_subset_effective hm hd
            exact (Finset.mem_Ico.mp (Finset.mem_filter.mp heff).1).1
          simp only [dif_pos hdpos]
          letI : NeZero d := ⟨ne_of_gt hdpos⟩
          obtain ⟨hhalf, hfour⟩ :=
            largeSquareModulusWindow_scale hm hd
          exact
            parityResidueVarianceDiagonalModulusMajorant_ge_endpoint_div_128
              (m * m) d hhalf hfour hMass
    _ ≤ ∑ d ∈ effectiveEndpointSquareModulusSet (m * m),
        if hd : 0 < d then
          letI : NeZero d := ⟨ne_of_gt hd⟩
          parityResidueVarianceDiagonalModulusMajorant (m * m) d
        else 0 := by
          apply Finset.sum_le_sum_of_subset_of_nonneg
          · intro d hd
            exact largeSquareModulusWindow_subset_effective hm hd
          · intro d hd _hnot
            have hdpos : 0 < d :=
              (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
            simp only [dif_pos hdpos]
            letI : NeZero d := ⟨ne_of_gt hdpos⟩
            exact
              parityResidueVarianceDiagonalModulusMajorant_nonneg
                (m * m) d

/-- Cubic finite lower bound for the positive endpoint majorant. -/
theorem parityResidueVarianceDiagonalEndpointMajorant_ge_cubic
    {m : ℕ} (hm : 20 ≤ m)
    (hMass : QuarterThreeQuarterSquarefreeMass (m * m)) :
    ((m : ℝ) ^ 3) / 2560 ≤
      parityResidueVarianceDiagonalEndpointMajorant (m * m) := by
  have hwindow :=
    parityResidueVarianceDiagonalEndpointMajorant_ge_window hm hMass
  have hcardNat := card_largeSquareModulusWindow_ge hm
  have hcard :
      (m : ℝ) / 20 ≤
        ((largeSquareModulusWindow m).card : ℝ) := by
    exact_mod_cast hcardNat
  have hbnonneg : 0 ≤ ((m * m : ℕ) : ℝ) / 128 := by
    positivity
  have hmul := mul_le_mul_of_nonneg_right hcard hbnonneg
  calc
    ((m : ℝ) ^ 3) / 2560 =
        ((m : ℝ) / 20) * (((m * m : ℕ) : ℝ) / 128) := by
      norm_num
      ring
    _ ≤ ((largeSquareModulusWindow m).card : ℝ) *
        (((m * m : ℕ) : ℝ) / 128) := hmul
    _ ≤ parityResidueVarianceDiagonalEndpointMajorant (m * m) :=
      hwindow

/-- Standard squarefree-density information required by the asymptotic scope
refutation.  It remains an explicit source proposition here. -/
def EventuallyQuarterThreeQuarterSquarefreeMass : Prop :=
  ∃ B : ℕ, ∀ b : ℕ, B ≤ b →
    QuarterThreeQuarterSquarefreeMass b

/-- Elementary dyadic outgrowth witness required to compare the cubic lower
bound with an `X^(1+1/4)` upper bound.

The proposition is kept separate so the finite arithmetic obstruction does not
silently inherit asymptotic real-power bookkeeping. -/
def DyadicQuarterPowerOutgrowth : Prop :=
  ∀ C : ℝ, 0 ≤ C → ∀ B : ℕ,
    ∃ j m : ℕ,
      m * m = 2 ^ j ∧
      20 ≤ m ∧
      B ≤ m * m ∧
      C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ (1 / 4 : ℝ)) <
        ((m : ℝ) ^ 3) / 2560

/-- The standard density and elementary dyadic-growth witnesses refute the
positive natural-scale residue-variance budget at exponent `1/4`. -/
theorem not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget
    (hDensity : EventuallyQuarterThreeQuarterSquarefreeMass)
    (hGrowth : DyadicQuarterPowerOutgrowth) :
    ¬ DyadicNaturalScaleParityResidueVarianceDiagonalBudget := by
  intro hBudget
  obtain ⟨C, hC, hscale⟩ :=
    hBudget (1 / 4 : ℝ) (by norm_num)
  obtain ⟨B, hB⟩ := hDensity
  obtain ⟨j, m, hmX, hm20, hmB, hout⟩ :=
    hGrowth C hC B
  have hbmem :
      m * m ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) := by
    rw [hmX]
    constructor
    · exact le_rfl
    · rw [pow_succ]
      omega
  have hupper := hscale j (m * m) hbmem
  have hlower :=
    parityResidueVarianceDiagonalEndpointMajorant_ge_cubic
      hm20 (hB (m * m) hmB)
  rw [← hmX] at hupper
  exact (not_lt_of_ge (hlower.trans hupper)) hout

/-- Named conditional scope disposition. -/
def PositiveResidueVarianceNaturalScaleRefutedAtScope : Prop :=
  EventuallyQuarterThreeQuarterSquarefreeMass →
    DyadicQuarterPowerOutgrowth →
      ¬ DyadicNaturalScaleParityResidueVarianceDiagonalBudget

/-- Constructed source-level conditional disposition. -/
theorem positiveResidueVarianceNaturalScaleRefutedAtScope :
    PositiveResidueVarianceNaturalScaleRefutedAtScope :=
  not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget

/-- Proof-relevant replacement boundary.  A source theorem must control the
exact signed square-minus-diagonal expression strongly enough to recover the
original nonzero-frequency budget; another positive L2 majorant is not
inserted automatically. -/
structure SignedSquareDiagonalCancellationRepair
    (source : Prop) : Type where
  toExactNonzeroBudget :
    source → DyadicNaturalScaleNonzeroParityFourierBudget

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityMertensResidueEnergy_eq_squarefreeDiagonal_of_half_lt_square
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityResidueVarianceDiagonalEndpointMajorant_ge_cubic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_dyadicNaturalScaleParityResidueVarianceDiagonalBudget
