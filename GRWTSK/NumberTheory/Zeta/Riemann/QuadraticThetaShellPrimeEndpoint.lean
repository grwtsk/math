/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellCancellation
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Prime endpoint form of the dyadic theta shell

The nonlinear shell recurrence is uniform in u on one dyadic octave.  The
existing prime-only endpoint coordinate is naturally anchored at u=X.

For positive natural X, the exact literal prime formula gives

  thetaShellError(X)
    = X * (primeOnlyMass0(X) + primeOnlyMass1(X)).

Thus the prime-only endpoint moments are exactly the normalized new-shell error
at the left endpoint of an octave.

This file separates two obligations:

1. endpoint cancellation, which can be stated entirely in the existing
   prime-only arithmetic coordinates; and
2. uniformization from the endpoint u=X to every u in [X,2X].

The second obligation is not supplied here.  In particular, the existing
endpoint identities do not by themselves prove the uniform shell recurrence.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
PRIME_ENDPOINT_SHELL_IDENTITY_EXACT / UNIFORM_SHELL_EXTENSION_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- The prime-only endpoint moments are exactly the normalized theta-shell
error at the dyadic anchor. -/
theorem thetaShellError_natCast_eq_primeOnlyEndpoint
    {X : ℕ} (hX : 0 < X) :
    thetaShellError (X : ℝ) =
      (X : ℝ) * (primeOnlyMass0 X + primeOnlyMass1 X) := by
  have hmass :=
    primeOnlyMass0_add_mass1_eq_theta_increment hX
  have hXr : (X : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hX)
  unfold thetaShellError
  rw [hmass]
  push_cast
  field_simp [hXr]
  ring

/-- Endpoint-only version of the nonlinear shell cancellation statement.
It retains the same envelope premise, but asks for cancellation only at u=X. -/
def QuadraticThetaShellAnchorCancellationAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ A : ℝ, 0 ≤ A →
        (∀ u ∈ Set.Icc
              (((dyadicScale j : ℕ) : ℝ))
              (((2 * dyadicScale j : ℕ) : ℝ)),
          |thetaError u| + 1 ≤ A) →
        |thetaError (dyadicScale j : ℝ) +
            thetaShellError (dyadicScale j : ℝ)| + 1 ≤
          K * A^2 / (dyadicScale j : ℝ) +
            R * Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ + η / 2)

/-- Uniform shell cancellation immediately gives its dyadic-anchor
specialization. -/
theorem quadraticThetaShellCancellation_to_anchor
    {ρ : ℝ}
    (hshell : QuadraticThetaShellCancellationAt ρ) :
    QuadraticThetaShellAnchorCancellationAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hcancel⟩ := hshell η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henv
  have hX : 0 < dyadicScale j := dyadicScale_pos j
  have hmem :
      ((dyadicScale j : ℕ) : ℝ) ∈
        Set.Icc
          (((dyadicScale j : ℕ) : ℝ))
          (((2 * dyadicScale j : ℕ) : ℝ)) := by
    constructor
    · exact le_rfl
    · norm_num
  exact hcancel j hj A hA henv (dyadicScale j : ℝ) hmem

/-- Prime-coordinate formulation of endpoint cancellation.  The only shell
term is the exact endpoint moment already exposed by the prime-only witness. -/
def QuadraticPrimeEndpointCancellationAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ A : ℝ, 0 ≤ A →
        (∀ u ∈ Set.Icc
              (((dyadicScale j : ℕ) : ℝ))
              (((2 * dyadicScale j : ℕ) : ℝ)),
          |thetaError u| + 1 ≤ A) →
        |thetaError (dyadicScale j : ℝ) +
            (dyadicScale j : ℝ) *
              (primeOnlyMass0 (dyadicScale j) +
                primeOnlyMass1 (dyadicScale j))| + 1 ≤
          K * A^2 / (dyadicScale j : ℝ) +
            R * Real.rpow (dyadicScale j : ℝ)
              (quadraticThreshold ρ + η / 2)

/-- Endpoint shell cancellation and prime-only endpoint cancellation are
exactly equivalent. -/
theorem quadraticThetaShellAnchorCancellation_iff_primeEndpoint
    (ρ : ℝ) :
    QuadraticThetaShellAnchorCancellationAt ρ ↔
      QuadraticPrimeEndpointCancellationAt ρ := by
  constructor
  · intro h
    intro η hη
    obtain ⟨K, hK, R, hR, j₀, hcancel⟩ := h η hη
    refine ⟨K, hK, R, hR, j₀, ?_⟩
    intro j hj A hA henv
    have hshell :=
      thetaShellError_natCast_eq_primeOnlyEndpoint
        (dyadicScale_pos j)
    simpa [hshell] using hcancel j hj A hA henv
  · intro h
    intro η hη
    obtain ⟨K, hK, R, hR, j₀, hcancel⟩ := h η hη
    refine ⟨K, hK, R, hR, j₀, ?_⟩
    intro j hj A hA henv
    have hshell :=
      thetaShellError_natCast_eq_primeOnlyEndpoint
        (dyadicScale_pos j)
    simpa [hshell] using hcancel j hj A hA henv

/-- The exact remaining bridge after endpoint arithmetic is isolated explicitly:
upgrade dyadic-anchor cancellation to uniform cancellation over the octave. -/
def ThetaShellAnchorUniformizationAt (ρ : ℝ) : Prop :=
  QuadraticThetaShellAnchorCancellationAt ρ →
    QuadraticThetaShellCancellationAt ρ

/-- Prime endpoint cancellation plus a genuine uniformization theorem recovers
the nonlinear source recurrence. -/
theorem primeEndpointCancellation_uniformization_to_recurrence
    {ρ : ℝ}
    (hprime : QuadraticPrimeEndpointCancellationAt ρ)
    (huniform : ThetaShellAnchorUniformizationAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ := by
  have hanchor :
      QuadraticThetaShellAnchorCancellationAt ρ :=
    (quadraticThetaShellAnchorCancellation_iff_primeEndpoint ρ).2 hprime
  exact quadraticThetaShellCancellation_to_recurrence
    (huniform hanchor)

/-- At rho=7/8, the prime-side nonlinear obligation is now split into the
endpoint arithmetic estimate and the uniformization theorem. -/
theorem sevenEighths_primeEndpoint_uniformization_to_recurrence
    (hprime :
      QuadraticPrimeEndpointCancellationAt ((7 : ℝ) / 8))
    (huniform :
      ThetaShellAnchorUniformizationAt ((7 : ℝ) / 8)) :
    QuadraticThetaSourceRecurrenceAt ((7 : ℝ) / 8) :=
  primeEndpointCancellation_uniformization_to_recurrence hprime huniform

end GRWTSK.RiemannHypothesis
