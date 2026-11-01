/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixTwoAdicChains
import Mathlib

/-!
# A complete signed two-by-three Liouville corner

The four ACTUAL Liouville coefficients at q, 2q, 3q, and 6q have
the exact pattern a, -a, -a, a. This file keeps the original terminal
weighted-pair kernel and all four diagonal and twelve ordered off-diagonal
entries. Their complete packet equals 2/(3q) for q>0, independently of
the original terminal N+1. No bound is claimed for the complementary
pairs in the full weighted-prefix source.

This is a finite arithmetic proof candidate, not a new zero-free region,
a Fejer upper bound, an all-positive-rate supplier, or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.LiouvilleTwoThreeCornerPacket

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains

/-- The true Liouville coefficient at the odd prime three. -/
theorem coefficient_three : coefficient 3 = -1 := by
  simp [coefficient, ArithmeticFunction.liouville_apply
    (by norm_num : (3 : ℕ) ≠ 0),
    ArithmeticFunction.cardFactors_apply_prime (by norm_num : Nat.Prime 3)]

/-- Multiplication by three reverses the original Liouville sign. -/
theorem coefficient_three_mul (q : ℕ) :
    coefficient (3 * q) = -coefficient q := by
  rw [coefficient_mul, coefficient_three]
  ring

/-- The product of the two distinct prime signs restores the coefficient. -/
theorem coefficient_six_mul (q : ℕ) :
    coefficient (6 * q) = coefficient q := by
  have h : 6 * q = 2 * (3 * q) := by omega
  rw [h, coefficient_doubling, coefficient_three_mul]
  ring

/-- Four diagonal terms plus all six unordered pairs counted twice.
The ten weights are exactly the ordered max-kernel weights for increasing
indices q, 2q, 3q, 6q. The terminal term is retained everywhere. -/
def fourCornerOrderedGram
    (a b c d w₁ w₂ w₃ w₄ τ : ℝ) : ℝ :=
  a ^ 2 * (w₁ - τ) + b ^ 2 * (w₂ - τ) +
  c ^ 2 * (w₃ - τ) + d ^ 2 * (w₄ - τ) +
  2 * (a * b * (w₂ - τ) + a * c * (w₃ - τ) +
       a * d * (w₄ - τ) + b * c * (w₃ - τ) +
       b * d * (w₄ - τ) + c * d * (w₄ - τ))

/-- Finite signed cancellation, including the terminal-face cancellation. -/
theorem fourCorner_alternating
    (a w₁ w₂ w₃ w₄ τ : ℝ) :
    fourCornerOrderedGram a (-a) (-a) a w₁ w₂ w₃ w₄ τ =
      a ^ 2 * (w₁ - w₂ + w₃ - w₄) := by
  unfold fourCornerOrderedGram
  ring

/-- The complete four-point packet in the ORIGINAL weighted-prefix pair
kernel. Every off-diagonal orientation is included by the factor two. -/
def twoThreeOrderedSource (N q : ℕ) : ℝ :=
  coefficient q ^ 2 * weightedPairKernel N q q +
  coefficient (2 * q) ^ 2 * weightedPairKernel N (2 * q) (2 * q) +
  coefficient (3 * q) ^ 2 * weightedPairKernel N (3 * q) (3 * q) +
  coefficient (6 * q) ^ 2 * weightedPairKernel N (6 * q) (6 * q) +
  2 * (
    coefficient q * coefficient (2 * q) * weightedPairKernel N q (2 * q) +
    coefficient q * coefficient (3 * q) * weightedPairKernel N q (3 * q) +
    coefficient q * coefficient (6 * q) * weightedPairKernel N q (6 * q) +
    coefficient (2 * q) * coefficient (3 * q) *
      weightedPairKernel N (2 * q) (3 * q) +
    coefficient (2 * q) * coefficient (6 * q) *
      weightedPairKernel N (2 * q) (6 * q) +
    coefficient (3 * q) * coefficient (6 * q) *
      weightedPairKernel N (3 * q) (6 * q))

