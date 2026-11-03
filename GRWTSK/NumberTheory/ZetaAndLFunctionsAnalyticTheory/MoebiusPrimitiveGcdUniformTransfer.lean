/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableGcdStrata
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-exact primitive gcd packets at shifted time and their uniform transfer

The previous source has an ORIGINAL squarefree incomparable, low-gcd
ordered pair packet:
    smallGcdIncomparableCross H M D T,
with the unchanged source mass mu(m)mu(n)K_T(m,n).

The new actual causal time-shift theorem gives for squarefree
m=g*a,n=g*b:
    mu(m)mu(n)K_T(m,n)
      = (1/g)*mu(a)mu(b)*K_(T-log g)(a,b).

We therefore define a *fully masked*, source-labelled primitive
packet for each original integer g with ALL the old labels:
- actual m=g*a,n=g*b in the unchanged endpointIndex T;
- both original source indices squarefree, a,b>=2 coprime,
  g coprime to each reduced factor;
- the literal original highHighSelector at (g*a,g*b), same T,
  including the original Putnam gap, physical overlap threshold
  and projective angular collar;
- the original causal kernel K_(T-log g)(a,b), not an
  unshifted or homogeneous surrogate.

The *full* original double-to-triple gcd reindex remains
EXPLICITLY UNPROVED in Lean, in ExactPrimitiveGcdReturnTarget.
It is not an axiom, not a published mathematical proof capsule
and not presumed by the finite triangle theorem below.

The finite WEIGHTED SIGNED TRIANGLE theorem is unconditional
for arbitrary real primitive packet amplitudes:
    |sum_g A_g/g| <= sum_g |A_g|/g.

If one independently proved a uniform primitive signed estimate
    |A_g(T)| <= B*exp(epsilon*(T-log g))
for EVERY relevant g with the SAME B,epsilon, then an elementary
positive power sum gives
    |original small-gcd source| <=
        B*(1+1/epsilon)*exp(epsilon*T).
No exponent is lost in the gcd sum, because the time shift gives
a factor g^(-1-epsilon). The positive sum inequality and the
original reindex are separately UNPROVED Lean target propositions.
More importantly, the needed UNIFORM primitive signed premise
is RH-strength; it is NOT supplied here by fixed-g Chowla,
Mertens PNT, Kakeya geometry or a finite model.

This source records the exact bridge and the correctly scoped
conditional consumer without pretending it proves the premise.
-/

namespace GRWTSK.NumberTheory.Moebius.PrimitiveGcdUniformTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdReduced
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence

classical

/-- Source-retained positive gcd indices; the min with the
original N prevents phantom g>N values at any horizon. -/
def sourceGcdIndex (D : ℕ) (T : ℝ) : Finset ℕ :=
  Finset.Icc 1 (min D ⌊Real.exp T⌋₊)

/-- An exact original-index guard for gcd-reduced primitive a,b.
Every old source factor, mask and squarefree condition survives. -/
def primitiveOriginalMask (H M : ℕ) (T : ℝ)
    (g a b : ℕ) : Prop :=
  Nat.Coprime a b ∧
    Nat.Coprime g a ∧ Nat.Coprime g b ∧
    Squarefree (g*a) ∧ Squarefree (g*b) ∧
    incomparableSquarefreeSelector H M T (g*a) (g*b) ∧
    g*a ∈ endpointIndex T ∧ g*b ∈ endpointIndex T

