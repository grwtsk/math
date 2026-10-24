# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichlet.Variant6917820ca9421fc2763551274213d189c29fc506bf26cb287aa3c7ec3f137819

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd59fb15ca7eac81b85c5959ed7284b1031900b0` · SHA-256 `ce061e508d1bb52de19ecb0a95e49087274e252cfc9ac540dd4195970b393c29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.DirichletParameters.Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.DirichletParameters.Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Probability/GammaDirichlet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.DirichletParameters.Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9

namespace BitMatrix.Probability.GammaDirichlet

noncomputable section

open scoped BigOperators ENNReal NNReal
open MeasureTheory
open BitMatrix.Probability

variable {I J K : Type*}

/-! ## Exact analytic Gamma boundary -/

/-- The project exact Gamma symbol is Mathlib's analytic `Real.Gamma`, not the
runtime Lanczos approximation. -/
abbrev exactGamma : ℝ → ℝ := Real.Gamma

theorem exactGamma_positive {value : ℝ} (positive : 0 < value) :
    0 < exactGamma value :=
  Real.Gamma_pos_of_pos positive

theorem exactGamma_recurrence {value : ℝ} (nonzero : value ≠ 0) :
    exactGamma (value + 1) = value * exactGamma value :=
  Real.Gamma_add_one nonzero

/-- Euler reflection, interpreted on the meromorphic Gamma function.  Mathlib
totalizes Gamma to zero at pole locations, so this equality must not be read
as assigning a finite analytic value to a pole. -/
theorem exactGamma_reflection (value : ℝ) :
    exactGamma value * exactGamma (1 - value) =
      Real.pi / Real.sin (Real.pi * value) :=
  Real.Gamma_mul_Gamma_one_sub value

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

/-! ## Concrete independent Gamma product law -/

/-- Independent scalar Gamma samples with the requested shapes and scales.
Mathlib's Gamma distribution takes a rate, hence the reciprocal conversion. -/
def gammaProductMeasure [Fintype I] (parameters : Parameters I) :
    Measure (I → ℝ) :=
  Measure.pi fun i =>
    ProbabilityTheory.gammaMeasure (parameters.shape i) (parameters.rate i)

theorem gammaProductMeasure_probability [Fintype I]
    (parameters : Parameters I) :
    IsProbabilityMeasure (gammaProductMeasure parameters) := by
  let coordinateProbability :
      ∀ i, IsProbabilityMeasure
        (ProbabilityTheory.gammaMeasure
          (parameters.shape i) (parameters.rate i)) :=
    fun i => ProbabilityTheory.isProbabilityMeasure_gammaMeasure
      (parameters.shapePositive i) (parameters.rate_pos i)
  letI : ∀ i, IsProbabilityMeasure
      (ProbabilityTheory.gammaMeasure
        (parameters.shape i) (parameters.rate i)) :=
    coordinateProbability
  change IsProbabilityMeasure
    (Measure.pi fun i =>
      ProbabilityTheory.gammaMeasure (parameters.shape i) (parameters.rate i))
  infer_instance

/-! ## Exact density algebra -/

private theorem prod_rpow_eq_rpow_sum [Fintype I]
    (base : ℝ) (positive : 0 < base) (exponent : I → ℝ) :
    (∏ i, base ^ exponent i) = base ^ ∑ i, exponent i := by
  classical
  induction (Finset.univ : Finset I) using Finset.induction_on with
  | empty => simp
  | @insert i indices notMember induction =>
      rw [Finset.prod_insert notMember, Finset.sum_insert notMember,
        Real.rpow_add positive, induction]

/-- The scale-weighted simplex denominator `∑ᵢ wᵢ / θᵢ`. -/
def weightedInverseScaleSum [Fintype I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) : ℝ :=
  ∑ i, point i / parameters.scale i

theorem weightedInverseScaleSum_pos [Fintype I] [Nonempty I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) :
    0 < weightedInverseScaleSum parameters point := by
  exact Finset.sum_pos
    (fun i _ => div_pos (point.positive i) (parameters.scalePositive i))
    Finset.univ_nonempty

/-- Fully anisotropic normalized-Gamma density on the open simplex. -/
def normalizedGammaDensity [Fintype I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) : ℝ :=
  (Real.Gamma parameters.total / parameters.gammaProduct) *
      (∏ i, point i ^ (parameters.shape i - 1) *
        parameters.scale i ^ (-parameters.shape i)) /
    weightedInverseScaleSum parameters point ^ parameters.total

