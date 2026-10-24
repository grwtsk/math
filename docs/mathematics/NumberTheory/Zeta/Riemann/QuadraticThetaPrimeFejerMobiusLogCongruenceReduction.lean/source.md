# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogCongruenceReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `581428da0f5a73c37fad0f70fe5c3138e7c241b1` · SHA-256 `c4ea70851de20c55cc155e6ddc5c15ec1f767ac4fb3abec895d046cf6a4bec80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerVonMangoldtShiftReduction
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Möbius-log congruence reduction of the centered von Mangoldt shift frontier

The preceding packet reduces the seven-eighths Fejer obstruction to the signed
aggregate shifted correlation of the centered von Mangoldt atom

  Lambda(n) - 1.

This file expands each centered atom by the exact Dirichlet-convolution identity

  Lambda = mu * log.

The centering term `-1` is retained as a distinguished anchor index.  This is
important: splitting

  (Lambda(n)-1)(Lambda(n+h)-1)

into four independently estimated channels would expose a constant channel with
naive pair-counting exponent `2`, strictly above the target exponent `3/2`.
The augmented index keeps all four channels in one exact finite sum so their
cancellation cannot be silently discarded.

For genuine Möbius-log divisor witnesses `(d,a)` and `(e,b)` satisfying

  d*a = n,
  e*b = n+h,

the source proves the necessary congruence compatibility

  gcd(d,e) | h.

Thus the open arithmetic theorem is now an exact centered Möbius-log
divisor-pair correlation supported on shift-compatible divisor pairs.

No Möbius cancellation estimate, divisor-pair counting estimate, centered von
Mangoldt shift estimate, threshold descent, or Riemann Hypothesis result is
proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CENTERED_MOBIUS_LOG_EXPANSION_SOURCE_PROVED /
DIVISOR_PAIR_GCD_SHIFT_COMPATIBILITY_SOURCE_PROVED /
CENTERING_PRESERVING_CONGRUENCE_PACKET_TYPED /
SEVEN_EIGHTHS_MOBIUS_LOG_CONGRUENCE_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Real-valued Möbius coefficient. -/
def mobiusReal (n : ℕ) : ℝ :=
  ((ArithmeticFunction.moebius n : ℤ) : ℝ)

/-- One genuine Möbius-log convolution term. -/
def mobiusLogDivisorTerm (p : ℕ × ℕ) : ℝ :=
  mobiusReal p.1 * Real.log p.2

/-- Augmented index for the centered convolution.  `none` is the exact
centering anchor `-1`; `some p` is a genuine divisor-antidiagonal witness. -/
def centeredMobiusLogIndexSet
    (n : ℕ) : Finset (Option (ℕ × ℕ)) :=
  insert none
    (n.divisorsAntidiagonal.image
      (fun p : ℕ × ℕ => some p))

/-- Coefficient attached to one augmented centered convolution index. -/
def centeredMobiusLogTerm :
    Option (ℕ × ℕ) → ℝ
  | none => -1
  | some p => mobiusLogDivisorTerm p

@[simp]
theorem none_mem_centeredMobiusLogIndexSet
    (n : ℕ) :
    (none : Option (ℕ × ℕ)) ∈
      centeredMobiusLogIndexSet n := by
  simp [centeredMobiusLogIndexSet]

@[simp]
theorem some_mem_centeredMobiusLogIndexSet_iff
    {n : ℕ} {p : ℕ × ℕ} :
    some p ∈ centeredMobiusLogIndexSet n ↔
      p ∈ n.divisorsAntidiagonal := by
  simp [centeredMobiusLogIndexSet]

@[simp]
theorem centeredMobiusLogTerm_none :
    centeredMobiusLogTerm none = -1 := by
  rfl

@[simp]
theorem centeredMobiusLogTerm_some
    (p : ℕ × ℕ) :
    centeredMobiusLogTerm (some p) =
      mobiusLogDivisorTerm p := by
  rfl

