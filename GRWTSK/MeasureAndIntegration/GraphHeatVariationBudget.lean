/- Copyright (c) 2026 grwtsk contributors. MIT.
   Source-level formalization assistance: OpenAI ChatGPT.
   SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
   EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
   TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Sharp general-purpose source variation budgets for actual heat transport

The unchanged RootHeatState.HeatKernel has rational nonnegative coefficients
K(target,source) and each SOURCE column sums to one. It is NOT generally
row-stochastic. The existing realStep moves arbitrary real waveforms and the
existing realLocalResidual retains its complete signed source defect.

For ALL signed original sources d (including zero symbols), the local residual
is exactly a weighted difference across graph edges PLUS a target-row mass
imbalance. The resulting quantitative bound preserves the original indices.
The second term genuinely vanishes only with a separately proved row-balance
hypothesis; symmetry of the supplied kernel is a sufficient condition.

This is a finite graph transport theorem, NOT a theorem about the physical
LIGO instrument, spin entanglement, a Gödel observer or Möbius cancellation.
-/

namespace GRWTSK.MeasureAndIntegration.GraphHeatVariationBudget

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState
open GRWTSK.MeasureAndIntegration.ColoredDiffusiveGodelReconstruction

universe u
variable {Vertex : Type u} [Fintype Vertex] [DecidableEq Vertex]

/-- Incoming mass at one target. Column stochasticity does not control this. -/
def rowMass (K : HeatKernel Vertex) (target : Vertex) : ℝ :=
  ∑ source : Vertex, (K.transition target source : ℝ)

/-- The additional hypothesis under which constant source signals are fixed. -/
def RowStochastic (K : HeatKernel Vertex) : Prop :=
  ∀ target, rowMass K target = 1

/-- Actual signed source variation along every original heat edge. -/
def localVariation
    (K : HeatKernel Vertex) (d : Vertex → ℝ) (target : Vertex) : ℝ :=
  ∑ source : Vertex,
    (K.transition target source : ℝ) * (d target - d source)

/-- Exact target-row loss, which cannot be discarded for a merely
column-stochastic graph. -/
def localRowImbalance
    (K : HeatKernel Vertex) (d : Vertex → ℝ) (target : Vertex) : ℝ :=
  (1 - rowMass K target) * d target

/-- SOURCE-EXACT graph variation identity for every real waveform. -/
theorem localResidual_eq_variation_add_imbalance
    (K : HeatKernel Vertex) (d : Vertex → ℝ) (target : Vertex) :
    realLocalResidual K d target =
      localVariation K d target + localRowImbalance K d target := by
  rw [realLocalResidual, realColorStep_eq_realStep]
  unfold realStep localVariation localRowImbalance rowMass
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  rw [← Finset.sum_mul]
  ring

/-- Pointwise absolute variation+imbalance envelope. -/
theorem localResidual_abs_le_variation_budget
    (K : HeatKernel Vertex) (d : Vertex → ℝ) (target : Vertex) :
    |realLocalResidual K d target| ≤
      (∑ source : Vertex,
        (K.transition target source : ℝ) * |d target - d source|) +
      |1 - rowMass K target| * |d target| := by
  rw [localResidual_eq_variation_add_imbalance]
  unfold localVariation localRowImbalance
  calc
    |(∑ source : Vertex,
        (K.transition target source : ℝ) * (d target - d source)) +
        (1 - rowMass K target) * d target| ≤
      |∑ source : Vertex,
        (K.transition target source : ℝ) * (d target - d source)| +
      |(1 - rowMass K target) * d target| := abs_add_le _ _
    _ ≤ (∑ source : Vertex,
        |(K.transition target source : ℝ) * (d target - d source)|) +
      |(1 - rowMass K target) * d target| := by
        exact add_le_add_right (Finset.abs_sum_le_sum_abs _ _) _
    _ = (∑ source : Vertex,
        (K.transition target source : ℝ) * |d target - d source|) +
      |1 - rowMass K target| * |d target| := by
        congr 1
        · apply Finset.sum_congr rfl
          intro source _
          have hK : 0 ≤ (K.transition target source : ℝ) := by
            exact_mod_cast K.nonnegative target source
          rw [abs_mul, abs_of_nonneg hK]
        · rw [abs_mul]

