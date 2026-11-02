/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCollarResidualLowWave
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongOddCoprimeDilation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine original Mobius signed short-ratio cancellation inside collarResidualCross

Keep the exact previous original low/low index inventory, integer
Mobius source, causal pickupResponseGram, physical dyadic T_J,
m != n and every additive-gap mask. For each true multiplier
2 <= k <= floor(exp(sqrt T_J)), the two orientations of m <-> k*m
are retained. Their complete absolute contribution is bounded on
paper by 16*T_J*(1+T_J)*exp(sqrt(T_J)/2) = exp(o(T_J)),
UNIFORMLY for ANY finite bank, including a changing bank.

The odd-coprime Mobius multipliers mu(k)=-1 form an actual
NONPOSITIVE original signed packet. This uses the already published
original_moebius_mul_of_coprime and oddCoprime_source_nonpos,
not a random-sign hypothesis. All remaining positive, zero, and
incomparable terms are retained in the literal complement.

The short-ratio quantitative and all-rate inequalities are
EXPLICIT UNPROVED LEAN PROP targets, not axioms. The finite
source partitions and negative sign have candidate theorem bodies.
The complete remaining signed long/incomparable source is OPEN and
still RH-strength. Compilation has been deferred by the user.
-/

namespace GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

classical

/-- One fixed, positive, subexponential ratio ceiling at T_J;
its choice is independent of the requested rate epsilon. -/
def ratioCap (J : ℕ) : ℕ :=
  ⌊Real.exp (Real.sqrt (dyadicTime J))⌋₊

/-- Both ordered original integer-ratio orientations, with no
replacement arithmetic coefficient or approximation to Nat.dist. -/
def shortRatioPair (J m n : ℕ) : Prop :=
  ∃ k : ℕ, 2 ≤ k ∧ k ≤ ratioCap J ∧
    (n = k * m ∨ m = k * n)

/-- The ACTUAL low/low original signed packet with the full ratio
restriction and a separately arbitrary finite gap mask A. -/
def selectedShortCross (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
    (choose : ℕ → ℕ → Prop) : ℝ :=
  ∑ m ∈ lowIndices B J, ∑ n ∈ lowIndices B J,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧
       shortRatioPair J m n ∧ choose m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

def shortRatioCross (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedShortCross B A J (fun _ _ => True)

/-- An actual source subset with odd-parity squarefree coprime ratio.
The sign is not assigned by fiat: it follows from genuine Mobius. -/
def oddShortRatioCross (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedShortCross B A J oddCoprimeRatio

/-- All other source short-ratio edges, including genuine positive
comparable edges and squareful zeros, are preserved. -/
def otherShortRatioCross (B : PrimeBand) (A : Finset ℕ) (J : ℕ) : ℝ :=
  selectedShortCross B A J (fun m n => ¬oddCoprimeRatio m n)

/-- The COMPLETE unpaid source complement: all incomparable edges
plus comparable ones with multipliers strictly above ratioCap J. -/
def longOrIncomparableCross (B : PrimeBand) (A : Finset ℕ)
    (J : ℕ) : ℝ :=
  ∑ m ∈ lowIndices B J, ∑ n ∈ lowIndices B J,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧
       ¬shortRatioPair J m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

/-- No original signed low/low edge is omitted or counted twice. -/
theorem collarResidual_eq_short_add_long
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    collarResidualCross B A J =
      shortRatioCross B A J + longOrIncomparableCross B A J := by
  rw [collarResidual_eq_lowMasked]
  unfold lowMaskedCross shortRatioCross selectedShortCross
    longOrIncomparableCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask : m ≠ n ∧ Nat.dist m n ∉ A
  · by_cases hshort : shortRatioPair J m n
    · simp [hmask, hshort]
    · simp [hmask, hshort]
  · simp [hmask]

/-- BOTH components of the short-ratio sector are the unchanged
original source; the odd part is the arithmetic negative credit. -/
theorem shortRatio_eq_odd_add_other
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    shortRatioCross B A J =
      oddShortRatioCross B A J +
        otherShortRatioCross B A J := by
  unfold shortRatioCross oddShortRatioCross otherShortRatioCross
    selectedShortCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask :
      m ≠ n ∧ Nat.dist m n ∉ A ∧ shortRatioPair J m n
  · by_cases hodd : oddCoprimeRatio m n
    · simp [hmask, hodd]
    · simp [hmask, hodd]
  · simp [hmask]

/-- The ACTUAL coprime odd-Mobius ratio source is nonpositive
term by term, for BOTH orientations and every finite original mask.
No arbitrary sign choice or second subtraction is introduced. -/
theorem oddShortRatioCross_nonpos
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    oddShortRatioCross B A J ≤ 0 := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  unfold oddShortRatioCross selectedShortCross
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases h :
      m ≠ n ∧ Nat.dist m n ∉ A ∧
        shortRatioPair J m n ∧ oddCoprimeRatio m n
  · simp only [if_pos h]
    have hmI : m ∈ endpointIndex (dyadicTime J) := by
      simpa [terminalInventory] using
        (lowIndices_subset_terminal B J hm)
    have hnI : n ∈ endpointIndex (dyadicTime J) := by
      simpa [terminalInventory] using
        (lowIndices_subset_terminal B J hn)
    have hneg := oddCoprime_source_nonpos hT hmI hnI h.2.2.2
    simpa only [sourceKernel] using hneg
  · simp [h]

/-- The entire ORIGINAL low/low residual is partitioned into
a negative Möbius packet, remaining short comparables, and an
honest unestimated long/incomparable signed residual. -/
theorem collarResidual_eq_three_signed_sectors
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    collarResidualCross B A J =
      oddShortRatioCross B A J +
        otherShortRatioCross B A J +
          longOrIncomparableCross B A J := by
  rw [collarResidual_eq_short_add_long,
    shortRatio_eq_odd_add_other]
  ring

/-- Actual nonpositive source cancellation: the complete odd
short-ratio contribution can be omitted for a ONE-SIDED UPPER
bound, without deleting it from the source identity. -/
theorem collarResidual_le_otherShort_add_long
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    collarResidualCross B A J ≤
      otherShortRatioCross B A J +
        longOrIncomparableCross B A J := by
  rw [collarResidual_eq_three_signed_sectors]
  linarith [oddShortRatioCross_nonpos B A J]

/-- Elementary quantitative target, UNPROVED in pinned Lean.
For ANY chosen submask of short pairs, the actual physical
K_T <= 4T/sqrt(mn) and genuine ratio n=k*m give two ordered
orientations; H_N<=1+log N and sum_{k<=K}k^-1/2<=2sqrt K.
At K=floor(exp(sqrt T)), this yields the stated uniform amount.
No arithmetic PNT, conjectural cancellation or RH is used. -/
def ShortRatioQuantitativeTarget : Prop :=
  ∀ (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
    (choose : ℕ → ℕ → Prop),
    1 ≤ J →
      |selectedShortCross B A J choose| ≤
        16 * dyadicTime J * (1 + dyadicTime J) *
          Real.exp (Real.sqrt (dyadicTime J) / 2)

/-- Every-positive-rate numerical consequence for a GENUINE proper
signed subpacket, uniformly over changing banks and arbitrary masks.
This is an EXPOSED mathematical-to-Lean target, NOT a theorem. -/
def ShortRatioUniformAllRateTarget : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : PrimeBand) (A : Finset ℕ) (J : ℕ)
        (choose : ℕ → ℕ → Prop),
        1 ≤ J →
          |selectedShortCross B A J choose| ≤
            C * Real.exp (ε * dyadicTime J)

/-- EXACT quantifier transfer. Once the independent elementary
short-ratio magnitude bound is proved in Lean, the remaining
long/incomparable original source has precisely the same every-
rate ONE-SIDED challenge as the complete collar residual.
The hypothesis is visible; it is NOT a new arithmetic axiom. -/
theorem collarResidual_allRates_iff_long
    (hshort : ShortRatioUniformAllRateTarget)
    (B : ℕ → PrimeBand) :
    AllRatesOnFixedDyadicGrid
        (fun J => collarResidualCross (B J) ∅ J) ↔
      AllRatesOnFixedDyadicGrid
        (fun J => longOrIncomparableCross (B J) ∅ J) := by
  constructor
  · intro hres ε hε
    obtain ⟨C, hC, hresBound⟩ := hres ε hε
    obtain ⟨D, hD, hshortBound⟩ := hshort ε hε
    refine ⟨C + D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hr := hresBound J hJ
    have hi := hshortBound (B J) ∅ J (fun _ _ => True) hJ
    change |shortRatioCross (B J) ∅ J| ≤
      D * Real.exp (ε * dyadicTime J) at hi
    have hs := collarResidual_eq_short_add_long (B J) ∅ J
    have hminus := neg_le_of_abs_le hi
    calc
      longOrIncomparableCross (B J) ∅ J =
          collarResidualCross (B J) ∅ J -
            shortRatioCross (B J) ∅ J := by rw [hs]; ring
      _ ≤ C * Real.exp (ε * dyadicTime J) +
            D * Real.exp (ε * dyadicTime J) := by linarith
      _ = (C + D) * Real.exp (ε * dyadicTime J) := by ring
  · intro hlong ε hε
    obtain ⟨C, hC, hlongBound⟩ := hlong ε hε
    obtain ⟨D, hD, hshortBound⟩ := hshort ε hε
    refine ⟨C + D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hl := hlongBound J hJ
    have hi := hshortBound (B J) ∅ J (fun _ _ => True) hJ
    change |shortRatioCross (B J) ∅ J| ≤
      D * Real.exp (ε * dyadicTime J) at hi
    have hs := collarResidual_eq_short_add_long (B J) ∅ J
    calc
      collarResidualCross (B J) ∅ J =
          shortRatioCross (B J) ∅ J +
            longOrIncomparableCross (B J) ∅ J := hs
      _ ≤ D * Real.exp (ε * dyadicTime J) +
            C * Real.exp (ε * dyadicTime J) := by
              linarith [le_abs_self (shortRatioCross (B J) ∅ J)]
      _ = (C + D) * Real.exp (ε * dyadicTime J) := by ring

end GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
