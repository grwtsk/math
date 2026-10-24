# Complete source: GRWTSK.NumberTheory.Moebius.ParityFourierZeroNonzeroSplit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94e323e1acfbe7953960e1f507636a8d486aa8f4` · SHA-256 `986f6e987374e1af759798beffc50e9668f716bb9d5656a6fd3b8af65dd9c1c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #611. Direct stacked parent: draft PR #608 at
`62bef837f806e425d2fcbc80ba33718ca6c68a41`.
-/
import GRWTSK.NumberTheory.Moebius.AdditiveTwistParityFourierFactorization
import Mathlib.Analysis.PSeries

/-!
# Zero and nonzero Fourier modes of the parity-factorized Möbius budget

The parity/Fourier factorization from #607 leaves one endpoint majorant built
from frequencies `k : ZMod (d*d)`.

This module splits that majorant exactly into:

* `k = 0`: parity-restricted Mertens prefixes and their squarefree diagonals;
* `k ≠ 0`: the genuinely oscillatory square-modulus Fourier family.

The zero mode is discharged conditionally from an explicit dyadic
square-root-energy hypothesis for the parity Mertens prefixes.  The nonzero
frequency budget remains open.

No Mertens square-root theorem is asserted unconditionally.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Parity-restricted real Mertens prefix. -/
def parityMertensPrefix (b r : ℕ) : ℝ :=
  ∑ u ∈ endpointParitySet b r, moebiusReal u

/-- Parity-restricted squarefree diagonal. -/
def paritySquarefreeDiagonal (b r : ℕ) : ℝ :=
  ∑ u ∈ endpointParitySet b r, moebiusReal u ^ 2

/-- The zero-frequency one-point Fourier sum is exactly the parity Mertens
prefix. -/
theorem parityOnePointMobiusFourierSum_zero
    (b d r : ℕ) [NeZero d] :
    parityOnePointMobiusFourierSum b d r (0 : ZMod (d * d)) =
      (parityMertensPrefix b r : ℂ) := by
  unfold parityOnePointMobiusFourierSum
    parityOnePointMobiusFourierTerm
    parityMertensPrefix
  simp

/-- The zero-frequency Fourier diagonal is exactly the parity squarefree
diagonal. -/
theorem parityOnePointMobiusFourierDiagonal_zero
    (b d r : ℕ) [NeZero d] :
    parityOnePointMobiusFourierDiagonal b d r (0 : ZMod (d * d)) =
      (paritySquarefreeDiagonal b r : ℂ) := by
  unfold parityOnePointMobiusFourierDiagonal
    parityOnePointMobiusFourierTerm
    paritySquarefreeDiagonal
  simp [pow_two]

/-- The zero-mode quadratic quantity, independent of the square modulus. -/
def parityFourierZeroModeQuadraticMajorant
    (b : ℕ) : ℝ :=
  (1 / 2 : ℝ) *
    (‖((parityMertensPrefix b 0 : ℂ) ^ 2 -
        (paritySquarefreeDiagonal b 0 : ℂ))‖ +
      ‖((parityMertensPrefix b 1 : ℂ) ^ 2 -
        (paritySquarefreeDiagonal b 1 : ℂ))‖)

/-- The parent pointwise majorant at frequency zero is the modulus-independent
zero-mode quantity. -/
theorem parityFourierQuadraticMajorant_zero
    (b d : ℕ) [NeZero d] :
    parityFourierQuadraticMajorant b d (0 : ZMod (d * d)) =
      parityFourierZeroModeQuadraticMajorant b := by
  unfold parityFourierQuadraticMajorant
    parityFourierZeroModeQuadraticMajorant
  rw [parityOnePointMobiusFourierSum_zero,
    parityOnePointMobiusFourierDiagonal_zero,
    parityOnePointMobiusFourierSum_zero,
    parityOnePointMobiusFourierDiagonal_zero]

/-- Nonzero frequencies modulo the exact square modulus. -/
def nonzeroSquareModulusFrequencySet
    (d : ℕ) [NeZero d] : Finset (ZMod (d * d)) :=
  Finset.univ.erase 0

/-- Zero-mode endpoint contribution after the exact square-modulus averaging. -/
def parityFourierZeroModeEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      (((d * d : ℕ) : ℝ))⁻¹ *
        parityFourierZeroModeQuadraticMajorant b
    else 0

