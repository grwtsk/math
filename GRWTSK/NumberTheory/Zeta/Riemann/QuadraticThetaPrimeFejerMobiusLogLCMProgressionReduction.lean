/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction
import Mathlib.Data.Nat.ModEq
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# LCM progression fibers for the centered Mobius-log frontier

The preceding packet expands the centered von Mangoldt shifted correlation as
one finite centered Mobius-log divisor-pair sum and proves the necessary
compatibility

  gcd(d,e) | h

for every genuine divisor pair.  This file changes from antidiagonal witnesses
`(d,a)` to divisor moduli `d`, while retaining the centering anchor as an
augmented modulus-one index.

For every augmented pair `(u,v)`, including the anchor channels, an integer
`n` contributing at shift `h` satisfies

  D(u) | n,
  D(v) | n+h,

where `D(none)=1` and `D(some d)=d`.  Any two such integers are congruent modulo

  lcm(D(u),D(v)).

Consequently the admissible integers in `(2X,4X-h]` form one arithmetic
progression and have cardinality at most

  floor(4X / lcm(D(u),D(v))) + 1.

The anchor-anchor fiber has modulus one and is the full interval.  Therefore
progression sparsity alone cannot close the target: the centered signed
cancellation across augmented divisor indices must still be retained.

No Mobius cancellation estimate, progression large-sieve estimate, threshold
descent, or Riemann Hypothesis result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CENTERED_DIVISOR_MODULUS_REINDEXING_SOURCE_PROVED /
LCM_PROGRESSION_FIBER_SOURCE_PROVED /
LCM_FIBER_CARDINALITY_SOURCE_PROVED /
SEVEN_EIGHTHS_MOBIUS_LOG_LCM_PROGRESSION_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Augmented divisor index for the centered Mobius-log expansion.  `none` is
the exact centering anchor and `some d` is a divisor modulus. -/
def centeredMobiusLogDivisorIndexSet
    (n : ℕ) : Finset (Option ℕ) :=
  insert none (n.divisors.image (fun d : ℕ => some d))

/-- The centered Mobius-log coefficient indexed only by a divisor modulus. -/
def centeredMobiusLogDivisorTerm
    (n : ℕ) : Option ℕ → ℝ
  | none => -1
  | some d => mobiusReal d * Real.log (n / d : ℕ)

@[simp]
theorem none_mem_centeredMobiusLogDivisorIndexSet
    (n : ℕ) :
    (none : Option ℕ) ∈ centeredMobiusLogDivisorIndexSet n := by
  simp [centeredMobiusLogDivisorIndexSet]

@[simp]
theorem some_mem_centeredMobiusLogDivisorIndexSet_iff
    {n d : ℕ} :
    some d ∈ centeredMobiusLogDivisorIndexSet n ↔
      d ∈ n.divisors := by
  simp [centeredMobiusLogDivisorIndexSet]

@[simp]
theorem centeredMobiusLogDivisorTerm_none
    (n : ℕ) :
    centeredMobiusLogDivisorTerm n none = -1 := by
  rfl

@[simp]
theorem centeredMobiusLogDivisorTerm_some
    (n d : ℕ) :
    centeredMobiusLogDivisorTerm n (some d) =
      mobiusReal d * Real.log (n / d : ℕ) := by
  rfl

