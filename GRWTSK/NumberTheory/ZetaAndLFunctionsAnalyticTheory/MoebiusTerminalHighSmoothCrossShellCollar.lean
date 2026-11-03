/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothAllRateProof
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Global original Möbius cross-shell high-smooth terminal collar

At the fixed original horizon T_J=J log 2, select the original high
P-smooth divisor indices from the last floor(sqrt J)+1 dyadic shells.
The selected prime bank is allowed to depend on J. Every selected
pair keeps the ORIGINAL mu(m)mu(n), pickupResponseGram, m != n, full
ordered orientation and arbitrary finite additive-gap mask A.

The exact finite original source partition below is a Lean proof
CANDIDATE. The paper proof bounds the entire incident packet
(including ALL cross-shell partners) uniformly at every positive
rate when card(P_J) <= floor(sqrt J). The independent cardinal,
endpoint half-harmonic, physical Gram, and rate-comparison proofs
are exposed as a PROPOSITIONAL target until checked in pinned Lean.
No new Möbius cancellation or RH theorem is assumed.

The genuine complementary low/low source contains every unpaid pair.
Compilation and independent verification have been explicitly DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Fixed dyadic time, independent of prime banks and desired rates. -/
def dyadicTime (J : ℕ) : ℝ := (J : ℝ) * Real.log 2

/-- Last floor(sqrt J)+1 ORIGINAL dyadic source shells.
The lower bound 1 prevents the artificial index-zero shell. -/
def terminalShells (J : ℕ) : Finset ℕ :=
  Finset.Icc (max 1 (J - Nat.sqrt J)) J

/-- The original complete endpoint inventory at physical time T_J. -/
def terminalInventory (J : ℕ) : Finset ℕ :=
  endpointIndex (dyadicTime J)

/-- Genuine near-maximal smooth divisors in their actual dyadic shell;
no replacement coefficients, surrogate smooth functions or new
physical response are introduced. -/
def terminalHighCollar (B : PrimeBand) (J : ℕ) : Finset ℕ := by
  classical
  exact (terminalInventory J).filter fun n =>
    ∃ j ∈ terminalShells J,
      n ∈ highSmoothBlock B (2 ^ (j - 1)) (dyadicTime j)

/-- Every selected high index is an ORIGINAL index present at T_J. -/
theorem terminalHighCollar_subset_inventory
    (B : PrimeBand) (J : ℕ) :
    terminalHighCollar B J ⊆ terminalInventory J := by
  classical
  unfold terminalHighCollar
  exact Finset.filter_subset _ _

/-- The exact ORIGINAL signed, ordered and diagonally excluded
Möbius Gram with arbitrary additive-gap exclusion A. -/
def terminalMaskedCross (A : Finset ℕ) (J : ℕ) : ℝ :=
  ∑ m ∈ terminalInventory J, ∑ n ∈ terminalInventory J,
    if m ≠ n ∧ Nat.dist m n ∉ A then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

/-- All ORIGINAL ordered source pairs touching the high-smooth
terminal collar, INCLUDING cross-shell and low-index partners. -/
def collarIncidentCross (B : PrimeBand) (A : Finset ℕ)
    (J : ℕ) : ℝ :=
  ∑ m ∈ terminalInventory J, ∑ n ∈ terminalInventory J,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧
       (m ∈ terminalHighCollar B J ∨ n ∈ terminalHighCollar B J) then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

/-- TRUE complementary source packet. No high incident pair or
unpaid low/low pair is lost, changed, or assigned a new sign. -/
def collarResidualCross (B : PrimeBand) (A : Finset ℕ)
    (J : ℕ) : ℝ :=
  ∑ m ∈ terminalInventory J, ∑ n ∈ terminalInventory J,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧
       m ∉ terminalHighCollar B J ∧ n ∉ terminalHighCollar B J then
      moebiusReal m * moebiusReal n *
        pickupResponseGram (dyadicTime J) m n
    else 0

/-- Exact finite source identity, for ALL true prime banks, shell
indices and masks; neither signed term is bounded by an axiom. -/
theorem terminalMaskedCross_eq_incident_add_residual
    (B : PrimeBand) (A : Finset ℕ) (J : ℕ) :
    terminalMaskedCross A J =
      collarIncidentCross B A J + collarResidualCross B A J := by
  classical
  unfold terminalMaskedCross collarIncidentCross collarResidualCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmask : m ≠ n ∧ Nat.dist m n ∉ A
  · by_cases hmH : m ∈ terminalHighCollar B J
    · simp [hmask, hmH]
    · by_cases hnH : n ∈ terminalHighCollar B J
      · simp [hmask, hmH, hnH]
      · simp [hmask, hmH, hnH]
  · simp [hmask]

/-- Empty additive-gap mask recovers the PREEXISTING pickupCross,
not a new observable. Both pair orientations and the original
finite endpoint cutoff are definitional. -/
theorem terminalMaskedCross_empty_eq_pickupCross (J : ℕ) :
    terminalMaskedCross ∅ J = pickupCross (dyadicTime J) := by
  classical
  unfold terminalMaskedCross terminalInventory pickupCross endpointIndex
  simp

/-- This source identity reaches the EXACT existing RH-facing
original pickupCross on the unchanged fixed dyadic grid. -/
theorem pickupCross_eq_collar_incident_add_residual
    (B : PrimeBand) (J : ℕ) :
    pickupCross (dyadicTime J) =
      collarIncidentCross B ∅ J + collarResidualCross B ∅ J := by
  rw [← terminalMaskedCross_empty_eq_pickupCross J]
  exact terminalMaskedCross_eq_incident_add_residual B ∅ J

