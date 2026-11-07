/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedOperandChunks

/-!
# Balanced affine packing for radius-two seed coordinates

A block of consecutive coordinates uses a power of the lane base,
a word of unit coefficients, and a word of index coefficients.
Doubling places a translated copy of each word above its low half.
The resulting pack has the same exact positional digits as the
finite sum. It is used to check the archived first primal generator.
Binding an observed block to the executable pack is a separate
input. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution

open scoped BigOperators

private def affineSummary (base : ℕ) : ℕ → ℕ × ℕ × ℕ
  | 0 => (base, 1, 0)
  | k+1 =>
    let (p, s, t) := affineSummary base k
    let half := 2^k
    (p*p, s+p*s, t+p*(t+half*s))

private theorem pack_affine (base len scale first : ℕ) :
    pack base len (fun j => scale * (first+j)) =
      scale * (first * pack base len (fun _ => 1) + pack base len id) := by
  unfold pack
  simp only [id_eq, one_mul, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

private theorem affineSummary_eq (base depth : ℕ) :
    affineSummary base depth =
      (base^(2^depth), pack base (2^depth) (fun _ => 1), pack base (2^depth) id) := by
  induction depth with
  | zero => simp [affineSummary, pack]
  | succ k ih =>
    rw [affineSummary, ih]
    dsimp only
    rw [show 2^(k+1) = 2^k + 2^k by omega, pow_add,
      pack_append base (2^k) (2^k) (fun _ => 1),
      pack_append base (2^k) (2^k) id]
    have shift : pack base (2^k) (fun j => id (2^k+j)) =
        pack base (2^k) id + 2^k * pack base (2^k) (fun _ => 1) := by
      simpa only [id_eq, one_mul, add_comm] using pack_affine base (2^k) 1 (2^k)
    rw [shift]

/-- Pack a dyadic block of a scaled consecutive column by balanced doubling. -/
def affineBlock (base scale first depth : ℕ) : ℕ :=
  let (_, s, t) := affineSummary base depth
  scale * (first*s+t)

/-- The balanced evaluator preserves each exact affine coefficient. -/
theorem affineBlock_eq (base scale first depth : ℕ) :
    affineBlock base scale first depth =
      pack base (2^depth) (fun j => scale*(first+j)) := by
  unfold affineBlock
  rw [affineSummary_eq, pack_affine]

/-- Read an affine coefficient from an observed word with a checked block equality. -/
theorem affineBlock_digit (base scale first depth word : ℕ)
    (hBase : 0 < base) (hBound : ∀ j < 2^depth, scale*(first+j) < base)
    (hWord : word = affineBlock base scale first depth) {j : ℕ} (hj : j < 2^depth) :
    word / base^j % base = scale*(first+j) := by
  rw [hWord, affineBlock_eq]
  exact read_pack base (2^depth) _ hBase hBound hj

end GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution
