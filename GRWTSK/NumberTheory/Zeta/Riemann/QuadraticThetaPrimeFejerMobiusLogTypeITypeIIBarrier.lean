/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Signed Type I / absolute Type II barrier for the centered Möbius-log frontier

The preceding packet stratifies the exact centered Möbius-log correlation by
squarefree common divisors `g | h` and primitive coprime reduced moduli.

This file makes a genuine Type I/II split at a cutoff `Y`:

* Type I: `g <= Y`;
* Type II: `Y < g`.

The complete centered anchor and genuine channels are retained.  In particular,
every pair containing the centering anchor has common gcd exactly one, so for
`1 <= Y` every anchor and mixed anchor/genuine term lies in Type I.  Type II is
therefore genuine/genuine only.

The main proved obstruction is also explicit.  If the signed Type I block is
replaced by its termwise absolute majorant, then the anchor/anchor term alone
forces that majorant to dominate the full Fejér anchor autocorrelation.  Hence
an absolute Type I estimate silently discards precisely the centered
cancellation that the route needs.  The low-g estimate must remain signed,
unless one separately proves the target-scale anchor autocorrelation estimate.

By contrast, the high-g block contains no anchor terms, so an absolute Type II
estimate is a valid sufficient input.  The source packages and proves the exact
bridge

  signed low-g Type I
  + absolute high-g Type II
  -> full squarefree-gcd supplier
  -> seven-eighths partial-prime discrepancy.

The split itself provides no power saving.  The two analytic estimates remain
open.  Heath-Brown's generalized Vaughan identity and the
Barban-Davenport-Halberstam dispersion method motivate these two kinds of
input, but no theorem from those sources is asserted to instantiate the exact
Fejér-weighted centered object here.

No Type I estimate, Type II estimate, threshold descent, or Riemann Hypothesis
result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SIGNED_TYPE_I_ABSOLUTE_TYPE_II_SPLIT_SOURCE_PROVED /
HIGH_GCD_ANCHOR_EXCLUSION_SOURCE_PROVED /
ABSOLUTE_TYPE_I_ANCHOR_AUTOCORRELATION_BARRIER_SOURCE_PROVED /
SEVEN_EIGHTHS_TYPE_I_TYPE_II_ESTIMATES_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Squarefree common divisors at or below the Type I cutoff. -/
def centeredMobiusLogLowGCDSet
    (h Y : ℕ) : Finset ℕ :=
  (centeredMobiusLogSquarefreeShiftDivisorSet h).filter
    (fun g => g ≤ Y)

/-- Squarefree common divisors above the Type I cutoff. -/
def centeredMobiusLogHighGCDSet
    (h Y : ℕ) : Finset ℕ :=
  (centeredMobiusLogSquarefreeShiftDivisorSet h).filter
    (fun g => Y < g)

@[simp]
theorem mem_centeredMobiusLogLowGCDSet_iff
    {h Y g : ℕ} :
    g ∈ centeredMobiusLogLowGCDSet h Y ↔
      g ∈ centeredMobiusLogSquarefreeShiftDivisorSet h ∧
      g ≤ Y := by
  simp [centeredMobiusLogLowGCDSet]

@[simp]
theorem mem_centeredMobiusLogHighGCDSet_iff
    {h Y g : ℕ} :
    g ∈ centeredMobiusLogHighGCDSet h Y ↔
      g ∈ centeredMobiusLogSquarefreeShiftDivisorSet h ∧
      Y < g := by
  simp [centeredMobiusLogHighGCDSet]

/-- The low and high common-gcd ranges partition the complete squarefree
shift-divisor support. -/
theorem centeredMobiusLogLowGCDSet_union_highGCDSet
    (h Y : ℕ) :
    centeredMobiusLogLowGCDSet h Y ∪
        centeredMobiusLogHighGCDSet h Y =
      centeredMobiusLogSquarefreeShiftDivisorSet h := by
  ext g
  simp [centeredMobiusLogLowGCDSet,
    centeredMobiusLogHighGCDSet]
  omega

/-- The two Type I/II common-gcd ranges are disjoint. -/
theorem centeredMobiusLogLowGCDSet_disjoint_highGCDSet
    (h Y : ℕ) :
    Disjoint
      (centeredMobiusLogLowGCDSet h Y)
      (centeredMobiusLogHighGCDSet h Y) := by
  rw [Finset.disjoint_left]
  intro g hlow hhigh
  have hlow' :=
    (mem_centeredMobiusLogLowGCDSet_iff.mp hlow).2
  have hhigh' :=
    (mem_centeredMobiusLogHighGCDSet_iff.mp hhigh).2
  omega