/-- Nonnegative weighted total graph variation of the ORIGINAL signal. -/
def totalVariationBudget (K : HeatKernel Vertex) (d : Vertex → ℝ) : ℝ :=
  ∑ target : Vertex, ∑ source : Vertex,
    (K.transition target source : ℝ) * |d target - d source|

/-- Row imbalance is not a transport error in disguise. It is the
exact extra term needed when K is only column-stochastic. -/
def rowImbalanceBudget (K : HeatKernel Vertex) (d : Vertex → ℝ) : ℝ :=
  ∑ target : Vertex, |1 - rowMass K target| * |d target|

/-- Reusable whole-source quantitative theorem, suitable for every
finite signed waveform, every original color routing and every data grain. -/
theorem localResidual_l1_le_variation_add_imbalance
    (K : HeatKernel Vertex) (d : Vertex → ℝ) :
    (∑ target : Vertex, |realLocalResidual K d target|) ≤
      totalVariationBudget K d + rowImbalanceBudget K d := by
  calc
    (∑ target : Vertex, |realLocalResidual K d target|) ≤
      ∑ target : Vertex,
        ((∑ source : Vertex,
           (K.transition target source : ℝ) * |d target - d source|) +
         |1 - rowMass K target| * |d target|) := by
           exact Finset.sum_le_sum (fun target _ =>
             localResidual_abs_le_variation_budget K d target)
    _ = totalVariationBudget K d + rowImbalanceBudget K d := by
      rw [Finset.sum_add_distrib]
      rfl

/-- When destination rows ALSO sum to one, graph variation alone pays
for the entire source-minus-diffused signed residual. -/
theorem localResidual_l1_le_variation_of_rowStochastic
    (K : HeatKernel Vertex) (hrows : RowStochastic K) (d : Vertex → ℝ) :
    (∑ target : Vertex, |realLocalResidual K d target|) ≤
      totalVariationBudget K d := by
  have himbalance : rowImbalanceBudget K d = 0 := by
    unfold rowImbalanceBudget
    apply Finset.sum_eq_zero
    intro target _
    rw [hrows target]
    norm_num
  simpa only [himbalance, add_zero] using
    (localResidual_l1_le_variation_add_imbalance K d)

/-- Symmetric nonnegative heat kernels are automatically doubly
stochastic because the original source-column masses are one. -/
theorem rowStochastic_of_symmetric
    (K : HeatKernel Vertex)
    (hsymmetric : ∀ target source,
      K.transition target source = K.transition source target) :
    RowStochastic K := by
  intro target
  unfold rowMass
  calc
    (∑ source : Vertex, (K.transition target source : ℝ)) =
      ∑ source : Vertex, (K.transition source target : ℝ) := by
        apply Finset.sum_congr rfl
        intro source _
        rw [hsymmetric]
    _ = 1 := by exact_mod_cast K.stochastic target

/-- A genuine column-stochastic heat step is an L1 contraction for
signed real inputs, even when it is NOT row-stochastic or invertible. -/
theorem realStep_abs_le_step_abs
    (K : HeatKernel Vertex) (d : Vertex → ℝ) (target : Vertex) :
    |realStep K d target| ≤ realStep K (fun source => |d source|) target := by
  unfold realStep
  calc
    |∑ source : Vertex, (K.transition target source : ℝ) * d source| ≤
      ∑ source : Vertex, |(K.transition target source : ℝ) * d source| :=
        Finset.abs_sum_le_sum_abs _ _
    _ = ∑ source : Vertex,
        (K.transition target source : ℝ) * |d source| := by
      apply Finset.sum_congr rfl
      intro source _
      have hK : 0 ≤ (K.transition target source : ℝ) := by
        exact_mod_cast K.nonnegative target source
      rw [abs_mul, abs_of_nonneg hK]

theorem realStep_l1_contraction
    (K : HeatKernel Vertex) (d : Vertex → ℝ) :
    (∑ target : Vertex, |realStep K d target|) ≤
      (∑ source : Vertex, |d source|) := by
  calc
    (∑ target : Vertex, |realStep K d target|) ≤
      ∑ target : Vertex,
        realStep K (fun source => |d source|) target := by
          exact Finset.sum_le_sum (fun target _ =>
            realStep_abs_le_step_abs K d target)
    _ = ∑ source : Vertex, |d source| :=
      realStep_mass K _

end GRWTSK.MeasureAndIntegration.GraphHeatVariationBudget