/-- The TRUE reduced coprime SIGNED waveform Gram, with the
horizon T-log g. Its original mask still uses T and g*a,g*b,
not the shifted horizon; both ordered orientations remain. -/
def primitiveGcdPacket (H M : ℕ) (T : ℝ) (g : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 2 ⌊Real.exp T⌋₊,
    ∑ b ∈ Finset.Icc 2 ⌊Real.exp T⌋₊,
      if primitiveOriginalMask H M T g a b
      then moebiusReal a * moebiusReal b *
        pickupResponseGram (T - Real.log (g : ℝ)) a b
      else 0

/-- The actual weighted aggregate from ORIGINAL positive gcd
labels, with exactly one factor 1/g per primitive double packet. -/
def gcdWeightedPrimitiveCross
    (H M D : ℕ) (T : ℝ) : ℝ :=
  ∑ g ∈ sourceGcdIndex D T,
    (g : ℝ)⁻¹ * primitiveGcdPacket H M T g

/-- Critical exact finite bijection/reindex target:
every ORIGINAL ordered squarefree incomparable pair has its
unique g=gcd(m,n),a=m/g,b=n/g, and conversely.

This statement is an explicitly UNPROVED Lean Prop. Its paper
proof is an elementary finite inverse mapping plus the actual
causal Gram time-shift, not a signed cancellation assumption.
Its presence NEVER proves an all-positive-rate estimate. -/
def ExactPrimitiveGcdReturnTarget : Prop :=
  ∀ (H M D : ℕ) (T : ℝ),
    smallGcdIncomparableCross H M D T =
      gcdWeightedPrimitiveCross H M D T

/-- The exact source kernel equivalence used inside the
unproved finite reindex, under the original squarefree masks.
The common factor changes the physical-time horizon. -/
theorem primitive_source_term_eq_shifted
    (T : ℝ) (g a b : ℕ)
    (hg : 1 ≤ g) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hga : Squarefree (g*a)) (hgb : Squarefree (g*b)) :
    sourceKernel T (g*a) (g*b) =
      (g : ℝ)⁻¹ * moebiusReal a * moebiusReal b *
        pickupResponseGram (T - Real.log (g : ℝ)) a b :=
  originalSignedKernel_gcd_timeShift T g a b hg ha hb hga hgb

/-- UNCONDITIONAL finite signed weighted triangle over
arbitrary source-derived primitive amplitudes A_g. No
uniformity, RH, PNT or positivity of A_g is assumed. -/
theorem abs_weighted_gcd_sum_le
    (S : Finset ℕ) (A : ℕ → ℝ)
    (hS : ∀ g ∈ S, 1 ≤ g) :
    |∑ g ∈ S, (g : ℝ)⁻¹ * A g| ≤
      ∑ g ∈ S, (g : ℝ)⁻¹ * |A g| := by
  calc
    |∑ g ∈ S, (g : ℝ)⁻¹ * A g| ≤
      ∑ g ∈ S, |(g : ℝ)⁻¹ * A g| :=
        Finset.abs_sum_le_sum_abs _ _
    _ = ∑ g ∈ S, (g : ℝ)⁻¹ * |A g| := by
      apply Finset.sum_congr rfl
      intro g hg
      rw [abs_mul, abs_of_nonneg (inv_nonneg.mpr (Nat.cast_nonneg g))]

/-- The true primitive signed aggregate is bounded by the
ACTUAL sum of the absolute primitive packets. This is an
unconditional finite inequality; the original source identity
requires the preceding exact reindex proof target. -/
theorem gcdWeightedPrimitiveCross_abs_le
    (H M D : ℕ) (T : ℝ) :
    |gcdWeightedPrimitiveCross H M D T| ≤
      ∑ g ∈ sourceGcdIndex D T,
        (g : ℝ)⁻¹ * |primitiveGcdPacket H M T g| := by
  unfold gcdWeightedPrimitiveCross
  apply abs_weighted_gcd_sum_le
  intro g hg
  exact (Finset.mem_Icc.mp hg).1

/-- A real, positive power summation lemma. This is an
elementary calculus fact, not a new arithmetic hypothesis;
its pinned Lean proof and exact Real.rpow normalization
remain to be written. -/
def PositiveGcdPowerSumTarget : Prop :=
  ∀ (D : ℕ) (ε : ℝ), 0 < ε →
    (∑ g ∈ Finset.Icc 1 D, (g : ℝ)⁻¹ *
      Real.exp (-ε * Real.log (g : ℝ))) ≤
      1 + 1/ε