/-- Exact finite augmented convolution sum. -/
def centeredMobiusLogIndexSum
    (n : ℕ) : ℝ :=
  ∑ u ∈ centeredMobiusLogIndexSet n,
    centeredMobiusLogTerm u

/-- The augmented sum is the ordinary Möbius-log convolution minus one. -/
theorem centeredMobiusLogIndexSum_eq_raw
    (n : ℕ) :
    centeredMobiusLogIndexSum n =
      (∑ p ∈ n.divisorsAntidiagonal,
        mobiusLogDivisorTerm p) - 1 := by
  unfold centeredMobiusLogIndexSum centeredMobiusLogIndexSet
  have hnone :
      (none : Option (ℕ × ℕ)) ∉
        n.divisorsAntidiagonal.image
          (fun p : ℕ × ℕ => some p) := by
    simp
  rw [Finset.sum_insert hnone]
  have himage :
      (∑ u ∈ n.divisorsAntidiagonal.image
          (fun p : ℕ × ℕ => some p),
        centeredMobiusLogTerm u) =
      ∑ p ∈ n.divisorsAntidiagonal,
        mobiusLogDivisorTerm p := by
    rw [Finset.sum_image]
    · rfl
    · intro a ha b hb hab
      exact Option.some.inj hab
  rw [himage]
  simp [centeredMobiusLogTerm]
  ring

/-- Mathlib's exact identity `mu * log = Lambda`, evaluated at one integer. -/
theorem vonMangoldt_eq_mobiusLogDivisorSum
    (n : ℕ) :
    ArithmeticFunction.vonMangoldt n =
      ∑ p ∈ n.divisorsAntidiagonal,
        mobiusLogDivisorTerm p := by
  have h :=
    congrArg
      (fun f : ArithmeticFunction ℝ => f n)
      ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
  simpa [ArithmeticFunction.mul_apply,
    ArithmeticFunction.log_apply,
    ArithmeticFunction.intCoe_apply,
    mobiusLogDivisorTerm, mobiusReal] using h.symm

/-- Exact centered von Mangoldt expansion with the anchor retained. -/
theorem centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum
    (n : ℕ) :
    centeredVonMangoldtAtom n =
      centeredMobiusLogIndexSum n := by
  rw [centeredMobiusLogIndexSum_eq_raw,
    ← vonMangoldt_eq_mobiusLogDivisorSum]
  rfl

/-- Fejer-weighted centered Möbius-log atom. -/
def nonAliasingFejerWeightedCenteredMobiusLogAtom
    (X N m n : ℕ) : ℝ :=
  nonAliasingFejerPrefixWeight X N m n *
    centeredMobiusLogIndexSum n

/-- The augmented Möbius-log atom is exactly the weighted centered von
Mangoldt atom used by the previous packet. -/
theorem nonAliasingFejerWeightedCenteredMobiusLogAtom_eq_vonMangoldt
    (X N m n : ℕ) :
    nonAliasingFejerWeightedCenteredMobiusLogAtom X N m n =
      nonAliasingFejerWeightedVonMangoldtAtom X N m n := by
  unfold nonAliasingFejerWeightedCenteredMobiusLogAtom
    nonAliasingFejerWeightedVonMangoldtAtom
  rw [← centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum]

/-- Divisor congruence relation underlying one shifted pair. -/
def ShiftDivisorCongruence
    (n h d e : ℕ) : Prop :=
  d ∣ n ∧ e ∣ n + h

/-- Any simultaneous divisor witnesses force the standard gcd compatibility
condition on the shift. -/
theorem gcd_dvd_shift_of_shiftDivisorCongruence
    {n h d e : ℕ}
    (hc : ShiftDivisorCongruence n h d e) :
    Nat.gcd d e ∣ h := by
  rcases hc with ⟨hd, he⟩
  have hg_n :
      Nat.gcd d e ∣ n :=
    dvd_trans (Nat.gcd_dvd_left d e) hd
  have hg_nh :
      Nat.gcd d e ∣ n + h :=
    dvd_trans (Nat.gcd_dvd_right d e) he
  exact (Nat.dvd_add_iff_left hg_n).mp hg_nh

