/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCollarResidualShortRatio
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableGcdReduced
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# True original Möbius residual: gcd-reduced short gaps, even when original gaps are long

Start from the STILL UNPAID original signed longOrIncomparableCross,
not a surrogate sequence or a positive majorant. A pair (m,n) with
g=gcd(m,n), m=g*a, n=g*b is selected when m,n are genuinely incomparable
and |a-b|<=floor(exp(sqrt(T_J))). This includes pairs whose ORIGINAL
|m-n|=g*|a-b| can be arbitrarily large. The true original cutoff,
moebiusReal coefficients (including squareful zeros), complete causal
pickupResponseGram, m!=n and both orientations are retained.

Ordinary elementary paper proof, exposed as explicit numerical targets:
  |selected gcd-close packet|
    <=8*T_J*(1+T_J)^2*exp(sqrt(T_J))
    =exp(o(T_J)),
uniformly over EVERY true finite prime bank B, original gap mask A
and selected submask choose. Consequently a single C_epsilon works
for ALL banks and J at each epsilon>0, with
  C_epsilon=(48/epsilon)*(1+6/epsilon)^2*exp(1/(2*epsilon)).

The genuinely Möbius-specific opposite-parity squarefree reduced
packet is nonpositive: for squarefree m,n with g=gcd(m,n),
mu(m)mu(n)=mu(m/g)mu(n/g). Hence reduced parity -1 forces an
original negative Gram contribution. NO randomly assigned signs,
unshifted causal dilation, independent randomness, or RH premise.

An exact partition leaves ALL remaining far-reduced and long-ratio
pairs as the honest signed residual. Its RH-equivalent all-positive-
rate estimate is NOT claimed. The generic numerical bound and its
uniform asymptotic conversion remain explicit UNPROVED Lean Prop
targets; no axioms or placeholders are introduced. Compilation is
DEFERRED at the user's instruction.
-/

namespace GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdReduced

classical

/-- The EXACT same epsilon-independent subexponential integer cutoff
already chosen for the original bounded-multiplicative-ratio sector. -/
def reducedGapCap (J : ℕ) : ℕ := ratioCap J

/-- Genuine incomparable original source pair with CLOSE gcd-reduced
coprime indices. The unreduced original gap can exceed the cutoff by
a factor gcd(m,n); there is no additive-gap substitution. -/
def reducedClosePair (J m n : ℕ) : Prop :=
  ¬ (m ∣ n ∨ n ∣ m) ∧
    Nat.dist (m / Nat.gcd m n) (n / Nat.gcd m n) ≤ reducedGapCap J

/-- Bounded multiplicative ratio implies an original comparability
relation; the new gcd-reduced incomparable sector is DISJOINT. -/
theorem shortRatioPair_implies_comparable
    {J m n : ℕ} (h : shortRatioPair J m n) :
    m ∣ n ∨ n ∣ m := by
  obtain ⟨k, hk2, hkK, heq⟩ := h
  rcases heq with heq | heq
  · exact Or.inl ⟨k, by simpa only [mul_comm] using heq⟩
  · exact Or.inr ⟨k, by simpa only [mul_comm] using heq⟩

theorem reducedClosePair_not_shortRatio
    {J m n : ℕ} (h : reducedClosePair J m n) :
    ¬ shortRatioPair J m n := by
  intro hs
  exact h.1 (shortRatioPair_implies_comparable hs)

/-- Any further source mask is permitted. This is the literal ordered
original low/low Gram within the already UNPAID long/incomparable
packet; both original multiplicative and additive exclusions remain. -/
def selectedReducedCloseCross
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
    (choose : ℕ → ℕ → Prop) : ℝ :=
  ∑ m ∈ lowIndices B J, ∑ n ∈ lowIndices B J,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧
       ¬ shortRatioPair J m n ∧ reducedClosePair J m n ∧
       choose m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

def reducedCloseCross (B : PrimeBand) (A : Finset ℕ)
    (J : ℕ) : ℝ :=
  selectedReducedCloseCross B A J (fun _ _ => True)