/-- Signed centered Type I block. -/
def centeredMobiusLogLowGCDPairBlock
    (n h Y : ℕ) : ℝ :=
  ∑ g ∈ centeredMobiusLogLowGCDSet h Y,
    centeredMobiusLogSquarefreePairGCDClassBlock n h g

/-- Signed centered Type II block. -/
def centeredMobiusLogHighGCDPairBlock
    (n h Y : ℕ) : ℝ :=
  ∑ g ∈ centeredMobiusLogHighGCDSet h Y,
    centeredMobiusLogSquarefreePairGCDClassBlock n h g

/-- Exact signed Type I/II decomposition of one centered pair block. -/
theorem centeredMobiusLogSquarefreeGCDPairBlock_eq_low_add_high
    (n h Y : ℕ) :
    centeredMobiusLogSquarefreeGCDPairBlock n h =
      centeredMobiusLogLowGCDPairBlock n h Y +
        centeredMobiusLogHighGCDPairBlock n h Y := by
  unfold centeredMobiusLogSquarefreeGCDPairBlock
    centeredMobiusLogLowGCDPairBlock
    centeredMobiusLogHighGCDPairBlock
  rw [← Finset.sum_union
    (centeredMobiusLogLowGCDSet_disjoint_highGCDSet h Y)]
  rw [centeredMobiusLogLowGCDSet_union_highGCDSet]

/-- The common gcd is one whenever the left index is the centering anchor. -/
@[simp]
theorem centeredMobiusLogPairGCD_none_left
    (v : Option ℕ) :
    centeredMobiusLogPairGCD (none, v) = 1 := by
  cases v <;>
    simp [centeredMobiusLogPairGCD,
      centeredMobiusLogDivisorModulus]

/-- The common gcd is one whenever the right index is the centering anchor. -/
@[simp]
theorem centeredMobiusLogPairGCD_none_right
    (u : Option ℕ) :
    centeredMobiusLogPairGCD (u, none) = 1 := by
  cases u <;>
    simp [centeredMobiusLogPairGCD,
      centeredMobiusLogDivisorModulus]

/-- Above any cutoff `Y >= 1`, a high-common-gcd pair is necessarily
genuine/genuine.  No anchor or mixed anchor/genuine term enters Type II. -/
theorem centeredMobiusLogHighGCDClass_pair_is_genuine
    {n h Y g : ℕ}
    {uv : Option ℕ × Option ℕ}
    (hY : 1 ≤ Y)
    (hg : g ∈ centeredMobiusLogHighGCDSet h Y)
    (huv :
      uv ∈ centeredMobiusLogSquarefreePairGCDClassIndexSet n h g) :
    ∃ d e : ℕ, uv = (some d, some e) := by
  rcases uv with ⟨u, v⟩
  cases u with
  | none =>
      have hclass :=
        (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv).2
      have hg1 : g = 1 := by
        simpa using hclass.symm
      have hhigh :=
        (mem_centeredMobiusLogHighGCDSet_iff.mp hg).2
      omega
  | some d =>
      cases v with
      | none =>
          have hclass :=
            (mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff.mp huv).2
          have hg1 : g = 1 := by
            simpa using hclass.symm
          have hhigh :=
            (mem_centeredMobiusLogHighGCDSet_iff.mp hg).2
          omega
      | some e =>
          exact ⟨d, e, rfl⟩

/-- Termwise absolute majorant of one exact squarefree common-gcd class. -/
def centeredMobiusLogAbsolutePairGCDClassBlock
    (n h g : ℕ) : ℝ :=
  ∑ uv ∈ centeredMobiusLogSquarefreePairGCDClassIndexSet n h g,
    |centeredMobiusLogDivisorTerm n uv.1 *
      centeredMobiusLogDivisorTerm (n + h) uv.2|

/-- Absolute low-common-gcd majorant.  This object is intentionally stronger
than the signed Type I block and will expose the anchor obstruction. -/
def centeredMobiusLogAbsoluteLowGCDPairBlock
    (n h Y : ℕ) : ℝ :=
  ∑ g ∈ centeredMobiusLogLowGCDSet h Y,
    centeredMobiusLogAbsolutePairGCDClassBlock n h g

