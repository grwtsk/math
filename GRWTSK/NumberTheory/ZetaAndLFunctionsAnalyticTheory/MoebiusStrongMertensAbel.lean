/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupMertensAbel
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-specific finite Mertens-Abel absolute-prefix transfer

The repository already has the exact signed equation
  sampleResidue (N+1) =
    sum_{k=1}^N M(k)*(1/sqrt(k)-1/sqrt(k+1)).
We use that SAME identity, rather than inventing another waveform or
assuming the RH-strength sampled pickup growth.

The positive decreasing square-root widths permit a quantitative
one-sided estimate from *supplied actual Mertens prefix values*.
A second formula bounds those real weights by a two-zone arithmetic
budget: trivial exact Mobius coefficients before K, and an
explicit PNT-Mertens tail |M(k)|<=delta*k on/after K.

Classical prime number theory supplies, for each delta>0, some
sufficiently large K. The exact theorem is a separately documented
EXTERNAL arithmetic input, not derived by the present Lean source
or imported from an incompatible Mathlib revision.

Neither PNT nor this Abel bound yields every-positive-rate RH growth.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongMertensAbel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The original positive difference of reciprocal square-root
weights at the consecutive ORIGINAL arithmetic indices. -/
def abelWidth (k : ℕ) : ℝ :=
  (Real.sqrt (k + 1 : ℕ))⁻¹ -
    (Real.sqrt (k + 2 : ℕ))⁻¹

/-- Positive original Abel weight; no complex or signed
line geometry is involved in this monotone scalar difference. -/
theorem abelWidth_nonneg (k : ℕ) : 0 ≤ abelWidth k := by
  have hk : (0 : ℝ) < Real.sqrt (k + 1 : ℕ) := by positivity
  have hle :
      Real.sqrt (k + 1 : ℕ) ≤
        Real.sqrt (k + 2 : ℕ) :=
    Real.sqrt_le_sqrt (by positivity)
  unfold abelWidth
  exact sub_nonneg.mpr (inv_anti₀ hk hle)

/-- Keep the exact original signed Mertens prefixes and positive
weights. This is a source-faithful re-expression of the published
Mertens-Abel result, including its n=1 endpoint. -/
theorem sampleResidue_eq_mertens_widths (N : ℕ) :
    sampleResidue (N + 1) =
      ∑ k ∈ Finset.range N,
        mertensPrefix ((k + 1 : ℕ) : ℝ) * abelWidth k := by
  rw [sampleResidue_abel]
  unfold mertensAbelTerm abelWidth
  rfl

/-- Any actual, pointwise Mertens envelope transfers to a
finite signed pickup bound, at the exact original prefix indices. -/
theorem sampleResidue_abs_le_prefix_weighted
    (N : ℕ) (B : ℕ → ℝ)
    (hB : ∀ k ∈ Finset.range N,
      |mertensPrefix ((k + 1 : ℕ) : ℝ)| ≤ B (k + 1)) :
    |sampleResidue (N + 1)| ≤
      ∑ k ∈ Finset.range N, B (k + 1) * abelWidth k := by
  rw [sampleResidue_eq_mertens_widths]
  calc
    |∑ k ∈ Finset.range N,
      mertensPrefix ((k + 1 : ℕ) : ℝ) * abelWidth k| ≤
        ∑ k ∈ Finset.range N,
          |mertensPrefix ((k + 1 : ℕ) : ℝ) * abelWidth k| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ k ∈ Finset.range N,
          |mertensPrefix ((k + 1 : ℕ) : ℝ)| * abelWidth k := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [abs_mul, abs_of_nonneg (abelWidth_nonneg k)]
    _ ≤ ∑ k ∈ Finset.range N, B (k + 1) * abelWidth k := by
      apply Finset.sum_le_sum
      intro k hk
      exact mul_le_mul_of_nonneg_right (hB k hk) (abelWidth_nonneg k)

/-- A finite genuine PNT/Mertens tail proposition, not a free
source packet bound. The cutoff and relative error are explicit. -/
def ActualMertensTailAt (K : ℕ) (δ : ℝ) : Prop :=
  ∀ n : ℕ, K ≤ n →
    |mertensPrefix (n : ℝ)| ≤ δ * (n : ℝ)

