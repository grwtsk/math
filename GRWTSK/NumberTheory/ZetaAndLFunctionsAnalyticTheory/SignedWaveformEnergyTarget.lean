/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import Mathlib.Tactic

/-!
# The complete signed Möbius waveform energy target

Use the existing real Möbius source and causal response verbatim. The closed
inventory includes squareful zeros and the zero-response birth endpoint.
The four parity sectors are retained before integration. No uniform arithmetic
cancellation estimate is assumed by the representation theorems below.
`UniformSignedWaveformEnergyBudget` is the open target, not an instance or axiom.
Compatible coefficient precision lifts remain those of DyadicTwoPowerTower;
they do not replace the real coefficients or the time-dependent weights here.
This is a formally unverified source candidate; publication is not acceptance.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC

namespace GRWTSK.NumberTheory.SignedWaveformEnergy

/-- The literal complete signed sum, with its original causal weights. -/
def waveform (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, moebiusReal n * pickupResponse n u

/-- A source parity partition, without changing any real coefficient. -/
def parityWaveform (r : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if n % 2 = r then moebiusReal n * pickupResponse n u else 0

/-- Ordered parity sectors: 01 and 10 are both retained. -/
def paritySector (r s : ℕ) (u : ℝ) : ℝ :=
  parityWaveform r u * parityWaveform s u

theorem waveform_eq_even_add_odd (u : ℝ) :
    waveform u = parityWaveform 0 u + parityWaveform 1 u := by
  classical
  unfold waveform parityWaveform
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : n % 2 = 0
  · simp [hn]
  · have hn1 : n % 2 = 1 := by omega
    simp [hn, hn1]

/-- Mixed terms remain signed products, not separate positive variances. -/
theorem waveform_sq_eq_fourParitySectors (u : ℝ) :
    waveform u ^ 2 =
      paritySector 0 0 u + paritySector 0 1 u +
        paritySector 1 0 u + paritySector 1 1 u := by
  rw [waveform_eq_even_add_odd]
  unfold paritySector
  ring

/-- The target integrates the square only after the complete signed sum. -/
def energy (T : ℝ) : ℝ := ∫ u in (0 : ℝ)..T, |waveform u| ^ 2

theorem energy_eq_fourParitySectors (T : ℝ) :
    energy T = ∫ u in (0 : ℝ)..T,
      (paritySector 0 0 u + paritySector 0 1 u +
        paritySector 1 0 u + paritySector 1 1 u) := by
  unfold energy
  apply intervalIntegral.integral_congr
  intro u _
  rw [sq_abs, waveform_sq_eq_fourParitySectors]

/-- Exact all-positive-rate target. This proposition is not proved here. -/
def UniformSignedWaveformEnergyBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ Cδ : ℝ, 0 ≤ Cδ ∧ ∀ j : ℕ,
    energy ((j : ℝ) * Real.log 2) ≤ Cδ * (2 : ℝ) ^ (δ * (j : ℝ))

end GRWTSK.NumberTheory.SignedWaveformEnergy
