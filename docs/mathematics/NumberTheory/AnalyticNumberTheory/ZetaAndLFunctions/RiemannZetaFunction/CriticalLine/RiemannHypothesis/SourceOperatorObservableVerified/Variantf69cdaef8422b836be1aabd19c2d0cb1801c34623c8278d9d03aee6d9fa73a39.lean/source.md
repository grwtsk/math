# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceOperatorObservableVerified.Variantf69cdaef8422b836be1aabd19c2d0cb1801c34623c8278d9d03aee6d9fa73a39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01f0d7b758c26af6d5e88fdb53096d4dbaf388a0` · SHA-256 `f69cdaef8422b836be1aabd19c2d0cb1801c34623c8278d9d03aee6d9fa73a39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi

/-!
# Exact observable transport on the literal arithmetic source operator

The source vector below is the existing `sourceJointVector A`, whose rows retain
the signed Möbius coefficients and logarithms on the actual `SourceAtom A`
cutoff. The form is the existing `sourceSignedOperator A`, with the original
closed prime weights. A general matrix change has an explicit signed defect;
its entire value is retained in reconstruction and composition.

The passive coordinate theorem uses a supplied matrix unit and transports the
form as well as the coordinates. It asserts no active arithmetic symmetry.
The residual identity consumes the existing accepted expansion and supplies no
new uniform estimate, arithmetic witness, or RH conclusion.

Human direction and formation of the medium: grwtsk contributors. These proof
implementations were developed with OpenAI Codex; focused verification remains
distinct from repository review and integration.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceOperatorObservable

open MangoldtMobiusJacobi
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

variable {ι : Type*} [Fintype ι]

/-- The complete real signed quadratic readout. -/
def quadratic (H : Matrix ι ι ℝ) (x : ι → ℝ) : ℝ := x ⬝ᵥ H.mulVec x

/-- Real form transport under the stated linear change. -/
def pullback (H M : Matrix ι ι ℝ) : Matrix ι ι ℝ := M.transpose * H * M

/-- Pullback exactly reproduces the changed state's signed readout. -/
theorem quadratic_pullback (H M : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (pullback H M) x = quadratic H (M.mulVec x) := by
  unfold quadratic pullback
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_transpose_mulVec]
  exact dotProduct_comm _ _

/-- The right factor acts on state coordinates first. -/
theorem pullback_comp (H M N : Matrix ι ι ℝ) :
    pullback H (M * N) = pullback (pullback H M) N := by
  simp only [pullback, Matrix.transpose_mul]
  noncomm_ring

/-- Exact signed readout defect, with no replacement by a positive form. -/
def signedDefect (H M : Matrix ι ι ℝ) : Matrix ι ι ℝ := pullback H M - H