/-- This is precisely the classical M(x)=o(x) statement restricted
to integer indices. It is an EXTERNAL PNT-strength proposition:
this source only uses it when explicitly provided. -/
def ClassicalPNTMertensTail : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ K : ℕ, ActualMertensTailAt K δ

/-- The actual two-zone source prefix allowance. The head is paid
by the unconditional |M(k)|<=k, and the tail is paid by delta*k
only when the ORIGINAL finite prefix passes cutoff K. -/
def twoZoneMertensBudget (K : ℕ) (δ : ℝ) (n : ℕ) : ℝ :=
  if n < K then (n : ℝ) else δ * (n : ℝ)

/-- The unconditional trivial finite head plus a declared genuine
PNT-rate Mertens tail yields the actual sampled pickup bound.
No assumption is made about the signed sum being small. -/
theorem sampleResidue_abs_le_twoZone
    (K N : ℕ) (δ : ℝ)
    (hM : ActualMertensTailAt K δ) :
    |sampleResidue (N + 1)| ≤
      ∑ k ∈ Finset.range N,
        twoZoneMertensBudget K δ (k + 1) * abelWidth k := by
  apply sampleResidue_abs_le_prefix_weighted
  intro k hk
  by_cases h : k + 1 < K
  · simp only [twoZoneMertensBudget, if_pos h]
    simpa only [Nat.cast_add, Nat.cast_one] using
      (mertensPrefix_abs_le
        (Nat.cast_nonneg (k + 1)))
  · have hK : K ≤ k + 1 := Nat.le_of_not_gt h
    simpa only [twoZoneMertensBudget, if_neg h] using
      hM (k + 1) hK

/-- The original positive widths telescope, including the
k=0 boundary, and do not accidentally charge k=0 twice. -/
theorem abelWidth_sum (N : ℕ) :
    (∑ k ∈ Finset.range N, abelWidth k) =
      1 - (Real.sqrt (N + 1 : ℕ))⁻¹ := by
  induction N with
  | zero => norm_num [abelWidth]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [abelWidth]
      ring

/-- Exact finite Abel weight first moment. This makes the PNT
tail budget inspectable without hiding a growing N-factor. -/
theorem abelWidth_weighted_sum (N : ℕ) :
    (∑ k ∈ Finset.range N, ((k + 1 : ℕ) : ℝ) * abelWidth k) =
      (∑ k ∈ Finset.range N, (Real.sqrt (k + 1 : ℕ))⁻¹) -
        (N : ℝ) * (Real.sqrt (N + 1 : ℕ))⁻¹ := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ, ih]
      unfold abelWidth
      push_cast
      ring


/-- A small, fully elementary summability estimate for the
ORIGINAL reciprocal-square-root Abel widths. It has no
Mertens/RH/PNT assumption. -/
theorem inv_sqrt_succ_le_twice_gap (k : ℕ) :
    (Real.sqrt (k + 1 : ℕ))⁻¹ ≤
      2 * (Real.sqrt (k + 1 : ℕ) - Real.sqrt (k : ℕ)) := by
  let a : ℝ := Real.sqrt (k + 1 : ℕ)
  let b : ℝ := Real.sqrt (k : ℕ)
  have ha : 0 < a := by dsimp [a]; positivity
  have ha2 : a ^ 2 = (k + 1 : ℕ) := by
    dsimp [a]
    rw [Real.sq_sqrt (by positivity)]
  have hb2 : b ^ 2 = (k : ℝ) := by
    dsimp [b]
    rw [Real.sq_sqrt (by positivity)]
  have hcore : 1 ≤ 2 * (a - b) * a := by
    nlinarith [sq_nonneg (a - b)]
  have h := (div_le_iff₀ ha).2 hcore
  simpa only [one_div] using h