/-- THE unresolved signed arithmetic input, with the key
quantifiers visible: ONE constant B for every g in the
growing original source gcd range AT THE SAME H,M,D,T.
A collection of fixed-g estimates with g-dependent
constants does NOT instantiate this statement. -/
def UniformPrimitiveSignedAt (H M D : ℕ)
    (T ε B : ℝ) : Prop :=
  0 ≤ B ∧ 0 < ε ∧
    ∀ g ∈ sourceGcdIndex D T,
      |primitiveGcdPacket H M T g| ≤
        B * Real.exp (ε * (T - Real.log (g : ℝ)))

/-- The genuine finite source transfer, assuming the missing
UNIFORM signed primitive correlation as an explicit named
premise. The gcd summation is then only an elementary
positive numerical sum; it introduces NO exponential loss. -/
theorem gcdWeightedPrimitive_abs_le_of_uniform
    (H M D : ℕ) (T ε B : ℝ)
    (hSigned : UniformPrimitiveSignedAt H M D T ε B) :
    |gcdWeightedPrimitiveCross H M D T| ≤
      B * ∑ g ∈ sourceGcdIndex D T,
        (g : ℝ)⁻¹ *
          Real.exp (ε * (T - Real.log (g : ℝ))) := by
  obtain ⟨hB,hε,huniform⟩ := hSigned
  have htriangle :=
    gcdWeightedPrimitiveCross_abs_le H M D T
  calc
    _ ≤ ∑ g ∈ sourceGcdIndex D T,
          (g : ℝ)⁻¹ * |primitiveGcdPacket H M T g| :=
      htriangle
    _ ≤ ∑ g ∈ sourceGcdIndex D T,
          (g : ℝ)⁻¹ * (B *
            Real.exp (ε * (T - Real.log (g : ℝ)))) := by
      apply Finset.sum_le_sum
      intro g hg
      exact mul_le_mul_of_nonneg_left
        (huniform g hg) (inv_nonneg.mpr (Nat.cast_nonneg g))
    _ = B * ∑ g ∈ sourceGcdIndex D T,
          (g : ℝ)⁻¹ *
            Real.exp (ε * (T - Real.log (g : ℝ))) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro g hg
      ring

/-- With the exact reindex and ordinary positive power sum
provided as EXPLICIT unproved Lean premises, a uniform
primitive estimate transfers to the ORIGINAL low-gcd source
WITHOUT losing its positive exponential exponent.

This theorem does not prove either the primitive signed
estimate or the exact double-to-triple reindex. In particular,
it does NOT solve RH. -/
theorem smallGcd_abs_le_uniformPrimitive_of_gates
    (hReturn : ExactPrimitiveGcdReturnTarget)
    (hPower : PositiveGcdPowerSumTarget)
    (H M D : ℕ) (T ε B : ℝ)
    (hSigned : UniformPrimitiveSignedAt H M D T ε B) :
    |smallGcdIncomparableCross H M D T| ≤
      B * (1 + 1/ε) * Real.exp (ε*T) := by
  obtain ⟨hB,hε,hu⟩ := hSigned
  rw [hReturn H M D T]
  have hb := gcdWeightedPrimitive_abs_le_of_uniform
    H M D T ε B ⟨hB,hε,hu⟩
  have hs : sourceGcdIndex D T ⊆ Finset.Icc 1 D := by
    intro g hg
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hg).1,
       (Finset.mem_Icc.mp hg).2.trans (min_le_left D _)⟩
  have hSum :
      (∑ g ∈ sourceGcdIndex D T,
        (g : ℝ)⁻¹ *
          Real.exp (-ε * Real.log (g : ℝ))) ≤
       1 + 1/ε := by
    have hpart : (∑ g ∈ sourceGcdIndex D T,
        (g : ℝ)⁻¹ *
          Real.exp (-ε * Real.log (g : ℝ))) ≤
      ∑ g ∈ Finset.Icc 1 D,
        (g : ℝ)⁻¹ *
          Real.exp (-ε * Real.log (g : ℝ)) :=
      Finset.sum_le_sum_of_subset_of_nonneg hs
        (fun g hg hnot => mul_nonneg
          (inv_nonneg.mpr (Nat.cast_nonneg g))
          (Real.exp_pos _).le)
    exact hpart.trans (hPower D ε hε)
  have hfactor :
      (∑ g ∈ sourceGcdIndex D T,
        (g : ℝ)⁻¹ *
          Real.exp (ε * (T - Real.log (g : ℝ)))) =
      Real.exp (ε*T) *
        (∑ g ∈ sourceGcdIndex D T,
          (g : ℝ)⁻¹ *
            Real.exp (-ε * Real.log (g : ℝ))) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro g hg
    have hexp :
        Real.exp (ε*(T - Real.log (g : ℝ))) =
          Real.exp (ε*T) *
            Real.exp (-ε*Real.log (g : ℝ)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [hexp]
    ring
  calc
    _ ≤ B * (Real.exp (ε*T) *
          (∑ g ∈ sourceGcdIndex D T,
            (g : ℝ)⁻¹ *
              Real.exp (-ε * Real.log (g : ℝ)))) := by
        rw [← hfactor]
        exact hb
    _ = (B * Real.exp (ε*T)) *
          (∑ g ∈ sourceGcdIndex D T,
            (g : ℝ)⁻¹ *
              Real.exp (-ε * Real.log (g : ℝ))) := by ring
    _ ≤ (B * Real.exp (ε*T)) * (1 + 1/ε) :=
      mul_le_mul_of_nonneg_left hSum
        (mul_nonneg hB (Real.exp_pos _).le)
    _ = B * (1 + 1/ε) * Real.exp (ε*T) := by ring


/-- ALL-HORIZON, GROWING-GCD, SAME-CONSTANT uniform primitive
SIGNED correlation certificate. The constant B and start R
depend on epsilon and the fixed H/M/D schedules, but do NOT
depend on the horizon T or on the source gcd g. In particular
a fixed-g Chowla bound with B_g has the WRONG quantifiers.

This is an explicitly OPEN arithmetic input: no instance is
created by this source. -/
def UniformPrimitiveSignedAllHorizons
    (H M D : ℝ → ℕ) (ε : ℝ) : Prop :=
  ∃ B R : ℝ, 0 ≤ B ∧ 0 ≤ R ∧
    ∀ T : ℝ, R ≤ T →
      UniformPrimitiveSignedAt (H T) (M T) (D T) T ε B

/-- Exact transparent rate transfer: under the still-open
ALL-HORIZON uniform primitive signed premise, and only the
separately named elementary reindex/positive-power-sum
gates, the SAME original low-gcd packet inherits the given
positive exponent epsilon on EVERY sufficiently large T.
Nothing is inferred for epsilon below the assumed one. -/
theorem originalSmallGcd_allHorizonRate_of_uniformPrimitive
    (hReturn : ExactPrimitiveGcdReturnTarget)
    (hPower : PositiveGcdPowerSumTarget)
    (H M D : ℝ → ℕ) (ε : ℝ)
    (hUniform : UniformPrimitiveSignedAllHorizons H M D ε) :
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        |smallGcdIncomparableCross (H T) (M T) (D T) T| ≤
          C * Real.exp (ε*T) := by
  obtain ⟨B,R,hB,hR,hall⟩ := hUniform
  obtain ⟨_,hε,_⟩ := hall R (le_refl R)
  refine ⟨B*(1+1/ε),R,?_,hR,?_⟩
  · exact mul_nonneg hB
      (by have hi : 0 ≤ 1/ε := one_div_nonneg.mpr hε.le
          linarith)
  · intro T hT
    have hsource := smallGcd_abs_le_uniformPrimitive_of_gates
      hReturn hPower (H T) (M T) (D T) T ε B (hall T hT)
    simpa only [mul_assoc] using hsource

end GRWTSK.NumberTheory.Moebius.PrimitiveGcdUniformTransfer
