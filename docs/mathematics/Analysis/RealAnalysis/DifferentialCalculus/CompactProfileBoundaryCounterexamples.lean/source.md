# Complete source: GRWTSK.Analysis.Calculus.CompactProfileBoundaryCounterexamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf7807e88639aa3eef31297a2523922376cdc6d5` · SHA-256 `d8c3b9d0c051cbaec0bdea346095765f80a444aa5b398ed0bb0227dd1e49f874`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives

/-!
# A nonzero second-derivative trace at the literal source seam

The obstruction concerns global C2 regularity of the actual normalized source
at every positive radius. It asserts no C5 obstruction for correlation, no
pointwise uniqueness of arbitrary representatives, and no arithmetic or RH
conclusion.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSeamObstruction

open Set
open scoped ContDiff
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.BranchSecondDerivativeEnergy
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The inside and outside derivatives disagree at a closed zero-extension seam. -/
theorem indicator_not_differentiable_at_right {a b d : ℝ} {f : ℝ → ℝ}
    (hab : a < b) (hf : HasDerivAt f d b) (hb : f b = 0) (hd : d ≠ 0) :
    ¬ DifferentiableAt ℝ ((Icc a b).indicator f) b := by
  intro differentiable
  let F : ℝ → ℝ := (Icc a b).indicator f
  have member : b ∈ Icc a b := ⟨hab.le, le_rfl⟩
  have inside : HasDerivWithinAt F d (Icc a b) b :=
    hf.hasDerivWithinAt.congr
      (fun x hx ↦ by dsimp [F]; exact indicator_of_mem hx _)
      (by dsimp [F]; exact indicator_of_mem member _)
  have outside : HasDerivWithinAt F 0 (Ici b) b := by
    apply (hasDerivAt_const b (0 : ℝ)).hasDerivWithinAt.congr
    · intro x hx
      dsimp [F]
      by_cases equality : x = b
      · subst x
        simp only [indicator_of_mem member, hb]
      · have absent : x ∉ Icc a b := by
          intro retained
          exact equality (le_antisymm retained.2 hx)
        exact indicator_of_notMem absent _
    · dsimp [F]
      simp only [indicator_of_mem member, hb]
  have full : HasDerivAt F (deriv F b) b := differentiable.hasDerivAt
  have uniqueInside : UniqueDiffWithinAt ℝ (Icc a b) b :=
    uniqueDiffOn_Icc hab b member
  have equalInside : deriv F b = d :=
    (full.hasDerivWithinAt.derivWithin uniqueInside).symm.trans
      (inside.derivWithin uniqueInside)
  have equalOutside : deriv F b = 0 :=
    (full.hasDerivWithinAt.derivWithin (uniqueDiffWithinAt_Ici b)).symm.trans
      (outside.derivWithin (uniqueDiffWithinAt_Ici b))
  exact hd (equalInside.symm.trans equalOutside)

/-- The native interior second derivative has its literal positive endpoint trace. -/
theorem normalized_second_interior_right_eq {A : ℝ} (hA : 0 < A) :
    normalizedSecondInterior A A =
      (384 : ℝ) / (A ^ 4 * Real.sqrt A) /
        Real.sqrt (SourcePairing.sourceNormalization A) := by
  norm_num [normalizedSecondInterior, fourthInterior, unitFourth,
    secondInterior, div_self hA.ne']

theorem normalized_second_interior_right_pos {A : ℝ} (hA : 0 < A) :
    0 < normalizedSecondInterior A A := by
  rw [normalized_second_interior_right_eq hA]
  have normalization : 0 < SourcePairing.sourceNormalization A := by
    unfold SourcePairing.sourceNormalization
    positivity
  exact div_pos
    (div_pos (by norm_num) (mul_pos (pow_pos hA _) (Real.sqrt_pos.mpr hA)))
    (Real.sqrt_pos.mpr normalization)

/-- No ordinary second derivative exists at the right seam of the actual source. -/
theorem native_first_not_differentiable_at_right {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ
      (deriv (SourcePairing.normalizedTest explicitSecondDerivative A)) A := by
  rw [actual_first_derivative_eq_indicator hA]
  have frontierMember : A ∈ frontier (Icc (-A) A) := by
    rw [frontier_Icc (by linarith : -A ≤ A)]
    simp
  exact indicator_not_differentiable_at_right (by linarith : -A < A)
    (normalizedInteriorDerivative_hasDerivAt A A)
    (normalizedInterior_frontier A hA A frontierMember).2
    (ne_of_gt (normalized_second_interior_right_pos hA))

theorem normalized_source_first_not_differentiable_at_right {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ (deriv (ArithmeticSupplier.normalizedSource A)) A := by
  rw [SourceHigherRegularity.normalized_source_eq_native hA]
  exact native_first_not_differentiable_at_right hA

/-- The C1 actual source cannot be upgraded to global C2 at any positive radius. -/
theorem normalized_source_not_contDiff_two {A : ℝ} (hA : 0 < A) :
    ¬ ContDiff ℝ 2 (ArithmeticSupplier.normalizedSource A) := by
  intro smooth
  have first : ContDiff ℝ 1 (deriv (ArithmeticSupplier.normalizedSource A)) := smooth.deriv'
  exact normalized_source_first_not_differentiable_at_right hA
    (first.differentiable (by norm_num) A)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSeamObstruction
```
