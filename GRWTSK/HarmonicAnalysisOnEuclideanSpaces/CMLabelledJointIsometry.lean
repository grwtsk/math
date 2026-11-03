/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib code and its authorship/license are unchanged.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbert
import Mathlib.Analysis.InnerProductSpace.ProdL2
import Mathlib.Tactic

/-!
# A genuine positive-Hilbert isometric joint comparison

This source constructs canonical linear isometries from two ALREADY normed,
complete, complex inner product spaces H and C into the Hilbert direct sum
`WithLp 2 (H × C)`. There is no claim that H and C themselves are isometrically
equivalent, or that the rational Betti source carries a canonical Hodge metric.

Given the actual closed span of cycle classes in H, its orthogonal projector
extends to the first factor, while the full second factor survives the
orthogonal residual. The exact L2 norm, not a supremum product norm, is used.
The two natural inclusions do not discard any source degree of freedom.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry

universe u v
variable {H : Type u} {C : Type v}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
variable [NormedAddCommGroup C] [InnerProductSpace ℂ C] [CompleteSpace C]

/-- The complete, positive, *L2*-normed joint Hilbert carrier. -/
abbrev Joint (H : Type u) (C : Type v) := WithLp 2 (H × C)

/-- The selected CM Hilbert space is literally an isometric first summand. -/
def includeCM : H →ₗᵢ[ℂ] Joint H C where
  toFun x := WithLp.toLp 2 (x, (0 : C))
  map_add' x y := by
    apply WithLp.toLp_injective 2
    simp
  map_smul' c x := by
    apply WithLp.toLp_injective 2
    simp
  norm_map' x := by simp

/-- The full latent-plus-observed source Hilbert space is an isometric
second summand, including observed zeros before causal birth. -/
def includeCausal : C →ₗᵢ[ℂ] Joint H C where
  toFun y := WithLp.toLp 2 ((0 : H), y)
  map_add' x y := by
    apply WithLp.toLp_injective 2
    simp
  map_smul' c x := by
    apply WithLp.toLp_injective 2
    simp
  norm_map' y := by simp

@[simp] theorem includeCM_apply (x : H) :
    includeCM (H := H) (C := C) x = WithLp.toLp 2 (x, (0 : C)) := rfl

@[simp] theorem includeCausal_apply (y : C) :
    includeCausal (H := H) (C := C) y = WithLp.toLp 2 ((0 : H), y) := rfl

/-- Fidelity of the two normed source spaces. -/
theorem includeCM_norm (x : H) :
    ‖includeCM (H := H) (C := C) x‖ = ‖x‖ :=
  (includeCM (H := H) (C := C)).norm_map x

theorem includeCausal_norm (y : C) :
    ‖includeCausal (H := H) (C := C) y‖ = ‖y‖ :=
  (includeCausal (H := H) (C := C)).norm_map y

/-- Inner-product orthogonality is between the TWO source factors; it does
not assert orthogonality of their signed scalar observations. -/
theorem includeCM_orthogonal_includeCausal (x : H) (y : C) :
    inner ℂ (includeCM (H := H) (C := C) x)
      (includeCausal (H := H) (C := C) y) = 0 := by
  simp [includeCM, includeCausal, WithLp.prod_inner_apply]

/-- The source is reconstructed by its two genuine isometric inclusions. -/
theorem joint_reconstruction (z : Joint H C) :
    includeCM (H := H) (C := C) z.fst +
      includeCausal (H := H) (C := C) z.snd = z := by
  apply WithLp.toLp_injective 2
  simp [includeCM, includeCausal]

/-- Exact positive energy splitting for every joint Hilbert vector. -/
theorem joint_energy (z : Joint H C) :
    ‖z‖ ^ 2 = ‖z.fst‖ ^ 2 + ‖z.snd‖ ^ 2 :=
  WithLp.prod_norm_sq_eq_of_L2 z

/-- Extend the ACTUAL selected algebraic orthogonal projector to the
first summand; the causal source carries no invented algebraic class. -/
def jointAlgebraicProjection (cycles : Set H) :
    Joint H C →L[ℂ] Joint H C :=
  let fst : Joint H C →L[ℂ] H := WithLp.fstL 2 ℂ H C
  let result : Joint H C →L[ℂ] (H × C) :=
    ((algebraicProjection cycles).comp fst).prod 0
  ((WithLp.prodContinuousLinearEquiv 2 ℂ H C).symm :
    (H × C) →L[ℂ] Joint H C).comp result

/-- Orthogonal complement of the *geometric* selected CM carrier in the
joint space, including EVERY causal source coordinate. -/
def jointResidualProjection (cycles : Set H) :
    Joint H C →L[ℂ] Joint H C :=
  let fst : Joint H C →L[ℂ] H := WithLp.fstL 2 ℂ H C
  let snd : Joint H C →L[ℂ] C := WithLp.sndL 2 ℂ H C
  let result : Joint H C →L[ℂ] (H × C) :=
    ((residualProjection cycles).comp fst).prod snd
  ((WithLp.prodContinuousLinearEquiv 2 ℂ H C).symm :
    (H × C) →L[ℂ] Joint H C).comp result

@[simp] theorem jointAlgebraicProjection_apply (cycles : Set H) (z : Joint H C) :
    jointAlgebraicProjection (H := H) (C := C) cycles z =
      WithLp.toLp 2 (algebraicProjection cycles z.fst, (0 : C)) := rfl

@[simp] theorem jointResidualProjection_apply (cycles : Set H) (z : Joint H C) :
    jointResidualProjection (H := H) (C := C) cycles z =
      WithLp.toLp 2 (residualProjection cycles z.fst, z.snd) := rfl

/-- Every vector survives; neither the CM-orthogonal part nor the entire
causal fiber is silently deleted. -/
theorem joint_projection_reconstructs (cycles : Set H) (z : Joint H C) :
    jointAlgebraicProjection (H := H) (C := C) cycles z +
      jointResidualProjection (H := H) (C := C) cycles z = z := by
  apply WithLp.toLp_injective 2
  apply Prod.ext
  · simpa using complete_reconstruction cycles z.fst
  · simp

/-- Pythagoras on the REAL geometrically selected projector. The signed
scalar observation, if any, is a different nonorthogonal operation. -/
theorem joint_projection_energy (cycles : Set H) (z : Joint H C) :
    ‖z‖ ^ 2 =
      ‖jointAlgebraicProjection (H := H) (C := C) cycles z‖ ^ 2 +
      ‖jointResidualProjection (H := H) (C := C) cycles z‖ ^ 2 := by
  rw [joint_energy, WithLp.prod_norm_sq_eq_of_L2,
      WithLp.prod_norm_sq_eq_of_L2]
  simp only [jointAlgebraicProjection_apply, jointResidualProjection_apply,
    WithLp.toLp_fst, WithLp.toLp_snd, norm_zero]
  have h := complete_energy_split cycles z.fst
  linarith

/-- The literal causal Hilbert space lies inside the complete CM-complement
of this JOINT construction, not in an artificially labelled Betti class. -/
theorem causal_is_in_joint_residual (cycles : Set H) (y : C) :
    jointResidualProjection (H := H) (C := C) cycles
      (includeCausal (H := H) (C := C) y) =
      includeCausal (H := H) (C := C) y := by
  simp [jointResidualProjection_apply]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMLabelledJointIsometry
