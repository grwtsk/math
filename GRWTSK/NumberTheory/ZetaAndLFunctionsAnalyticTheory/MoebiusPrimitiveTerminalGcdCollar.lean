/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimitiveGcdUniformTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# An all-horizon genuine high-gcd terminal collar with a same-gcd constant

The original primitive source has genuine coprime a,b>=2, with
actual ga,gb in endpointIndex T. Therefore max(a,b)>=3.
In particular, when 3*g>floor(exp T), the entire ORIGINAL
signed primitiveGcdPacket at g is identically ZERO. No analytic
estimate, Mertens, RH or synthetic sign condition is used.

More generally, fix any observation-length cap L>=0. Whenever
g>=exp(T-L) and g<=floor(exp T), the true shifted horizon
t=T-log g belongs to [0,L] and ga,gb<=exp T forces a,b<=exp L.
For the original causal response Gram at t, the source proves
  0 <= K_t(a,b) <= 4*t/sqrt(a*b).
Consequently for ANY inherited original geometrical source mask
  |primitiveGcdPacket(H,M,T,g)| <= 16*L*exp L.
The SAME constant works for EVERY T,H,M,g in the terminal
gcd band, and even for every arbitrary positive exponential
rate epsilon because exp(epsilon*t)>=1.

The weighted aggregate of this entire terminal gcd band is
bounded by 16*L*exp L*(1+L), uniformly in T, since the
original ∑_(exp(T-L)<=g<=exp T) 1/g <=1+L.
For L(T)=log(1+T), the band g>=exp T/(1+T) has
O(T*log(T)^2) original weighted absolute cost, which is
O_epsilon(exp(epsilon*T)) for every epsilon>0.
Thus the genuinely HIGH-GCD absolute sector can be
paid at all positive rates with a SINGLE cutoff schedule.
It does NOT bound primitive g=1 or the growing interior
g<exp(T-L), and so does not prove the full user target.

The exact empty-support theorem is an authored Lean proof
candidate. The continuous-window bound, finite inverse-root
sum, and harmonic tail are rigorous elementary mathematical
arguments documented in the companion review; the
source-specific Lean plumbing is recorded as UNPROVED
Prop targets rather than introduced as axioms.
-/

namespace GRWTSK.NumberTheory.Moebius.PrimitiveTerminalGcdCollar

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PrimitiveGcdUniformTransfer
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata

classical

/-- A primitive incomparable squarefree pair cannot have both
reduced indices equal to 2: gcd(2,2) != 1. This supplies an
arithmetic minimum max(a,b)>=3, independent of any sign. -/
theorem three_le_max_of_coprime_two_le
    (a b : ℕ) (ha : 2 ≤ a) (hb : 2 ≤ b)
    (hcop : Nat.Coprime a b) :
    3 ≤ max a b := by
  by_contra h
  have ha2 : a = 2 := by omega
  have hb2 : b = 2 := by omega
  subst a
  subst b
  norm_num at hcop

/-- The literal ORIGINAL primitive pair support is empty at
any gcd g with 3*g greater than the original source horizon N.
Both ordered orientations vanish. This applies to ALL original
Putnam/physical/energy mask choices H,M, not merely a model. -/
theorem primitiveGcdPacket_zero_of_three_mul_gt
    (H M g : ℕ) (T : ℝ)
    (hN : ⌊Real.exp T⌋₊ < 3*g) :
    primitiveGcdPacket H M T g = 0 := by
  unfold primitiveGcdPacket
  apply Finset.sum_eq_zero
  intro a ha
  apply Finset.sum_eq_zero
  intro b hb
  by_cases hmask : primitiveOriginalMask H M T g a b
  · obtain ⟨hcop, hga, hgb, hsqa, hsqb, hsel,
      hmemga, hmemb⟩ := hmask
    have ha2 : 2 ≤ a := (Finset.mem_Icc.mp ha).1
    have hb2 : 2 ≤ b := (Finset.mem_Icc.mp hb).1
    have hmax := three_le_max_of_coprime_two_le a b ha2 hb2 hcop
    have hmaxN : g*(max a b) ≤ ⌊Real.exp T⌋₊ := by
      have haN : g*a ≤ ⌊Real.exp T⌋₊ :=
        (Finset.mem_Icc.mp hmemga).2
      have hbN : g*b ≤ ⌊Real.exp T⌋₊ :=
        (Finset.mem_Icc.mp hmemb).2
      rcases le_total a b with hab | hba
      · simpa only [max_eq_right hab] using hbN
      · simpa only [max_eq_left hba] using haN
    have hthree : 3*g ≤ g*(max a b) := by
      simpa only [Nat.mul_comm] using Nat.mul_le_mul_left g hmax
    exact False.elim (by omega)
  · simp [hmask]

