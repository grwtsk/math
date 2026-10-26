/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.KTheory.PrimePowerHeightFiniteSemigroup
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Mathlib matrix-exponential bridge for prime-power height diffusion

This module closes the bounded matrix-exponential obligation left by
`PrimePowerHeightFiniteSemigroup`.

For every finite graph height `h` and real time `t`, it proves the literal
Mathlib identity

`NormedSpace.exp ((-t) • L_h) = P_h + exp(-t) (I - P_h)`,

where `P_h` is the existing three-state transition projection and
`L_h = I - P_h` is the existing normalized discrete Laplacian.

The proof uses the pinned Mathlib exponential power series and an explicit
Frobenius norm on the finite matrix algebra. The exponential itself is
independent of this norm choice; the scoped norm supplies the Banach-algebra
instances needed by the summability theorem.

The result remains finite and algebraic. It does not identify the discrete
height with a zeta-zero ordinate, construct an infinite-dimensional analytic
heat semigroup, produce a Hilbert--Polya operator, transfer Kim--Vu
probabilistic containment to operator order, import Chowla cancellation, prove
RH, or establish the proposed arithmetic compression inequality.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion

open scoped BigOperators Matrix.Norms.Frobenius
open GRWTSK.GraphSandwichDiffusion

namespace AlternatingExponentProfile

/-! ## A reusable idempotent-exponential identity -/

