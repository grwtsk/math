# Complete source: GRWTSK.Analysis.BranchProfileSeams.Variantb5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce69e8874d17ca1067ea512e82806383327e4578` · SHA-256 `b5c5c863716ad2cf3264ee1c3e72026904bc909d8a00749791780bebb388fde4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.BranchSecondDerivativeEnergy
import Mathlib.Analysis.Calculus.TangentCone.Real

/-!
# Exact endpoint polynomial and regularity boundary of the source profile

Batch 26, `exact-profile-descent.md`, sections 3 and 4, source revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The literal normalized source
has zero value and first derivative traces, but a positive interior second
derivative trace. Its first derivative is therefore not differentiable at
the upper support endpoint. No global C² source hypothesis is introduced.

Human mathematical direction: grwtsk contributors. Lean formalization:
OpenAI Codex, using the existing source realization and Mathlib.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchProfileSeams

open Set Filter MeasureTheory
open scoped Topology
open SourcePairing BranchSecondDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Coefficients of the literal endpoint polynomial, indexed by degrees 2 through 8. -/
def edgeCoefficient (A : ℝ) : Fin 7 → ℝ
  | 0 => 192 / A ^ 4
  | 1 => -640 / A ^ 5
  | 2 => 720 / A ^ 6 - 4 / A ^ 4
  | 3 => -336 / A ^ 7 + 8 / A ^ 5
  | 4 => 56 / A ^ 8 - 6 / A ^ 6
  | 5 => 2 / A ^ 7
  | 6 => -1 / (4 * A ^ 8)

/-- Endpoint polynomial before the unchanged factor √A √Z is divided out. -/
def edgePolynomial (A z : ℝ) : ℝ :=
  ∑ i : Fin 7, edgeCoefficient A i * z ^ (i.val + 2)

