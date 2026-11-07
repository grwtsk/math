/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.SpinHolonomyFiniteDiffusion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSignedDiffusion
import GRWTSK.MeasureAndIntegration.PrimePhaseMultiplierBounds
import Mathlib.Tactic

/-!
# Genuine complex prime-phase diffusion on original tagged events

The prior SpinHolonomyFiniteDiffusion uses BOOL signs on actual quiver events.
The Fourier prime phase is instead the original PPNC.primePhase n xi =
exp(-i*xi*log n), an arbitrary unit complex number, NOT an assumed Z/2
sheet sign. This module retains the exact original event-arrow identities,
Markov weights, and an explicit arithmetic label n per arrow.

The ordinary and prime-twisted complex steps differ by the FULL complex
edge residual sum w_e*(phase_e-1)*f(target(e)). It is never set to zero
by unit norm or by Markov row normalization. The zero-frequency multiplier
is one, so the original complexified Markov step returns exactly.

For the genuine radius-two 64-mode Weil heatHead, event diffusion is
compared only through an explicit modewise source mismatch plus the
separate prime-phase defect. No canonical mapping of the 64 physical
sine modes to arithmetic prime-power events is constructed.

Source comparison: actual PPNC.primePhase and its norm-one theorem;
SpinHolonomyFiniteDiffusion.EventDiffusion; RadiusTwoSignedDiffusion.heatHead.
These are finite linear identities, not a Weil-positive form, proof of
uniform contraction of a complex twist, Dirichlet-GRH return or RH proof.
No Lean compilation, kernel audit or independent review has been run.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseEventDiffusion

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyFiniteDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpinHolonomyEventWalk
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSignedDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries

universe u
variable {V : Type u} [Quiver V] [Fintype V] [DecidableEq V]
  [Fintype (Event V)]

/-- Every edge keeps its independent arithmetic integer label. A label map
is input data, not a claimed prime-power/Weil incidence certificate. -/
def sourcePrimePhase (primeLabel : Event V → ℕ)
    (xi : ℝ) (e : Event V) : ℂ :=
  PPNC.primePhase (primeLabel e) xi

theorem sourcePrimePhase_unit
    (primeLabel : Event V → ℕ) (xi : ℝ) (e : Event V) :
    ‖sourcePrimePhase primeLabel xi e‖ = 1 :=
  PPNC.primePhase_norm (primeLabel e) xi

theorem phase_at_zero (n : ℕ) : PPNC.primePhase n 0 = 1 := by
  simp [PPNC.primePhase]

theorem sourcePrimePhase_zero (primeLabel : Event V → ℕ)
    (e : Event V) : sourcePrimePhase primeLabel 0 e = 1 :=
  phase_at_zero (primeLabel e)

namespace EventDiffusion

/-- Complexification of the original unsigned Markov step. -/
def plainComplexStep (D : EventDiffusion V)
    (f : V → ℂ) : V → ℂ :=
  fun i => ∑ e : Event V,
    if e.1 = i then (D.weight e : ℂ) * f e.2.1 else 0

/-- Genuine prime-frequency twist. A general U(1) phase cannot be
silently reduced to the existing Bool two-sheet lift. -/
def primeComplexStep (D : EventDiffusion V)
    (primeLabel : Event V → ℕ) (xi : ℝ)
    (f : V → ℂ) : V → ℂ :=
  fun i => ∑ e : Event V,
    if e.1 = i then
      (D.weight e : ℂ) * sourcePrimePhase primeLabel xi e * f e.2.1
    else 0

/-- Exact charged failure of phase-twisted diffusion to coincide with
the original unsigned Markov transport. -/
def primeComplexDefect (D : EventDiffusion V)
    (primeLabel : Event V → ℕ) (xi : ℝ)
    (f : V → ℂ) : V → ℂ :=
  fun i => ∑ e : Event V,
    if e.1 = i then
      (D.weight e : ℂ) * (sourcePrimePhase primeLabel xi e - 1) *
        f e.2.1
    else 0

theorem primeComplexStep_eq_plain_add_defect
    (D : EventDiffusion V) (primeLabel : Event V → ℕ)
    (xi : ℝ) (f : V → ℂ) :
    D.primeComplexStep primeLabel xi f =
      D.plainComplexStep f + D.primeComplexDefect primeLabel xi f := by
  funext i
  simp only [Pi.add_apply]
  unfold primeComplexStep plainComplexStep primeComplexDefect
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e.1 = i
  · simp only [if_pos h]
    ring
  · simp [h]

/-- Zero frequency is a genuine exact return, not a small-defect claim. -/
theorem primeComplexStep_zero
    (D : EventDiffusion V) (primeLabel : Event V → ℕ)
    (f : V → ℂ) :
    D.primeComplexStep primeLabel 0 f = D.plainComplexStep f := by
  funext i
  unfold primeComplexStep plainComplexStep
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e.1 = i
  · simp [h, sourcePrimePhase_zero]
  · simp [h]

