/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Prime-pair kernel criterion for quadratic theta descent

The existing nonlinear threshold program consumes a recurrence

  nextError <= K * A^2 / X + descendedResidual.

This module reduces that recurrence to three separately auditable source
obligations on each dyadic transition:

1. an exact signed finite prime-pair response majorizes the next theta error;
2. the l1 mass of its kernel is uniformly bounded;
3. the remaining residual is already at the descended threshold.

The finite theorem proves that a current-octave envelope `A` bounds the signed
response by `kernelMass * A^2`.  No arithmetic kernel, source identity, kernel
mass estimate, or residual estimate is constructed here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_PRIME_KERNEL_BOUND_DEFINED /
KERNEL_CRITERION_TO_RECURRENCE_DEFINED /
PRIME_KERNEL_CONSTRUCTION_OPEN / NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Prime labels in the repository's literal dyadic source window `(X,2X]`. -/
def thetaPrimeWindow (X : ℕ) : Finset ℕ :=
  (window X).filter Nat.Prime

/-- Every retained prime label lies in the real current octave used by the
theta-envelope interface. -/
theorem thetaPrimeWindow_mem_octave
    {X p : ℕ} (hp : p ∈ thetaPrimeWindow X) :
    (p : ℝ) ∈
      Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)) := by
  have hwindow : p ∈ window X :=
    (Finset.mem_filter.mp hp).1
  constructor
  · exact_mod_cast Nat.le_of_lt (window_lower hwindow)
  · exact_mod_cast window_upper hwindow

/-- One finite source-bound transition stage.  The strings retain the declared
source and normalization identities; they are records, not proof substitutes. -/
structure PrimeThetaQuadraticKernelStage (X : ℕ) where
  sourceIdentity : String
  normalization : String
  invalidationKey : String
  kernel : ℝ → ℕ → ℕ → ℝ
  residual : ℝ → ℝ
  residual_nonnegative : ∀ v, 0 ≤ residual v

namespace PrimeThetaQuadraticKernelStage

/-- The l1 mass of the signed prime-pair kernel at target point `v`. -/
def kernelMass
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) : ℝ :=
  ∑ p ∈ thetaPrimeWindow X,
    ∑ q ∈ thetaPrimeWindow X,
      |stage.kernel v p q|

/-- The signed quadratic response formed from current-octave theta amplitudes. -/
def response
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) : ℝ :=
  ∑ p ∈ thetaPrimeWindow X,
    ∑ q ∈ thetaPrimeWindow X,
      stage.kernel v p q *
        (|thetaError (p : ℝ)| + 1) *
        (|thetaError (q : ℝ)| + 1)

theorem kernelMass_nonnegative
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    (v : ℝ) :
    0 ≤ stage.kernelMass v := by
  unfold kernelMass
  exact Finset.sum_nonneg fun p hp =>
    Finset.sum_nonneg fun q hq => abs_nonneg _