/-- The complete degree-eight expansion is an algebraic identity of the interior. -/
theorem normalizedInterior_edge_polynomial {A : ℝ} (hA : 0 < A) (z : ℝ) :
    normalizedInterior A (A - z) =
      edgePolynomial A z / (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  unfold normalizedInterior secondInterior bumpInterior edgePolynomial
  norm_num [Fin.sum_univ_succ, edgeCoefficient, Fin.succ]
  field_simp [hA.ne']
  ring

/-- The exact polynomial represents the actual source throughout its closed support. -/
theorem actual_source_edge_polynomial {A z : ℝ} (hA : 0 < A)
    (hz0 : 0 ≤ z) (hz2 : z ≤ 2 * A) :
    normalizedTest explicitSecondDerivative A (A - z) =
      edgePolynomial A z / (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  rw [normalizedTest_eq_indicator A hA,
    indicator_of_mem (show A - z ∈ Icc (-A) A by constructor <;> linarith),
    normalizedInterior_edge_polynomial hA]

/-- Reflection introduces no sign into the source interior. -/
theorem normalizedInterior_even (A : ℝ) : Function.Even (normalizedInterior A) := by
  intro x
  dsimp [normalizedInterior, secondInterior, bumpInterior]
  ring

/-- Both closed-interval second representatives have the same strictly positive trace. -/
theorem normalizedSecondInterior_endpoints {A : ℝ} (hA : 0 < A) :
    normalizedSecondInterior A (-A) =
        384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) ∧
      normalizedSecondInterior A A =
        384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  constructor <;>
    norm_num [normalizedSecondInterior, fourthInterior, unitFourth, secondInterior, hA.ne']
      <;> ring

/-- The second interior trace is nonzero at every positive real scale. -/
theorem second_trace_pos {A : ℝ} (hA : 0 < A) :
    0 < 384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hz : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  positivity

/-- The closed representative retains the interior trace at the upper endpoint. -/
theorem secondRepresentative_upper_endpoint {A : ℝ} (hA : 0 < A) :
    secondRepresentative A A =
      384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  rw [secondRepresentative, indicator_of_mem (show A ∈ Icc (-A) A by
    constructor <;> linarith)]
  exact (normalizedSecondInterior_endpoints hA).2

/-- The closed representative retains the same trace at the lower endpoint. -/
theorem secondRepresentative_lower_endpoint {A : ℝ} (hA : 0 < A) :
    secondRepresentative A (-A) =
      384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  rw [secondRepresentative, indicator_of_mem (show -A ∈ Icc (-A) A by
    constructor <;> linarith)]
  exact (normalizedSecondInterior_endpoints hA).1

/-- The actual first derivative vanishes on the entire closed upper exterior. -/
theorem actual_first_derivative_zero_of_upper_le {A x : ℝ} (hA : 0 < A)
    (hx : A ≤ x) : deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
  rw [actual_first_derivative_eq_indicator hA]
  by_cases hm : x ∈ Icc (-A) A
  · have he : x = A := le_antisymm hm.2 hx
    subst x
    rw [indicator_of_mem hm]
    exact (normalizedInterior_frontier A hA A (by
      rw [frontier_Icc (by linarith : -A ≤ A)]
      simp)).2
  · exact indicator_of_notMem hm _

/-- The genuine one-sided derivative from inside the support has the positive trace. -/
theorem actual_first_derivative_hasDerivWithinAt_inside {A : ℝ} (hA : 0 < A) :
    HasDerivWithinAt (deriv (normalizedTest explicitSecondDerivative A))
      (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)))
      (Icc (-A) A) A := by
  rw [actual_first_derivative_eq_indicator hA]
  have hd := (normalizedInteriorDerivative_hasDerivAt A A).hasDerivWithinAt
    (s := Icc (-A) A)
  rw [(normalizedSecondInterior_endpoints hA).2] at hd
  exact hd.congr (fun x hx ↦ indicator_of_mem hx _) (indicator_of_mem
    (show A ∈ Icc (-A) A by constructor <;> linarith) _)

/-- The genuine one-sided derivative on the exterior is zero. -/
theorem actual_first_derivative_hasDerivWithinAt_outside {A : ℝ} (hA : 0 < A) :
    HasDerivWithinAt (deriv (normalizedTest explicitSecondDerivative A)) 0 (Ici A) A :=
  (hasDerivWithinAt_const A (Ici A) (0 : ℝ)).congr
    (fun _x hx ↦ actual_first_derivative_zero_of_upper_le hA hx)
    (actual_first_derivative_zero_of_upper_le hA le_rfl)

/-- The different one-sided derivatives rule out a global second derivative at the seam. -/
theorem actual_first_derivative_not_differentiableAt_upper {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ (deriv (normalizedTest explicitSecondDerivative A)) A := by
  intro hd
  have hui := (uniqueDiffOn_Icc (by linarith : -A < A)) A
    (by constructor <;> linarith)
  have hi := (actual_first_derivative_hasDerivWithinAt_inside hA).derivWithin hui
  have ho := (actual_first_derivative_hasDerivWithinAt_outside hA).derivWithin
    (uniqueDiffWithinAt_Ici A)
  rw [hd.hasDerivAt.hasDerivWithinAt.derivWithin hui] at hi
  rw [hd.hasDerivAt.hasDerivWithinAt.derivWithin (uniqueDiffWithinAt_Ici A)] at ho
  have hp := second_trace_pos hA
  linarith

/-- In particular the literal source is not globally C². -/
theorem actual_source_not_contDiff_two {A : ℝ} (hA : 0 < A) :
    ¬ ContDiff ℝ 2 (normalizedTest explicitSecondDerivative A) := by
  intro hc
  have hd : ContDiff ℝ 1 (deriv (normalizedTest explicitSecondDerivative A)) :=
    hc.deriv'
  exact actual_first_derivative_not_differentiableAt_upper hA
    (hd.differentiable (by norm_num)).differentiableAt

end FormalResearch.RiemannHypothesis.BranchProfileSeams
```