/-- Finite divisor-indexed centered convolution sum. -/
def centeredMobiusLogDivisorIndexSum
    (n : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogDivisorIndexSet n,
    centeredMobiusLogDivisorTerm n u

/-- The divisor-indexed sum is the ordinary divisor Mobius-log sum minus one. -/
theorem centeredMobiusLogDivisorIndexSum_eq_raw
    (n : ℕ) :
    centeredMobiusLogDivisorIndexSum n =
      (∑ d ∈ n.divisors,
        mobiusReal d * Real.log (n / d : ℕ)) - 1 := by
  unfold centeredMobiusLogDivisorIndexSum
    centeredMobiusLogDivisorIndexSet
  have hnone :
      (none : Option ℕ) ∉
        n.divisors.image (fun d : ℕ => some d) := by
    simp
  rw [Finset.sum_insert hnone]
  have himage :
      (∑ u ∈ n.divisors.image (fun d : ℕ => some d),
        centeredMobiusLogDivisorTerm n u) =
      ∑ d ∈ n.divisors,
        mobiusReal d * Real.log (n / d : ℕ) := by
    rw [Finset.sum_image]
    · rfl
    · intro a ha b hb hab
      exact Option.some.inj hab
  rw [himage]
  simp [centeredMobiusLogDivisorTerm]
  ring

/-- The antidiagonal Mobius-log sum from the previous packet is exactly the
modulus-indexed divisor sum. -/
theorem mobiusLogDivisorSum_eq_vonMangoldt
    (n : ℕ) :
    (∑ d ∈ n.divisors,
      mobiusReal d * Real.log (n / d : ℕ)) =
      ArithmeticFunction.vonMangoldt n := by
  calc
    (∑ d ∈ n.divisors,
      mobiusReal d * Real.log (n / d : ℕ))
      =
      ∑ p ∈ n.divisorsAntidiagonal,
        mobiusLogDivisorTerm p := by
          symm
          simpa [mobiusLogDivisorTerm] using
            (Nat.sum_divisorsAntidiagonal
              (n := n)
              (fun d a => mobiusReal d * Real.log a))
    _ = ArithmeticFunction.vonMangoldt n :=
      (vonMangoldt_eq_mobiusLogDivisorSum n).symm

/-- Exact centered von Mangoldt expansion indexed by divisor moduli. -/
theorem centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt
    (n : ℕ) :
    centeredMobiusLogDivisorIndexSum n =
      centeredVonMangoldtAtom n := by
  rw [centeredMobiusLogDivisorIndexSum_eq_raw,
    mobiusLogDivisorSum_eq_vonMangoldt]
  rfl

/-- Centered divisor-pair block.  The four anchor/genuine channels remain in
one finite sum. -/
def centeredMobiusLogDivisorPairBlock
    (n h : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogDivisorIndexSet n,
    ∑ v ∈ centeredMobiusLogDivisorIndexSet (n + h),
      centeredMobiusLogDivisorTerm n u *
        centeredMobiusLogDivisorTerm (n + h) v

/-- The centered divisor-pair block is the product of the two augmented sums. -/
theorem centeredMobiusLogDivisorPairBlock_eq_indexSum_mul
    (n h : ℕ) :
    centeredMobiusLogDivisorPairBlock n h =
      centeredMobiusLogDivisorIndexSum n *
        centeredMobiusLogDivisorIndexSum (n + h) := by
  unfold centeredMobiusLogDivisorPairBlock
    centeredMobiusLogDivisorIndexSum
  symm
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro u hu
  rw [Finset.mul_sum]

/-- Hence the divisor-pair block is exactly the centered von Mangoldt product. -/
theorem centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul
    (n h : ℕ) :
    centeredMobiusLogDivisorPairBlock n h =
      centeredVonMangoldtAtom n *
        centeredVonMangoldtAtom (n + h) := by
  rw [centeredMobiusLogDivisorPairBlock_eq_indexSum_mul,
    centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt,
    centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt]

/-- Exact agreement with the antidiagonal-compatible pair block of the
preceding packet. -/
theorem centeredMobiusLogDivisorPairBlock_eq_compatiblePairBlock
    (n h : ℕ) :
    centeredMobiusLogDivisorPairBlock n h =
      centeredMobiusLogCompatiblePairBlock n h := by
  calc
    centeredMobiusLogDivisorPairBlock n h
      = centeredVonMangoldtAtom n *
          centeredVonMangoldtAtom (n + h) :=
        centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul n h
    _ = centeredMobiusLogCompatiblePairBlock n h :=
      (centeredMobiusLogCompatiblePairBlock_eq_centeredVonMangoldt_mul
        n h).symm

/-- Modulus attached to an augmented centered index.  The anchor is assigned
modulus one, so it imposes no divisibility restriction. -/
def centeredMobiusLogDivisorModulus : Option ℕ → ℕ
  | none => 1
  | some d => d

@[simp]
theorem centeredMobiusLogDivisorModulus_none :
    centeredMobiusLogDivisorModulus none = 1 := by
  rfl

@[simp]
theorem centeredMobiusLogDivisorModulus_some
    (d : ℕ) :
    centeredMobiusLogDivisorModulus (some d) = d := by
  rfl

/-- Every actual augmented index supplies divisibility by its attached modulus. -/
theorem centeredMobiusLogDivisorModulus_dvd_of_mem
    {n : ℕ} {u : Option ℕ}
    (hu : u ∈ centeredMobiusLogDivisorIndexSet n) :
    centeredMobiusLogDivisorModulus u ∣ n := by
  cases u with
  | none =>
      simp [centeredMobiusLogDivisorModulus]
  | some d =>
      have hd : d ∈ n.divisors :=
        some_mem_centeredMobiusLogDivisorIndexSet_iff.mp hu
      simpa [centeredMobiusLogDivisorModulus] using
        Nat.dvd_of_mem_divisors hd

/-- Uniform compatibility predicate, valid for all four centered channels. -/
def CenteredMobiusLogDivisorPairCompatible
    (h : ℕ) (u v : Option ℕ) : Prop :=
  Nat.gcd
      (centeredMobiusLogDivisorModulus u)
      (centeredMobiusLogDivisorModulus v) ∣ h

@[simp]
theorem centeredMobiusLogDivisorPairCompatible_none_left
    (h : ℕ) (v : Option ℕ) :
    CenteredMobiusLogDivisorPairCompatible h none v := by
  simp [CenteredMobiusLogDivisorPairCompatible,
    centeredMobiusLogDivisorModulus]

@[simp]
theorem centeredMobiusLogDivisorPairCompatible_none_right
    (h : ℕ) (u : Option ℕ) :
    CenteredMobiusLogDivisorPairCompatible h u none := by
  simp [CenteredMobiusLogDivisorPairCompatible,
    centeredMobiusLogDivisorModulus]

@[simp]
theorem centeredMobiusLogDivisorPairCompatible_some_some
    (h d e : ℕ) :
    CenteredMobiusLogDivisorPairCompatible h (some d) (some e) ↔
      Nat.gcd d e ∣ h := by
  rfl

/-- Every pair of augmented divisor indices that actually occurs at `n` and
`n+h` satisfies the uniform gcd compatibility condition. -/
theorem centeredMobiusLogDivisorIndexPair_compatible
    {n h : ℕ} {u v : Option ℕ}
    (hu : u ∈ centeredMobiusLogDivisorIndexSet n)
    (hv : v ∈ centeredMobiusLogDivisorIndexSet (n + h)) :
    CenteredMobiusLogDivisorPairCompatible h u v := by
  unfold CenteredMobiusLogDivisorPairCompatible
  exact gcd_dvd_shift_of_shiftDivisorCongruence
    ⟨centeredMobiusLogDivisorModulus_dvd_of_mem hu,
      centeredMobiusLogDivisorModulus_dvd_of_mem hv⟩

/-- Divisibility system defining one shifted arithmetic progression. -/
def CenteredMobiusLogShiftSolution
    (d e h n : ℕ) : Prop :=
  d ∣ n ∧ e ∣ n + h

/-- Any two solutions of the same shifted divisibility system agree modulo the
least common multiple. -/
theorem centeredMobiusLogShiftSolution_pair_modEq_lcm
    {d e h n₁ n₂ : ℕ}
    (h₁ : CenteredMobiusLogShiftSolution d e h n₁)
    (h₂ : CenteredMobiusLogShiftSolution d e h n₂) :
    n₁ ≡ n₂ [MOD Nat.lcm d e] := by
  have hd₁ : n₁ ≡ 0 [MOD d] := h₁.1.modEq_zero_nat
  have hd₂ : n₂ ≡ 0 [MOD d] := h₂.1.modEq_zero_nat
  have he₁ : n₁ + h ≡ 0 [MOD e] := h₁.2.modEq_zero_nat
  have he₂ : n₂ + h ≡ 0 [MOD e] := h₂.2.modEq_zero_nat
  have hd : n₁ ≡ n₂ [MOD d] :=
    hd₁.trans hd₂.symm
  have he_add : n₁ + h ≡ n₂ + h [MOD e] :=
    he₁.trans he₂.symm
  have he : n₁ ≡ n₂ [MOD e] :=
    Nat.ModEq.add_right_cancel' h he_add
  exact Nat.mod_lcm hd he

/-- Finite progression fiber inside the shifted octave interval. -/
def centeredMobiusLogLCMProgressionFiber
    (X h : ℕ) (u v : Option ℕ) : Finset ℕ :=
  (Finset.Ioc (2 * X) (4 * X - h)).filter
    (fun n =>
      CenteredMobiusLogShiftSolution
        (centeredMobiusLogDivisorModulus u)
        (centeredMobiusLogDivisorModulus v)
        h n)

@[simp]
theorem mem_centeredMobiusLogLCMProgressionFiber_iff
    {X h n : ℕ} {u v : Option ℕ} :
    n ∈ centeredMobiusLogLCMProgressionFiber X h u v ↔
      n ∈ Finset.Ioc (2 * X) (4 * X - h) ∧
      centeredMobiusLogDivisorModulus u ∣ n ∧
      centeredMobiusLogDivisorModulus v ∣ n + h := by
  simp [centeredMobiusLogLCMProgressionFiber,
    CenteredMobiusLogShiftSolution]

/-- Every actual centered divisor-pair term lies in its attached progression
fiber. -/
theorem centeredMobiusLogDivisorPair_mem_lcmProgressionFiber
    {X h n : ℕ} {u v : Option ℕ}
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X - h))
    (hu : u ∈ centeredMobiusLogDivisorIndexSet n)
    (hv : v ∈ centeredMobiusLogDivisorIndexSet (n + h)) :
    n ∈ centeredMobiusLogLCMProgressionFiber X h u v := by
  rw [mem_centeredMobiusLogLCMProgressionFiber_iff]
  exact ⟨hn,
    centeredMobiusLogDivisorModulus_dvd_of_mem hu,
    centeredMobiusLogDivisorModulus_dvd_of_mem hv⟩

