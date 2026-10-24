# Complete source: GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69e435dc1e311e5968d3a801dc598e52257d836d` · SHA-256 `29f06b6887efd013a6b2875a57011f54e1132528234624becdbe27e2ea9a0b88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
import GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Source boundary for individual Goldbach arc models

The exact residue-class model is identified pointwise with the inherited
prime-log circle integrand on every positive-denominator rational arc. An
arbitrary proposed analytic model may then be compared arc by arc. The finite
residuals are accumulated with the triangle inequality and charged exactly
once before the existing signed minor contribution is used.

No model estimate is constructed. In particular, this module supplies no
prime number theorem in progressions, no singular integral asymptotic, no
singular-series tail, no minor-arc estimate, and no Goldbach theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary

open scoped BigOperators Real
open Set MeasureTheory
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- The exact residue-class circle model attached to one rational index. -/
def goldbachExactResidueArcModel
    (N : ℕ) (aq : ℕ × ℕ) (x : ℝ) : ℂ :=
  goldbachResidueClassCircleModel N aq.1 aq.2 x

/-- The signed integral of the exact residue-class model over one clipped arc. -/
def goldbachExactResidueArcContribution
    (Q N : ℕ) (aq : ℕ × ℕ) : ℂ :=
  ∫ x in goldbachClippedRationalArc Q N aq,
    goldbachExactResidueArcModel N aq x

/-- On every indexed rational arc, the exact residue model and the inherited
single-arc contribution agree. -/
theorem goldbachSingleRationalArcContribution_eq_exactResidue
    {Q N : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q) :
    goldbachSingleRationalArcContribution Q N aq =
      goldbachExactResidueArcContribution Q N aq := by
  rcases aq with ⟨a, q⟩
  have hq : 0 < q :=
    (mem_goldbachRationalArcIndices.1 haq).2.2.1
  unfold goldbachSingleRationalArcContribution
    goldbachExactResidueArcContribution
    goldbachExactResidueArcModel
  apply setIntegral_congr_fun
    (measurable_goldbachClippedRationalArc Q N (a, q))
  intro x hx
  exact goldbachCircleIntegrand_eq_residueClassModel N a q hq x

/-- The signed contribution of any proposed model on one clipped rational arc. -/
def goldbachArcModelContribution
    (Q N : ℕ) (aq : ℕ × ℕ)
    (model : (ℕ × ℕ) → ℝ → ℂ) : ℂ :=
  ∫ x in goldbachClippedRationalArc Q N aq,
    model aq x

/-- The exact signed residual of one proposed arc model. -/
def goldbachArcModelResidual
    (Q N : ℕ) (aq : ℕ × ℕ)
    (model : (ℕ × ℕ) → ℝ → ℂ) : ℂ :=
  goldbachSingleRationalArcContribution Q N aq -
    goldbachArcModelContribution Q N aq model

/-- The finite signed sum of all proposed model contributions. -/
def goldbachArcModelMajorSum
    (Q N : ℕ) (model : (ℕ × ℕ) → ℝ → ℂ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachArcModelContribution Q N aq model

/-- The finite signed sum of all exact model residuals. -/
def goldbachArcModelResidualSum
    (Q N : ℕ) (model : (ℕ × ℕ) → ℝ → ℂ) : ℂ :=
  ∑ aq ∈ goldbachRationalArcIndices Q,
    goldbachArcModelResidual Q N aq model

/-- Every single exact contribution is its proposed model contribution plus its
exact residual. -/
theorem goldbachSingleArc_eq_model_add_residual
    (Q N : ℕ) (aq : ℕ × ℕ)
    (model : (ℕ × ℕ) → ℝ → ℂ) :
    goldbachSingleRationalArcContribution Q N aq =
      goldbachArcModelContribution Q N aq model +
        goldbachArcModelResidual Q N aq model := by
  unfold goldbachArcModelResidual
  ring

/-- The finite exact major sum is the proposed finite model sum plus the
finite residual sum. -/
theorem goldbachRationalArcSum_eq_model_add_residual
    (Q N : ℕ) (model : (ℕ × ℕ) → ℝ → ℂ) :
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingleRationalArcContribution Q N aq) =
      goldbachArcModelMajorSum Q N model +
        goldbachArcModelResidualSum Q N model := by
  unfold goldbachArcModelMajorSum
    goldbachArcModelResidualSum
    goldbachArcModelResidual
  rw [Finset.sum_sub_distrib]
  ring