/-- The defect is the complete changed-minus-original readout for every state. -/
theorem quadratic_signedDefect (H M : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (signedDefect H M) x = quadratic H (M.mulVec x) - quadratic H x := by
  simp only [quadratic, signedDefect, Matrix.sub_mulVec, dotProduct_sub]
  exact congrArg (fun z => z - x ⬝ᵥ H.mulVec x) (quadratic_pullback H M x)

/-- Exact cocycle law: δ_H(MN) = Nᵀ δ_H(M) N + δ_H(N). -/
theorem signedDefect_comp (H M N : Matrix ι ι ℝ) :
    signedDefect H (M * N) = pullback (signedDefect H M) N + signedDefect H N := by
  unfold signedDefect
  rw [pullback_comp]
  simp only [pullback, Matrix.mul_sub, Matrix.sub_mul]
  abel

/-- Quadratic evaluation keeps addition of signed forms exact. -/
theorem quadratic_add (H K : Matrix ι ι ℝ) (x : ι → ℝ) :
    quadratic (H + K) x = quadratic H x + quadratic K x := by
  simp only [quadratic, Matrix.add_mulVec, dotProduct_add]

/-- A passive invertible change retains the readout when both form and
coordinates are transported. It is not a theorem of active invariance. -/
theorem passive_coordinates [DecidableEq ι] (H : Matrix ι ι ℝ)
    (P : (Matrix ι ι ℝ)ˣ) (x : ι → ℝ) :
    quadratic (pullback H (P : Matrix ι ι ℝ))
      ((↑(P⁻¹) : Matrix ι ι ℝ).mulVec x) = quadratic H x := by
  rw [quadratic_pullback, Matrix.mulVec_mulVec]
  have inverse : (P : Matrix ι ι ℝ) * (↑(P⁻¹) : Matrix ι ι ℝ) = 1 := P.val_inv
  rw [inverse, Matrix.one_mulVec]

/-- Literal finite arithmetic index, retaining all source cutoff provenance. -/
abbrev SourceIndex (A : ℝ) := SourceAtom A ⊕ SourceAtom A

/-- Changed readout on the actual signed Möbius/log source vector. -/
def changedSourceReadout (A : ℝ) (M : Matrix (SourceIndex A) (SourceIndex A) ℝ) : ℝ :=
  quadratic (sourceSignedOperator A) (M.mulVec (sourceJointVector A))

/-- Full signed defect evaluated on the literal arithmetic source vector. -/
def sourceDefectReadout (A : ℝ) (M : Matrix (SourceIndex A) (SourceIndex A) ℝ) : ℝ :=
  quadratic (signedDefect (sourceSignedOperator A) M) (sourceJointVector A)

/-- The unmodified source readout has exactly its existing operator interpretation. -/
theorem source_readout_eq_operator (A : ℝ) :
    quadratic (sourceSignedOperator A) (sourceJointVector A) = sourceOperatorValue A := rfl

/-- Exact reconstruction retains the complete signed source defect. -/
theorem changedSourceReadout_eq_operator_add_defect (A : ℝ)
    (M : Matrix (SourceIndex A) (SourceIndex A) ℝ) :
    changedSourceReadout A M = sourceOperatorValue A + sourceDefectReadout A M := by
  unfold changedSourceReadout sourceDefectReadout
  rw [quadratic_signedDefect, source_readout_eq_operator]
  ring

/-- The actual changed source readout is twice the unchanged exact residual
plus its fully retained signed defect; no bound is obtained. -/
theorem changedSourceReadout_eq_twice_residual_add_defect (A : ℝ) (hA : 1 ≤ A)
    (M : Matrix (SourceIndex A) (SourceIndex A) ℝ) :
    changedSourceReadout A M = 2 * mertensResidual A + sourceDefectReadout A M := by
  rw [changedSourceReadout_eq_operator_add_defect,
    sourceOperatorValue_eq_twice_residual A hA]

/-- Subtracting the actual signed defect recovers the unchanged residual target. -/
theorem twice_residual_eq_changedSourceReadout_sub_defect (A : ℝ) (hA : 1 ≤ A)
    (M : Matrix (SourceIndex A) (SourceIndex A) ℝ) :
    2 * mertensResidual A = changedSourceReadout A M - sourceDefectReadout A M := by
  rw [changedSourceReadout_eq_twice_residual_add_defect A hA]
  ring

/-- Successive source changes retain the transported earlier defect and the
later defect with the same exact source vector and cutoff. -/
theorem sourceDefectReadout_comp (A : ℝ)
    (M N : Matrix (SourceIndex A) (SourceIndex A) ℝ) :
    sourceDefectReadout A (M * N) =
      quadratic (signedDefect (sourceSignedOperator A) M) (N.mulVec (sourceJointVector A)) +
        sourceDefectReadout A N := by
  unfold sourceDefectReadout
  rw [signedDefect_comp, quadratic_add, quadratic_pullback]

/-- Actual source cancellation is conditional on its full evaluated signed
defect being zero; no matrix or arithmetic symmetry is invented. -/
theorem changedSourceReadout_eq_of_defect_zero (A : ℝ)
    (M : Matrix (SourceIndex A) (SourceIndex A) ℝ)
    (h : sourceDefectReadout A M = 0) :
    changedSourceReadout A M = sourceOperatorValue A := by
  rw [changedSourceReadout_eq_operator_add_defect, h, add_zero]

/-- A passive arithmetic-source coordinate change preserves the exact signed
operator readout, with the source form and inverse coordinates both explicit. -/
theorem passive_source_readout (A : ℝ)
    (P : (Matrix (SourceIndex A) (SourceIndex A) ℝ)ˣ) :
    quadratic (pullback (sourceSignedOperator A) (P : Matrix (SourceIndex A) (SourceIndex A) ℝ))
      ((↑(P⁻¹) : Matrix (SourceIndex A) (SourceIndex A) ℝ).mulVec (sourceJointVector A)) =
        sourceOperatorValue A :=
  passive_coordinates (sourceSignedOperator A) P (sourceJointVector A)

/-- The passive interpretation also consumes the exact source/residual theorem,
without turning a coordinate identity into an estimate. -/
theorem passive_source_readout_eq_twice_residual (A : ℝ) (hA : 1 ≤ A)
    (P : (Matrix (SourceIndex A) (SourceIndex A) ℝ)ˣ) :
    quadratic (pullback (sourceSignedOperator A) (P : Matrix (SourceIndex A) (SourceIndex A) ℝ))
      ((↑(P⁻¹) : Matrix (SourceIndex A) (SourceIndex A) ℝ).mulVec (sourceJointVector A)) =
        2 * mertensResidual A := by
  rw [passive_source_readout, sourceOperatorValue_eq_twice_residual A hA]

end FormalResearch.RiemannHypothesis.SourceOperatorObservable
```
