# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerShiftCorrelationReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d39630a6d426d2110328af98a5034c57a1c33f9` · SHA-256 `ed1d4c802d63f1a2785e42c59ce95a918e731b202d4c8377a3fc578d61ae328d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Data.Finset.Prod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Shift-correlation reduction for the Fejer signed off-diagonal

The preceding packet closes the diagonal contribution and reduces the exact
seven-eighths correlation theorem to a signed upper bound for the off-diagonal
remainder. This file reindexes that remainder by positive arithmetic shifts.

For the octave index set

  I_X = {n : 2X < n <= 4X},

write `a(n)` for the corrected Fejer-weighted prime-discrepancy atom. Symmetry
of `a(n) * a(q)` gives

  offDiagonal = 2 * sum_{n<q in I_X} a(n) a(q).

Grouping the upper-triangular pairs by `h = q-n` then gives

  offDiagonal
    = 2 * sum_{1 <= h <= 2X-1}
        sum_{2X < n <= 4X-h} a(n) a(n+h).

Thus the remaining theorem is an averaged, Fejer-weighted two-point
correlation estimate for the centered prime atoms. There are at most `2X`
positive shifts. Consequently, a pointwise upper bound of size

  X^(1/2) log(X)^4

for every shift is a stronger sufficient condition for the required aggregate
`X^(3/2) log(X)^4` estimate. The exact logical obligation remains the signed
aggregate bound; neither absolute values nor pointwise control are required.

No shifted prime-pair estimate, signed off-diagonal cancellation estimate,
threshold descent, or Riemann Hypothesis result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
OFFDIAGONAL_POSITIVE_SHIFT_REINDEXING_SOURCE_PROVED /
CENTERED_PRIME_PAIR_SHIFT_FORM_SOURCE_PROVED /
HALF_POWER_PER_SHIFT_SUFFICIENT_CRITERION_SOURCE_PROVED /
SEVEN_EIGHTHS_SHIFT_CORRELATION_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Arithmetic octave index set `(2X,4X]`. -/
def fejerOctaveIndexSet (X : ℕ) : Finset ℕ :=
  Finset.Ioc (2 * X) (4 * X)

/-- Strictly upper-triangular ordered pairs in the arithmetic octave. -/
def fejerPositiveOffDiagonalPairs (X : ℕ) : Finset (ℕ × ℕ) :=
  (fejerOctaveIndexSet X).offDiag.filter
    (fun p => p.1 < p.2)

/-- Strictly lower-triangular ordered pairs in the arithmetic octave. -/
def fejerNegativeOffDiagonalPairs (X : ℕ) : Finset (ℕ × ℕ) :=
  (fejerOctaveIndexSet X).offDiag.filter
    (fun p => p.2 < p.1)

@[simp]
theorem mem_fejerPositiveOffDiagonalPairs_iff
    {X : ℕ} {p : ℕ × ℕ} :
    p ∈ fejerPositiveOffDiagonalPairs X ↔
      p.1 ∈ fejerOctaveIndexSet X ∧
      p.2 ∈ fejerOctaveIndexSet X ∧
      p.1 < p.2 := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hoff, hlt⟩
    rcases Finset.mem_offDiag.mp hoff with ⟨h1, h2, hne⟩
    exact ⟨h1, h2, hlt⟩
  · rintro ⟨h1, h2, hlt⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_offDiag.mpr
        ⟨h1, h2, Nat.ne_of_lt hlt⟩,
       hlt⟩

@[simp]
theorem mem_fejerNegativeOffDiagonalPairs_iff
    {X : ℕ} {p : ℕ × ℕ} :
    p ∈ fejerNegativeOffDiagonalPairs X ↔
      p.1 ∈ fejerOctaveIndexSet X ∧
      p.2 ∈ fejerOctaveIndexSet X ∧
      p.2 < p.1 := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hoff, hlt⟩
    rcases Finset.mem_offDiag.mp hoff with ⟨h1, h2, hne⟩
    exact ⟨h1, h2, hlt⟩
  · rintro ⟨h1, h2, hlt⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_offDiag.mpr
        ⟨h1, h2, Ne.symm (Nat.ne_of_lt hlt)⟩,
       hlt⟩

