module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CutoffMatrix
import Mathlib.Tactic

/-!
# Canonical dyadic intervals for Type II prefix differences

At arithmetic scale `N` we use the closed window `[0, 2 * N]`.  A canonical
dyadic interval is a *full* standard dyadic block

`[q * 2^j, (q + 1) * 2^j - 1]`

contained in that window.  We do not truncate blocks at the right endpoint:
this makes the `(j,q)` representation canonical.  Singletons (`j = 0`)
still cover every arithmetic moment in the window.

The interval matrix is the exact prefix difference
`H_upper - H_(lower-1)`.  At `lower = 0`, the predecessor cutoff is explicitly
the zero matrix, so there is no natural-number underflow.  This file contains
only finite identities and no analytic estimate.
-/

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- A finite canonical index for a full dyadic interval contained in
`[0, 2 * N]`.  The first finite coordinate is the dyadic level and the second
is the block number. -/
abbrev TypeIIDyadicInterval (N : ℕ) :=
  {index : Fin (2 * N + 1) × Fin (2 * N + 1) //
    (index.2.1 + 1) * 2 ^ index.1.1 ≤ 2 * N + 1}

namespace TypeIIDyadicInterval

@[expose]
def level {N : ℕ} (interval : TypeIIDyadicInterval N) : ℕ :=
  interval.1.1.1

@[expose]
def block {N : ℕ} (interval : TypeIIDyadicInterval N) : ℕ :=
  interval.1.2.1

@[expose]
def width {N : ℕ} (interval : TypeIIDyadicInterval N) : ℕ :=
  2 ^ interval.level

@[expose]
def lower {N : ℕ} (interval : TypeIIDyadicInterval N) : ℕ :=
  interval.block * interval.width

@[expose]
def upperExclusive {N : ℕ} (interval : TypeIIDyadicInterval N) : ℕ :=
  (interval.block + 1) * interval.width

@[expose]
def upper {N : ℕ} (interval : TypeIIDyadicInterval N) : ℕ :=
  interval.upperExclusive - 1

/-- The finite carrier of the closed dyadic interval. -/
@[expose]
def carrier {N : ℕ} (interval : TypeIIDyadicInterval N) : Finset ℕ :=
  Finset.Icc interval.lower interval.upper

@[surface_novel, surface_published]
theorem width_pos {N : ℕ} (interval : TypeIIDyadicInterval N) :
    0 < interval.width := by
  simp [width]

@[surface_novel, surface_published]
theorem lower_add_width {N : ℕ} (interval : TypeIIDyadicInterval N) :
    interval.lower + interval.width = interval.upperExclusive := by
  simp only [lower, upperExclusive]
  ring

@[surface_novel, surface_published]
theorem upper_add_one {N : ℕ} (interval : TypeIIDyadicInterval N) :
    interval.upper + 1 = interval.upperExclusive := by
  unfold upper
  apply Nat.sub_add_cancel
  unfold upperExclusive
  exact Nat.mul_pos (Nat.succ_pos interval.block) interval.width_pos

@[surface_novel, surface_published]
theorem lower_le_upper {N : ℕ} (interval : TypeIIDyadicInterval N) :
    interval.lower ≤ interval.upper := by
  have hwidth := interval.width_pos
  have hadd := interval.lower_add_width
  have hupper := interval.upper_add_one
  omega

@[surface_novel, surface_published]
theorem upper_le_scale {N : ℕ} (interval : TypeIIDyadicInterval N) :
    interval.upper ≤ 2 * N := by
  have hbound : interval.upperExclusive ≤ 2 * N + 1 := interval.2
  have hupper := interval.upper_add_one
  omega

@[surface_novel, surface_published]
theorem mem_carrier_iff {N : ℕ} (interval : TypeIIDyadicInterval N)
    (n : ℕ) :
    n ∈ interval.carrier ↔ interval.lower ≤ n ∧ n ≤ interval.upper := by
  simp [carrier]

/-- Full standard dyadic intervals have unique endpoint pairs.  Thus the
finite canonical type cannot contain two differently indexed copies of the
same closed interval. -/
@[surface_novel, surface_published]
theorem eq_of_lower_eq_and_upper_eq {N : ℕ}
    {left right : TypeIIDyadicInterval N}
    (hlower : left.lower = right.lower)
    (hupper : left.upper = right.upper) :
    left = right := by
  have hleftWidth := left.lower_add_width
  have hrightWidth := right.lower_add_width
  have hleftUpper := left.upper_add_one
  have hrightUpper := right.upper_add_one
  have hwidth : left.width = right.width := by omega
  have hlevel : left.level = right.level := by
    apply Nat.pow_right_injective (by omega : 2 ≤ 2)
    simpa [width] using hwidth
  have hblock : left.block = right.block := by
    have hmul : left.block * left.width = right.block * left.width := by
      simpa [lower, hwidth] using hlower
    exact Nat.mul_right_cancel left.width_pos hmul
  apply Subtype.ext
  apply Prod.ext
  · apply Fin.ext
    exact hlevel
  · apply Fin.ext
    exact hblock

end TypeIIDyadicInterval

