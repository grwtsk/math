/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.QuantumTheory.ThermalSteeringWitness
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DyadicHeatRefinement
import GRWTSK.Combinatorics.GraphTheory.DyadicSoficInterface

/-!
# Dyadic Hodge ports for the existing finite steering-heat witness

The mathematical source is the existing FiniteHiddenModel, its three-axis
correlation, and its idealized affine stroke readout heat=gap/2*(score-bias).
Exact finite Hodge heat contracts every supplied hidden Bloch vector, so the
same weights and responses define another legitimate finite hidden model.
The imported dyadic heat API gives one coarse stroke as two half-time strokes.
A full depth-n resolution contains 2^n steps, with exactly the original total
heat time; refinement does not erase its finite-time bias.

The binary spatial interface uses the existing coordinate mask and its full
complement. Correlation is linear in the Bloch argument, so its two heated
sectors reconstruct the original score exactly. The affine heat readout must
allocate HALF of the bath bias to each child; charging the full bias twice
would alter the source. Sector scores are not declared separate complete
steering experiments, independent hidden models, or subsystem assemblages.

The robust consumer retains both correlation-return error and instrument heat
error before invoking the original finite-hidden-model exclusion theorem.
It does not construct a physical density operator, arbitrary-measure hidden
model, CPTP channel, or full engine work cycle. A diagonal Bloch contraction
alone is not identified with a completely positive quantum channel. Mathematical
Hodge heat, idealized stroke heat and physical time evolution remain distinct.
The physical comparison and obligations of ThermalSteeringWitness are retained:
Beyer, Luoma and Strunz, Steering Heat Engines: A Truly Quantum Maxwell's Demon,
Phys. Rev. Lett. 123, 250606 (2019), arXiv:1906.12163. This is not a new
formalization of that full protocol and gives no arithmetic/RH consequence.

Primary argument: imported norm contraction and exact heat semigroup, finite
linear readout decomposition, one affine bias identity, and triangle-error
composition. Source inspected at math 88e7c6ae7d8cc6262c30d540b8b1b613a40f3316.
Human direction: grwtsk contributors; AI-assisted candidate construction and
source inspection. Novelty NOT_ASSESSED. Compilation, fresh kernel replay,
transitive axiom audit and independent external analytical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Quantum.Steering.DyadicThermalSteering

open GRWTSK.Quantum.Steering.ThermalWitness
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.DyadicHeatRefinement
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DyadicSoficInterface

universe u v w z

/-- Only a local abbreviation for the original finite Hodge operator. -/
abbrev hodgeHeat (a : Vector) (t : ℝ) :=
  GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat a t

variable {Λ : Type u} [Fintype Λ]

/-- Heat changes the Bloch observations, while source weights and responses stay fixed.
The finite mathematical model makes no automatic physical-channel assertion. -/
def heatedModel (model : FiniteHiddenModel Λ) (a : Vector) (t : ℝ)
    (nonnegative : 0 ≤ t) : FiniteHiddenModel Λ where
  weight := model.weight
  response := model.response
  bloch := fun l => hodgeHeat a t (model.bloch l)
  weight_nonnegative := model.weight_nonnegative
  weight_sum := model.weight_sum
  response_bound := model.response_bound
  bloch_bound := fun l =>
    (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat_contracts
      a (model.bloch l) nonnegative).trans (model.bloch_bound l)

theorem heated_value_le (model : FiniteHiddenModel Λ) (a : Vector) (t : ℝ)
    (nonnegative : 0 ≤ t) : (heatedModel model a t nonnegative).value ≤ hiddenBound :=
  (heatedModel model a t nonnegative).value_le

/-- The semigroup identity is returned to the actual hidden Bloch field. -/
theorem heated_bloch_add (model : FiniteHiddenModel Λ) (a : Vector)
    (s t : ℝ) (hs : 0 ≤ s) (ht : 0 ≤ t) :
    (heatedModel model a (s + t) (add_nonneg hs ht)).bloch =
      (heatedModel (heatedModel model a t ht) a s hs).bloch := by
  funext l
  exact congrArg (fun f => f (model.bloch l))
    (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat_add a s t)

/-- One dyadic time interval is exactly two next-level intervals on every source vector. -/
theorem dyadic_bloch_two_halves (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) (l : Λ) :
    hodgeHeat a (dyadicTime scale n) (model.bloch l) =
      hodgeHeat a (dyadicTime scale (n + 1))
        (hodgeHeat a (dyadicTime scale (n + 1)) (model.bloch l)) := by
  exact heat_dyadic_refine_apply a (model.bloch l) scale n

/-- The actual finite hidden source observed at one depth of the dyadic clock. -/
def dyadicScore (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) : ℝ :=
  (heatedModel model a (dyadicTime scale n) (dyadicTime_nonneg scale n hscale)).value

theorem dyadic_score_le (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) :
    dyadicScore model a scale n hscale ≤ hiddenBound :=
  heated_value_le model a _ (dyadicTime_nonneg scale n hscale)

/-- The existing thermal stroke is now indexed by the actual dyadic observation. -/
def dyadicHeat (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) (gap bias : ℝ) : ℝ :=
  heat gap bias (dyadicScore model a scale n hscale)