theorem normalizedGammaDensity_pos [Fintype I] [Nonempty I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) :
    0 < normalizedGammaDensity parameters point := by
  apply div_pos
  · apply mul_pos
    · exact div_pos (Real.Gamma_pos_of_pos parameters.total_pos)
        parameters.gammaProduct_pos
    · exact Finset.prod_pos fun i _ =>
        mul_pos
          (Real.rpow_pos_of_pos (point.positive i) _)
          (Real.rpow_pos_of_pos (parameters.scalePositive i) _)
  · exact Real.rpow_pos_of_pos (weightedInverseScaleSum_pos parameters point) _

/-- Standard Dirichlet density, stated separately so equal-scale probability
semantics are not confused with anisotropic normalized-Gamma parameters. -/
def dirichletDensity [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I) (point : InteriorSimplexPoint I) : ℝ :=
  (1 / parameters.multivariateBeta) *
    ∏ i, point i ^ (parameters.shape i - 1)

theorem dirichletDensity_pos [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I) (point : InteriorSimplexPoint I) :
    0 < dirichletDensity parameters point := by
  exact mul_pos (one_div_pos.mpr parameters.multivariateBeta_pos)
    (Finset.prod_pos fun i _ => Real.rpow_pos_of_pos (point.positive i) _)

/-- Equal scale cancels exactly under normalized-Gamma normalization, leaving
the standard Dirichlet density. -/
theorem normalizedGammaDensity_equalScale [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (positive : 0 < scale)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (Parameters.equalScale parameters scale positive) point =
      dirichletDensity parameters point := by
  classical
  have scaleProduct :
      (∏ i : I, scale ^ (-parameters.shape i)) =
        scale ^ (-parameters.total) := by
    calc
      (∏ i : I, scale ^ (-parameters.shape i)) =
          scale ^ ∑ i : I, -parameters.shape i :=
        prod_rpow_eq_rpow_sum scale positive _
      _ = scale ^ (-parameters.total) := by
        congr 1
        simp [DirichletParameters.total]
  have inverseScaleSum :
      weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point =
        1 / scale := by
    unfold weightedInverseScaleSum Parameters.equalScale
    rw [← Finset.sum_div, point.normalized]
  have denominator :
      weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point ^
          parameters.total =
        scale ^ (-parameters.total) := by
    rw [inverseScaleSum, one_div, Real.inv_rpow positive.le,
      Real.rpow_neg positive.le]
  have scalePower_ne_zero : scale ^ (-parameters.total) ≠ 0 :=
    (Real.rpow_pos_of_pos positive _).ne'
  have gammaProduct_ne_zero : parameters.gammaProduct ≠ 0 :=
    parameters.gammaProduct_pos.ne'
  have gammaTotal_ne_zero : Real.Gamma parameters.total ≠ 0 :=
    (Real.Gamma_pos_of_pos parameters.total_pos).ne'
  unfold normalizedGammaDensity dirichletDensity
  change
    (Real.Gamma parameters.total / parameters.gammaProduct) *
          (∏ i, point i ^ (parameters.shape i - 1) *
            scale ^ (-parameters.shape i)) /
        weightedInverseScaleSum (Parameters.equalScale parameters scale positive) point ^
          parameters.total =
      (1 / (parameters.gammaProduct / Real.Gamma parameters.total)) *
        ∏ i, point i ^ (parameters.shape i - 1)
  rw [Finset.prod_mul_distrib, scaleProduct, denominator]
  field_simp

/-- Multiplying every Gamma scale by the same positive factor leaves the
normalized-Gamma density unchanged. -/
theorem normalizedGammaDensity_scaleAll [Fintype I] [Nonempty I]
    (parameters : Parameters I)
    (factor : ℝ) (positive : 0 < factor)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (parameters.scaleAll factor positive) point =
      normalizedGammaDensity parameters point := by
  classical
  have factorProduct :
      (∏ i : I, factor ^ (-parameters.shape i)) =
        factor ^ (-parameters.total) := by
    calc
      (∏ i : I, factor ^ (-parameters.shape i)) =
          factor ^ ∑ i : I, -parameters.shape i :=
        prod_rpow_eq_rpow_sum factor positive _
      _ = factor ^ (-parameters.total) := by
        congr 1
        simp [DirichletParameters.total]
  have weightedSum :
      weightedInverseScaleSum (parameters.scaleAll factor positive) point =
        weightedInverseScaleSum parameters point / factor := by
    unfold weightedInverseScaleSum
    change (∑ i, point i / (factor * parameters.scale i)) = _
    calc
      (∑ i, point i / (factor * parameters.scale i)) =
          ∑ i, (point i / parameters.scale i) / factor := by
        apply Finset.sum_congr rfl
        intro i _
        field_simp [positive.ne', (parameters.scalePositive i).ne']
      _ = (∑ i, point i / parameters.scale i) / factor :=
        (Finset.sum_div Finset.univ
          (fun i => point i / parameters.scale i) factor).symm
  have productScaling :
      (∏ i : I, point i ^ (parameters.shape i - 1) *
        (factor * parameters.scale i) ^ (-parameters.shape i)) =
      factor ^ (-parameters.total) *
        ∏ i : I, point i ^ (parameters.shape i - 1) *
          parameters.scale i ^ (-parameters.shape i) := by
    calc
      (∏ i : I, point i ^ (parameters.shape i - 1) *
          (factor * parameters.scale i) ^ (-parameters.shape i)) =
        ∏ i : I, factor ^ (-parameters.shape i) *
          (point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i)) := by
          apply Finset.prod_congr rfl
          intro i _
          rw [Real.mul_rpow positive.le (parameters.scalePositive i).le]
          ring
      _ = (∏ i : I, factor ^ (-parameters.shape i)) *
          ∏ i : I, point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i) :=
        Finset.prod_mul_distrib
      _ = factor ^ (-parameters.total) *
          ∏ i : I, point i ^ (parameters.shape i - 1) *
            parameters.scale i ^ (-parameters.shape i) := by
        rw [factorProduct]
  have denominatorScaling :
      weightedInverseScaleSum (parameters.scaleAll factor positive) point ^
          parameters.total =
        weightedInverseScaleSum parameters point ^ parameters.total /
          factor ^ parameters.total := by
    rw [weightedSum]
    exact Real.div_rpow
      (weightedInverseScaleSum_pos parameters point).le positive.le _
  have factorPower_ne_zero : factor ^ parameters.total ≠ 0 :=
    (Real.rpow_pos_of_pos positive _).ne'
  have denominator_ne_zero :
      weightedInverseScaleSum parameters point ^ parameters.total ≠ 0 :=
    (Real.rpow_pos_of_pos (weightedInverseScaleSum_pos parameters point) _).ne'
  unfold normalizedGammaDensity
  change
    (Real.Gamma parameters.total / parameters.gammaProduct) *
        (∏ i, point i ^ (parameters.shape i - 1) *
          (factor * parameters.scale i) ^ (-parameters.shape i)) /
      weightedInverseScaleSum (parameters.scaleAll factor positive) point ^
        parameters.total = _
  rw [productScaling, denominatorScaling,
    Real.rpow_neg positive.le parameters.total]
  field_simp

/-- Pointwise Radon--Nikodym candidate between two strictly positive density
profiles on the same index type. -/
def transportKernel [Fintype I]
    (source target : Parameters I) (point : InteriorSimplexPoint I) : ℝ :=
  normalizedGammaDensity target point /
    normalizedGammaDensity source point

@[simp]
theorem transportKernel_self [Fintype I] [Nonempty I]
    (parameters : Parameters I) (point : InteriorSimplexPoint I) :
    transportKernel parameters parameters point = 1 := by
  exact div_self (normalizedGammaDensity_pos parameters point).ne'

theorem transportKernel_cocycle [Fintype I] [Nonempty I]
    (first second third : Parameters I) (point : InteriorSimplexPoint I) :
    transportKernel first third point =
      transportKernel first second point * transportKernel second third point := by
  unfold transportKernel
  field_simp [
    (normalizedGammaDensity_pos first point).ne',
    (normalizedGammaDensity_pos second point).ne',
    (normalizedGammaDensity_pos third point).ne']

theorem transportKernel_inverse [Fintype I] [Nonempty I]
    (source target : Parameters I) (point : InteriorSimplexPoint I) :
    transportKernel source target point *
        transportKernel target source point = 1 := by
  simpa using
    (transportKernel_cocycle source target source point).symm

theorem normalizedGammaDensity_reindex [Fintype I] [Fintype J]
    [Nonempty I] [Nonempty J]
    (equivalence : I ≃ J) (parameters : Parameters I)
    (point : InteriorSimplexPoint I) :
    normalizedGammaDensity (parameters.reindex equivalence)
        (point.reindex equivalence) =
      normalizedGammaDensity parameters point := by
  unfold normalizedGammaDensity weightedInverseScaleSum
  rw [Parameters.reindex_total, Parameters.reindex_gammaProduct]
  simp only [InteriorSimplexPoint.reindex_apply, Parameters.reindex_shape,
    Parameters.reindex_scale]
  have productEquality :
      (∏ j : J, point (equivalence.symm j) ^
          (parameters.shape (equivalence.symm j) - 1) *
          parameters.scale (equivalence.symm j) ^
            (-parameters.shape (equivalence.symm j))) =
        ∏ i : I, point i ^ (parameters.shape i - 1) *
          parameters.scale i ^ (-parameters.shape i) :=
    Equiv.prod_comp equivalence.symm
      (fun i : I => point i ^ (parameters.shape i - 1) *
        parameters.scale i ^ (-parameters.shape i))
  have sumEquality :
      (∑ j : J, point (equivalence.symm j) /
          parameters.scale (equivalence.symm j)) =
        ∑ i : I, point i / parameters.scale i :=
    Equiv.sum_comp equivalence.symm
      (fun i : I => point i / parameters.scale i)
  rw [productEquality, sumEquality]

theorem transportKernel_reindex [Fintype I] [Fintype J]
    [Nonempty I] [Nonempty J]
    (equivalence : I ≃ J) (source target : Parameters I)
    (point : InteriorSimplexPoint I) :
    transportKernel (source.reindex equivalence) (target.reindex equivalence)
        (point.reindex equivalence) =
      transportKernel source target point := by
  simp only [transportKernel, normalizedGammaDensity_reindex]

/-! ## Positive samples and common-scale invariance -/

/-- A strictly positive finite family before simplex normalization. -/
structure PositiveSample (I : Type*) [Fintype I] where
  mass : I → ℝ
  positive : ∀ i, 0 < mass i

namespace PositiveSample

variable [Fintype I] [Nonempty I]

def total (sample : PositiveSample I) : ℝ :=
  ∑ i, sample.mass i

theorem total_pos (sample : PositiveSample I) : 0 < sample.total := by
  exact Finset.sum_pos (fun i _ => sample.positive i) Finset.univ_nonempty

/-- Normalize positive Gamma samples to an open-simplex point. -/
def normalize (sample : PositiveSample I) : InteriorSimplexPoint I where
  weight i := sample.mass i / sample.total
  nonnegative i := (div_pos (sample.positive i) sample.total_pos).le
  normalized := by
    rw [show (∑ i, sample.mass i / sample.total) = sample.total / sample.total by
      simp only [total]
      rw [Finset.sum_div]]
    exact div_self sample.total_pos.ne'
  positive i := div_pos (sample.positive i) sample.total_pos

/-- Multiply every unnormalized sample by the same positive scale. -/
def scale (sample : PositiveSample I) (factor : ℝ) (positive : 0 < factor) :
    PositiveSample I where
  mass i := factor * sample.mass i
  positive i := mul_pos positive (sample.positive i)

omit [Nonempty I] in
theorem scale_total (sample : PositiveSample I)
    (factor : ℝ) (positive : 0 < factor) :
    (sample.scale factor positive).total = factor * sample.total := by
  simp only [total, scale, Finset.mul_sum]

/-- A common scale cancels exactly under Gamma-sample normalization. -/
theorem normalize_scale (sample : PositiveSample I)
    (factor : ℝ) (positive : 0 < factor) :
    (sample.scale factor positive).normalize = sample.normalize := by
  apply InteriorSimplexPoint.ext
  intro i
  change (sample.scale factor positive).mass i /
      (sample.scale factor positive).total = sample.mass i / sample.total
  rw [scale_total]
  change factor * sample.mass i / (factor * sample.total) =
    sample.mass i / sample.total
  field_simp [positive.ne', sample.total_pos.ne']

end PositiveSample

/-! ## Exact split/merge parameter data -/

/-- A finite refinement map; every coarse index has at least one refined
coordinate. -/
structure Refinement (I J : Type*) [Fintype I] [Fintype J] where
  label : J → I
  surjective : Function.Surjective label

namespace Refinement

variable [Fintype I] [Fintype J] [DecidableEq I]

/-- Merge refined Dirichlet shapes by summing within each fiber. -/
def mergeParameters (refinement : Refinement I J)
    (parameters : DirichletParameters J) : DirichletParameters I where
  shape i := ∑ j, if refinement.label j = i then parameters.shape j else 0
  shapePositive i := by
    obtain ⟨j, equality⟩ := refinement.surjective i
    have member : j ∈ (Finset.univ.filter fun j => refinement.label j = i) := by
      simp [equality]
    rw [← Finset.sum_filter]
    exact Finset.sum_pos'
      (fun j _ => (parameters.shapePositive j).le)
      ⟨j, member, parameters.shapePositive j⟩

/-- Merge a refined simplex point along the same fiber map. -/
def mergePoint (refinement : Refinement I J)
    (point : SimplexPoint J) : SimplexPoint I :=
  point.merge refinement.label

theorem mergeParameters_total (refinement : Refinement I J)
    (parameters : DirichletParameters J) :
    (refinement.mergeParameters parameters).total = parameters.total := by
  unfold mergeParameters DirichletParameters.total
  calc
    (∑ i, ∑ j, if refinement.label j = i then parameters.shape j else 0) =
        ∑ j, ∑ i, if refinement.label j = i then parameters.shape j else 0 :=
      Finset.sum_comm
    _ = ∑ j, parameters.shape j := by simp

end Refinement

/-! ## Measure-level authority boundary -/

/-- Measurability is inherited from the finite coordinate family. -/
instance interiorSimplexMeasurableSpace [Fintype I] :
    MeasurableSpace (InteriorSimplexPoint I) :=
  MeasurableSpace.comap (fun point => point.weight) inferInstance

/-- A supplied exact analytic law for one parameter profile, tied to an
explicit reference measure by the normalized-Gamma density.  Its existence is
evidence, not something inferred from the positive density expression. -/
structure AnalyticLaw [Fintype I] [Nonempty I] (parameters : Parameters I) where
  referenceMeasure : Measure (InteriorSimplexPoint I)
  measure : Measure (InteriorSimplexPoint I)
  density_identity :
    measure = referenceMeasure.withDensity
      (fun point => ENNReal.ofReal (normalizedGammaDensity parameters point))
  probability : IsProbabilityMeasure measure

/-- A law with an explicitly supplied simplex-valued mean.  For anisotropic
normalized-Gamma parameters this mean is generally not `αᵢ / α₀`. -/
structure MeanLaw [Fintype I] [Nonempty I] (parameters : Parameters I)
    extends AnalyticLaw parameters where
  expectedWeight : SimplexPoint I
  mean_identity : ∀ i,
    ∫ point, point i ∂measure = expectedWeight i

/-- Equal-scale mean capability.  This record does not independently assert a
full Dirichlet distribution; it only ties the supplied analytic mean to
`αᵢ / α₀`. -/
structure EqualScaleMeanLaw [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (scalePositive : 0 < scale)
    extends MeanLaw (Parameters.equalScale parameters scale scalePositive) where
  expectedWeight_eq : ∀ i, expectedWeight i = parameters.mean i

/-- Optional proof package connecting the closed-form variance, covariance,
and monomial expressions to an inhabited equal-scale Dirichlet law. -/
structure DirichletMomentLaw [Fintype I] [Nonempty I]
    (parameters : DirichletParameters I)
    (scale : ℝ) (scalePositive : 0 < scale)
    extends EqualScaleMeanLaw parameters scale scalePositive where
  variance_identity : ∀ i,
    (∫ point, (point i - parameters.mean i) ^ 2 ∂measure) =
      parameters.variance i
  covariance_identity : ∀ i j,
    (∫ point,
      (point i - parameters.mean i) * (point j - parameters.mean j)
        ∂measure) = parameters.covariance i j
  monomial_identity : ∀ powers : I → ℕ,
    (∫ point, ∏ i, (point i) ^ powers i ∂measure) =
      parameters.monomialMoment powers

/-- A proof-carrying Radon--Nikodym bridge between two supplied analytic laws. -/
structure ChangeOfMeasure [Fintype I] [Nonempty I]
    {source target : Parameters I}
    (sourceLaw : AnalyticLaw source) (targetLaw : AnalyticLaw target) where
  absolutelyContinuous : targetLaw.measure ≪ sourceLaw.measure
  kernel_eq_rnDeriv :
    (fun point => ENNReal.ofReal (transportKernel source target point))
      =ᵐ[sourceLaw.measure]
        targetLaw.measure.rnDeriv sourceLaw.measure
  integrableTransport : ∀ observable : InteriorSimplexPoint I → ℝ,
    Integrable observable targetLaw.measure →
      Integrable
        (fun point => transportKernel source target point * observable point)
        sourceLaw.measure
  integral_transport : ∀ observable : InteriorSimplexPoint I → ℝ,
    Integrable observable targetLaw.measure →
      (∫ point, observable point ∂targetLaw.measure) =
        ∫ point, transportKernel source target point * observable point
          ∂sourceLaw.measure

end

end BitMatrix.Probability.GammaDirichlet
```