/-- All members of one fiber have the same residue modulo the attached lcm. -/
theorem centeredMobiusLogLCMProgressionFiber_pair_modEq
    {X h a b : ℕ} {u v : Option ℕ}
    (ha : a ∈ centeredMobiusLogLCMProgressionFiber X h u v)
    (hb : b ∈ centeredMobiusLogLCMProgressionFiber X h u v) :
    a ≡ b [MOD Nat.lcm
      (centeredMobiusLogDivisorModulus u)
      (centeredMobiusLogDivisorModulus v)] := by
  have ha' :=
    (mem_centeredMobiusLogLCMProgressionFiber_iff.mp ha).2
  have hb' :=
    (mem_centeredMobiusLogLCMProgressionFiber_iff.mp hb).2
  exact centeredMobiusLogShiftSolution_pair_modEq_lcm
    ⟨ha'.1, ha'.2⟩ ⟨hb'.1, hb'.2⟩

/-- Division by the lcm is injective on one progression fiber. -/
theorem centeredMobiusLogLCMProgressionFiber_div_lcm_injOn
    (X h : ℕ) (u v : Option ℕ) :
    Set.InjOn
      (fun n : ℕ =>
        n / Nat.lcm
          (centeredMobiusLogDivisorModulus u)
          (centeredMobiusLogDivisorModulus v))
      (centeredMobiusLogLCMProgressionFiber X h u v : Set ℕ) := by
  intro a ha b hb hab
  have hmod :=
    centeredMobiusLogLCMProgressionFiber_pair_modEq ha hb
  unfold Nat.ModEq at hmod
  let L := Nat.lcm
    (centeredMobiusLogDivisorModulus u)
    (centeredMobiusLogDivisorModulus v)
  change a / L = b / L at hab
  change a % L = b % L at hmod
  calc
    a = a / L * L + a % L := (Nat.div_add_mod a L).symm
    _ = b / L * L + b % L := by rw [hab, hmod]
    _ = b := Nat.div_add_mod b L

