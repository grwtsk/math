/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Dyadic theta shell cancellation

The quadratic theta recurrence is equivalent to a concrete cancellation statement
for the next prime octave.

For u in [X,2X], define the shell error

  shell(u) = theta(2u) - theta(u) - u.

The exact identity

  thetaError(2u) = thetaError(u) + shell(u)

shows that a recurrence on the next octave [2X,4X] is neither more nor less
than cancellation between the inherited theta error and the new shell.

Consequently the two open nonlinear suppliers are now source-facing:

* at rho=7/8, the shell must cancel the inherited error down to 3/4 scale;
* at rho=3/4, it must cancel the inherited error down to 1/2 scale.

No such cancellation estimate is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SHELL_RECURRENCE_EQUIVALENCE_TYPED / PRIME_SHELL_CANCELLATION_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Error contributed by the next dyadic Chebyshev-theta shell. -/
def thetaShellError (u : ℝ) : ℝ :=
  θ (2 * u) - θ u - u

/-- Exact dyadic parent/shell decomposition. -/
theorem thetaError_two_mul (u : ℝ) :
    thetaError (2 * u) =
      thetaError u + thetaShellError u := by
  unfold thetaError thetaShellError
  ring

/-- Every point of the next octave has a half-scale parent in the current
octave. -/
theorem half_mem_current_octave_of_mem_next
    (j : ℕ) {v : ℝ}
    (hv :
      v ∈ Set.Icc
        (((dyadicScale (j + 1) : ℕ) : ℝ))
        (((2 * dyadicScale (j + 1) : ℕ) : ℝ))) :
    v / 2 ∈ Set.Icc
      (((dyadicScale j : ℕ) : ℝ))
      (((2 * dyadicScale j : ℕ) : ℝ)) := by
  have hscale :
      (((dyadicScale (j + 1) : ℕ) : ℝ)) =
        2 * (((dyadicScale j : ℕ) : ℝ)) := by
    exact_mod_cast dyadicScale_succ_eq_two_mul j
  have hupper :
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) =
        4 * (((dyadicScale j : ℕ) : ℝ)) := by
    calc
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ))
          = 2 * (((dyadicScale (j + 1) : ℕ) : ℝ)) := by
              norm_num
      _ = 4 * (((dyadicScale j : ℕ) : ℝ)) := by
              rw [hscale]
              ring
  constructor
  · have h := hv.1
    rw [hscale] at h
    linarith
  · have h := hv.2
    rw [hupper] at h
    linarith

/-- Doubling a current-octave point lands in the next octave. -/
theorem two_mul_mem_next_octave_of_mem_current
    (j : ℕ) {u : ℝ}
    (hu :
      u ∈ Set.Icc
        (((dyadicScale j : ℕ) : ℝ))
        (((2 * dyadicScale j : ℕ) : ℝ))) :
    2 * u ∈ Set.Icc
      (((dyadicScale (j + 1) : ℕ) : ℝ))
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) := by
  have hscale :
      (((dyadicScale (j + 1) : ℕ) : ℝ)) =
        2 * (((dyadicScale j : ℕ) : ℝ)) := by
    exact_mod_cast dyadicScale_succ_eq_two_mul j
  have hupper :
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) =
        4 * (((dyadicScale j : ℕ) : ℝ)) := by
    calc
      (((2 * dyadicScale (j + 1) : ℕ) : ℝ))
          = 2 * (((dyadicScale (j + 1) : ℕ) : ℝ)) := by
              norm_num
      _ = 4 * (((dyadicScale j : ℕ) : ℝ)) := by
              rw [hscale]
              ring
  constructor
  · rw [hscale]
    linarith [hu.1]
  · rw [hupper]
    linarith [hu.2]

/-- Source-facing form of the nonlinear recurrence. The new theta shell must
cancel the inherited error down to the quadratic scale. -/
def QuadraticThetaShellCancellationAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ A : ℝ, 0 ≤ A →
        (∀ u ∈ Set.Icc
              (((dyadicScale j : ℕ) : ℝ))
              (((2 * dyadicScale j : ℕ) : ℝ)),
          |thetaError u| + 1 ≤ A) →
        ∀ u ∈ Set.Icc
              (((dyadicScale j : ℕ) : ℝ))
              (((2 * dyadicScale j : ℕ) : ℝ)),
          |thetaError u + thetaShellError u| + 1 ≤
            K * A^2 / (dyadicScale j : ℝ) +
              R * Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + η / 2)

/-- Shell cancellation gives the previously isolated next-octave recurrence. -/
theorem quadraticThetaShellCancellation_to_recurrence
    {ρ : ℝ}
    (hshell : QuadraticThetaShellCancellationAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hcancel⟩ := hshell η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henv v hv
  let u : ℝ := v / 2
  have hu :
      u ∈ Set.Icc
        (((dyadicScale j : ℕ) : ℝ))
        (((2 * dyadicScale j : ℕ) : ℝ)) := by
    dsimp [u]
    exact half_mem_current_octave_of_mem_next j hv
  have hc := hcancel j hj A hA henv u hu
  have hdecomp :
      thetaError v = thetaError u + thetaShellError u := by
    have htwo : 2 * u = v := by
      dsimp [u]
      ring
    rw [← htwo, thetaError_two_mul]
  rw [hdecomp]
  exact hc

/-- Conversely, the next-octave recurrence is exactly a shell-cancellation
estimate after the substitution v=2u. -/
theorem quadraticThetaRecurrence_to_shellCancellation
    {ρ : ℝ}
    (hrec : QuadraticThetaSourceRecurrenceAt ρ) :
    QuadraticThetaShellCancellationAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstep⟩ := hrec η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henv u hu
  have hv :
      2 * u ∈ Set.Icc
        (((dyadicScale (j + 1) : ℕ) : ℝ))
        (((2 * dyadicScale (j + 1) : ℕ) : ℝ)) :=
    two_mul_mem_next_octave_of_mem_current j hu
  have hs := hstep j hj A hA henv (2 * u) hv
  rw [thetaError_two_mul] at hs
  exact hs

/-- The recurrence frontier and the prime-shell cancellation frontier are
definitionally different but mathematically equivalent. -/
theorem quadraticThetaSourceRecurrence_iff_shellCancellation
    (ρ : ℝ) :
    QuadraticThetaSourceRecurrenceAt ρ ↔
      QuadraticThetaShellCancellationAt ρ :=
  ⟨quadraticThetaRecurrence_to_shellCancellation,
    quadraticThetaShellCancellation_to_recurrence⟩

/-- Two explicit shell-cancellation suppliers at 7/8 and 3/4 are sufficient
for the already typed two-step nonlinear return to RH. -/
theorem twoStepQuadraticShellCancellation_to_rh
    (hθ : AllDyadicThetaAtThreshold ((7 : ℝ) / 8))
    (h78 :
      QuadraticThetaShellCancellationAt ((7 : ℝ) / 8))
    (h34 :
      QuadraticThetaShellCancellationAt ((3 : ℝ) / 4)) :
    _root_.RiemannHypothesis :=
  twoStepQuadraticRecurrence_to_rh hθ
    (quadraticThetaShellCancellation_to_recurrence h78)
    (quadraticThetaShellCancellation_to_recurrence h34)

end GRWTSK.RiemannHypothesis