/-- The previously paid exact 1/4 endpoint curvature allowance is
charged ONCE, after the entire original signed source is partitioned. -/
theorem endpoint_le_collar_residual_add_incident_abs
    (B : PrimeBand) (J : ℕ) (hT : 0 ≤ dyadicTime J) :
    endpointSum (dyadicTime J) ≤
      collarResidualCross B ∅ J +
        |collarIncidentCross B ∅ J| + 1 / 4 := by
  have he := endpointSum_error hT
  have hs := pickupCross_eq_collar_incident_add_residual B J
  have hu : endpointSum (dyadicTime J) ≤
      pickupCross (dyadicTime J) + 1 / 4 := by
    linarith [(abs_le.mp he).2]
  rw [hs] at hu
  linarith [le_abs_self (collarIncidentCross B ∅ J)]

/-- A single terminal-J independent bank-cardinality rule:
the bank may GROW, but no choice depends on the requested rate. -/
def AdmissibleBankFamily (B : ℕ → PrimeBand) : Prop :=
  ∀ J : ℕ, 1 ≤ J → (B J).primes.card ≤ Nat.sqrt J

/-- Ordinary paper-proved quantitative estimate for the COMPLETE
original incident packet, INCLUDING every cross-shell partner.
Its bank-uniformity is crucial. This declaration remains an
EXPLICIT Lean formalization target, NOT a theorem or axiom.

For J>=1, s=floor(sqrt J), T=J log 2 and |P|<=s:
  |incident| <= 16 T (s+1) 2^((s+1)/2)
                   exp(2 sqrt T) (1+J)^|P|.
No sign independence or Mertens theorem is used. -/
def TerminalCollarQuantitativeTarget : Prop :=
  ∀ (B : ℕ → PrimeBand),
    AdmissibleBankFamily B →
    ∀ J : ℕ, 1 ≤ J →
      ∀ A : Finset ℕ,
        |collarIncidentCross (B J) A J| ≤
        16 * dyadicTime J * ((Nat.sqrt J : ℝ) + 1) *
        (2 : ℝ) ^ (((Nat.sqrt J : ℝ) + 1) / 2) *
        Real.exp (2 * Real.sqrt (dyadicTime J)) *
        (1 + (J : ℝ)) ^ (B J).primes.card

/-- Stronger all-positive-rate form with ONE constant C_epsilon
independent of J and independent of the entire admissible growing
prime-bank family. This is a PROPOSITIONAL numerical target, not
a hidden arithmetic-growth hypothesis inserted as a proved lemma. -/
def UniformCollarAllRateTarget : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : ℕ → PrimeBand),
        AdmissibleBankFamily B →
        ∀ J : ℕ, 1 ≤ J →
          ∀ A : Finset ℕ,
            |collarIncidentCross (B J) A J| ≤
            C * Real.exp (ε * dyadicTime J)

/-- The fixed-grid arithmetic growth quantifiers consumed by
the original endpoint criterion. At J>=1 the grid has bounded
gaps of size log 2, independently of rates and source tags. -/
def AllRatesOnFixedDyadicGrid (v : ℕ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ J : ℕ, 1 ≤ J →
        v J ≤ C * Real.exp (ε * dyadicTime J)

/-- If the separately exposed elementary collar bound is supplied,
the original complete signed all-rate target is EQUIVALENT to the
explicit remaining original low/low collar residual. The proof
does NOT grant the still-RH-strength residual estimate. -/
theorem pickupCross_allRates_iff_collarResidual_allRates
    (hcollar : UniformCollarAllRateTarget)
    (B : ℕ → PrimeBand) (hB : AdmissibleBankFamily B) :
    AllRatesOnFixedDyadicGrid
        (fun J => pickupCross (dyadicTime J)) ↔
      AllRatesOnFixedDyadicGrid
        (fun J => collarResidualCross (B J) ∅ J) := by
  constructor
  · intro hmain ε hε
    obtain ⟨C, hC, hmain_bound⟩ := hmain ε hε
    obtain ⟨D, hD, hcollar_bound⟩ := hcollar ε hε
    refine ⟨C + D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hm := hmain_bound J hJ
    have hi := hcollar_bound B hB J hJ ∅
    have hs := pickupCross_eq_collar_incident_add_residual (B J) J
    have hl := neg_le_of_abs_le hi
    calc
      collarResidualCross (B J) ∅ J =
          pickupCross (dyadicTime J) -
            collarIncidentCross (B J) ∅ J := by rw [hs]; ring
      _ ≤ C * Real.exp (ε * dyadicTime J) +
            D * Real.exp (ε * dyadicTime J) := by linarith
      _ = (C + D) * Real.exp (ε * dyadicTime J) := by ring
  · intro hres ε hε
    obtain ⟨C, hC, hres_bound⟩ := hres ε hε
    obtain ⟨D, hD, hcollar_bound⟩ := hcollar ε hε
    refine ⟨C + D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hr := hres_bound J hJ
    have hi := hcollar_bound B hB J hJ ∅
    have hs := pickupCross_eq_collar_incident_add_residual (B J) J
    calc
      pickupCross (dyadicTime J) =
          collarIncidentCross (B J) ∅ J +
            collarResidualCross (B J) ∅ J := hs
      _ ≤ D * Real.exp (ε * dyadicTime J) +
            C * Real.exp (ε * dyadicTime J) := by
              linarith [le_abs_self (collarIncidentCross (B J) ∅ J)]
      _ = (C + D) * Real.exp (ε * dyadicTime J) := by ring

end GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