theorem dyadic_hidden_heat_bound (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) (gap bias : ℝ)
    (positiveGap : 0 ≤ gap) :
    dyadicHeat model a scale n hscale gap bias ≤ classicalHeatBound gap bias :=
  heat_mono positiveGap (dyadic_score_le model a scale n hscale)

/-- A complete depth-n resolution has 2^n heat steps, not one ever-shorter stroke. -/
def resolvedScore (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) : ℝ :=
  ∑ l, model.weight l * correlation (model.response l)
    (heatSteps a (dyadicTime scale n) (2 ^ n) (model.bloch l))

/-- Refinement preserves the ORIGINAL total-time hidden source exactly. -/
theorem resolved_score_eq (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) :
    resolvedScore model a scale n = (heatedModel model a scale hscale).value := by
  unfold resolvedScore FiniteHiddenModel.value
  apply Finset.sum_congr rfl
  intro l hl
  rw [heatSteps_dyadic_total]
  rfl

theorem resolved_score_independent_depth (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n m : ℕ) (hscale : 0 ≤ scale) :
    resolvedScore model a scale n = resolvedScore model a scale m :=
  (resolved_score_eq model a scale n hscale).trans
    (resolved_score_eq model a scale m hscale).symm

theorem resolved_score_le (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) :
    resolvedScore model a scale n ≤ hiddenBound := by
  rw [resolved_score_eq model a scale n hscale]
  exact heated_value_le model a scale hscale

/-- A linear correlation must retain both complementary coordinate ports. -/
theorem correlation_add (response first second : Vector) :
    correlation response (first + second) =
      correlation response first + correlation response second := by
  simp only [correlation,
    GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.dot,
    Pi.add_apply, mul_add, Finset.sum_add_distrib]
  ring

theorem heated_correlation_mask_split (response bloch a : Vector)
    (t : ℝ) (mask : Fin 3 → Bool) :
    correlation response (hodgeHeat a t bloch) =
      correlation response (hodgeHeat a t
        (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.maskProjector mask bloch)) +
      correlation response (hodgeHeat a t
        (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.maskProjector
          (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.complementMask mask) bloch)) := by
  rw [GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.heat_mask_split a bloch t mask]
  exact correlation_add _ _ _

/-- A child port is one part of the complete finite source readout. -/
def sectorScore (model : FiniteHiddenModel Λ) (a : Vector) (t : ℝ)
    (mask : Fin 3 → Bool) : ℝ :=
  ∑ l, model.weight l * correlation (model.response l)
    (hodgeHeat a t
      (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.maskProjector mask (model.bloch l)))

/-- Both child ports reconstruct the same source at every heat time, including dyadic times. -/
theorem heated_value_mask_split (model : FiniteHiddenModel Λ) (a : Vector)
    (t : ℝ) (nonnegative : 0 ≤ t) (mask : Fin 3 → Bool) :
    (heatedModel model a t nonnegative).value = sectorScore model a t mask +
      sectorScore model a t
        (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.complementMask mask) := by
  unfold FiniteHiddenModel.value sectorScore
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro l hl
  change model.weight l * correlation (model.response l) (hodgeHeat a t (model.bloch l)) = _
  rw [heated_correlation_mask_split (model.response l) (model.bloch l) a t mask, mul_add]

/-- Each binary child is assigned half the affine bath bias, retaining it exactly once. -/
theorem heat_binary_bias_split (gap bias first second : ℝ) :
    heat gap bias (first + second) =
      heat gap (bias / 2) first + heat gap (bias / 2) second := by
  unfold heat
  ring

/-- Exact binary readout at every dyadic depth; no sector or affine term disappears. -/
theorem dyadic_heat_binary_ports (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) (gap bias : ℝ)
    (mask : Fin 3 → Bool) :
    dyadicHeat model a scale n hscale gap bias =
      heat gap (bias / 2) (sectorScore model a (dyadicTime scale n) mask) +
      heat gap (bias / 2) (sectorScore model a (dyadicTime scale n)
        (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.complementMask mask)) := by
  unfold dyadicHeat dyadicScore
  rw [heated_value_mask_split model a (dyadicTime scale n)
    (dyadicTime_nonneg scale n hscale) mask, heat_binary_bias_split]

/-- The COMPLETE total-time source has the same binary port readout at every resolution. -/
theorem resolved_heat_binary_ports (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale) (gap bias : ℝ)
    (mask : Fin 3 → Bool) :
    heat gap bias (resolvedScore model a scale n) =
      heat gap (bias / 2) (sectorScore model a scale mask) +
      heat gap (bias / 2) (sectorScore model a scale
        (GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.complementMask mask)) := by
  rw [resolved_score_eq model a scale n hscale,
    heated_value_mask_split model a scale hscale mask, heat_binary_bias_split]