/-- Nonzero-frequency endpoint contribution. -/
def parityFourierNonzeroFrequencyEndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      letI : NeZero d := ⟨ne_of_gt hd⟩
      (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          parityFourierQuadraticMajorant b d k
    else 0

/-- Exact finite split of the parity/Fourier endpoint majorant into zero and
nonzero frequencies. -/
theorem parityFourierEndpointMajorant_eq_zero_add_nonzero
    (b : ℕ) :
    parityFourierEndpointMajorant b =
      parityFourierZeroModeEndpointMajorant b +
        parityFourierNonzeroFrequencyEndpointMajorant b := by
  classical
  unfold parityFourierEndpointMajorant
    parityFourierZeroModeEndpointMajorant
    parityFourierNonzeroFrequencyEndpointMajorant
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  rw [← mul_add]
  congr 1
  rw [Finset.sum_eq_sum_sdiff_singleton_add
    (Finset.mem_univ (0 : ZMod (d * d)))]
  simp [nonzeroSquareModulusFrequencySet,
    parityFourierQuadraticMajorant_zero b d, add_comm]

/-- Effective reciprocal-square mass over the square-modulus parameter. -/
def effectiveSquareModulusReciprocalMass
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    (((d * d : ℕ) : ℝ))⁻¹

/-- The reciprocal-square modulus mass is uniformly bounded.

The bound `2` is deliberately elementary and sufficient: the `d=1` term
costs one, while the remaining inverse squares telescope below one. -/
theorem effectiveSquareModulusReciprocalMass_le_two
    (b : ℕ) :
    effectiveSquareModulusReciprocalMass b ≤ 2 := by
  classical
  unfold effectiveSquareModulusReciprocalMass
    effectiveEndpointSquareModulusSet
  by_cases hb : b ≤ 2
  · interval_cases b <;> norm_num [Finset.filter_singleton]
  · have hb2 : 2 ≤ b - 1 := by omega
    calc
      (∑ d ∈ (Finset.Ico 1 b).filter (fun d => d * d < b),
          (((d * d : ℕ) : ℝ))⁻¹) ≤
        ∑ d ∈ Finset.Ico 1 b,
          (((d * d : ℕ) : ℝ))⁻¹ := by
            apply Finset.sum_le_sum_of_subset_of_nonneg
            · exact Finset.filter_subset _ _
            · intro d _hd _hnot
              positivity
      _ = 1 + ∑ d ∈ Finset.Ioc 1 (b - 1),
          (((d : ℝ) ^ 2))⁻¹ := by
            have hset :
                Finset.Ico 1 b =
                  insert 1 (Finset.Ioc 1 (b - 1)) := by
              ext d
              simp
              omega
            rw [hset, Finset.sum_insert]
            · norm_num [pow_two]
            · simp
      _ ≤ 1 + ((1 : ℝ)⁻¹ - (((b - 1 : ℕ) : ℝ))⁻¹) := by
            gcongr
            simpa [pow_two] using
              (sum_Ioc_inv_sq_le_sub (α := ℝ)
                (k := 1) (n := b - 1) one_ne_zero (by omega))
      _ ≤ 2 := by
            have h := inv_nonneg.mpr (Nat.cast_nonneg (b - 1) : (0 : ℝ) ≤ _)
            norm_num only [inv_one] at *
            linarith

/-- Each parity squarefree diagonal is nonnegative. -/
theorem paritySquarefreeDiagonal_nonneg
    (b r : ℕ) :
    0 ≤ paritySquarefreeDiagonal b r := by
  unfold paritySquarefreeDiagonal
  exact Finset.sum_nonneg fun u _hu => sq_nonneg _

/-- Trivial cardinality bound for the parity squarefree diagonal. -/
theorem paritySquarefreeDiagonal_le_endpoint
    (b r : ℕ) :
    paritySquarefreeDiagonal b r ≤ b := by
  unfold paritySquarefreeDiagonal endpointParitySet
  calc
    (∑ u ∈ (Finset.Icc 1 b).filter (fun u => u % 2 = r),
      moebiusReal u ^ 2) ≤
      ∑ u ∈ (Finset.Icc 1 b).filter (fun u => u % 2 = r), (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro u _hu
        have hmu := abs_moebiusReal_le_one u
        have hm := abs_le.mp hmu
        nlinarith [mul_nonneg (by linarith : 0 ≤ 1 - moebiusReal u)
          (by linarith : 0 ≤ 1 + moebiusReal u)]
    _ = (((Finset.Icc 1 b).filter (fun u => u % 2 = r)).card : ℝ) := by
        simp
    _ ≤ b := by
        norm_cast
        calc
          ((Finset.Icc 1 b).filter (fun u => u % 2 = r)).card ≤
              (Finset.Icc 1 b).card :=
            Finset.card_le_card (Finset.filter_subset _ _)
          _ ≤ b := by
            simp [Nat.card_Icc]

/-- Ordinary real Mertens prefix on positive integers up to the endpoint. -/
def ordinaryMertensPrefix (b : ℕ) : ℝ :=
  ∑ u ∈ Finset.Icc 1 b, moebiusReal u

/-- The ordinary Mertens prefix is the sum of the even- and odd-parity
prefixes. -/
theorem ordinaryMertensPrefix_eq_even_add_odd
    (b : ℕ) :
    ordinaryMertensPrefix b =
      parityMertensPrefix b 0 + parityMertensPrefix b 1 := by
  classical
  unfold ordinaryMertensPrefix parityMertensPrefix endpointParitySet
  have hcover :
      (Finset.Icc 1 b).filter (fun u => u % 2 = 0) ∪
          (Finset.Icc 1 b).filter (fun u => u % 2 = 1) =
        Finset.Icc 1 b := by
    ext u
    have hmod := Nat.mod_lt u (by omega : 0 < 2)
    simp only [Finset.mem_union, Finset.mem_filter, Finset.mem_Icc]
    omega
  have hdisj :
      Disjoint
        ((Finset.Icc 1 b).filter (fun u => u % 2 = 0))
        ((Finset.Icc 1 b).filter (fun u => u % 2 = 1)) := by
    simp only [Finset.disjoint_left, Finset.mem_filter]
    intro a ha hb
    omega
  rw [← Finset.sum_union hdisj, hcover]

/-- RH-scale dyadic square-energy hypothesis for parity-restricted Mertens
prefixes.  This is a conditional supplier, not an unconditional theorem. -/
def DyadicParityMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b r : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      r < 2 →
      parityMertensPrefix b r ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Dyadic square-root-energy form of the ordinary Mertens obstruction. -/
def DyadicOrdinaryMertensSquareRootEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      ordinaryMertensPrefix b ^ 2 ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Parity square-root control implies ordinary Mertens square-root control.

This is one-way only; no converse is inferred. -/
theorem ordinaryMertensSquareRootEnergy_of_parity
    (hParity : DyadicParityMertensSquareRootEnergy) :
    DyadicOrdinaryMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hParity δ hδ
  refine ⟨4 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j b hb
  rw [ordinaryMertensPrefix_eq_even_add_odd]
  have h0 := hscale j b 0 hb (by norm_num)
  have h1 := hscale j b 1 hb (by norm_num)
  nlinarith [sq_nonneg
    (parityMertensPrefix b 0 - parityMertensPrefix b 1)]

/-- All-scale zero-mode natural-scale budget. -/
def DyadicNaturalScaleZeroModeParityFourierBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityFourierZeroModeEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- All-scale nonzero-frequency natural-scale budget. -/
def DyadicNaturalScaleNonzeroParityFourierBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      parityFourierNonzeroFrequencyEndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- A parity-Mertens square-root-energy supplier controls the zero Fourier
mode. -/
theorem zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy
    (hM : DyadicParityMertensSquareRootEnergy) :
    DyadicNaturalScaleZeroModeParityFourierBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hM δ hδ
  refine ⟨2 * (C + 2), by positivity, ?_⟩
  intro j b hb
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 1 ≤ X := by
    dsimp [X]
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ two_ne_zero))
  have hXδ : 1 ≤ X ^ δ := by
    exact Real.one_le_rpow hX hδ.le
  have hbtop : (b : ℝ) ≤ 2 * X := by
    have hI := Finset.mem_Ico.mp hb
    dsimp [X]
    rw [pow_succ] at hI
    have h := Nat.le_of_lt hI.2
    exact_mod_cast (by simpa [mul_comm] using h : b ≤ 2 * 2 ^ j)
  have hquad :
      parityFourierZeroModeQuadraticMajorant b ≤
        (C + 2) * X * (X ^ δ) := by
    unfold parityFourierZeroModeQuadraticMajorant
    have hm0 := hscale j b 0 hb (by norm_num)
    have hm1 := hscale j b 1 hb (by norm_num)
    have hq0 := paritySquarefreeDiagonal_le_endpoint b 0
    have hq1 := paritySquarefreeDiagonal_le_endpoint b 1
    have hq0n := paritySquarefreeDiagonal_nonneg b 0
    have hq1n := paritySquarefreeDiagonal_nonneg b 1
    have hz0 :
        ‖((parityMertensPrefix b 0 : ℂ) ^ 2 -
            (paritySquarefreeDiagonal b 0 : ℂ))‖ ≤
          C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
      rw [← Complex.ofReal_pow, ← Complex.ofReal_sub, Complex.norm_real]
      apply abs_le.2
      constructor <;> nlinarith
    have hz1 :
        ‖((parityMertensPrefix b 1 : ℂ) ^ 2 -
            (paritySquarefreeDiagonal b 1 : ℂ))‖ ≤
          C * X * (X ^ δ) + 2 * X * (X ^ δ) := by
      rw [← Complex.ofReal_pow, ← Complex.ofReal_sub, Complex.norm_real]
      apply abs_le.2
      constructor <;> nlinarith
    nlinarith
  unfold parityFourierZeroModeEndpointMajorant
  calc
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      if hd : 0 < d then
        (((d * d : ℕ) : ℝ))⁻¹ *
          parityFourierZeroModeQuadraticMajorant b
      else 0) ≤
      effectiveSquareModulusReciprocalMass b *
        ((C + 2) * X * (X ^ δ)) := by
          unfold effectiveSquareModulusReciprocalMass
          rw [Finset.sum_mul]
          apply Finset.sum_le_sum
          intro d hd
          have hdpos :
              0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
          simp only [dif_pos hdpos]
          exact mul_le_mul_of_nonneg_left hquad (by positivity)
    _ ≤ 2 * ((C + 2) * X * (X ^ δ)) := by
          exact mul_le_mul_of_nonneg_right
            (effectiveSquareModulusReciprocalMass_le_two b)
            (by positivity)
    _ = (2 * (C + 2)) * X * (X ^ δ) := by ring
    _ = (2 * (C + 2)) * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by rfl