/-- A genuine divisor-antidiagonal witness supplies divisibility by its first
coordinate. -/
theorem fst_dvd_of_mem_divisorsAntidiagonal
    {n : ℕ} {p : ℕ × ℕ}
    (hp : p ∈ n.divisorsAntidiagonal) :
    p.1 ∣ n := by
  have hprod :=
    (Nat.mem_divisorsAntidiagonal.mp hp).1
  exact ⟨p.2, hprod.symm⟩

/-- Compatibility predicate on augmented centered indices.  Anchor channels
are retained unconditionally; two genuine divisor indices must satisfy the
gcd-shift condition. -/
def CenteredMobiusLogPairCompatible
    (h : ℕ)
    (u v : Option (ℕ × ℕ)) : Prop :=
  match u, v with
  | some p, some q => Nat.gcd p.1 q.1 ∣ h
  | _, _ => True

@[simp]
theorem centeredMobiusLogPairCompatible_none_left
    (h : ℕ) (v : Option (ℕ × ℕ)) :
    CenteredMobiusLogPairCompatible h none v := by
  cases v <;> trivial

@[simp]
theorem centeredMobiusLogPairCompatible_none_right
    (h : ℕ) (u : Option (ℕ × ℕ)) :
    CenteredMobiusLogPairCompatible h u none := by
  cases u <;> trivial

@[simp]
theorem centeredMobiusLogPairCompatible_some_some
    (h : ℕ) (p q : ℕ × ℕ) :
    CenteredMobiusLogPairCompatible h (some p) (some q) ↔
      Nat.gcd p.1 q.1 ∣ h := by
  rfl

/-- Every pair of augmented indices that actually occurs at `n` and `n+h` is
compatible. -/
theorem centeredMobiusLogIndexPair_compatible
    {n h : ℕ}
    {u v : Option (ℕ × ℕ)}
    (hu : u ∈ centeredMobiusLogIndexSet n)
    (hv : v ∈ centeredMobiusLogIndexSet (n + h)) :
    CenteredMobiusLogPairCompatible h u v := by
  cases u with
  | none =>
      exact centeredMobiusLogPairCompatible_none_left h v
  | some p =>
      cases v with
      | none =>
          exact centeredMobiusLogPairCompatible_none_right h (some p)
      | some q =>
          rw [centeredMobiusLogPairCompatible_some_some]
          have hp :
              p ∈ n.divisorsAntidiagonal :=
            some_mem_centeredMobiusLogIndexSet_iff.mp hu
          have hq :
              q ∈ (n + h).divisorsAntidiagonal :=
            some_mem_centeredMobiusLogIndexSet_iff.mp hv
          exact gcd_dvd_shift_of_shiftDivisorCongruence
            ⟨fst_dvd_of_mem_divisorsAntidiagonal hp,
              fst_dvd_of_mem_divisorsAntidiagonal hq⟩

/-- Finite compatible augmented pair index. -/
def centeredMobiusLogCompatiblePairIndexSet
    (n h : ℕ) :
    Finset (Option (ℕ × ℕ) × Option (ℕ × ℕ)) :=
  (centeredMobiusLogIndexSet n ×ˢ
      centeredMobiusLogIndexSet (n + h)).filter
    (fun uv =>
      CenteredMobiusLogPairCompatible h uv.1 uv.2)