/-- The ORIGINAL squarefree arithmetic condition: negative parity
of the TRUE coprime reduced factors, not an imposed source sign. -/
def reducedOppositeParity (m n : ℕ) : Prop :=
  Squarefree m ∧ Squarefree n ∧
    moebiusReal (m / Nat.gcd m n) *
      moebiusReal (n / Nat.gcd m n) = -1

def reducedOppositeParityCross
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedReducedCloseCross B A J reducedOppositeParity

def otherReducedCloseCross
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedReducedCloseCross B A J
    (fun m n => ¬ reducedOppositeParity m n)

/-- The TRUE remaining long/incomparable signed source after
removing ONLY the explicitly defined gcd-reduced-close sector. -/
def farReducedOrLongCross
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices B J, ∑ n ∈ lowIndices B J,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧
       ¬ shortRatioPair J m n ∧ ¬ reducedClosePair J m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

/-- The honest complete previous signed residual is partitioned
once; no term is dropped, reweighted, or paid twice. -/
theorem longOrIncomparable_eq_reducedClose_add_far
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    longOrIncomparableCross B A J =
      reducedCloseCross B A J + farReducedOrLongCross B A J := by
  unfold longOrIncomparableCross reducedCloseCross
    selectedReducedCloseCross farReducedOrLongCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask :
      m ≠ n ∧ Nat.dist m n ∉ A ∧ ¬ shortRatioPair J m n
  · by_cases hclose : reducedClosePair J m n
    · simp [hmask, hclose]
    · simp [hmask, hclose]
  · simp [hmask]

/-- The new true arithmetic sign sector and all remaining close
terms are a literal two-way partition of this proper original
signed cross-shell subpacket. -/
theorem reducedClose_eq_opposite_add_other
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    reducedCloseCross B A J =
      reducedOppositeParityCross B A J +
        otherReducedCloseCross B A J := by
  unfold reducedCloseCross reducedOppositeParityCross
    otherReducedCloseCross selectedReducedCloseCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask :
      m ≠ n ∧ Nat.dist m n ∉ A ∧
        ¬ shortRatioPair J m n ∧ reducedClosePair J m n
  · by_cases hodd : reducedOppositeParity m n
    · simp [hmask, hodd]
    · simp [hmask, hodd]
  · simp [hmask]

/-- Genuine Möbius gcd sign-cancellation identity for TWO
squarefree original positive indices, not a synthetic parity tag.
This is the preexisting source common-factor theorem applied at
g=gcd(m,n), with its exact integer quotient. -/
theorem moebius_product_eq_gcd_reduced
    (m n : ℕ) (hsm : Squarefree m) (hsn : Squarefree n) :
    moebiusReal m * moebiusReal n =
      moebiusReal (m / Nat.gcd m n) *
        moebiusReal (n / Nat.gcd m n) := by
  let g : ℕ := Nat.gcd m n
  have hgm : g ∣ m := Nat.gcd_dvd_left m n
  have hgn : g ∣ n := Nat.gcd_dvd_right m n
  have hmrep : g * (m / g) = m := Nat.mul_div_cancel' hgm
  have hnrep : g * (n / g) = n := Nat.mul_div_cancel' hgn
  have hsm' : Squarefree (g * (m / g)) := by
    simpa only [hmrep] using hsm
  have hsn' : Squarefree (g * (n / g)) := by
    simpa only [hnrep] using hsn
  calc
    moebiusReal m * moebiusReal n =
        moebiusReal (g * (m / g)) *
          moebiusReal (g * (n / g)) := by rw [hmrep, hnrep]
    _ = moebiusReal (m / g) *
          moebiusReal (n / g) :=
      mobius_product_common_factor_cancel g (m / g) (n / g) hsm' hsn'