/-- Zero and nonzero natural-scale suppliers together recover the complete
parity/Fourier quadratic budget. -/
theorem parityFourierQuadraticBudget_of_zero_and_nonzero
    (hZero : DyadicNaturalScaleZeroModeParityFourierBudget)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleParityFourierQuadraticBudget := by
  intro δ hδ
  obtain ⟨C0, hC0, h0⟩ := hZero δ hδ
  obtain ⟨C1, hC1, h1⟩ := hNonzero δ hδ
  refine ⟨C0 + C1, add_nonneg hC0 hC1, ?_⟩
  intro j b hb
  rw [parityFourierEndpointMajorant_eq_zero_add_nonzero]
  exact add_le_add (h0 j b hb) (h1 j b hb) |>.trans_eq (by ring)

/-- The split suppliers therefore imply the natural-scale square-modulus
congruence-L1 target from PR #588. -/
theorem naturalScaleCongruenceL1_of_zero_and_nonzero
    (hZero : DyadicNaturalScaleZeroModeParityFourierBudget)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget
    (parityFourierQuadraticBudget_of_zero_and_nonzero hZero hNonzero)

/-- A parity-Mertens square-root supplier plus the nonzero Fourier supplier
suffices for the natural-scale congruence-L1 target. -/
theorem naturalScaleCongruenceL1_of_parityMertens_and_nonzero
    (hM : DyadicParityMertensSquareRootEnergy)
    (hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_zero_and_nonzero
    (zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy hM)
    hNonzero

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityFourierEndpointMajorant_eq_zero_add_nonzero
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_parityMertens_and_nonzero
```