@[simp]
theorem mem_centeredMobiusLogCompatiblePairIndexSet_iff
    {n h : ℕ}
    {uv : Option (ℕ × ℕ) × Option (ℕ × ℕ)} :
    uv ∈ centeredMobiusLogCompatiblePairIndexSet n h ↔
      uv.1 ∈ centeredMobiusLogIndexSet n ∧
      uv.2 ∈ centeredMobiusLogIndexSet (n + h) := by
  constructor
  · intro huv
    have hfilter := Finset.mem_filter.mp huv
    exact Finset.mem_product.mp hfilter.1
  · rintro ⟨hu, hv⟩
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_product.mpr ⟨hu, hv⟩,
        centeredMobiusLogIndexPair_compatible hu hv⟩

/-- The compatibility filter removes no actual term; it records a theorem
satisfied by every genuine pair. -/
theorem centeredMobiusLogCompatiblePairIndexSet_eq_product
    (n h : ℕ) :
    centeredMobiusLogCompatiblePairIndexSet n h =
      centeredMobiusLogIndexSet n ×ˢ
        centeredMobiusLogIndexSet (n + h) := by
  ext uv
  simp [mem_centeredMobiusLogCompatiblePairIndexSet_iff]

/-- Exact centered pair block, with all anchor and genuine channels retained in
one finite sum. -/
def centeredMobiusLogCompatiblePairBlock
    (n h : ℕ) : ℝ :=
  ∑ uv ∈ centeredMobiusLogCompatiblePairIndexSet n h,
    centeredMobiusLogTerm uv.1 *
      centeredMobiusLogTerm uv.2

/-- The compatible pair block is exactly the product of the two centered
Möbius-log expansions. -/
theorem centeredMobiusLogCompatiblePairBlock_eq_indexSum_mul
    (n h : ℕ) :
    centeredMobiusLogCompatiblePairBlock n h =
      centeredMobiusLogIndexSum n *
        centeredMobiusLogIndexSum (n + h) := by
  unfold centeredMobiusLogCompatiblePairBlock
  rw [centeredMobiusLogCompatiblePairIndexSet_eq_product]
  unfold centeredMobiusLogIndexSum
  rw [Finset.sum_product']
  simp_rw [← Finset.mul_sum]
  rw [← Finset.sum_mul]

/-- Consequently the block is exactly the product of centered von Mangoldt
atoms. -/
theorem centeredMobiusLogCompatiblePairBlock_eq_centeredVonMangoldt_mul
    (n h : ℕ) :
    centeredMobiusLogCompatiblePairBlock n h =
      centeredVonMangoldtAtom n *
        centeredVonMangoldtAtom (n + h) := by
  rw [centeredMobiusLogCompatiblePairBlock_eq_indexSum_mul,
    ← centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum,
    ← centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum]

/-- Shift correlation written as a finite sum of compatible centered
Möbius-log divisor-pair blocks. -/
def nonAliasingFejerMobiusLogCongruenceShiftCorrelation
    (X N m h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X - h),
    (nonAliasingFejerPrefixWeight X N m n *
      nonAliasingFejerPrefixWeight X N m (n + h)) *
      centeredMobiusLogCompatiblePairBlock n h

/-- The congruence form is exactly the centered von Mangoldt shifted
correlation from the previous packet. -/
theorem nonAliasingFejerMobiusLogCongruenceShiftCorrelation_eq_vonMangoldt
    (X N m h : ℕ) :
    nonAliasingFejerMobiusLogCongruenceShiftCorrelation X N m h =
      nonAliasingFejerVonMangoldtShiftCorrelation X N m h := by
  unfold nonAliasingFejerMobiusLogCongruenceShiftCorrelation
    nonAliasingFejerVonMangoldtShiftCorrelation
    nonAliasingFejerWeightedVonMangoldtAtom
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredMobiusLogCompatiblePairBlock_eq_centeredVonMangoldt_mul]
  ring

/-- Aggregate over all admissible positive shifts. -/
def nonAliasingFejerMobiusLogCongruenceAggregate
    (X N m : ℕ) : ℝ :=
  ∑ h ∈ fejerPositiveLagSet X,
    nonAliasingFejerMobiusLogCongruenceShiftCorrelation
      X N m h