/-- Genuine arithmetic NEGATIVE packet of incomparable original
squarefree pairs, including both orientations, arbitrary original
gap masks and arbitrary finite changing prime banks. -/
theorem reducedOppositeParityCross_nonpos
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    reducedOppositeParityCross B A J ≤ 0 := by
  unfold reducedOppositeParityCross selectedReducedCloseCross
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases h :
      m ≠ n ∧ Nat.dist m n ∉ A ∧
        ¬ shortRatioPair J m n ∧ reducedClosePair J m n ∧
          reducedOppositeParity m n
  · simp only [if_pos h]
    obtain ⟨hsm, hsn, hsign⟩ := h.2.2.2.2
    have hcoeff : moebiusReal m * moebiusReal n = -1 := by
      exact (moebius_product_eq_gcd_reduced m n hsm hsn).trans hsign
    have hpos : 0 ≤ pickupResponseGram (dyadicTime J) m n :=
      pickupResponseGram_nonneg (dyadicTime J)
        (dyadicTime_nonneg J) m n
        (lowIndices_pos B J m hm) (lowIndices_pos B J n hn)
    rw [hcoeff]
    nlinarith
  · simp [h]

/-- The exact whole source advances to a smaller, explicit core:
all ORIGINAL short ratios plus reduced-close incomparable pairs
are partitioned without changing the signed complement. -/
theorem collarResidual_eq_four_signed_sectors
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    collarResidualCross B A J =
      oddShortRatioCross B A J +
        otherShortRatioCross B A J +
          reducedOppositeParityCross B A J +
            otherReducedCloseCross B A J +
              farReducedOrLongCross B A J := by
  rw [collarResidual_eq_three_signed_sectors,
    longOrIncomparable_eq_reducedClose_add_far,
    reducedClose_eq_opposite_add_other]
  ring

/-- The TWO independently disjoint original negative Möbius
sectors may be discarded for a one-sided upper bound. This
does not assert upper control of the remaining positive core. -/
theorem collarResidual_le_otherShort_otherClose_far
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    collarResidualCross B A J ≤
      otherShortRatioCross B A J +
        otherReducedCloseCross B A J +
          farReducedOrLongCross B A J := by
  rw [collarResidual_eq_four_signed_sectors]
  have hodd := oddShortRatioCross_nonpos B A J
  have hred := reducedOppositeParityCross_nonpos B A J
  linarith

/-- Unconditional ordinary mathematical bound on ANY chosen
original signed subpacket of the gcd-reduced-close region,
including arbitrary mask A and bank B, at T=J*log 2:
   |packet| <= 8*T*(1+T)^2*exp(sqrt T).
It follows by unique gcd reindex, the original physical
K_T(ga,gb)<=4*T/(g*sqrt(a*b)), and
   sum_{a<b<=N/g, b-a<=K}1/sqrt(ab)
         <= K * sum_{a<=N/g}1/a.