/-- Correlation-return and instrument errors compose before the steering test. -/
theorem complete_heat_error (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale)
    {gap bias observedScore observedHeat scoreError instrumentError : ℝ}
    (positiveGap : 0 ≤ gap)
    (scoreReturn : |observedScore - dyadicScore model a scale n hscale| ≤ scoreError)
    (instrument : |observedHeat - heat gap bias observedScore| ≤ instrumentError) :
    |observedHeat - dyadicHeat model a scale n hscale gap bias| ≤
      instrumentError + gap / 2 * scoreError := by
  exact (abs_sub_le observedHeat (heat gap bias observedScore)
    (dyadicHeat model a scale n hscale gap bias)).trans
      (add_le_add instrument (heat_error positiveGap scoreReturn))

/-- A dyadic observation excludes this supplied finite hidden model only after all errors. -/
theorem dyadic_robust_exclusion (model : FiniteHiddenModel Λ) (a : Vector)
    (scale : ℝ) (n : ℕ) (hscale : 0 ≤ scale)
    {gap bias observedScore observedHeat scoreError instrumentError : ℝ}
    (positiveGap : 0 ≤ gap)
    (scoreReturn : |observedScore - dyadicScore model a scale n hscale| ≤ scoreError)
    (instrument : |observedHeat - heat gap bias observedScore| ≤ instrumentError)
    (violation : classicalHeatBound gap bias +
      (instrumentError + gap / 2 * scoreError) < observedHeat) : False := by
  exact robust_exclusion
    (heatedModel model a (dyadicTime scale n) (dyadicTime_nonneg scale n hscale))
    positiveGap (complete_heat_error model a scale n hscale positiveGap scoreReturn instrument)
    violation

/-- The dyadic graph returns this actual, full-total-time steering score.
Its original signed source defect remains inside the complete score allowance. -/
theorem dyadic_graph_score_error
    {Source : Type v} {Vertex : Type w} {Label : Type z}
    (model : FiniteHiddenModel Λ) (a : Vector) (scale : ℝ) (n : ℕ)
    (A : SourceAnchored Source Vertex Label) (x : Source)
    {target : Vertex} {word : List Label} {d b error observedScore : ℝ}
    (sourceIdentity : A.original x = resolvedScore model a scale n)
    (targetIdentity : A.system.readout target = observedScore)
    (trace : CertifiedTrace A.system (A.encode x) word target d b)
    (length : word.length = 2 ^ n)
    (edgeBound : ∀ {s t : Vertex} {label : Label},
      A.system.sandwich.lower s label t →
        A.system.edgeAllowance s label t ≤ error * dyadicStep n) :
    |observedScore - resolvedScore model a scale n| ≤ A.initialAllowance x + error := by
  have returned := dyadic_source_return A x n trace length edgeBound
  rw [sourceIdentity, targetIdentity] at returned
  rw [abs_sub_comm]
  exact returned

/-- The source-anchored sofic word, actual thermal score and instrument errors
meet in one finite-depth steering exclusion theorem. The common dyadic depth
controls 2^n graph transitions AND 2^n heat steps of size scale*2^-n.
Neither a small mesh nor graph admissibility proves the required edge bounds. -/
theorem dyadic_graph_robust_exclusion
    {Source : Type v} {Vertex : Type w} {Label : Type z}
    (model : FiniteHiddenModel Λ) (a : Vector) (scale : ℝ) (n : ℕ)
    (hscale : 0 ≤ scale) (A : SourceAnchored Source Vertex Label) (x : Source)
    {target : Vertex} {word : List Label}
    {d b error gap bias observedScore observedHeat instrumentError : ℝ}
    (sourceIdentity : A.original x = resolvedScore model a scale n)
    (targetIdentity : A.system.readout target = observedScore)
    (trace : CertifiedTrace A.system (A.encode x) word target d b)
    (length : word.length = 2 ^ n)
    (edgeBound : ∀ {s t : Vertex} {label : Label},
      A.system.sandwich.lower s label t →
        A.system.edgeAllowance s label t ≤ error * dyadicStep n)
    (positiveGap : 0 ≤ gap)
    (instrument : |observedHeat - heat gap bias observedScore| ≤ instrumentError)
    (violation : classicalHeatBound gap bias +
      (instrumentError + gap / 2 * (A.initialAllowance x + error)) < observedHeat) :
    False := by
  have scoreReturn := dyadic_graph_score_error model a scale n A x
    sourceIdentity targetIdentity trace length edgeBound
  rw [resolved_score_eq model a scale n hscale] at scoreReturn
  have measured :
      |observedHeat - heat gap bias (heatedModel model a scale hscale).value| ≤
        instrumentError + gap / 2 * (A.initialAllowance x + error) :=
    (abs_sub_le observedHeat (heat gap bias observedScore)
      (heat gap bias (heatedModel model a scale hscale).value)).trans
        (add_le_add instrument (heat_error positiveGap scoreReturn))
  exact robust_exclusion (heatedModel model a scale hscale) positiveGap measured violation

/-- Duplicating the full bias at both child ports changes the heat source. -/
theorem duplicated_bias_counterexample :
    heat 2 1 (0 + 0) ≠ heat 2 1 0 + heat 2 1 0 := by norm_num [heat]

end GRWTSK.Quantum.Steering.DyadicThermalSteering