/-- The finite nonduplicative collection of all full dyadic intervals in the
scale window. -/
@[expose]
def typeIIDyadicIntervals (N : ℕ) : Finset (TypeIIDyadicInterval N) :=
  Finset.univ

@[surface_novel, surface_published]
theorem mem_typeIIDyadicIntervals {N : ℕ}
    (interval : TypeIIDyadicInterval N) :
    interval ∈ typeIIDyadicIntervals N := by
  simp [typeIIDyadicIntervals]

/-- Prefix immediately before `lower`.  The value at `lower = 0` is defined
as the zero matrix rather than using truncated natural subtraction. -/
@[expose]
def productCutoffBeforeMatrix {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) :
    ℕ → Matrix Left Right ℂ
  | 0 => 0
  | lower + 1 => productCutoffMatrix leftIndex rightIndex lower

/-- Exact matrix increment across a canonical closed dyadic interval. -/
@[expose]
def productDyadicIntervalMatrix {N : ℕ} {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIDyadicInterval N) : Matrix Left Right ℂ :=
  productCutoffMatrix leftIndex rightIndex interval.upper -
    productCutoffBeforeMatrix leftIndex rightIndex interval.lower

@[surface_novel, surface_published]
theorem productDyadicIntervalMatrix_apply {N : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIDyadicInterval N) (left : Left) (right : Right) :
    productDyadicIntervalMatrix leftIndex rightIndex interval left right =
      if interval.lower ≤ leftIndex left * rightIndex right ∧
          leftIndex left * rightIndex right ≤ interval.upper then 1 else 0 := by
  have hlowerUpper := interval.lower_le_upper
  cases hlower : interval.lower with
  | zero =>
      simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
        productCutoffMatrix, hlower]
  | succ predecessor =>
      by_cases hbefore : leftIndex left * rightIndex right ≤ predecessor
      · have hupperProduct :
            leftIndex left * rightIndex right ≤ interval.upper := by
          omega
        simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
          productCutoffMatrix, hlower, hbefore, hupperProduct]
      · by_cases hupperProduct :
          leftIndex left * rightIndex right ≤ interval.upper
        · simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
            productCutoffMatrix, hlower, hbefore, hupperProduct]
        · simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
            productCutoffMatrix, hlower, hbefore, hupperProduct]

/-- A dyadic interval matrix is exactly the sum of the product fibers whose
entry moments lie in that interval. -/
@[surface_novel, surface_published]
theorem productDyadicIntervalMatrix_eq_sum_fibers {N : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIDyadicInterval N) :
    productDyadicIntervalMatrix leftIndex rightIndex interval =
      ∑ n ∈ interval.carrier,
        productFiberIncrementMatrix leftIndex rightIndex n := by
  ext left right
  rw [productDyadicIntervalMatrix_apply]
  simp only [TypeIIDyadicInterval.carrier, Matrix.sum_apply,
    productFiberIncrementMatrix, Finset.sum_ite_eq]
  by_cases hmem :
      leftIndex left * rightIndex right ∈
        Finset.Icc interval.lower interval.upper
  · rw [if_pos hmem]
    simp only [Finset.mem_Icc] at hmem
    simp [hmem]
  · rw [if_neg hmem]
    simp only [Finset.mem_Icc, not_and_or] at hmem
    rcases hmem with hbelow | habove
    · have : ¬ interval.lower ≤ leftIndex left * rightIndex right := by
        omega
      simp [this]
    · have : ¬ leftIndex left * rightIndex right ≤ interval.upper := by
        omega
      simp [this]

/-- Exact bilinear pairing identity for the endpoint difference defining a
dyadic interval matrix. -/
@[surface_novel, surface_published]
theorem bilinearMatrixPairing_dyadicInterval_eq_endpoint_sub
    {N : ℕ} {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left : Left → ℂ) (right : Right → ℂ)
    (interval : TypeIIDyadicInterval N) :
    bilinearMatrixPairing left
        (productDyadicIntervalMatrix leftIndex rightIndex interval) right =
      bilinearMatrixPairing left
          (productCutoffMatrix leftIndex rightIndex interval.upper) right -
        bilinearMatrixPairing left
          (productCutoffBeforeMatrix leftIndex rightIndex interval.lower)
          right := by
  exact bilinearMatrixPairing_sub left _ _ right

/-- Exact bilinear pairing identity obtained by summing the product-fiber
pairings inside a canonical dyadic interval. -/
@[surface_novel, surface_published]
theorem bilinearMatrixPairing_dyadicInterval_eq_sum_fibers
    {N : ℕ} {Left Right : Type*} [Fintype Left] [Fintype Right]
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left : Left → ℂ) (right : Right → ℂ)
    (interval : TypeIIDyadicInterval N) :
    bilinearMatrixPairing left
        (productDyadicIntervalMatrix leftIndex rightIndex interval) right =
      ∑ n ∈ interval.carrier,
        bilinearMatrixPairing left
          (productFiberIncrementMatrix leftIndex rightIndex n) right := by
  rw [productDyadicIntervalMatrix_eq_sum_fibers]
  exact bilinearMatrixPairing_finset_sum left interval.carrier
    (productFiberIncrementMatrix leftIndex rightIndex) right

end

end Surface.Core.TypeII

end
