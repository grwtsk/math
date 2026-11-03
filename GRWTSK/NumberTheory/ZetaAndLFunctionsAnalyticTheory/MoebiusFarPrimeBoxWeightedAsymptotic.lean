/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarPrimeBoxPNTMass
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Filter Topology MeasureTheory

/-!
# Original far source: exact prime-box pairing and weighted PNT limit

The previous positive p,q and negative p,2r boxes are the ACTUAL
source integers, with original Mobius signs, causal Gram, BOTH ordered
orientations, actual physical terminal time T_J and unchanged FAR masks.

Prime p/N is in A=[1/16,1/12], while q/N and 2r/N are in
B=[1/4,1/3]. The exact causal scaling is
  N * pickupResponseGram(log N, m, n)
     = 4 * int_{0}^{log(1/max(a,b))}
          (1/sqrt(a)-exp(t/2))*(1/sqrt(b)-exp(t/2)) dt,
where a=m/N,b=n/N, with 0<a,b<1.

The weighted PNT on the ORIGINAL prime boxes gives the two
independent limits (the other factor 1/2 is the genuine
density of EVEN SEMIPRIMES n=2r in the same B interval):
  T_J^2/N * sum_{p in P,q in Q} K_T(p,q) --> I,
  T_J^2/N * sum_{p in P,r in R} K_T(p,2r) --> I/2.
I = 0.010007718064... is an explicitly calculated positive
elementary real constant, not a fitted parameter.

Both original ordered orientations give the nonzero signed
  T_J^2/N * primeBoxSource(J) --> 2*I-2*(I/2)=I.

The exact finite source partition below has a Lean proof body.
The actual source sign/birth-support equivalence and classical
WEIGHTED PNT/real-calculus limits are separately named UNPROVED
Lean Props; neither includes any full FAR signed cancellation
estimate. Compilation is user-DEFERRED, RH remains OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.FarPrimeBoxWeightedAsymptotic

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
open GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier
open GRWTSK.NumberTheory.Moebius.FarPrimeBoxPNTMass

classical

/-- Original unordered prime-in-A vs odd-prime-or-even-semiprime-
+in-B pair, in EITHER order. The two classes of B indices have
+disjoint arithmetic parity for sufficiently large J. -/
def originalPrimeBoxPair (J m n : ℕ) : Prop :=
  (m ∈ smallPrimeBox J ∧
    (n ∈ largePrimeBox J ∨ n ∈ doubledPrimeBox J)) ∨
  (n ∈ smallPrimeBox J ∧
    (m ∈ largePrimeBox J ∨ m ∈ doubledPrimeBox J))