/-- Absolute high-common-gcd majorant.  Since high-g classes are
genuine/genuine, this is an admissible Type II sufficient input. -/
def centeredMobiusLogAbsoluteHighGCDPairBlock
    (n h Y : ℕ) : ℝ :=
  ∑ g ∈ centeredMobiusLogHighGCDSet h Y,
    centeredMobiusLogAbsolutePairGCDClassBlock n h g

theorem centeredMobiusLogAbsolutePairGCDClassBlock_nonnegative
    (n h g : ℕ) :
    0 ≤ centeredMobiusLogAbsolutePairGCDClassBlock n h g := by
  unfold centeredMobiusLogAbsolutePairGCDClassBlock
  exact Finset.sum_nonneg fun uv huv => abs_nonneg _

theorem centeredMobiusLogAbsoluteLowGCDPairBlock_nonnegative
    (n h Y : ℕ) :
    0 ≤ centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
  unfold centeredMobiusLogAbsoluteLowGCDPairBlock
  exact Finset.sum_nonneg fun g hg =>
    centeredMobiusLogAbsolutePairGCDClassBlock_nonnegative n h g

theorem centeredMobiusLogAbsoluteHighGCDPairBlock_nonnegative
    (n h Y : ℕ) :
    0 ≤ centeredMobiusLogAbsoluteHighGCDPairBlock n h Y := by
  unfold centeredMobiusLogAbsoluteHighGCDPairBlock
  exact Finset.sum_nonneg fun g hg =>
    centeredMobiusLogAbsolutePairGCDClassBlock_nonnegative n h g

/-- A signed class is bounded above by its termwise absolute majorant. -/
theorem centeredMobiusLogSquarefreePairGCDClassBlock_le_absolute
    (n h g : ℕ) :
    centeredMobiusLogSquarefreePairGCDClassBlock n h g ≤
      centeredMobiusLogAbsolutePairGCDClassBlock n h g := by
  unfold centeredMobiusLogSquarefreePairGCDClassBlock
    centeredMobiusLogAbsolutePairGCDClassBlock
  exact Finset.sum_le_sum fun uv huv => le_abs_self _

/-- Signed Type II is bounded above by absolute Type II. -/
theorem centeredMobiusLogHighGCDPairBlock_le_absolute
    (n h Y : ℕ) :
    centeredMobiusLogHighGCDPairBlock n h Y ≤
      centeredMobiusLogAbsoluteHighGCDPairBlock n h Y := by
  unfold centeredMobiusLogHighGCDPairBlock
    centeredMobiusLogAbsoluteHighGCDPairBlock
  exact Finset.sum_le_sum fun g hg =>
    centeredMobiusLogSquarefreePairGCDClassBlock_le_absolute n h g

/-- The anchor/anchor pair occurs in the common-gcd-one class. -/
theorem centeredMobiusLog_none_none_mem_gcd_one_class
    (n h : ℕ) :
    (none, none) ∈
      centeredMobiusLogSquarefreePairGCDClassIndexSet n h 1 := by
  rw [mem_centeredMobiusLogSquarefreePairGCDClassIndexSet_iff]
  constructor
  · rw [mem_centeredMobiusLogSquarefreeDivisorPairIndexSet_iff]
    exact
      ⟨none_mem_centeredMobiusLogSquarefreeDivisorIndexSet n,
       none_mem_centeredMobiusLogSquarefreeDivisorIndexSet (n + h)⟩
  · simp

/-- For every positive shift and every cutoff at least one, common gcd one is
inside the Type I range. -/
theorem one_mem_centeredMobiusLogLowGCDSet
    {h Y : ℕ}
    (hh : 0 < h)
    (hY : 1 ≤ Y) :
    1 ∈ centeredMobiusLogLowGCDSet h Y := by
  rw [mem_centeredMobiusLogLowGCDSet_iff]
  constructor
  · exact
      mem_centeredMobiusLogSquarefreeShiftDivisorSet_iff.mpr
        ⟨one_dvd h, hh.ne', by simp⟩
  · exact hY

/-- The termwise absolute Type I majorant contains at least the absolute
anchor/anchor term, which is exactly one. -/
theorem one_le_centeredMobiusLogAbsoluteLowGCDPairBlock
    {n h Y : ℕ}
    (hh : 0 < h)
    (hY : 1 ≤ Y) :
    1 ≤ centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
  have hpair :=
    centeredMobiusLog_none_none_mem_gcd_one_class n h
  have hlow :=
    one_mem_centeredMobiusLogLowGCDSet hh hY
  calc
    (1 : ℝ)
      =
      |centeredMobiusLogDivisorTerm n none *
        centeredMobiusLogDivisorTerm (n + h) none| := by
          simp
    _ ≤
      centeredMobiusLogAbsolutePairGCDClassBlock n h 1 := by
        unfold centeredMobiusLogAbsolutePairGCDClassBlock
        exact Finset.single_le_sum
          (fun uv huv => abs_nonneg _) hpair
    _ ≤ centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
        unfold centeredMobiusLogAbsoluteLowGCDPairBlock
        exact Finset.single_le_sum
          (fun g hg =>
            centeredMobiusLogAbsolutePairGCDClassBlock_nonnegative
              n h g)
          hlow

/-- Fejér weight product attached to one shifted pair. -/
def nonAliasingFejerShiftWeight
    (X N m h n : ℕ) : ℝ :=
  nonAliasingFejerPrefixWeight X N m n *
    nonAliasingFejerPrefixWeight X N m (n + h)

/-- The shifted Fejér weight is nonnegative on the actual octave support. -/
theorem nonAliasingFejerShiftWeight_nonnegative
    {X N m h n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X - h)) :
    0 ≤ nonAliasingFejerShiftWeight X N m h n := by
  have hnI := Finset.mem_Ioc.mp hn
  have hnOctave :
      n ∈ Finset.Ioc (2 * X) (4 * X) := by
    exact Finset.mem_Ioc.mpr
      ⟨hnI.1, hnI.2.trans (Nat.sub_le _ _)⟩
  have hnhOctave :
      n + h ∈ Finset.Ioc (2 * X) (4 * X) := by
    exact Finset.mem_Ioc.mpr ⟨by omega, by omega⟩
  unfold nonAliasingFejerShiftWeight
  exact mul_nonneg
    (nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hnOctave)
    (nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hnhOctave)