/-- Exact elementary cardinality bound for one lcm progression fiber. -/
theorem centeredMobiusLogLCMProgressionFiber_card_le
    (X h : ℕ) (u v : Option ℕ) :
    (centeredMobiusLogLCMProgressionFiber X h u v).card ≤
      4 * X /
          Nat.lcm
            (centeredMobiusLogDivisorModulus u)
            (centeredMobiusLogDivisorModulus v) + 1 := by
  let L := Nat.lcm
    (centeredMobiusLogDivisorModulus u)
    (centeredMobiusLogDivisorModulus v)
  have hmaps :
      Set.MapsTo
        (fun n : ℕ => n / L)
        (centeredMobiusLogLCMProgressionFiber X h u v : Set ℕ)
        (Finset.range (4 * X / L + 1) : Set ℕ) := by
    intro n hn
    change n ∈ centeredMobiusLogLCMProgressionFiber X h u v at hn
    have hnI :=
      (mem_centeredMobiusLogLCMProgressionFiber_iff.mp hn).1
    have hnI' := Finset.mem_Ioc.mp hnI
    have hnUpper : n ≤ 4 * X :=
      hnI'.2.trans (Nat.sub_le _ _)
    have hdiv : n / L ≤ 4 * X / L :=
      Nat.div_le_div_right hnUpper
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le hdiv)
  have hinj :
      Set.InjOn
        (fun n : ℕ => n / L)
        (centeredMobiusLogLCMProgressionFiber X h u v : Set ℕ) := by
    simpa [L] using
      centeredMobiusLogLCMProgressionFiber_div_lcm_injOn
        X h u v
  have hcard :
      (centeredMobiusLogLCMProgressionFiber X h u v).card ≤
        (Finset.range (4 * X / L + 1)).card :=
    Finset.card_le_card_of_injOn
      (fun n : ℕ => n / L) hmaps hinj
  simpa [L] using hcard

