/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport

/-!
# Null states obstruct positive full-space coercivity

The existing `GapTransport.norm_gap_of_quadratic_bound` converts a full-space
quadratic lower bound into a norm lower bound. Applying that consumer to an
actual nonzero null vector forces the quadratic lower-bound constant to be
nonpositive. No self-adjointness or physical interpretation is needed.

Subtracting an eigenvalue times the identity produces a null vector from its
eigenvector. In particular, a scalar identity operator becomes the zero operator
after subtracting that same scalar identity. Thus positivity of a feature norm
does not by itself supply separation of excitation energies from a vacuum.

These are operator obstructions, not a construction of a quantum field theory,
a physical vacuum, a Hamiltonian, or a Yang--Mills mass gap. A gap above a
nonzero zero-energy vacuum must be formulated on an appropriate restricted
state space, with the restriction and physical source identification proved.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.NullStateCoercivityObstruction

noncomputable section

variable {𝕜 H : Type*} [RCLike 𝕜]
  [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

/-- A full-space quadratic lower-bound constant cannot be positive when the
operator has a specified nonzero null state. The operator need not be
self-adjoint; the conclusion only consumes the displayed real-part bound. -/
theorem global_quadratic_lower_bound_nonpositive_of_null_vector
    (T : H →L[𝕜] H) (Ω : H) (hΩ : Ω ≠ 0) (hnull : T Ω = 0)
    (γ : ℝ)
    (hquad : ∀ x : H, γ * ‖x‖ ^ 2 ≤
      RCLike.re (inner 𝕜 (T x) x)) :
    γ ≤ 0 := by
  have hbound : γ * ‖Ω‖ ≤ 0 := by
    simpa only [hnull, norm_zero] using
      (GapTransport.norm_gap_of_quadratic_bound T γ hquad Ω)
  apply le_of_not_gt
  intro hγ
  exact (not_le_of_gt (mul_pos hγ (norm_pos_iff.mpr hΩ))) hbound

/-- A positive global quadratic coercivity claim is refuted by the specified
nonzero null state; this does not refute a bound on its orthogonal complement. -/
theorem no_positive_global_quadratic_bound_of_null_vector
    (T : H →L[𝕜] H) (Ω : H) (hΩ : Ω ≠ 0) (hnull : T Ω = 0) :
    ¬ ∃ γ : ℝ, 0 < γ ∧
      ∀ x : H, γ * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (T x) x) := by
  rintro ⟨γ, hγ, hquad⟩
  exact (not_le_of_gt hγ)
    (global_quadratic_lower_bound_nonpositive_of_null_vector
      T Ω hΩ hnull γ hquad)

/-- Subtract a specified scalar reference energy from a bounded operator.
The scalar is not asserted to be an eigenvalue or the ground energy. -/
def scalarShift (T : H →L[𝕜] H) (e : 𝕜) : H →L[𝕜] H :=
  T - e • ContinuousLinearMap.id 𝕜 H

@[simp] theorem scalarShift_apply (T : H →L[𝕜] H) (e : 𝕜) (x : H) :
    scalarShift T e x = T x - e • x := rfl

/-- An actual eigenvector becomes a null state after subtracting its actual
eigenvalue. No claim that the eigenvalue is minimal is used or inferred. -/
theorem scalarShift_null_of_eigenvector
    (T : H →L[𝕜] H) (e : 𝕜) (Ω : H) (heigen : T Ω = e • Ω) :
    scalarShift T e Ω = 0 := by
  rw [scalarShift_apply, heigen, sub_self]

/-- The null-state obstruction applies to the shifted operator once a nonzero
eigenvector is supplied. An excitation-gap theorem needs a restricted space. -/
theorem scalarShift_no_positive_global_quadratic_bound_of_eigenvector
    (T : H →L[𝕜] H) (e : 𝕜) (Ω : H) (hΩ : Ω ≠ 0)
    (heigen : T Ω = e • Ω) :
    ¬ ∃ γ : ℝ, 0 < γ ∧ ∀ x : H,
      γ * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (scalarShift T e x) x) := by
  exact no_positive_global_quadratic_bound_of_null_vector
    (scalarShift T e) Ω hΩ (scalarShift_null_of_eigenvector T e Ω heigen)

/-- The exact scalar-identity subtraction is zero. In particular, the margin
of a form `e * ‖x‖²` cannot itself be read as a gap above its own scalar level. -/
@[simp] theorem scalarShift_scalar_identity (e : 𝕜) :
    scalarShift (e • ContinuousLinearMap.id 𝕜 H) e = 0 := by
  simp only [scalarShift, sub_self]

/-- The scalar-identity example supplies a concrete null-state obstruction
after its reference level is subtracted, on any space with the given nonzero
state. This is not a counterexample to a physical Yang--Mills assertion. -/
theorem scalar_identity_shift_no_positive_global_quadratic_bound
    (e : 𝕜) (Ω : H) (hΩ : Ω ≠ 0) :
    ¬ ∃ γ : ℝ, 0 < γ ∧ ∀ x : H,
      γ * ‖x‖ ^ 2 ≤
        RCLike.re (inner 𝕜 (scalarShift (e • ContinuousLinearMap.id 𝕜 H) e x) x) := by
  apply no_positive_global_quadratic_bound_of_null_vector
    (scalarShift (e • ContinuousLinearMap.id 𝕜 H) e) Ω hΩ
  simpa only [scalarShift_scalar_identity] using
    (show (0 : H →L[𝕜] H) Ω = 0 from rfl)

end

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.NullStateCoercivityObstruction