/-- Signed Type I shifted correlation. -/
def nonAliasingFejerMobiusLogLowGCDShiftCorrelation
    (X N m h Y : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    nonAliasingFejerShiftWeight X N m h n *
      centeredMobiusLogLowGCDPairBlock n h Y

/-- Signed Type II shifted correlation. -/
def nonAliasingFejerMobiusLogHighGCDShiftCorrelation
    (X N m h Y : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    nonAliasingFejerShiftWeight X N m h n *
      centeredMobiusLogHighGCDPairBlock n h Y

/-- Absolute Type I shifted majorant. -/
def nonAliasingFejerMobiusLogAbsoluteLowGCDShiftCorrelation
    (X N m h Y : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    nonAliasingFejerShiftWeight X N m h n *
      centeredMobiusLogAbsoluteLowGCDPairBlock n h Y

/-- Absolute Type II shifted majorant. -/
def nonAliasingFejerMobiusLogAbsoluteHighGCDShiftCorrelation
    (X N m h Y : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    nonAliasingFejerShiftWeight X N m h n *
      centeredMobiusLogAbsoluteHighGCDPairBlock n h Y

/-- Exact signed Type I/II split of one shift correlation. -/
theorem nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_low_add_high
    (X N m h Y : ℕ) :
    nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation X N m h =
      nonAliasingFejerMobiusLogLowGCDShiftCorrelation X N m h Y +
        nonAliasingFejerMobiusLogHighGCDShiftCorrelation X N m h Y := by
  unfold nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation
    nonAliasingFejerMobiusLogLowGCDShiftCorrelation
    nonAliasingFejerMobiusLogHighGCDShiftCorrelation
    nonAliasingFejerShiftWeight
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredMobiusLogSquarefreeGCDPairBlock_eq_low_add_high]
  ring

/-- Signed Type I aggregate over positive shifts. -/
def nonAliasingFejerMobiusLogLowGCDAggregate
    (X N m Y : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogLowGCDShiftCorrelation
      X N m h Y

/-- Signed Type II aggregate over positive shifts. -/
def nonAliasingFejerMobiusLogHighGCDAggregate
    (X N m Y : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogHighGCDShiftCorrelation
      X N m h Y

/-- Absolute Type I aggregate. -/
def nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate
    (X N m Y : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogAbsoluteLowGCDShiftCorrelation
      X N m h Y

/-- Absolute Type II aggregate. -/
def nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
    (X N m Y : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogAbsoluteHighGCDShiftCorrelation
      X N m h Y

/-- Exact aggregate Type I/II decomposition. -/
theorem nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high
    (X N m Y : ℕ) :
    nonAliasingFejerMobiusLogSquarefreeGCDAggregate X N m =
      nonAliasingFejerMobiusLogLowGCDAggregate X N m Y +
        nonAliasingFejerMobiusLogHighGCDAggregate X N m Y := by
  unfold nonAliasingFejerMobiusLogSquarefreeGCDAggregate
    nonAliasingFejerMobiusLogLowGCDAggregate
    nonAliasingFejerMobiusLogHighGCDAggregate
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro h hh
  exact
    nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_low_add_high
      X N m h Y

/-- Signed high-g aggregate is bounded by the absolute Type II aggregate. -/
theorem nonAliasingFejerMobiusLogHighGCDAggregate_le_absolute
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerMobiusLogHighGCDAggregate X N m Y ≤
      nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate X N m Y := by
  unfold nonAliasingFejerMobiusLogHighGCDAggregate
    nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
    nonAliasingFejerMobiusLogHighGCDShiftCorrelation
    nonAliasingFejerMobiusLogAbsoluteHighGCDShiftCorrelation
  apply Finset.sum_le_sum
  intro h hh
  apply Finset.sum_le_sum
  intro n hn
  exact mul_le_mul_of_nonneg_left
    (centeredMobiusLogHighGCDPairBlock_le_absolute n h Y)
    (nonAliasingFejerShiftWeight_nonnegative
      hreg hm0 hm1 hn)

/-- Pure anchor autocorrelation retained inside the centered Type I packet. -/
def nonAliasingFejerCenteredAnchorAutocorrelation
    (X N m : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
      nonAliasingFejerShiftWeight X N m h n

/-- The termwise absolute Type I majorant dominates the complete anchor
autocorrelation.  This is the exact obstruction to using absolute Type I
control as a substitute for centered signed cancellation. -/
theorem nonAliasingFejerCenteredAnchorAutocorrelation_le_absoluteLowGCDAggregate
    {X N m Y : ℕ}
    (hY : 1 ≤ Y)
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerCenteredAnchorAutocorrelation X N m ≤
      nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate
        X N m Y := by
  unfold nonAliasingFejerCenteredAnchorAutocorrelation
    nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate
    nonAliasingFejerMobiusLogAbsoluteLowGCDShiftCorrelation
  apply Finset.sum_le_sum
  intro h hh
  have hhpos : 0 < h := by
    have hhI := Finset.mem_Icc.mp hh
    omega
  apply Finset.sum_le_sum
  intro n hn
  have hone :=
    one_le_centeredMobiusLogAbsoluteLowGCDPairBlock
      (n := n) hhpos hY
  have hw :=
    nonAliasingFejerShiftWeight_nonnegative
      hreg hm0 hm1 hn
  calc
    nonAliasingFejerShiftWeight X N m h n
      =
      nonAliasingFejerShiftWeight X N m h n * 1 := by ring
    _ ≤
      nonAliasingFejerShiftWeight X N m h n *
        centeredMobiusLogAbsoluteLowGCDPairBlock n h Y := by
          exact mul_le_mul_of_nonneg_left hone hw

/-- Square-root Type I/II boundary. -/
def sevenEighthsMobiusLogTypeITypeIICutoff
    (X : ℕ) : ℕ :=
  Nat.sqrt X

/-- The square-root cutoff contains the anchor class at every positive scale. -/
theorem one_le_sevenEighthsMobiusLogTypeITypeIICutoff
    {X : ℕ}
    (hX : 0 < X) :
    1 ≤ sevenEighthsMobiusLogTypeITypeIICutoff X := by
  unfold sevenEighthsMobiusLogTypeITypeIICutoff
  exact Nat.one_le_iff_ne_zero.mpr
    (Nat.ne_of_gt (Nat.sqrt_pos.2 hX))

/-- Exact target-scale signed Type I input.  This estimate must preserve the
complete centered anchor, mixed, and genuine channels. -/
def SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerMobiusLogLowGCDAggregate
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
              (sevenEighthsMobiusLogTypeITypeIICutoff
                (dyadicScale j))
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- Exact target-scale absolute Type II input.  High-g classes are
genuine/genuine only, so termwise absolute control is a valid sufficient
hypothesis on this side of the split. -/
def SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
              (sevenEighthsMobiusLogTypeITypeIICutoff
                (dyadicScale j))
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- Target-scale anchor autocorrelation estimate forced by any absolute Type I
majorant theorem. -/
def SevenEighthsBoundaryMinimalAnchorAutocorrelationBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerCenteredAnchorAutocorrelation
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- Absolute low-g Type I is stronger than a target-scale bound for the pure
anchor autocorrelation.  This theorem records the exact extra input silently
introduced by discarding centered signs. -/
def SevenEighthsBoundaryMinimalAbsoluteLowGCDTypeIBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
              (sevenEighthsMobiusLogTypeITypeIICutoff
                (dyadicScale j))
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

theorem absoluteLowGCDTypeIBound_to_anchorAutocorrelationBound
    (habs : SevenEighthsBoundaryMinimalAbsoluteLowGCDTypeIBound) :
    SevenEighthsBoundaryMinimalAnchorAutocorrelationBound := by
  intro hgraded
  rcases habs hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  have hcut :
      1 ≤ sevenEighthsMobiusLogTypeITypeIICutoff
        (dyadicScale j) :=
    one_le_sevenEighthsMobiusLogTypeITypeIICutoff
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
  exact
    (nonAliasingFejerCenteredAnchorAutocorrelation_le_absoluteLowGCDAggregate
      hcut
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1).trans
      (hbound j hj m hm0 hm1)

/-- The actual non-equivalent Type I/II bridge: signed low-g control and
absolute high-g control imply the complete squarefree-gcd supplier. -/
theorem signedTypeI_absoluteTypeII_to_squarefreeGCDBound
    (hI : SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound)
    (hII : SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound) :
    SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound := by
  intro hgraded
  rcases hI hgraded with ⟨CI, hCI, jI, hIbound⟩
  rcases hII hgraded with ⟨CII, hCII, jII, hIIbound⟩
  refine ⟨CI + CII, add_nonneg hCI hCII, max jI jII, ?_⟩
  intro j hj m hm0 hm1
  have hjI : jI ≤ j :=
    (Nat.le_max_left jI jII).trans hj
  have hjII : jII ≤ j :=
    (Nat.le_max_right jI jII).trans hj
  let Y :=
    sevenEighthsMobiusLogTypeITypeIICutoff
      (dyadicScale j)
  have hhigh :
      nonAliasingFejerMobiusLogHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y
        ≤
      nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y :=
    nonAliasingFejerMobiusLogHighGCDAggregate_le_absolute
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1
  rw [nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high
    (dyadicScale j)
    (sevenEighthsBoundaryMinimalFejerCutoff j)
    m Y]
  calc
    nonAliasingFejerMobiusLogLowGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y +
        nonAliasingFejerMobiusLogHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y
      ≤
    nonAliasingFejerMobiusLogLowGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y +
        nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m Y := by
            exact add_le_add_left hhigh _
    _ ≤
    CI *
          Real.rpow (dyadicScale j : ℝ)
            ((3 : ℝ) / 2) *
          (Real.log (dyadicScale j : ℝ))^4 +
      CII *
          Real.rpow (dyadicScale j : ℝ)
            ((3 : ℝ) / 2) *
          (Real.log (dyadicScale j : ℝ))^4 := by
            exact add_le_add
              (hIbound j hjI m hm0 hm1)
              (hIIbound j hjII m hm0 hm1)
    _ =
    (CI + CII) *
      Real.rpow (dyadicScale j : ℝ)
        ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        ring

/-- The same two exact inputs reach the existing seven-eighths finite
partial-prime discrepancy target. -/
theorem signedTypeI_absoluteTypeII_to_partialDiscrepancy
    (hI : SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound)
    (hII : SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  mobiusLogSquarefreeGCDBound_to_partialDiscrepancy
    (signedTypeI_absoluteTypeII_to_squarefreeGCDBound hI hII)
    hgraded

/-- The split is bookkeeping until the two analytic estimates are supplied. -/
def signedTypeIAbsoluteTypeIIBookkeepingExponent : ℝ := 2

/-- Exact target exponent. -/
def signedTypeIAbsoluteTypeIITargetExponent : ℝ :=
  (3 : ℝ) / 2

theorem signedTypeIAbsoluteTypeIITarget_lt_bookkeeping :
    signedTypeIAbsoluteTypeIITargetExponent <
      signedTypeIAbsoluteTypeIIBookkeepingExponent := by
  norm_num [signedTypeIAbsoluteTypeIITargetExponent,
    signedTypeIAbsoluteTypeIIBookkeepingExponent]

end GRWTSK.RiemannHypothesis