/-- Every off-diagonal ordered pair lies in exactly one strict triangular
region. -/
theorem fejerOffDiagonalPairs_eq_positive_union_negative
    (X : ℕ) :
    (fejerOctaveIndexSet X).offDiag =
      fejerPositiveOffDiagonalPairs X ∪
        fejerNegativeOffDiagonalPairs X := by
  ext p
  constructor
  · intro hp
    rcases Finset.mem_offDiag.mp hp with ⟨h1, h2, hne⟩
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · exact Finset.mem_union.mpr <|
        Or.inl <|
          mem_fejerPositiveOffDiagonalPairs_iff.mpr
            ⟨h1, h2, hlt⟩
    · exact Finset.mem_union.mpr <|
        Or.inr <|
          mem_fejerNegativeOffDiagonalPairs_iff.mpr
            ⟨h1, h2, hgt⟩
  · intro hp
    rcases Finset.mem_union.mp hp with hp | hp
    · rcases mem_fejerPositiveOffDiagonalPairs_iff.mp hp with
        ⟨h1, h2, hlt⟩
      exact Finset.mem_offDiag.mpr
        ⟨h1, h2, Nat.ne_of_lt hlt⟩
    · rcases mem_fejerNegativeOffDiagonalPairs_iff.mp hp with
        ⟨h1, h2, hlt⟩
      exact Finset.mem_offDiag.mpr
        ⟨h1, h2, Ne.symm (Nat.ne_of_lt hlt)⟩

/-- The upper and lower strict triangular regions are disjoint. -/
theorem fejerPositiveNegativePairs_disjoint
    (X : ℕ) :
    Disjoint
      (fejerPositiveOffDiagonalPairs X)
      (fejerNegativeOffDiagonalPairs X) := by
  rw [Finset.disjoint_left]
  intro p hp hn
  have hp' :=
    (mem_fejerPositiveOffDiagonalPairs_iff.mp hp).2.2
  have hn' :=
    (mem_fejerNegativeOffDiagonalPairs_iff.mp hn).2.2
  omega

/-- Coordinate swap identifies the lower triangular pairs with the upper
triangular pairs. -/
def fejerNegativePositiveSwapEquiv
    (X : ℕ) :
    {p : ℕ × ℕ // p ∈ fejerNegativeOffDiagonalPairs X} ≃
      {p : ℕ × ℕ // p ∈ fejerPositiveOffDiagonalPairs X} where
  toFun p :=
    ⟨(p.1.2, p.1.1), by
      rcases mem_fejerNegativeOffDiagonalPairs_iff.mp p.2 with
        ⟨h1, h2, hlt⟩
      exact mem_fejerPositiveOffDiagonalPairs_iff.mpr
        ⟨h2, h1, hlt⟩⟩
  invFun p :=
    ⟨(p.1.2, p.1.1), by
      rcases mem_fejerPositiveOffDiagonalPairs_iff.mp p.2 with
        ⟨h1, h2, hlt⟩
      exact mem_fejerNegativeOffDiagonalPairs_iff.mpr
        ⟨h2, h1, hlt⟩⟩
  left_inv p := by
    apply Subtype.ext
    rcases p.1 with ⟨a, b⟩
    rfl
  right_inv p := by
    apply Subtype.ext
    rcases p.1 with ⟨a, b⟩
    rfl

/-- Upper-triangular half of the weighted off-diagonal correlation. -/
def nonAliasingFejerPositivePairCorrelation
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveOffDiagonalPairs X,
    nonAliasingFejerWeightedPrimeAtom X N m p.1 *
      nonAliasingFejerWeightedPrimeAtom X N m p.2

/-- Lower-triangular half of the weighted off-diagonal correlation. -/
def nonAliasingFejerNegativePairCorrelation
    (X N m : ℕ) : ℝ :=
  ∑ p ∈ fejerNegativeOffDiagonalPairs X,
    nonAliasingFejerWeightedPrimeAtom X N m p.1 *
      nonAliasingFejerWeightedPrimeAtom X N m p.2

/-- The lower and upper triangular sums agree by coordinate swap and
commutativity of multiplication. -/
theorem nonAliasingFejerNegativePairCorrelation_eq_positive
    (X N m : ℕ) :
    nonAliasingFejerNegativePairCorrelation X N m =
      nonAliasingFejerPositivePairCorrelation X N m := by
  unfold nonAliasingFejerNegativePairCorrelation
    nonAliasingFejerPositivePairCorrelation
  rw [← Finset.sum_attach, ← Finset.sum_attach]
  exact Fintype.sum_equiv
    (fejerNegativePositiveSwapEquiv X)
    (fun p =>
      nonAliasingFejerWeightedPrimeAtom X N m p.1.1 *
        nonAliasingFejerWeightedPrimeAtom X N m p.1.2)
    (fun p =>
      nonAliasingFejerWeightedPrimeAtom X N m p.1.1 *
        nonAliasingFejerWeightedPrimeAtom X N m p.1.2)
    (by
      intro p
      dsimp [fejerNegativePositiveSwapEquiv]
      ring)

/-- The existing subtraction definition of the off-diagonal remainder is
exactly the sum over ordered unequal pairs. -/
theorem nonAliasingFejerQuadraticOffDiagonal_eq_offDiag_sum
    (X N m : ℕ) :
    nonAliasingFejerQuadraticOffDiagonal X N m =
      ∑ p ∈ (fejerOctaveIndexSet X).offDiag,
        nonAliasingFejerWeightedPrimeAtom X N m p.1 *
          nonAliasingFejerWeightedPrimeAtom X N m p.2 := by
  unfold nonAliasingFejerQuadraticOffDiagonal
    nonAliasingFejerQuadraticCorrelation
    nonAliasingFejerQuadraticDiagonal
    fejerOctaveIndexSet
  rw [Finset.sum_product']
  rw [← Finset.diag_union_offDiag]
  rw [Finset.sum_union
    (Finset.disjoint_diag_offDiag
      (Finset.Ioc (2 * X) (4 * X)))]
  rw [Finset.sum_diag]
  simp only [pow_two]
  ring

/-- The signed off-diagonal is twice its strictly upper-triangular half. -/
theorem nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_positivePairCorrelation
    (X N m : ℕ) :
    nonAliasingFejerQuadraticOffDiagonal X N m =
      2 * nonAliasingFejerPositivePairCorrelation X N m := by
  calc
    nonAliasingFejerQuadraticOffDiagonal X N m
      =
      ∑ p ∈ (fejerOctaveIndexSet X).offDiag,
        nonAliasingFejerWeightedPrimeAtom X N m p.1 *
          nonAliasingFejerWeightedPrimeAtom X N m p.2 :=
        nonAliasingFejerQuadraticOffDiagonal_eq_offDiag_sum X N m
    _ =
      nonAliasingFejerPositivePairCorrelation X N m +
        nonAliasingFejerNegativePairCorrelation X N m := by
          unfold nonAliasingFejerPositivePairCorrelation
            nonAliasingFejerNegativePairCorrelation
          rw [fejerOffDiagonalPairs_eq_positive_union_negative]
          rw [Finset.sum_union
            (fejerPositiveNegativePairs_disjoint X)]
    _ =
      2 * nonAliasingFejerPositivePairCorrelation X N m := by
        rw [nonAliasingFejerNegativePairCorrelation_eq_positive]
        ring

/-- Positive shifts which can occur between two points of `(2X,4X]`. -/
def fejerPositiveLagSet (X : ℕ) : Finset ℕ :=
  Finset.Icc 1 (2 * X - 1)

/-- Upper-triangular pairs with prescribed positive difference `h`. -/
def fejerPositiveLagFiber
    (X h : ℕ) : Finset (ℕ × ℕ) :=
  (fejerPositiveOffDiagonalPairs X).filter
    (fun p => p.2 - p.1 = h)

@[simp]
theorem mem_fejerPositiveLagFiber_iff
    {X h : ℕ} {p : ℕ × ℕ} :
    p ∈ fejerPositiveLagFiber X h ↔
      p.1 ∈ fejerOctaveIndexSet X ∧
      p.2 ∈ fejerOctaveIndexSet X ∧
      p.1 < p.2 ∧
      p.2 = p.1 + h := by
  constructor
  · intro hp
    rcases Finset.mem_filter.mp hp with ⟨hpair, hdiff⟩
    rcases mem_fejerPositiveOffDiagonalPairs_iff.mp hpair with
      ⟨h1, h2, hlt⟩
    exact ⟨h1, h2, hlt, by omega⟩
  · rintro ⟨h1, h2, hlt, heq⟩
    exact Finset.mem_filter.mpr
      ⟨mem_fejerPositiveOffDiagonalPairs_iff.mpr
        ⟨h1, h2, hlt⟩,
       by omega⟩

/-- Every positive pair difference lies in `[1,2X-1]`. -/
theorem fejerPositivePairLag_mapsTo_Icc
    (X : ℕ) :
    ∀ p ∈ fejerPositiveOffDiagonalPairs X,
      p.2 - p.1 ∈ fejerPositiveLagSet X := by
  intro p hp
  rcases mem_fejerPositiveOffDiagonalPairs_iff.mp hp with
    ⟨h1, h2, hlt⟩
  have h1I := Finset.mem_Ioc.mp h1
  have h2I := Finset.mem_Ioc.mp h2
  exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩

/-- One positive-shift fiber correlation. -/
def nonAliasingFejerLagCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ p ∈ fejerPositiveLagFiber X h,
    nonAliasingFejerWeightedPrimeAtom X N m p.1 *
      nonAliasingFejerWeightedPrimeAtom X N m p.2

/-- Direct shifted form of the same centered prime-pair correlation. -/
def nonAliasingFejerShiftCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    nonAliasingFejerWeightedPrimeAtom X N m n *
      nonAliasingFejerWeightedPrimeAtom X N m (n + h)

/-- At an admissible positive lag, the lag fiber is equivalent to the possible
left endpoints `n` with `n+h <= 4X`. -/
def fejerPositiveLagFiberEquivIoc
    {X h : ℕ}
    (hh : h ∈ fejerPositiveLagSet X) :
    {p : ℕ × ℕ // p ∈ fejerPositiveLagFiber X h} ≃
      {n : ℕ // n ∈ Finset.Ioc (2 * X) (4 * X - h)} where
  toFun p :=
    ⟨p.1.1, by
      rcases mem_fejerPositiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      have h1I := Finset.mem_Ioc.mp h1
      have h2I := Finset.mem_Ioc.mp h2
      exact Finset.mem_Ioc.mpr ⟨h1I.1, by omega⟩⟩
  invFun n :=
    ⟨(n.1, n.1 + h), by
      have hhI := Finset.mem_Icc.mp hh
      have hnI := Finset.mem_Ioc.mp n.2
      exact mem_fejerPositiveLagFiber_iff.mpr
        ⟨Finset.mem_Ioc.mpr
            ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩,
         Finset.mem_Ioc.mpr ⟨by omega, by omega⟩,
         by omega,
         rfl⟩⟩
  left_inv p := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · rcases mem_fejerPositiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      exact heq.symm
  right_inv n := by
    apply Subtype.ext
    rfl

/-- The fiber correlation is exactly the standard shifted sum over `n` and
`n+h`. -/
theorem nonAliasingFejerLagCorrelation_eq_shiftCorrelation
    {X N m h : ℕ}
    (hh : h ∈ fejerPositiveLagSet X) :
    nonAliasingFejerLagCorrelation X N m h =
      nonAliasingFejerShiftCorrelation X N m h := by
  unfold nonAliasingFejerLagCorrelation
    nonAliasingFejerShiftCorrelation
  rw [← Finset.sum_attach, ← Finset.sum_attach]
  exact Fintype.sum_equiv
    (fejerPositiveLagFiberEquivIoc hh)
    (fun p =>
      nonAliasingFejerWeightedPrimeAtom X N m p.1.1 *
        nonAliasingFejerWeightedPrimeAtom X N m p.1.2)
    (fun n =>
      nonAliasingFejerWeightedPrimeAtom X N m n.1 *
        nonAliasingFejerWeightedPrimeAtom X N m (n.1 + h))
    (by
      intro p
      rcases mem_fejerPositiveLagFiber_iff.mp p.2 with
        ⟨h1, h2, hlt, heq⟩
      change
        nonAliasingFejerWeightedPrimeAtom X N m p.1.1 *
            nonAliasingFejerWeightedPrimeAtom X N m p.1.2 =
          nonAliasingFejerWeightedPrimeAtom X N m p.1.1 *
            nonAliasingFejerWeightedPrimeAtom X N m (p.1.1 + h)
      rw [heq])

/-- The shifted correlation is explicitly a Fejer-weighted two-point
correlation of centered prime-discrepancy atoms. -/
theorem nonAliasingFejerShiftCorrelation_eq_weighted_centeredPrimePair
    (X N m h : ℕ) :
    nonAliasingFejerShiftCorrelation X N m h =
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
        (nonAliasingFejerPrefixWeight X N m n *
          nonAliasingFejerPrefixWeight X N m (n + h)) *
        (primeDiscrepancyAtom n *
          primeDiscrepancyAtom (n + h)) := by
  unfold nonAliasingFejerShiftCorrelation
    nonAliasingFejerWeightedPrimeAtom
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- Upper-triangular pair correlation grouped exactly by positive lag. -/
theorem nonAliasingFejerPositivePairCorrelation_eq_sum_lagCorrelation
    (X N m : ℕ) :
    nonAliasingFejerPositivePairCorrelation X N m =
      ∑ h ∈ fejerPositiveLagSet X,
        nonAliasingFejerLagCorrelation X N m h := by
  unfold nonAliasingFejerPositivePairCorrelation
    nonAliasingFejerLagCorrelation
    fejerPositiveLagFiber
  rw [← Finset.sum_fiberwise_of_maps_to
    (fejerPositivePairLag_mapsTo_Icc X)]

/-- The same grouping in direct shifted-sum form. -/
theorem nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation
    (X N m : ℕ) :
    nonAliasingFejerPositivePairCorrelation X N m =
      ∑ h ∈ fejerPositiveLagSet X,
        nonAliasingFejerShiftCorrelation X N m h := by
  rw [nonAliasingFejerPositivePairCorrelation_eq_sum_lagCorrelation]
  apply Finset.sum_congr rfl
  intro h hh
  exact nonAliasingFejerLagCorrelation_eq_shiftCorrelation hh

/-- Exact positive-shift decomposition of the signed off-diagonal remainder. -/
theorem nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_sum_shiftCorrelation
    (X N m : ℕ) :
    nonAliasingFejerQuadraticOffDiagonal X N m =
      2 *
        ∑ h ∈ fejerPositiveLagSet X,
          nonAliasingFejerShiftCorrelation X N m h := by
  rw [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_positivePairCorrelation,
    nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation]

/-- There are at most `2X` admissible positive shifts. -/
theorem fejerPositiveLagSet_card_le
    (X : ℕ) :
    (fejerPositiveLagSet X).card ≤ 2 * X := by
  have hsubset :
      fejerPositiveLagSet X ⊆ Finset.range (2 * X) := by
    intro h hh
    have hhI := Finset.mem_Icc.mp hh
    exact Finset.mem_range.mpr (by omega)
  simpa using Finset.card_le_card hsubset

/-- Exact shifted-correlation form of the remaining signed supplier. -/
def SevenEighthsBoundaryMinimalExactShiftCorrelationBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
            nonAliasingFejerShiftCorrelation
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m h)
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- Absolute aggregate shift control is stronger than the exact signed
requirement. -/
def SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
            |nonAliasingFejerShiftCorrelation
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m h|)
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- A still stronger pointwise route: square-root-size upper control for each
of the `O(X)` positive shifts. -/
def SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          ∀ h ∈ fejerPositiveLagSet (dyadicScale j),
            nonAliasingFejerShiftCorrelation
                (dyadicScale j)
                (sevenEighthsBoundaryMinimalFejerCutoff j)
                m h
              ≤
            C *
              Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) *
              (Real.log (dyadicScale j : ℝ))^4

/-- Absolute aggregate shift control implies the exact signed aggregate
supplier. -/
theorem absoluteShiftCorrelationBound_to_exactShiftCorrelationBound
    (habs :
      SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound) :
    SevenEighthsBoundaryMinimalExactShiftCorrelationBound := by
  intro hgraded
  rcases habs hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  calc
    (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
      nonAliasingFejerShiftCorrelation
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m h)
      ≤
    ∑ h ∈ fejerPositiveLagSet (dyadicScale j),
      |nonAliasingFejerShiftCorrelation
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m h| := by
          exact Finset.sum_le_sum fun h hh =>
            le_abs_self _
    _ ≤
    C *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 :=
        hbound j hj m hm0 hm1

/-- Pointwise square-root-size shift control is sufficient after summing over
at most `2X` shifts. -/
theorem pointwiseShiftSquareRootBound_to_exactShiftCorrelationBound
    (hpoint :
      SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound) :
    SevenEighthsBoundaryMinimalExactShiftCorrelationBound := by
  intro hgraded
  rcases hpoint hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  have hsum :
      (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
        nonAliasingFejerShiftCorrelation
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m h)
        ≤
      ∑ h ∈ fejerPositiveLagSet (dyadicScale j),
        C *
          Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) *
          (Real.log (dyadicScale j : ℝ))^4 := by
    apply Finset.sum_le_sum
    intro h hh
    exact hbound j hj m hm0 hm1 h hh
  have hcard :=
    fejerPositiveLagSet_card_le (dyadicScale j)
  have hfactorNonnegative :
      0 ≤
        C *
          Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) *
          (Real.log (dyadicScale j : ℝ))^4 := by
    positivity
  have hXpos :
      0 < (dyadicScale j : ℝ) := by
    exact_mod_cast
      dyadicScale_pos_for_boundaryMinimalFejerSchedule j
  have hpower :
      (dyadicScale j : ℝ) *
          Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) =
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) := by
    rw [← Real.rpow_one (dyadicScale j : ℝ),
      ← Real.rpow_add hXpos]
    congr 1
    ring
  calc
    (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
      nonAliasingFejerShiftCorrelation
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m h)
      ≤
    ∑ h ∈ fejerPositiveLagSet (dyadicScale j),
      C *
        Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 := hsum
    _ =
    ((fejerPositiveLagSet (dyadicScale j)).card : ℝ) *
      (C *
        Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4) := by
          rw [Finset.sum_const, nsmul_eq_mul]
    _ ≤
    ((2 * dyadicScale j : ℕ) : ℝ) *
      (C *
        Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4) := by
          exact mul_le_mul_of_nonneg_right
            (by exact_mod_cast hcard)
            hfactorNonnegative
    _ =
    (2 * C) *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        push_cast
        rw [← hpower]
        ring