/-- Elementary telescoping of adjacent original square roots. -/
theorem sqrt_successive_gap_sum (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (Real.sqrt (k + 1 : ℕ) - Real.sqrt (k : ℕ))) =
      Real.sqrt (N : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      ring

/-- This is the actual finite p=1/2 harmonic bound, with its
constant two and every k=0 endpoint retained. -/
theorem reciprocal_sqrt_sum_le_two_sqrt (N : ℕ) :
    (∑ k ∈ Finset.range N,
      (Real.sqrt (k + 1 : ℕ))⁻¹) ≤
      2 * Real.sqrt (N : ℝ) := by
  calc
    _ ≤ ∑ k ∈ Finset.range N,
          2 * (Real.sqrt (k + 1 : ℕ) - Real.sqrt (k : ℕ)) := by
      apply Finset.sum_le_sum
      intro k hk
      exact inv_sqrt_succ_le_twice_gap k
    _ = 2 * Real.sqrt (N : ℝ) := by
      rw [← Finset.mul_sum, sqrt_successive_gap_sum]

/-- The PNT-relative prefix head is paid exactly, while its
tail costs only delta times the old Abel first moment.
No constant depends on a hidden target strong-packet bound. -/
theorem twoZone_budget_le_head_plus_tail
    (K N : ℕ) (δ : ℝ) (hδ : 0 ≤ δ) :
    (∑ k ∈ Finset.range N,
      twoZoneMertensBudget K δ (k + 1) * abelWidth k) ≤
      (K : ℝ) +
        δ * (∑ k ∈ Finset.range N,
          ((k + 1 : ℕ) : ℝ) * abelWidth k) := by
  have hterm (k : ℕ) :
      twoZoneMertensBudget K δ (k + 1) * abelWidth k ≤
        (K : ℝ) * abelWidth k +
        δ * ((k + 1 : ℕ) : ℝ) * abelWidth k := by
    by_cases hk : k + 1 < K
    · have hbound : ((k + 1 : ℕ) : ℝ) ≤ K := by
        exact_mod_cast (Nat.le_of_lt hk)
      simp only [twoZoneMertensBudget, if_pos hk]
      have hw : 0 ≤ abelWidth k := abelWidth_nonneg k
      nlinarith [mul_nonneg hδ (mul_nonneg
        (Nat.cast_nonneg (k + 1)) hw)]
    · simp only [twoZoneMertensBudget, if_neg hk]
      have hw : 0 ≤ abelWidth k := abelWidth_nonneg k
      have hK : (0 : ℝ) ≤ K := Nat.cast_nonneg _
      nlinarith
  have hsum :
      (∑ k ∈ Finset.range N,
        twoZoneMertensBudget K δ (k + 1) * abelWidth k) ≤
      (K : ℝ) * (∑ k ∈ Finset.range N, abelWidth k) +
        δ * (∑ k ∈ Finset.range N,
          ((k + 1 : ℕ) : ℝ) * abelWidth k) := by
    calc
      _ ≤ ∑ k ∈ Finset.range N,
          ((K : ℝ) * abelWidth k +
            δ * ((k + 1 : ℕ) : ℝ) * abelWidth k) := by
        apply Finset.sum_le_sum
        intro k hk
        exact hterm k
      _ = _ := by
        rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
  have hwidth :
      (∑ k ∈ Finset.range N, abelWidth k) ≤ 1 := by
    rw [abelWidth_sum]
    have hpos : 0 ≤ (Real.sqrt (N + 1 : ℕ))⁻¹ := by positivity
    linarith
  have hK : (0 : ℝ) ≤ K := Nat.cast_nonneg _
  exact hsum.trans (add_le_add_right
    (mul_le_mul_of_nonneg_left hwidth hK) _)

/-- The exact weighted Abel first moment is bounded by
the ordinary finite half-harmonic sum. No Mertens input. -/
theorem abelWidth_weighted_sum_le_two_sqrt (N : ℕ) :
    (∑ k ∈ Finset.range N,
      ((k + 1 : ℕ) : ℝ) * abelWidth k) ≤
      2 * Real.sqrt (N : ℝ) := by
  rw [abelWidth_weighted_sum]
  have hpos : 0 ≤ (N : ℝ) *
      (Real.sqrt (N + 1 : ℕ))⁻¹ := by positivity
  exact (sub_le_self _ hpos).trans (reciprocal_sqrt_sum_le_two_sqrt N)

/-- A genuine, quantitative PNT-Mertens-to-ORIGINAL sampled pickup
transfer. Its input is ONLY a relative Mertens prefix tail,
not a sign cancellation claim for the dense original Gram. -/
theorem sampleResidue_abs_le_head_add_tail
    (K N : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ) :
    |sampleResidue (N + 1)| ≤
      (K : ℝ) + 2 * δ * Real.sqrt (N : ℝ) := by
  have h0 := sampleResidue_abs_le_twoZone K N δ hM
  have h1 := twoZone_budget_le_head_plus_tail K N δ hδ
  have h2 := abelWidth_weighted_sum_le_two_sqrt N
  have h3 : δ * (∑ k ∈ Finset.range N,
          ((k + 1 : ℕ) : ℝ) * abelWidth k) ≤
      δ * (2 * Real.sqrt (N : ℝ)) :=
    mul_le_mul_of_nonneg_left h2 hδ
  linarith

/-- The exact original log-integer pickup (including its endpoint)
inherits a one-sided Mertens-prefix tail bound; no RH premise. -/
theorem wholePickup_log_nat_abs_le_Mertens_head_tail
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    (n : ℕ) (hn : 1 ≤ n) :
    |wholePickup (Real.log (n : ℝ))| ≤
      2 * (K : ℝ) + 4 * δ * Real.sqrt (n : ℝ) := by
  have he := wholePickup_log_eq_sampleResidue hn
  have hn' : n - 1 + 1 = n := Nat.sub_add_cancel hn
  have hb := sampleResidue_abs_le_head_add_tail K (n - 1) δ hδ hM
  rw [hn'] at hb
  have hs : Real.sqrt (n - 1 : ℕ) ≤ Real.sqrt (n : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.sub_le n 1)
  have h := mul_le_mul_of_nonneg_left hs (mul_nonneg
    (by norm_num : (0 : ℝ) ≤ 2) hδ)
  rw [he, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ (2:ℝ))]
  linarith


/-- The PNT-relative prefix bound now controls the SAME original
logarithmically sampled actual pickup with the exact floor cutoff,
not an invented smooth arithmetic surrogate. -/
theorem sampledPickup_abs_le_Mertens_tail
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {u : ℝ} (hu : 0 ≤ u) :
    |sampledPickup u| ≤
      2 * (K : ℝ) + 4 * δ * Real.sqrt (Real.exp u) := by
  let N : ℕ := ⌊Real.exp u⌋₊
  have hN : 1 ≤ N := floor_exp_ge_one hu
  have hb := wholePickup_log_nat_abs_le_Mertens_head_tail
    K δ hδ hM N hN
  have hfloor : (N : ℝ) ≤ Real.exp u :=
    Nat.floor_le (Real.exp_pos u).le
  have hsqrt := Real.sqrt_le_sqrt hfloor
  have hmul := mul_le_mul_of_nonneg_left hsqrt
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 4) hδ)
  change |wholePickup (Real.log (N : ℝ))| ≤ _
  linarith

/-- Exact drift already proved by the pinned source: a genuine
Mertens tail gives a quantitative envelope for the ORIGINAL pickup
itself, not only its sampled approximation. No RH is assumed. -/
theorem wholePickup_abs_le_Mertens_head_tail
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hM : ActualMertensTailAt K δ)
    {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u| ≤
      2 * (K : ℝ) + 4 * δ * Real.sqrt (Real.exp u) +
        Real.exp (-u / 2) := by
  have hsample := sampledPickup_abs_le_Mertens_tail K δ hδ hM hu
  have hdrift := sampling_difference_abs_le hu
  have htriangle :
      |wholePickup u| ≤
        |wholePickup u - sampledPickup u| + |sampledPickup u| := by
    convert abs_add_le (wholePickup u - sampledPickup u) (sampledPickup u)
      using 1 <;> ring
  linarith

end GRWTSK.NumberTheory.Moebius.StrongMertensAbel