/-- The exact residue-class model has zero residual on every indexed arc. -/
theorem goldbachExactResidueArcModel_residual_zero
    {Q N : ℕ} {aq : ℕ × ℕ}
    (haq : aq ∈ goldbachRationalArcIndices Q) :
    goldbachArcModelResidual Q N aq
      (goldbachExactResidueArcModel N) = 0 := by
  unfold goldbachArcModelResidual
    goldbachArcModelContribution
  rw [goldbachSingleRationalArcContribution_eq_exactResidue haq]
  exact sub_self _

/-- Per-arc norm bounds accumulate into one complete finite residual bound. -/
theorem goldbachArcModelResidualSum_norm_le
    {Q N : ℕ} {model : (ℕ × ℕ) → ℝ → ℂ}
    {arcError : (ℕ × ℕ) → ℝ}
    (herror : ∀ aq ∈ goldbachRationalArcIndices Q,
      ‖goldbachArcModelResidual Q N aq model‖ ≤ arcError aq) :
    ‖goldbachArcModelResidualSum Q N model‖ ≤
      ∑ aq ∈ goldbachRationalArcIndices Q, arcError aq := by
  unfold goldbachArcModelResidualSum
  exact (norm_sum_le _ _).trans
    (Finset.sum_le_sum fun aq haq => herror aq haq)

/-- A finite model lower bound, all per-arc residual bounds, and the complete
signed minor bound imply positivity only when their combined error is strictly
smaller than the proposed model main term. -/
theorem goldbachCount_pos_of_arc_model_bounds
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1)
    (model : (ℕ × ℕ) → ℝ → ℂ)
    (arcError : (ℕ × ℕ) → ℝ)
    (modelLower minorError : ℝ)
    (hmodel : modelLower ≤
      (goldbachArcModelMajorSum Q N model).re)
    (herror : ∀ aq ∈ goldbachRationalArcIndices Q,
      ‖goldbachArcModelResidual Q N aq model‖ ≤ arcError aq)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤ minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q, arcError aq) +
          minorError < modelLower) :
    0 < goldbachCount N := by
  let totalArcError : ℝ :=
    ∑ aq ∈ goldbachRationalArcIndices Q, arcError aq
  have hresNorm :
      ‖goldbachArcModelResidualSum Q N model‖ ≤ totalArcError := by
    simpa [totalArcError] using
      (goldbachArcModelResidualSum_norm_le
        (Q := Q) (N := N) (model := model)
        (arcError := arcError) herror)
  have hresReAbs :
      |(goldbachArcModelResidualSum Q N model).re| ≤
        totalArcError :=
    (Complex.abs_re_le_norm
      (goldbachArcModelResidualSum Q N model)).trans hresNorm
  have hresReLower :
      -totalArcError ≤
        (goldbachArcModelResidualSum Q N model).re :=
    (abs_le.mp hresReAbs).1
  have hexact :=
    goldbachRationalArcSum_eq_model_add_residual Q N model
  have hmain :
      modelLower - totalArcError ≤
        (∑ aq ∈ goldbachRationalArcIndices Q,
          goldbachSingleRationalArcContribution Q N aq).re := by
    rw [hexact, Complex.add_re]
    linarith
  apply goldbachCount_pos_of_rational_arc_sum_bounds
    hscale (modelLower - totalArcError) minorError
    hmain hminor
  simpa [totalArcError] using (show
    minorError < modelLower - totalArcError by linarith)

/-- A truncated local main scale may be compared to the finite arc model only
with a separate model error, all per-arc residual errors, and the complete
signed minor error. Every error is charged once. -/
theorem goldbachCount_pos_of_arc_model_truncated_certificate
    {arcQ localQ N : ℕ}
    (hscale : 2 * arcQ ^ 2 < N + 1)
    (model : (ℕ × ℕ) → ℝ → ℂ)
    (arcError : (ℕ × ℕ) → ℝ)
    (scale modelError minorError : ℝ)
    (hmodel :
      goldbachTruncatedMainScale localQ N scale - modelError ≤
        (goldbachArcModelMajorSum arcQ N model).re)
    (herror : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ‖goldbachArcModelResidual arcQ N aq model‖ ≤ arcError aq)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤ minorError)
    (hmargin :
      modelError +
          (∑ aq ∈ goldbachRationalArcIndices arcQ, arcError aq) +
          minorError <
        goldbachTruncatedMainScale localQ N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_arc_model_bounds
    hscale model arcError
    (goldbachTruncatedMainScale localQ N scale - modelError)
    minorError hmodel herror hminor
  linarith

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary
```