/-- Exact agreement with the centered von Mangoldt shifted aggregate. -/
theorem nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt
    (X N m : ℕ) :
    nonAliasingFejerMobiusLogCongruenceAggregate X N m =
      ∑ h ∈ fejerPositiveLagSet X,
        nonAliasingFejerVonMangoldtShiftCorrelation
          X N m h := by
  unfold nonAliasingFejerMobiusLogCongruenceAggregate
  apply Finset.sum_congr rfl
  intro h hh
  exact
    nonAliasingFejerMobiusLogCongruenceShiftCorrelation_eq_vonMangoldt
      X N m h

/-- Exact remaining arithmetic supplier in centered Möbius-log congruence
form. -/
def SevenEighthsBoundaryMinimalMobiusLogCongruenceBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerMobiusLogCongruenceAggregate
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ)
              ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- The exact congruence supplier is definitionally equivalent to the previous
centered von Mangoldt shifted supplier. -/
theorem mobiusLogCongruenceBound_to_vonMangoldtShiftCorrelationBound
    (hcong :
      SevenEighthsBoundaryMinimalMobiusLogCongruenceBound) :
    SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound := by
  intro hgraded
  rcases hcong hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [← nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt]
  exact hbound j hj m hm0 hm1

/-- Conversely, the previous centered von Mangoldt supplier gives the exact
Möbius-log congruence form by the proved finite identity. -/
theorem vonMangoldtShiftCorrelationBound_to_mobiusLogCongruenceBound
    (hΛ :
      SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound) :
    SevenEighthsBoundaryMinimalMobiusLogCongruenceBound := by
  intro hgraded
  rcases hΛ hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  rw [nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt]
  exact hbound j hj m hm0 hm1

/-- The two frontier statements are exactly equivalent; the new packet changes
the arithmetic representation, not the logical strength. -/
theorem mobiusLogCongruenceBound_iff_vonMangoldtShiftCorrelationBound :
    SevenEighthsBoundaryMinimalMobiusLogCongruenceBound ↔
      SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound := by
  constructor
  · exact mobiusLogCongruenceBound_to_vonMangoldtShiftCorrelationBound
  · exact vonMangoldtShiftCorrelationBound_to_mobiusLogCongruenceBound

/-- The Möbius-log congruence theorem therefore reaches the already closed
seven-eighths finite partial-prime discrepancy target. -/
theorem mobiusLogCongruenceBound_to_partialDiscrepancy
    (hcong :
      SevenEighthsBoundaryMinimalMobiusLogCongruenceBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  vonMangoldtShiftCorrelationBound_to_partialDiscrepancy
    (mobiusLogCongruenceBound_to_vonMangoldtShiftCorrelationBound
      hcong)
    hgraded

/-- Naive channelwise pair counting has exponent two. -/
def naiveCenteredMobiusLogChannelExponent : ℝ := 2

/-- The exact target exponent remains three halves. -/
def centeredMobiusLogTargetExponent : ℝ :=
  (3 : ℝ) / 2

/-- Discarding the centering cancellation and estimating the constant channel
by pair cardinality misses the target by a half power. -/
theorem centeredMobiusLogTargetExponent_lt_naiveChannelExponent :
    centeredMobiusLogTargetExponent <
      naiveCenteredMobiusLogChannelExponent := by
  norm_num [centeredMobiusLogTargetExponent,
    naiveCenteredMobiusLogChannelExponent]

/-- Algebraic expansion that must not be combined with independent absolute
estimates for all four channels. -/
theorem centeredProduct_fourChannel_identity
    (A B : ℝ) :
    (A - 1) * (B - 1) =
      A * B - A - B + 1 := by
  ring

end GRWTSK.RiemannHypothesis
```