/-- In a real Banach algebra, the exponential of a scalar multiple of an
idempotent has the exact two-point spectral form. -/
theorem normedSpace_exp_smul_idempotent
    {A : Type*} [NormedRing A] [NormedAlgebra ℝ A] [CompleteSpace A]
    (scalar : ℝ) (projection : A)
    (idempotent : IsIdempotentElem projection) :
    NormedSpace.exp (scalar • projection) =
      1 + (Real.exp scalar - 1) • projection := by
  rw [NormedSpace.exp_eq_tsum ℝ]
  change
    (∑' n : ℕ,
      ((n.factorial⁻¹ : ℝ) • (scalar • projection) ^ n)) =
        1 + (Real.exp scalar - 1) • projection
  rw [(NormedSpace.expSeries_summable'
    (𝕂 := ℝ) (scalar • projection)).tsum_eq_zero_add]
  simp only [Nat.factorial_zero, Nat.cast_one, inv_one, pow_zero, one_smul]
  congr 1
  have fullScalarSeries :
      Summable
        (fun n : ℕ =>
          (n.factorial⁻¹ : ℝ) * scalar ^ n) := by
    simpa [smul_eq_mul] using
      (NormedSpace.expSeries_summable' (𝕂 := ℝ) scalar)
  have scalarTail :
      (∑' n : ℕ,
        (((n + 1).factorial⁻¹ : ℝ) * scalar ^ (n + 1))) =
          Real.exp scalar - 1 := by
    rw [Real.exp_eq_exp_ℝ, NormedSpace.exp_eq_tsum ℝ]
    change
      (∑' n : ℕ,
        (((n + 1).factorial⁻¹ : ℝ) * scalar ^ (n + 1))) =
          (∑' n : ℕ,
            ((n.factorial⁻¹ : ℝ) * scalar ^ n)) - 1
    rw [fullScalarSeries.tsum_eq_zero_add]
    simp
  have tailSummable :
      Summable
        (fun n : ℕ =>
          ((n + 1).factorial⁻¹ : ℝ) * scalar ^ (n + 1)) := by
    simpa [mul_comm] using
      fullScalarSeries.comp_injective
        (fun _ _ equality => Nat.succ.inj equality)
  rw [← scalarTail, ← tailSummable.tsum_smul_const projection]
  apply tsum_congr
  intro n
  rw [smul_pow, idempotent.pow_succ_eq]
  simp [smul_smul, mul_comm]

/-! ## Idempotence of the finite normalized Laplacian -/

/-- Matrix multiplication makes the normalized discrete Laplacian an
idempotent element of the finite matrix algebra. -/
theorem laplacianMatrixAt_mul_self
    (height : Nat) :
    laplacianMatrixAt height * laplacianMatrixAt height =
      laplacianMatrixAt height := by
  ext target source
  fin_cases target <;> fin_cases source <;>
    by_cases evenHeight : height % 2 = 0 <;>
      norm_num [
        Matrix.mul_apply,
        laplacianMatrixAt,
        identityEntry,
        transitionMatrixAt_entry,
        firstFraction,
        secondFraction,
        evenHeight,
        Fin.sum_univ_three
      ] <;>
      ring

/-- `laplacianMatrixAt h` as an `IsIdempotentElem` certificate. -/
theorem laplacianMatrixAt_isIdempotent
    (height : Nat) :
    IsIdempotentElem (laplacianMatrixAt height) := by
  change
    laplacianMatrixAt height * laplacianMatrixAt height =
      laplacianMatrixAt height
  exact laplacianMatrixAt_mul_self height

/-- The ring identity matrix agrees entrywise with the explicit identity
coefficient used by the finite-spectrum modules. -/
@[simp]
theorem matrixOne_eq_identityEntry
    (target source : State) :
    (1 : Matrix State State ℝ) target source =
      identityEntry target source := by
  simp [identityEntry]

/-! ## Literal Mathlib matrix exponential -/

/-- The pinned Mathlib matrix exponential of `-t L_h`. -/
def mathlibMatrixExponentialAt
    (height : Nat) (time : ℝ) :
    Matrix State State ℝ :=
  NormedSpace.exp ((-time) • laplacianMatrixAt height)

/-- Exact identification of the Mathlib matrix exponential with the finite
closed-form semigroup. -/
theorem mathlibMatrixExponentialAt_eq_finiteSemigroup
    (height : Nat) (time : ℝ) :
    mathlibMatrixExponentialAt height time =
      finiteSemigroupMatrixAt height time := by
  unfold mathlibMatrixExponentialAt
  rw [normedSpace_exp_smul_idempotent
    (-time) (laplacianMatrixAt height)
    (laplacianMatrixAt_isIdempotent height)]
  ext target source
  simp [
    finiteSemigroupMatrixAt,
    laplacianMatrixAt,
    decay,
    matrixOne_eq_identityEntry
  ]
  ring

/-- The previously conditional `MatrixExponentialBridge` now has a canonical
Mathlib realization for every finite height. -/
def mathlibMatrixExponentialBridge
    (height : Nat) :
    MatrixExponentialBridge height where
  exponential := mathlibMatrixExponentialAt height
  source := mathlibMatrixExponentialSource
  identifies :=
    mathlibMatrixExponentialAt_eq_finiteSemigroup height

/-- Exact action of the literal Mathlib matrix exponential. -/
theorem mathlibMatrixExponentialAt_action
    (height : Nat) (time : ℝ)
    (vector : State → ℝ) :
    matrixAction (mathlibMatrixExponentialAt height time) vector =
      finiteSemigroupActionAt height time vector := by
  exact
    (mathlibMatrixExponentialBridge height).action_eq
      time vector

/-- Every complete finite mode evolves under the literal Mathlib matrix
exponential by `exp(-t λ)`. -/
theorem mathlibMatrixExponentialAt_mode
    (height : Nat) (time : ℝ) (mode : Fin 3) :
    matrixAction (mathlibMatrixExponentialAt height time)
        (spectralModeVector height mode) =
      fun state =>
        Real.exp
            (-time *
              laplacianEigenvalue
                (spectralPointOfMode mode)) *
          spectralModeVector height mode state := by
  exact
    (mathlibMatrixExponentialBridge height).mode_action
      time mode

/-- The Mathlib matrix exponential is the identity at time zero. -/
@[simp]
theorem mathlibMatrixExponentialAt_zero
    (height : Nat) :
    mathlibMatrixExponentialAt height 0 =
      (1 : Matrix State State ℝ) := by
  rw [mathlibMatrixExponentialAt_eq_finiteSemigroup]
  ext target source
  simp [finiteSemigroupMatrixAt_zero]

/-! ## Closed supplier package and provenance -/

/-- Immutable source identity for the exact finite semigroup consumed here. -/
def finiteSemigroupSource : SourceIdentity where
  kind := .leanDeclaration
  identifier :=
    "GRWTSK.Algebra.KTheory.PrimePowerHeightFiniteSemigroup"
  locator :=
    "finiteSemigroupMatrixAt; finiteSemigroupActionAt_add; MatrixExponentialBridge"
  repository := some "grwtsk/math"
  commit := some "d021030eae08cd925b96479d383d40ac2a1b30e1"
  path := some
    "GRWTSK/Algebra/KTheory/PrimePowerHeightFiniteSemigroup.lean"
  blob := some "84e2e3388febf48f02f5549fe90dcc4340b52437"

/-- Complete finite semigroup with the former matrix-exponential supplier
instantiated by the pinned Mathlib implementation. -/
structure CompleteMathlibMatrixExponential (height : Nat) where
  finite : CompleteFiniteSemigroup height
  bridge : MatrixExponentialBridge height
  bridge_spec :
    bridge.exponential = mathlibMatrixExponentialAt height
  identifies :
    ∀ time,
      bridge.exponential time =
        finiteSemigroupMatrixAt height time
  action :
    ∀ time vector,
      matrixAction (bridge.exponential time) vector =
        finiteSemigroupActionAt height time vector
  modeAction :
    ∀ time mode,
      matrixAction (bridge.exponential time)
          (spectralModeVector height mode) =
        fun state =>
          Real.exp
              (-time *
                laplacianEigenvalue
                  (spectralPointOfMode mode)) *
            spectralModeVector height mode state
  proofProvenance : List SourceIdentity
  analogyProvenance : List SourceIdentity
  unresolvedSuppliers : List SourceIdentity

/-- Canonical complete finite Mathlib-exponential package at every graph
height. The matrix-exponential identification supplier is no longer unresolved
inside this package. -/
def completeMathlibMatrixExponentialAt
    (height : Nat) :
    CompleteMathlibMatrixExponential height where
  finite := completeFiniteSemigroupAt height
  bridge := mathlibMatrixExponentialBridge height
  bridge_spec := rfl
  identifies :=
    mathlibMatrixExponentialAt_eq_finiteSemigroup height
  action :=
    mathlibMatrixExponentialAt_action height
  modeAction :=
    mathlibMatrixExponentialAt_mode height
  proofProvenance := [
    finiteSemigroupSource,
    heightTensorSource,
    profileScheduleSource,
    certifiedSearchSource,
    mathlibMatrixExponentialSource
  ]
  analogyProvenance := [
    linearChainSpectrumAnalogy,
    hilbertPolyaAnalogy
  ]
  unresolvedSuppliers := [
    analyticHeatSemigroupSupplier,
    chowlaPositiveWeightSupplier
  ]

/-! ## Comparison boundary -/

/-- Equal certified support at heights zero and one still does not imply equal
literal Mathlib exponential matrices at positive time. -/
theorem same_certified_support_but_distinct_mathlib_exponentials :
    (∀ source target,
      layerRelationAt 0 .certified source target ↔
        layerRelationAt 1 .certified source target) ∧
      mathlibMatrixExponentialAt 0 1 ≠
        mathlibMatrixExponentialAt 1 1 := by
  refine ⟨certifiedSupport_zero_iff_one, ?_⟩
  intro exponentialEquality
  apply
    (same_certified_support_but_distinct_semigroup_matrices).2
  rw [
    ← mathlibMatrixExponentialAt_eq_finiteSemigroup 0 1,
    ← mathlibMatrixExponentialAt_eq_finiteSemigroup 1 1
  ]
  exact exponentialEquality

end AlternatingExponentProfile

end GRWTSK.Algebra.KTheory.PrimePowerArithmeticHeightDiffusion
