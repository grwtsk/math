/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelBoundaryClosure
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Literal Liouville causal birth collar and complete signed gap partition

The ORIGINAL positive-index pickup response, Liouville coefficients,
positive-gap triangle mask, and causal integral are reused unchanged.

Finite source theorem CANDIDATES prove the fixed-inventory waveform split
and exact three-sector signed positive-gap partition. The accompanying
mathematical review proves the uniform fifth-power birth-collar energy
estimate and the signed long-gap supplier equivalence analytically.
Those interval-integral results remain explicitly OPEN Lean formalization
targets: they are not silently asserted as theorems or axioms.

No arithmetic cancellation, arbitrary remainder, RH result, native
verification, or new trust primitive is introduced here.
-/

namespace GRWTSK.NumberTheory.LiouvilleCausalBirthCollar

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel

/-- The complete finite ORIGINAL source inventory at horizon log N. -/
def fixedWaveform (N : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, coefficient n * pickupResponse n u

/-- Bulk positive source indices, with the original cutoff inventory. -/
def bulkWaveform (N R : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    if n ≤ R then coefficient n * pickupResponse n u else 0

/-- Remaining original source indices, including their actual birth zeros. -/
def collarWaveform (N R : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    if R < n then coefficient n * pickupResponse n u else 0

/-- No omitted coefficient or sign in the fixed inventory, even at N=0. -/
theorem fixedWaveform_eq_bulk_add_collar
    (N R : ℕ) (u : ℝ) :
    fixedWaveform N u =
      bulkWaveform N R u + collarWaveform N R u := by
  classical
  unfold fixedWaveform bulkWaveform collarWaveform
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : n ≤ R
  · have hnnot : ¬ R < n := not_lt.mpr hn
    simp [hn, hnnot]
  · have hnlt : R < n := lt_of_not_ge hn
    simp [hn, hnlt]

/-- The original signed source on SHORT gaps inside the bulk. -/
def interiorShortGapAggregate (N R G : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    if mg.1 + mg.2 ≤ R ∧ mg.2 ≤ G then
      signedPair N mg.1 mg.2 *
        causalKernel (Real.log (N : ℝ)) mg.1 mg.2
    else 0

/-- The complete original signed source on LONG gaps inside the bulk. -/
def interiorLongGapAggregate (N R G : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    if mg.1 + mg.2 ≤ R ∧ G < mg.2 then
      signedPair N mg.1 mg.2 *
        causalKernel (Real.log (N : ℝ)) mg.1 mg.2
    else 0

/-- Every remaining positive gap, where the second response is born in
the terminal collar. The source's original strict N cutoff is retained. -/
def terminalPairAggregate (N R : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    if R < mg.1 + mg.2 then
      signedPair N mg.1 mg.2 *
        causalKernel (Real.log (N : ℝ)) mg.1 mg.2
    else 0

/-- Exact three-sector decomposition of the complete signed source.
All three terms are STILL SIGNED; none is replaced by its absolute value. -/
theorem positiveGapAggregate_eq_three_sectors
    (N R G : ℕ) :
    positiveGapAggregate N =
      interiorShortGapAggregate N R G +
        interiorLongGapAggregate N R G +
          terminalPairAggregate N R := by
  classical
  unfold positiveGapAggregate interiorShortGapAggregate
    interiorLongGapAggregate terminalPairAggregate
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro mg _
  by_cases hR : mg.1 + mg.2 ≤ R
  · have hnR : ¬ R < mg.1 + mg.2 := not_lt.mpr hR
    by_cases hG : mg.2 ≤ G
    · have hnG : ¬ G < mg.2 := not_lt.mpr hG
      simp [hR, hnR, hG, hnG]
    · have hGt : G < mg.2 := lt_of_not_ge hG
      simp [hR, hnR, hG, hGt]
  · have hRt : R < mg.1 + mg.2 := lt_of_not_ge hR
    simp [hR, hRt]

/-- Physical-time energies of the ORIGINAL fixed-inventory pieces.
They are not substitutes for the dynamic waveform outside 0..log N. -/
def fixedEnergy (N : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..Real.log (N : ℝ), (fixedWaveform N u) ^ 2

def bulkEnergy (N R : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..Real.log (N : ℝ), (bulkWaveform N R u) ^ 2

def collarEnergy (N R : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..Real.log (N : ℝ), (collarWaveform N R u) ^ 2

/-- A scalar identity preserving the complete mixed term of two sources. -/
theorem square_bulk_collar (a b : ℝ) :
    (a + b) ^ 2 = a ^ 2 + 2 * a * b + b ^ 2 := by
  ring

/-- Sign-independent two-piece energy inequality, algebraic core. -/
theorem square_bulk_collar_le (a b : ℝ) :
    (a + b) ^ 2 ≤ 2 * a ^ 2 + 2 * b ^ 2 := by
  nlinarith [sq_nonneg (a - b)]

/-- Exact integer scale: the missing terminal width is a fourth power. -/
def fifthPowerScale (k : ℕ) : ℕ := k ^ 5

def fourthPowerCollar (k : ℕ) : ℕ := k ^ 4

/-- Arithmetic identity behind the uniform W^5/N^4 collar allowance. -/
theorem fifthPower_fourthPower_identity (k : ℕ) :
    (fourthPowerCollar k) ^ 5 = (fifthPowerScale k) ^ 4 := by
  simp only [fifthPowerScale, fourthPowerCollar]
  ring

/-- The collar is at most half the inventory at every k >= 2. -/
theorem fourthPowerCollar_twice_le_fifthPowerScale
    (k : ℕ) (hk : 2 ≤ k) :
    2 * fourthPowerCollar k ≤ fifthPowerScale k := by
  unfold fourthPowerCollar fifthPowerScale
  calc
    2 * k ^ 4 ≤ k * k ^ 4 := Nat.mul_le_mul_right _ hk
    _ = k ^ 5 := by ring

/-- The original time-integral upper estimate is an OPEN Lean gate,
mathematically proved in the accompanying review. This declaration
does not prove it or assume arithmetic cancellation. -/
def FifthPowerCollarEnergyBound : Prop :=
  ∀ k : ℕ, 2 ≤ k →
    collarEnergy (k ^ 5) (k ^ 5 - k ^ 4) ≤ (16 / 3 : ℝ)

/-- The source/dynamic-cutoff and full signed Gram comparison is likewise
an explicit formalization frontier, NOT an accepted Lean theorem. -/
def OriginalWaveformAtFifthPower : Prop :=
  ∀ k : ℕ, 2 ≤ k →
    fixedEnergy (k ^ 5) = energy (Real.log ((k ^ 5 : ℕ) : ℝ))

end GRWTSK.NumberTheory.LiouvilleCausalBirthCollar