theorem primeComplexDefect_zero
    (D : EventDiffusion V) (primeLabel : Event V → ℕ)
    (f : V → ℂ) :
    D.primeComplexDefect primeLabel 0 f = 0 := by
  funext i
  simp [primeComplexDefect, sourcePrimePhase_zero]

/-- A complex prime-phase step agrees with the existing Bool-holonomy
signed step ONLY under a source-exact edgewise phase comparison. A
generic unit phase does not satisfy this Z/2 requirement. -/
theorem primeComplexStep_of_bit_phase_match
    (D : EventDiffusion V) (primeLabel : Event V → ℕ)
    (xi : ℝ) (f : V → ℂ)
    (hmatch : ∀ e : Event V,
      sourcePrimePhase primeLabel xi e = bitSign ℂ (D.phase e)) :
    D.primeComplexStep primeLabel xi f =
      (fun i => ∑ e : Event V,
        if e.1 = i then
          (D.weight e : ℂ) * bitSign ℂ (D.phase e) * f e.2.1
        else 0) := by
  funext i
  unfold primeComplexStep
  apply Finset.sum_congr rfl
  intro e he
  by_cases h : e.1 = i
  · simp [h, hmatch e]
  · simp [h]

/-- At frequency zero every Fourier phase is +1, so it cannot model a
negative original Bool holonomy edge by silently identifying carriers. -/
theorem zero_phase_not_negative_bit
    (D : EventDiffusion V) (primeLabel : Event V → ℕ)
    (e : Event V) (hneg : D.phase e = true) :
    sourcePrimePhase primeLabel 0 e ≠ bitSign ℂ (D.phase e) := by
  rw [sourcePrimePhase_zero, hneg]
  norm_num [bitSign]

end EventDiffusion

section PhysicalWeil

variable [Quiver (Fin 64)] [Fintype (Event (Fin 64))]

/-- The original 64 real physical sine coordinates as complex data.
The scalar zeta pole is NOT a prime-phase mode. -/
def physicalModeComplex (v : Head → ℝ) : Fin 64 → ℂ :=
  fun i => (v (.inl i) : ℂ)

/-- A fully priced difference between a supplied original-arrow Markov step
and the ACTUAL radius-two 3/4-1/4 physical Weil heatHead. -/
def eventVsWeilHeat (D : EventDiffusion (Fin 64))
    (v : Head → ℝ) (i : Fin 64) : ℂ :=
  D.plainComplexStep (physicalModeComplex v) i -
    (heatHead v (.inl i) : ℂ)

/-- The extra Fourier phase defect is independent of the event-to-Weil
mode mismatch. The two may not be merged by an unproved intertwining. -/
def primeVsPlain (D : EventDiffusion (Fin 64))
    (primeLabel : Event (Fin 64) → ℕ)
    (xi : ℝ) (v : Head → ℝ) (i : Fin 64) : ℂ :=
  D.primeComplexDefect primeLabel xi (physicalModeComplex v) i

/-- A nonvacuous source-to-consumer identity for EVERY supplied finite
event system: original physical heat plus its complete event and phase
residuals equals the true prime-phase event diffusion. -/
theorem primeEvent_eq_WeilHeat_add_both_defects
    (D : EventDiffusion (Fin 64))
    (primeLabel : Event (Fin 64) → ℕ)
    (xi : ℝ) (v : Head → ℝ) (i : Fin 64) :
    D.primeComplexStep primeLabel xi (physicalModeComplex v) i =
      (heatHead v (.inl i) : ℂ) +
        eventVsWeilHeat D v i + primeVsPlain D primeLabel xi v i := by
  rw [D.primeComplexStep_eq_plain_add_defect]
  simp only [Pi.add_apply]
  unfold eventVsWeilHeat primeVsPlain
  ring

/-- If the full original event/physical map is separately shown exact,
then ONLY the prime-frequency residual remains. No such map is assumed. -/
theorem primeEvent_eq_WeilHeat_add_phase_defect
    (D : EventDiffusion (Fin 64))
    (primeLabel : Event (Fin 64) → ℕ)
    (xi : ℝ) (v : Head → ℝ) (i : Fin 64)
    (hmatch : eventVsWeilHeat D v i = 0) :
    D.primeComplexStep primeLabel xi (physicalModeComplex v) i =
      (heatHead v (.inl i) : ℂ) +
        primeVsPlain D primeLabel xi v i := by
  rw [primeEvent_eq_WeilHeat_add_both_defects, hmatch]
  ring

/-- No arithmetic phase touches the distinct scalar zeta pole. -/
theorem WeilPole_fixed (v : Head → ℝ) :
    heatHead v (.inr ()) = v (.inr ()) :=
  heat_pole_fixed v

end PhysicalWeil

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseEventDiffusion
