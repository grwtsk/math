# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.PositiveShapeScaleParameterAlgebra

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b67fae1e6208321263327e98cc2557b0dbac98ac` · SHA-256 `d693d239e525a2140c2651636fbb8b6c254c6e7a1186960303abb88337e99a42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PositiveShapeScaleParameterAlgebra — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9
Organized SHA-256: a22dadc07a53208d57358ba4287d33f2a3ee3a3fc50815345c14a991752db401
PMD: 510.8.010.020.020 moments (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole positive Dirichlet shape and normalized-Gamma shape/scale records, all positivity data, total/beta/mean/formula covariance/monomial/concentration/reindex/rate/common-scale algebra and the unconstrained time Path are kept together. A Path supplies no time regularity. Moment-named formulas are not automatically integral identities. Original containing namespaces and historical provider identities are retained; physical subject path is GRWTSK. No joint variant admission, law existence, runtime acceptance or kernel replay is asserted. -/

import BitMatrix.Probability.Simplex
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym
import Mathlib.Probability.Distributions.Gamma
import Mathlib.Tactic

/-!
# Exact Gamma--Dirichlet parameter and transport semantics

`Real.Gamma` is Mathlib's exact analytic Gamma function.  This module builds
the finite positive-parameter algebra used by the Prime-Fiber carrier system:
Dirichlet moments, anisotropic normalized-Gamma densities, pointwise
change-of-measure kernels, concentration, relabeling, and split/merge data.

Mathlib does not currently provide a general finite Dirichlet probability
measure.  Consequently `AnalyticLaw` below is an explicit capability boundary:
the exact parameter/density algebra is constructed here, while a measure-level
normalization or Radon--Nikodym theorem must be supplied with its proof.
Nothing in this module identifies the exact Gamma function with the runtime's
finite Lanczos approximation.
-/

namespace BitMatrix.Probability.GammaDirichlet

noncomputable section

open scoped BigOperators ENNReal NNReal
open MeasureTheory
open BitMatrix.Probability

variable {I J K : Type*}

/-! ## Positive parameter families -/

/-- Positive shapes for an equal-scale Dirichlet law. -/
structure DirichletParameters (I : Type*) [Fintype I] where
  shape : I → ℝ
  shapePositive : ∀ i, 0 < shape i

namespace DirichletParameters

variable [Fintype I]

/-- Total concentration `α₀`. -/
def total (parameters : DirichletParameters I) : ℝ :=
  ∑ i, parameters.shape i

theorem total_pos [Nonempty I] (parameters : DirichletParameters I) :
    0 < parameters.total := by
  exact Finset.sum_pos (fun i _ => parameters.shapePositive i) Finset.univ_nonempty

theorem total_ne_zero [Nonempty I] (parameters : DirichletParameters I) :
    parameters.total ≠ 0 :=
  (parameters.total_pos).ne'

/-- Product of coordinate Gamma factors. -/
def gammaProduct (parameters : DirichletParameters I) : ℝ :=
  ∏ i, Real.Gamma (parameters.shape i)

theorem gammaProduct_pos (parameters : DirichletParameters I) :
    0 < parameters.gammaProduct := by
  exact Finset.prod_pos fun i _ => Real.Gamma_pos_of_pos (parameters.shapePositive i)

/-- The multivariate beta normalizer. -/
def multivariateBeta [Nonempty I] (parameters : DirichletParameters I) : ℝ :=
  parameters.gammaProduct / Real.Gamma parameters.total

theorem multivariateBeta_pos [Nonempty I] (parameters : DirichletParameters I) :
    0 < parameters.multivariateBeta := by
  exact div_pos parameters.gammaProduct_pos
    (Real.Gamma_pos_of_pos parameters.total_pos)

/-- Barycentric mean of one coordinate. -/
def mean [Nonempty I] (parameters : DirichletParameters I) (i : I) : ℝ :=
  parameters.shape i / parameters.total

theorem mean_pos [Nonempty I] (parameters : DirichletParameters I) (i : I) :
    0 < parameters.mean i :=
  div_pos (parameters.shapePositive i) parameters.total_pos

theorem sum_mean [Nonempty I] (parameters : DirichletParameters I) :
    ∑ i, parameters.mean i = 1 := by
  rw [show (∑ i, parameters.mean i) = parameters.total / parameters.total by
    simp only [mean, total]
    rw [Finset.sum_div]]
  exact div_self parameters.total_ne_zero

/-- Coordinate variance of the standard Dirichlet law. -/
def variance [Nonempty I] (parameters : DirichletParameters I) (i : I) : ℝ :=
  parameters.shape i * (parameters.total - parameters.shape i) /
    (parameters.total ^ 2 * (parameters.total + 1))

/-- Full coordinate covariance of the standard Dirichlet law.  On the
diagonal this is `variance`; distinct coordinates use the usual negative
cross-covariance. -/
noncomputable def covariance [Nonempty I]
    (parameters : DirichletParameters I) (i j : I) : ℝ := by
  classical
  exact if i = j then parameters.variance i
    else
      -(parameters.shape i * parameters.shape j) /
        (parameters.total ^ 2 * (parameters.total + 1))

@[simp]
theorem covariance_self [Nonempty I] (parameters : DirichletParameters I)
    (i : I) : parameters.covariance i i = parameters.variance i := by
  classical
  simp [covariance]

theorem covariance_of_ne [Nonempty I] (parameters : DirichletParameters I)
    {i j : I} (different : i ≠ j) :
    parameters.covariance i j =
      -(parameters.shape i * parameters.shape j) /
        (parameters.total ^ 2 * (parameters.total + 1)) := by
  classical
  simp [covariance, different]

/-- The full covariance matrix is symmetric. -/
theorem covariance_comm [Nonempty I] (parameters : DirichletParameters I)
    (i j : I) : parameters.covariance i j = parameters.covariance j i := by
  classical
  by_cases equal : i = j
  · subst j
    rfl
  · rw [parameters.covariance_of_ne equal,
      parameters.covariance_of_ne (Ne.symm equal)]
    ring

/-- Closed-form Dirichlet monomial moment. -/
def monomialMoment [Nonempty I] (parameters : DirichletParameters I)
    (powers : I → ℕ) : ℝ :=
  Real.Gamma parameters.total /
      Real.Gamma (parameters.total + ∑ i, (powers i : ℝ)) *
    ∏ i, Real.Gamma (parameters.shape i + powers i) /
      Real.Gamma (parameters.shape i)

/-- Positive concentration rescaling `α ↦ κ α`. -/
def concentrate (parameters : DirichletParameters I)
    (κ : ℝ) (positive : 0 < κ) : DirichletParameters I where
  shape i := κ * parameters.shape i
  shapePositive i := mul_pos positive (parameters.shapePositive i)

@[simp]
theorem concentrate_shape (parameters : DirichletParameters I)
    (κ : ℝ) (positive : 0 < κ) (i : I) :
    (parameters.concentrate κ positive).shape i = κ * parameters.shape i :=
  rfl

theorem concentrate_total (parameters : DirichletParameters I)
    (κ : ℝ) (positive : 0 < κ) :
    (parameters.concentrate κ positive).total = κ * parameters.total := by
  simp only [total, concentrate_shape, Finset.mul_sum]

theorem concentrate_mean [Nonempty I] (parameters : DirichletParameters I)
    (κ : ℝ) (positive : 0 < κ) (i : I) :
    (parameters.concentrate κ positive).mean i = parameters.mean i := by
  rw [mean, mean, concentrate_shape, concentrate_total]
  field_simp [positive.ne', parameters.total_ne_zero]

/-- Concentration preserves the mean and changes coordinate variance only
through the total concentration denominator. -/
theorem concentrate_variance [Nonempty I]
    (parameters : DirichletParameters I)
    (κ : ℝ) (positive : 0 < κ) (i : I) :
    (parameters.concentrate κ positive).variance i =
      parameters.mean i * (1 - parameters.mean i) /
        (κ * parameters.total + 1) := by
  unfold variance mean
  rw [concentrate_shape, concentrate_total]
  field_simp [positive.ne', parameters.total_ne_zero]

/-- Relabel Dirichlet parameters along an equivalence. -/
def reindex [Fintype J] (equivalence : I ≃ J)
    (parameters : DirichletParameters I) : DirichletParameters J where
  shape j := parameters.shape (equivalence.symm j)
  shapePositive j := parameters.shapePositive (equivalence.symm j)

@[simp]
theorem reindex_shape [Fintype J] (equivalence : I ≃ J)
    (parameters : DirichletParameters I) (j : J) :
    (parameters.reindex equivalence).shape j =
      parameters.shape (equivalence.symm j) :=
  rfl

theorem reindex_total [Fintype J] (equivalence : I ≃ J)
    (parameters : DirichletParameters I) :
    (parameters.reindex equivalence).total = parameters.total := by
  exact Equiv.sum_comp equivalence.symm parameters.shape

end DirichletParameters

/-- Positive shape and per-coordinate scale parameters for a normalized-Gamma
law. -/
structure Parameters (I : Type*) [Fintype I] extends DirichletParameters I where
  scale : I → ℝ
  scalePositive : ∀ i, 0 < scale i

namespace Parameters

variable [Fintype I]

/-- Embed equal-scale Dirichlet parameters into the normalized-Gamma family. -/
def equalScale (shape : DirichletParameters I)
    (scale : ℝ) (positive : 0 < scale) : Parameters I where
  toDirichletParameters := shape
  scale := fun _ => scale
  scalePositive := fun _ => positive

/-- Relabel all parameter coordinates along an equivalence. -/
def reindex [Fintype J] (equivalence : I ≃ J)
    (parameters : Parameters I) : Parameters J where
  toDirichletParameters := parameters.toDirichletParameters.reindex equivalence
  scale j := parameters.scale (equivalence.symm j)
  scalePositive j := parameters.scalePositive (equivalence.symm j)

@[simp]
theorem reindex_shape [Fintype J] (equivalence : I ≃ J)
    (parameters : Parameters I) (j : J) :
    (parameters.reindex equivalence).shape j =
      parameters.shape (equivalence.symm j) :=
  rfl

@[simp]
theorem reindex_scale [Fintype J] (equivalence : I ≃ J)
    (parameters : Parameters I) (j : J) :
    (parameters.reindex equivalence).scale j =
      parameters.scale (equivalence.symm j) :=
  rfl

theorem reindex_total [Fintype J] (equivalence : I ≃ J)
    (parameters : Parameters I) :
    (parameters.reindex equivalence).total = parameters.total := by
  exact DirichletParameters.reindex_total equivalence parameters.toDirichletParameters

theorem reindex_gammaProduct [Fintype J] (equivalence : I ≃ J)
    (parameters : Parameters I) :
    (parameters.reindex equivalence).gammaProduct = parameters.gammaProduct := by
  unfold DirichletParameters.gammaProduct
  change (∏ j, Real.Gamma (parameters.shape (equivalence.symm j))) = _
  exact Equiv.prod_comp equivalence.symm
      (fun i : I => Real.Gamma (parameters.shape i))

/-- Convert shape--scale parameters to Mathlib's shape--rate convention. -/
def rate (parameters : Parameters I) (i : I) : ℝ :=
  (parameters.scale i)⁻¹

theorem rate_pos (parameters : Parameters I) (i : I) :
    0 < parameters.rate i :=
  inv_pos.mpr (parameters.scalePositive i)

/-- Multiply every scale parameter by one common positive factor. -/
def scaleAll (parameters : Parameters I)
    (factor : ℝ) (positive : 0 < factor) : Parameters I where
  toDirichletParameters := parameters.toDirichletParameters
  scale i := factor * parameters.scale i
  scalePositive i := mul_pos positive (parameters.scalePositive i)

@[simp]
theorem scaleAll_shape (parameters : Parameters I)
    (factor : ℝ) (positive : 0 < factor) (i : I) :
    (parameters.scaleAll factor positive).shape i = parameters.shape i :=
  rfl

@[simp]
theorem scaleAll_scale (parameters : Parameters I)
    (factor : ℝ) (positive : 0 < factor) (i : I) :
    (parameters.scaleAll factor positive).scale i =
      factor * parameters.scale i :=
  rfl

/-- A pointwise-admissible positive parameter path.  No time regularity is
inferred from this record. -/
structure Path (I : Type*) [Fintype I] where
  parametersAt : ℝ → Parameters I

end Parameters

end

end BitMatrix.Probability.GammaDirichlet
```