/-- Direct source-to-algebra comparison, with no changed coefficient,
max-kernel, or terminal normalization. -/
theorem twoThreeOrderedSource_eq_fourCorner (N q : ℕ) :
    twoThreeOrderedSource N q =
      fourCornerOrderedGram
        (coefficient q) (coefficient (2 * q))
        (coefficient (3 * q)) (coefficient (6 * q))
        (1 / (q : ℝ)) (1 / (((2 * q : ℕ) : ℝ)))
        (1 / (((3 * q : ℕ) : ℝ))) (1 / (((6 * q : ℕ) : ℝ)))
        (1 / (((N + 1 : ℕ) : ℝ))) := by
  have h12 : q ≤ 2 * q := by omega
  have h13 : q ≤ 3 * q := by omega
  have h14 : q ≤ 6 * q := by omega
  have h23 : 2 * q ≤ 3 * q := by omega
  have h24 : 2 * q ≤ 6 * q := by omega
  have h34 : 3 * q ≤ 6 * q := by omega
  simp only [twoThreeOrderedSource, weightedPairKernel, max_self,
    max_eq_right h12, max_eq_right h13, max_eq_right h14,
    max_eq_right h23, max_eq_right h24, max_eq_right h34,
    fourCornerOrderedGram]
  ring

/-- A source-specific, unconditional, complete signed 2-by-3 packet.
For 6q <= N the four indices are all in the original source inventory. -/
theorem twoThreeOrderedSource_closed (N q : ℕ) (hq : 1 ≤ q) :
    twoThreeOrderedSource N q = 2 / (3 * (q : ℝ)) := by
  rw [twoThreeOrderedSource_eq_fourCorner]
  have hsign := fourCorner_alternating (coefficient q)
    (1 / (q : ℝ)) (1 / (((2 * q : ℕ) : ℝ)))
    (1 / (((3 * q : ℕ) : ℝ))) (1 / (((6 * q : ℕ) : ℝ)))
    (1 / (((N + 1 : ℕ) : ℝ)))
  simp only [coefficient_doubling, coefficient_three_mul,
    coefficient_six_mul] at *
  rw [hsign, coefficient_square_one hq]
  have hq0 : (q : ℝ) ≠ 0 := by
    exact_mod_cast (show q ≠ 0 by omega)
  push_cast
  field_simp
  ring

/-- All four true source diagonals, including all four terminal charges. -/
def twoThreeDiagonal (N q : ℕ) : ℝ :=
  weightedPairKernel N q q +
  weightedPairKernel N (2 * q) (2 * q) +
  weightedPairKernel N (3 * q) (3 * q) +
  weightedPairKernel N (6 * q) (6 * q)

/-- The COMPLETE twelve oriented mixed terms, not only one selected pair. -/
def twoThreeOffDiagonal (N q : ℕ) : ℝ :=
  twoThreeOrderedSource N q - twoThreeDiagonal N q

theorem twoThreeDiagonal_closed (N q : ℕ) (hq : 1 ≤ q) :
    twoThreeDiagonal N q =
      2 / (q : ℝ) - 4 / (((N + 1 : ℕ) : ℝ)) := by
  simp only [twoThreeDiagonal, weightedPairKernel, max_self]
  have hq0 : (q : ℝ) ≠ 0 := by
    exact_mod_cast (show q ≠ 0 by omega)
  push_cast
  field_simp
  ring

/-- The exact negative 2-by-3 signed packet is accompanied by its
positive terminal correction. Neither orientation has been discarded. -/
theorem twoThreeOffDiagonal_closed (N q : ℕ) (hq : 1 ≤ q) :
    twoThreeOffDiagonal N q =
      -(4 / (3 * (q : ℝ))) + 4 / (((N + 1 : ℕ) : ℝ)) := by
  unfold twoThreeOffDiagonal
  rw [twoThreeOrderedSource_closed N q hq, twoThreeDiagonal_closed N q hq]
  have hq0 : (q : ℝ) ≠ 0 := by
    exact_mod_cast (show q ≠ 0 by omega)
  push_cast
  field_simp
  ring

/-- All other original signed pairs, including possible interactions of the
selected quartet with other indices, remain in this literal residual. -/
def complementarySignedSource (N q : ℕ) : ℝ :=
  weightedPairForm N - twoThreeOrderedSource N q

/-- A fully paid source reconstruction. This is NOT an estimate on the
complementary regular arithmetic covariance. -/
theorem weightedPairForm_eq_corner_add_complement (N q : ℕ)
    (hq : 1 ≤ q) (_hN : 6 * q ≤ N) :
    weightedPairForm N =
      2 / (3 * (q : ℝ)) + complementarySignedSource N q := by
  unfold complementarySignedSource
  rw [twoThreeOrderedSource_closed N q hq]
  ring

end GRWTSK.NumberTheory.LiouvilleTwoThreeCornerPacket