/-- The anchor-anchor channel has modulus one and therefore occupies the full
shifted interval.  Progression sparsity alone cannot estimate it. -/
theorem centeredMobiusLogLCMProgressionFiber_none_none
    (X h : ℕ) :
    centeredMobiusLogLCMProgressionFiber X h none none =
      Finset.Ioc (2 * X) (4 * X - h) := by
  ext n
  simp [centeredMobiusLogLCMProgressionFiber,
    CenteredMobiusLogShiftSolution,
    centeredMobiusLogDivisorModulus]

/-- Shift correlation in modulus-indexed lcm-progression form. -/
def nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    (nonAliasingFejerPrefixWeight X N m n *
      nonAliasingFejerPrefixWeight X N m (n + h)) *
      centeredMobiusLogDivisorPairBlock n h

/-- The lcm-progression shift form is exactly the antidiagonal congruence form. -/
theorem nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation_eq_congruence
    (X N m h : ℕ) :
    nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation
        X N m h =
      nonAliasingFejerMobiusLogCongruenceShiftCorrelation
        X N m h := by
  unfold nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation
    nonAliasingFejerMobiusLogCongruenceShiftCorrelation
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredMobiusLogDivisorPairBlock_eq_compatiblePairBlock]

/-- Positive-shift aggregate in modulus-indexed lcm-progression form. -/
def nonAliasingFejerMobiusLogLCMProgressionAggregate
    (X N m : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation
      X N m h

/-- Exact equality with the previous congruence aggregate. -/
theorem nonAliasingFejerMobiusLogLCMProgressionAggregate_eq_congruence
    (X N m : ℕ) :
    nonAliasingFejerMobiusLogLCMProgressionAggregate X N m =
      nonAliasingFejerMobiusLogCongruenceAggregate X N m := by
  unfold nonAliasingFejerMobiusLogLCMProgressionAggregate
    nonAliasingFejerMobiusLogCongruenceAggregate
  apply Finset.sum_congr rfl
  intro h hh
  exact
    nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation_eq_congruence
      X N m h

/-- Exact remaining supplier in modulus-indexed lcm-progression form. -/
def SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerMobiusLogLCMProgressionAggregate
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- The lcm-progression supplier implies the previous congruence supplier. -/
theorem mobiusLogLCMProgressionBound_to_congruenceBound
    (hlcm :
      SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound) :
    SevenEighthsBoundaryMinimalMobiusLogCongruenceBound := by
  intro hgraded
  rcases hlcm hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [← nonAliasingFejerMobiusLogLCMProgressionAggregate_eq_congruence]
  exact hbound j hj m hm0 hm1

/-- Conversely, the prior exact congruence supplier gives the lcm-progression
form through the proved finite reindexing. -/
theorem congruenceBound_to_mobiusLogLCMProgressionBound
    (hcong : SevenEighthsBoundaryMinimalMobiusLogCongruenceBound) :
    SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound := by
  intro hgraded
  rcases hcong hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [nonAliasingFejerMobiusLogLCMProgressionAggregate_eq_congruence]
  exact hbound j hj m hm0 hm1

/-- The new progression statement has exactly the same logical strength as the
previous congruence statement. -/
theorem mobiusLogLCMProgressionBound_iff_congruenceBound :
    SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound ↔
      SevenEighthsBoundaryMinimalMobiusLogCongruenceBound := by
  constructor
  · exact mobiusLogLCMProgressionBound_to_congruenceBound
  · exact congruenceBound_to_mobiusLogLCMProgressionBound

/-- The lcm-progression theorem reaches the existing seven-eighths finite
partial-prime discrepancy target. -/
theorem mobiusLogLCMProgressionBound_to_partialDiscrepancy
    (hlcm :
      SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  mobiusLogCongruenceBound_to_partialDiscrepancy
    (mobiusLogLCMProgressionBound_to_congruenceBound hlcm)
    hgraded

/-- Absolute progression counting without centered cancellation remains at the
pair-counting exponent two. -/
def naiveMobiusLogLCMProgressionExponent : ℝ := 2

/-- The exact target exponent is still three halves. -/
def mobiusLogLCMProgressionTargetExponent : ℝ :=
  (3 : ℝ) / 2

/-- Progression cardinality by itself does not bridge the half-power gap. -/
theorem mobiusLogLCMProgressionTargetExponent_lt_naive :
    mobiusLogLCMProgressionTargetExponent <
      naiveMobiusLogLCMProgressionExponent := by
  norm_num [mobiusLogLCMProgressionTargetExponent,
    naiveMobiusLogLCMProgressionExponent]

end GRWTSK.RiemannHypothesis