/-- The exact shifted aggregate supplier gives the signed off-diagonal
supplier, with only a factor two in the constant. -/
theorem exactShiftCorrelationBound_to_signedOffDiagonalBound
    (hshift :
      SevenEighthsBoundaryMinimalExactShiftCorrelationBound) :
    SevenEighthsBoundaryMinimalExactOffDiagonalBound := by
  intro hgraded
  rcases hshift hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_sum_shiftCorrelation]
  calc
    2 *
        (∑ h ∈ fejerPositiveLagSet (dyadicScale j),
          nonAliasingFejerShiftCorrelation
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m h)
      ≤
    2 *
      (C *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4) := by
          exact mul_le_mul_of_nonneg_left
            (hbound j hj m hm0 hm1) (by norm_num)
    _ =
    (2 * C) *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        ring

/-- The shifted two-point supplier therefore reaches the already closed
seven-eighths finite partial-prime discrepancy target. -/
theorem exactShiftCorrelationBound_to_partialDiscrepancy
    (hshift :
      SevenEighthsBoundaryMinimalExactShiftCorrelationBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  signedOffDiagonalBound_to_partialDiscrepancy
    (exactShiftCorrelationBound_to_signedOffDiagonalBound hshift)
    hgraded

/-- `O(X)` shifts times a pointwise `X^(1/2)` estimate has the target
`X^(3/2)` exponent. -/
@[simp]
theorem lagCount_add_pointwiseSquareRootExponent :
    (1 : ℝ) + (1 : ℝ) / 2 = (3 : ℝ) / 2 := by
  norm_num

/-- The target aggregate exponent is a genuine half-power below the elementary
`X^2` pair-counting exponent. -/
theorem threeHalves_lt_trivialPairCountingExponent :
    (3 : ℝ) / 2 < 2 := by
  norm_num

end GRWTSK.RiemannHypothesis
```