/-- An all-gcd/all-horizon source assertion, quantified with ONE
terminal window constant L, not a different constant for each g.
This is a named ELEMENTARY UNPROVED Lean Prop, whose actual
finite-integral and reciprocal-root proof is in the review. -/
def TerminalPrimitiveSameConstantTarget : Prop :=
  ∀ (L : ℝ), 0 ≤ L →
    ∀ (H M g : ℕ) (T : ℝ),
      0 ≤ T →
      g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T →
      Real.exp (T-L) ≤ (g : ℝ) →
      |primitiveGcdPacket H M T g| ≤ 16*L*Real.exp L

/-- A single source-independent elementary harmonic price. The
1/g factor is the literal causal time-dilation factor, not a
new probability weight; no source sign or mask is changed.
This is a separate UNPROVED Lean arithmetic-calculus target. -/
def TerminalGcdHarmonicTarget : Prop :=
  ∀ (L T : ℝ), 0 ≤ L → 0 ≤ T →
    (∑ g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T,
      if Real.exp (T-L) ≤ (g : ℝ)
      then (g : ℝ)⁻¹ else 0) ≤ 1+L

/-- Full terminal signed gcd contribution, retaining the EXACT
source-pinned real primitive packets and all source orientations. -/
def terminalPrimitiveCross
    (H M : ℕ) (T L : ℝ) : ℝ :=
  ∑ g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T,
    if Real.exp (T-L) ≤ (g : ℝ)
    then (g : ℝ)⁻¹ * primitiveGcdPacket H M T g else 0

/-- A finite exact original weighted-gcd statement, conditional
ONLY on the two elementary terminal collar/harmonic Prop targets.
Unlike the full RH-scale primitive bound, there is NO
independent signed cancellation hypothesis here. -/
theorem terminalPrimitiveCross_abs_le_constant_of_elementary
    (hSource : TerminalPrimitiveSameConstantTarget)
    (hHarmonic : TerminalGcdHarmonicTarget)
    (H M : ℕ) (T L : ℝ) (hT : 0 ≤ T) (hL : 0 ≤ L) :
    |terminalPrimitiveCross H M T L| ≤
      16*L*Real.exp L*(1+L) := by
  have hsum :
      |terminalPrimitiveCross H M T L| ≤
        ∑ g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T,
          if Real.exp (T-L) ≤ (g : ℝ) then
            (g : ℝ)⁻¹ * |primitiveGcdPacket H M T g| else 0 := by
    unfold terminalPrimitiveCross
    calc
      _ ≤ ∑ g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T,
          |if Real.exp (T-L) ≤ (g : ℝ)
            then (g : ℝ)⁻¹ * primitiveGcdPacket H M T g else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ = _ := by
        apply Finset.sum_congr rfl
        intro g hg
        by_cases he : Real.exp (T-L) ≤ (g : ℝ)
        · simp only [if_pos he, abs_mul,
            abs_of_nonneg (inv_nonneg.mpr (Nat.cast_nonneg g))]
        · simp [he]
  have hpay :
      (∑ g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T,
          if Real.exp (T-L) ≤ (g : ℝ) then
            (g : ℝ)⁻¹ * |primitiveGcdPacket H M T g| else 0) ≤
      (16*L*Real.exp L) *
        ∑ g ∈ sourceGcdIndex ⌊Real.exp T⌋₊ T,
          if Real.exp (T-L) ≤ (g : ℝ)
          then (g : ℝ)⁻¹ else 0 := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro g hg
    by_cases he : Real.exp (T-L) ≤ (g : ℝ)
    · simp only [if_pos he]
      exact mul_le_mul_of_nonneg_left
        (hSource L hL H M g T hT hg he)
        (inv_nonneg.mpr (Nat.cast_nonneg g))
    · simp [he]
  have hh := hHarmonic L T hL hT
  have hfactor : 0 ≤ 16*L*Real.exp L := by positivity
  have hmul := mul_le_mul_of_nonneg_left hh hfactor
  exact hsum.trans (hpay.trans hmul)

end GRWTSK.NumberTheory.Moebius.PrimitiveTerminalGcdCollar