/-- Two finite triangle inequalities plus the current-octave envelope give the
exact quadratic response bound. -/
theorem abs_response_le_kernelMass_mul_sq
    {X : ℕ} (stage : PrimeThetaQuadraticKernelStage X)
    {A : ℝ} (hA : 0 ≤ A)
    (henvelope :
      ∀ u ∈ Set.Icc (X : ℝ) (((2 * X : ℕ) : ℝ)),
        |thetaError u| + 1 ≤ A)
    (v : ℝ) :
    |stage.response v| ≤ stage.kernelMass v * A^2 := by
  unfold response kernelMass
  calc
    |∑ p ∈ thetaPrimeWindow X,
        ∑ q ∈ thetaPrimeWindow X,
          stage.kernel v p q *
            (|thetaError (p : ℝ)| + 1) *
            (|thetaError (q : ℝ)| + 1)|
        ≤ ∑ p ∈ thetaPrimeWindow X,
            |∑ q ∈ thetaPrimeWindow X,
              stage.kernel v p q *
                (|thetaError (p : ℝ)| + 1) *
                (|thetaError (q : ℝ)| + 1)| := by
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ thetaPrimeWindow X,
          ∑ q ∈ thetaPrimeWindow X,
            |stage.kernel v p q *
              (|thetaError (p : ℝ)| + 1) *
              (|thetaError (q : ℝ)| + 1)| := by
          apply Finset.sum_le_sum
          intro p hp
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ thetaPrimeWindow X,
          ∑ q ∈ thetaPrimeWindow X,
            |stage.kernel v p q| * A^2 := by
          apply Finset.sum_le_sum
          intro p hp
          apply Finset.sum_le_sum
          intro q hq
          have hpBound :=
            henvelope (p : ℝ)
              (thetaPrimeWindow_mem_octave hp)
          have hqBound :=
            henvelope (q : ℝ)
              (thetaPrimeWindow_mem_octave hq)
          have hp0 :
              0 ≤ |thetaError (p : ℝ)| + 1 := by positivity
          have hq0 :
              0 ≤ |thetaError (q : ℝ)| + 1 := by positivity
          have hproduct :
              (|thetaError (p : ℝ)| + 1) *
                  (|thetaError (q : ℝ)| + 1) ≤
                A * A :=
            mul_le_mul hpBound hqBound hq0 hA
          have hmul :=
            mul_le_mul_of_nonneg_left hproduct
              (abs_nonneg (stage.kernel v p q))
          simpa only [abs_mul, abs_of_nonneg hp0,
            abs_of_nonneg hq0, pow_two, mul_assoc] using hmul
    _ = (∑ p ∈ thetaPrimeWindow X,
          ∑ q ∈ thetaPrimeWindow X,
            |stage.kernel v p q|) * A^2 := by
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro p hp
          rw [Finset.sum_mul]

end PrimeThetaQuadraticKernelStage

/-- A source-faithful finite prime-pair majorant sufficient for one nonlinear
threshold step.  Existence of the stages and all three estimates remains an
arithmetic proposition. -/
def PrimeThetaQuadraticKernelCriterionAt (ρ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ K : ℝ, 0 ≤ K ∧
    ∃ R : ℝ, 0 ≤ R ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ∃ stage :
            PrimeThetaQuadraticKernelStage (dyadicScale j),
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            stage.kernelMass v ≤ K) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            stage.residual v ≤
              R * Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + η / 2)) ∧
          (∀ v ∈
              Set.Icc ((dyadicScale (j + 1) : ℕ) : ℝ)
                (((2 * dyadicScale (j + 1) : ℕ) : ℝ)),
            |thetaError v| + 1 ≤
              |stage.response v| / (dyadicScale j : ℝ) +
                stage.residual v)

/-- The prime-pair kernel criterion supplies the exact recurrence consumed by
the existing nonlinear threshold descent. -/
theorem primeThetaQuadraticKernelCriterion_to_recurrence
    {ρ : ℝ}
    (hcriterion : PrimeThetaQuadraticKernelCriterionAt ρ) :
    QuadraticThetaSourceRecurrenceAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, j₀, hstages⟩ :=
    hcriterion η hη
  refine ⟨K, hK, R, hR, j₀, ?_⟩
  intro j hj A hA henvelope v hv
  obtain ⟨stage, hmass, hresidual, hsource⟩ :=
    hstages j hj
  have hresponse :
      |stage.response v| ≤ K * A^2 := by
    exact
      (stage.abs_response_le_kernelMass_mul_sq
        hA henvelope v).trans
        (mul_le_mul_of_nonneg_right
          (hmass v hv) (sq_nonneg A))
  have hX : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast dyadicScale_pos j
  have hquadratic :
      |stage.response v| / (dyadicScale j : ℝ) ≤
        K * A^2 / (dyadicScale j : ℝ) :=
    div_le_div_of_nonneg_right hresponse hX.le
  exact
    (hsource v hv).trans
      (add_le_add hquadratic (hresidual v hv))

/-- The kernel criterion immediately supplies the previously typed threshold
descent whenever the target exponent remains in the admitted range. -/
theorem primeThetaQuadraticKernelCriterion_to_descent
    {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hcriterion : PrimeThetaQuadraticKernelCriterionAt ρ) :
    QuadraticThetaDescentAt ρ :=
  quadraticThetaSourceRecurrence_to_descent hρ
    (primeThetaQuadraticKernelCriterion_to_recurrence hcriterion)

end GRWTSK.RiemannHypothesis