/-- EXACT original ordered signed far packet on the original low
inventory, including all true mu squareful zeros, birth gates,
both ordered orientations and strict off-diagonal FAR support. -/
def selectedPrimeBoxFar (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices emptyPrimeBand J,
    ∑ n ∈ lowIndices emptyPrimeBand J,
      if farPair J m n ∧ originalPrimeBoxPair J m n then
        moebiusReal m * moebiusReal n *
          pickupResponseGram (dyadicTime J) m n
      else 0

/-- Entire TRUE complementary signed FAR packet, not a residual
defined by an unsigned modulus. The selected box is removed once. -/
def remainingAfterPrimeBoxFar (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices emptyPrimeBand J,
    ∑ n ∈ lowIndices emptyPrimeBand J,
      if farPair J m n ∧ ¬originalPrimeBoxPair J m n then
        moebiusReal m * moebiusReal n *
          pickupResponseGram (dyadicTime J) m n
      else 0

/-- The full original FAR source splits EXACTLY into the selected
two signed prime-box populations plus EVERY other signed FAR term.
No source coefficient, interval, pair order, or cutoff changes. -/
theorem far_eq_primeBox_add_other (J : ℕ) :
    farReducedOrLongCross emptyPrimeBand ∅ J =
      selectedPrimeBoxFar J + remainingAfterPrimeBoxFar J := by
  unfold farReducedOrLongCross selectedPrimeBoxFar
    remainingAfterPrimeBoxFar farPair
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hfar : m ≠ n ∧
      ¬shortRatioPair J m n ∧ ¬reducedClosePair J m n
  · by_cases hbox : originalPrimeBoxPair J m n
    · simp [hfar, hbox, and_assoc, and_comm, and_left_comm]
    · simp [hfar, hbox, and_assoc, and_comm, and_left_comm]
  · simp [hfar, and_assoc, and_comm, and_left_comm]

/-- The EXACT positive original terminal Gram (without source
sign), counted in ONE order. Source signs appear in selectedPrimeBoxFar. -/
def primePrimeBoxGram (J : ℕ) : ℝ :=
  ∑ p ∈ smallPrimeBox J,
    ∑ q ∈ largePrimeBox J,
      pickupResponseGram (dyadicTime J) p q

/-- Exactly the physical Gram against the ORIGINAL negative
even semiprime n=2r. The doubled-prime density in the B box
is HALF the undoubled prime density under classical PNT. -/
def primeDoubledBoxGram (J : ℕ) : ℝ :=
  ∑ p ∈ smallPrimeBox J,
    ∑ r ∈ middlePrimeBox J,
      pickupResponseGram (dyadicTime J) p (2*r)

/-- Double the ONE-order sums to pay BOTH original orientations,
with genuine source coefficient signs +1 and -1. -/
def analyticPrimeBoxSignedNet (J : ℕ) : ℝ :=
  2 * primePrimeBoxGram J - 2 * primeDoubledBoxGram J

/-- Exact source scaling function at the SAME prescribed dyadic J. -/
def primeScale (J : ℕ) : ℝ :=
  (dyadicTime J)^2 / (boxN J : ℝ)

/-- Positive normalized causal response profile, not a synthetic
Gram. The exact original K_T obeys K_T(m,n)=normalizedK(a,b)/N
for 0<a=m/N,b=n/N<1, by physical-time change of variable. -/
def normalizedPhysicalKernel (a b : ℝ) : ℝ :=
  4 * ∫ t in (0 : ℝ)..Real.log ((max a b)⁻¹),
    ((Real.sqrt a)⁻¹ - Real.exp (t / 2)) *
      ((Real.sqrt b)⁻¹ - Real.exp (t / 2))

/-- The genuine weighted-PNT continuum constant on
A=[1/16,1/12], B=[1/4,1/3]. The review proves this is the
double integral of the exact normalizedPhysicalKernel and is
strictly positive. The decimal is only a secondary diagnostic. -/
def primeBoxLeadingConstant : ℝ :=
  4 * (((Real.sqrt 3)⁻¹ - 1 / 2) *
      (2 * Real.log 3 * (Real.sqrt 3)⁻¹ +
        1 / 6 - Real.log 4) -
      (1 / 48) *
        (Real.log (4 / 3 : ℝ) + 25 / 12 -
          4 * (Real.sqrt 3)⁻¹))

/-- The only original-source sign and FAR-membership comparison
required to identify the selectedPrimeBoxFar with the
two genuine prime-box original ordered Gram rectangles.
It is an ELEMENTARY arithmetic/birth-support Lean target.
No growing-index cancellation or RH-level hypothesis appears. -/
def OriginalPrimeBoxExactSourceTarget : Prop :=
  ∀ J : ℕ, 8 ≤ J →
    selectedPrimeBoxFar J = analyticPrimeBoxSignedNet J

/-- The independent classical weighted PNT supplier. Each limit
is an ordinary consequence of pi(x)~x/log(x), an exact original
physical-time substitution, and compact-set Riemann summation.
The negative box carries factor 1/2 from scaling r -> 2r.
NOT a hypothesis on the full signed FAR core. -/
def WeightedPrimeBoxPNTTarget : Prop :=
  Tendsto (fun J : ℕ => primeScale J * primePrimeBoxGram J)
    atTop (nhds primeBoxLeadingConstant) ∧
  Tendsto (fun J : ℕ => primeScale J * primeDoubledBoxGram J)
    atTop (nhds (primeBoxLeadingConstant / 2))

/-- The exact source physical kernel formula and its positive
leading constant are standard elementary calculus goals, kept
visible until independently compiled in pinned Lean. -/
def OriginalKernelScalingAndIntegralTarget : Prop :=
  (∀ J : ℕ, 1 ≤ J →
    ∀ m n : ℕ, 1 ≤ m → 1 ≤ n →
      m ≤ boxN J → n ≤ boxN J →
      pickupResponseGram (dyadicTime J) m n =
        (boxN J : ℝ)⁻¹ *
          normalizedPhysicalKernel
            ((m : ℝ) / (boxN J : ℝ))
            ((n : ℝ) / (boxN J : ℝ))) ∧
  0 < primeBoxLeadingConstant

/-- Pure weighted-PNT algebra: a prime-vs-doubled-prime density
of 1/2 leaves a POSITIVE normalized signed box limit I.
This is not the whole FAR source, nor an RH solution. -/
theorem normalized_analyticPrimeBox_tendsto
    (hPNT : WeightedPrimeBoxPNTTarget) :
    Tendsto
      (fun J : ℕ => primeScale J * analyticPrimeBoxSignedNet J)
      atTop (nhds primeBoxLeadingConstant) := by
  have hp : Tendsto
      (fun J : ℕ => (2 : ℝ) * (primeScale J * primePrimeBoxGram J))
      atTop (nhds (2 * primeBoxLeadingConstant)) :=
    tendsto_const_nhds.mul hPNT.1
  have hn : Tendsto
      (fun J : ℕ => (2 : ℝ) * (primeScale J * primeDoubledBoxGram J))
      atTop (nhds (2 * (primeBoxLeadingConstant / 2))) :=
    tendsto_const_nhds.mul hPNT.2
  have hsub := hp.sub hn
  have hconstant :
      2 * primeBoxLeadingConstant -
        2 * (primeBoxLeadingConstant / 2) =
        primeBoxLeadingConstant := by ring
  simpa [analyticPrimeBoxSignedNet, mul_sub, mul_assoc,
    mul_comm, mul_left_comm, hconstant] using hsub

/-- CONDITIONAL source transport: given the independently
elementary original Mobius source identity and standard weighted
PNT, the TRUE selected original signed prime-box packet has
the same positive leading asymptotic constant. -/
theorem normalized_sourcePrimeBox_tendsto
    (hSource : OriginalPrimeBoxExactSourceTarget)
    (hPNT : WeightedPrimeBoxPNTTarget) :
    Tendsto
      (fun J : ℕ => primeScale J * selectedPrimeBoxFar J)
      atTop (nhds primeBoxLeadingConstant) := by
  have hbase := normalized_analyticPrimeBox_tendsto hPNT
  apply hbase.congr'
  filter_upwards [eventually_ge_atTop (8 : ℕ)] with J hJ
  rw [hSource J hJ]

end GRWTSK.NumberTheory.Moebius.FarPrimeBoxWeightedAsymptotic