Both orientations and sum_{g<=N}1/g are paid. The positivity of
a Möbius-specific submask is NOT assumed. Formal finite counting
and real-sum comparison have not yet been completed in pinned Lean. -/
def ReducedCloseQuantitativeTarget : Prop :=
  ∀ (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
      (choose : ℕ → ℕ → Prop),
    1 ≤ J →
      |selectedReducedCloseCross B A J choose| ≤
        8 * dyadicTime J * (1 + dyadicTime J) ^ 2 *
          Real.exp (Real.sqrt (dyadicTime J))

/-- Fixed cutoff independent of epsilon; a SINGLE constant
works for every finite prime bank, dyadic J, original gap mask
and chosen submask. The explicit paper constant is
(48/eps)*(1+6/eps)^2*exp(1/(2 eps)). This is not yet a
kernel-verified theorem. -/
def ReducedCloseUniformAllRateTarget : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
        (choose : ℕ → ℕ → Prop),
        1 ≤ J →
          |selectedReducedCloseCross B A J choose| ≤
            C * Real.exp (ε * dyadicTime J)

/-- Exact all-positive-rate equivalence with the new, smaller,
unaltered FAR signed arithmetic residual. The quantified bound
on the paid proper packet is VISIBLE as an unproved Lean input,
and the remaining signed cancellation is not postulated. -/
theorem long_allRates_iff_farReducedOrLong
    (hclose : ReducedCloseUniformAllRateTarget)
    (B : ℕ → PrimeBand) :
    AllRatesOnFixedDyadicGrid
        (fun J => longOrIncomparableCross (B J) ∅ J) ↔
      AllRatesOnFixedDyadicGrid
        (fun J => farReducedOrLongCross (B J) ∅ J) := by
  constructor
  · intro hlong ε hε
    obtain ⟨C, hC, hlongBound⟩ := hlong ε hε
    obtain ⟨D, hD, hcloseBound⟩ := hclose ε hε
    refine ⟨C + D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hl := hlongBound J hJ
    have hi := hcloseBound (B J) ∅ J (fun _ _ => True) hJ
    change |reducedCloseCross (B J) ∅ J| ≤
      D * Real.exp (ε * dyadicTime J) at hi
    have hs := longOrIncomparable_eq_reducedClose_add_far (B J) ∅ J
    have hminus := neg_le_of_abs_le hi
    calc
      farReducedOrLongCross (B J) ∅ J =
          longOrIncomparableCross (B J) ∅ J -
            reducedCloseCross (B J) ∅ J := by rw [hs]; ring
      _ ≤ C * Real.exp (ε * dyadicTime J) +
            D * Real.exp (ε * dyadicTime J) := by linarith
      _ = (C + D) * Real.exp (ε * dyadicTime J) := by ring
  · intro hfar ε hε
    obtain ⟨C, hC, hfarBound⟩ := hfar ε hε
    obtain ⟨D, hD, hcloseBound⟩ := hclose ε hε
    refine ⟨C + D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hf := hfarBound J hJ
    have hi := hcloseBound (B J) ∅ J (fun _ _ => True) hJ
    change |reducedCloseCross (B J) ∅ J| ≤
      D * Real.exp (ε * dyadicTime J) at hi
    have hs := longOrIncomparable_eq_reducedClose_add_far (B J) ∅ J
    calc
      longOrIncomparableCross (B J) ∅ J =
          reducedCloseCross (B J) ∅ J +
            farReducedOrLongCross (B J) ∅ J := hs
      _ ≤ D * Real.exp (ε * dyadicTime J) +
            C * Real.exp (ε * dyadicTime J) := by
              linarith [le_abs_self (reducedCloseCross (B J) ∅ J)]
      _ = (C + D) * Real.exp (ε * dyadicTime J) := by ring


/-- The original global signed residual was already known to be
bounded BELOW by -2*T^2. Paying BOTH new proper subpackets in
absolute value preserves that unconditional source lower frontier
on the genuinely FAR remainder. The only proof gates here are
the independently displayed elementary quantitative counts;
there is NO assumption on the FAR signed source. -/
theorem farReducedOrLong_lower_of_numeric
    (hshort : ShortRatioQuantitativeTarget)
    (hclose : ReducedCloseQuantitativeTarget)
    (B : PrimeBand) (J : ℕ) (hJ : 1 ≤ J) :
    -(2 * (dyadicTime J)^2 +
        16 * dyadicTime J * (1 + dyadicTime J) *
          Real.exp (Real.sqrt (dyadicTime J) / 2) +
        8 * dyadicTime J * (1 + dyadicTime J)^2 *
          Real.exp (Real.sqrt (dyadicTime J))) ≤
      farReducedOrLongCross B ∅ J := by
  have hR := collarResidual_ge_neg_two_dyadicTime_sq B J
  have hs := hshort B ∅ J (fun _ _ => True) hJ
  change |shortRatioCross B ∅ J| ≤
    16 * dyadicTime J * (1 + dyadicTime J) *
      Real.exp (Real.sqrt (dyadicTime J) / 2) at hs
  have hc := hclose B ∅ J (fun _ _ => True) hJ
  change |reducedCloseCross B ∅ J| ≤
    8 * dyadicTime J * (1 + dyadicTime J)^2 *
      Real.exp (Real.sqrt (dyadicTime J)) at hc
  have hshortSplit := collarResidual_eq_short_add_long B ∅ J
  have hfarSplit := longOrIncomparable_eq_reducedClose_add_far B ∅ J
  rw [hshortSplit, hfarSplit] at hR
  linarith [(abs_le.mp hs).2, (abs_le.mp hc).2]

end GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
