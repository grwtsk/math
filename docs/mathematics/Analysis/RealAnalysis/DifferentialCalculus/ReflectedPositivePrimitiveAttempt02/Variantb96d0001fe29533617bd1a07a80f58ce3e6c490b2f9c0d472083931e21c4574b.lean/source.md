# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ReflectedPositivePrimitiveAttempt02.Variantb96d0001fe29533617bd1a07a80f58ce3e6c490b2f9c0d472083931e21c4574b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0050328ab4866312b93600c6de1fe1b17e26281d` · SHA-256 `05784e653e5ac3a6f044cca90e71f059164c3fecea2127b88bc493b113ac14ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhysicalScale.Variant0e4970dff8f8cd72e80089cbd6dc8869fb740624f2ae94fed10bf8b1d2f911ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e4970dff8f8cd72e80089cbd6dc8869fb740624f2ae94fed10bf8b1d2f911ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PhysicalScale.Variant0e4970dff8f8cd72e80089cbd6dc8869fb740624f2ae94fed10bf8b1d2f911ef","mathematical_subject":"Analysis.Calculus","original_sha256":"0e4970dff8f8cd72e80089cbd6dc8869fb740624f2ae94fed10bf8b1d2f911ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass25/positive_primitive/ReflectedPositivePrimitive-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePositivePrimitive

/-! Literal reflected source second primitive and both finite endpoint traces.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
The exact exponentially small arithmetic pairing witness is not supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhysicalScale.Variant0e4970dff8f8cd72e80089cbd6dc8869fb740624f2ae94fed10bf8b1d2f911ef

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ReflectedPositivePrimitive
open MeasureTheory Set
open SourcePositivePrimitive
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCausalEnergy
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
open FormalResearch.RiemannHypothesis.GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Literal normalization of the endpoint-relative source readout. -/
def physicalScale (A : ℝ) : ℝ := A^9*Real.exp (-A)

/-- Reflected positive primitive, not a fitted arithmetic remainder. -/
def reflectedPrimitive (A y : ℝ) : ℝ := physicalScale A*positivePrimitive A (2*A-y)

def reflectedPrimitiveFirst (A y : ℝ) : ℝ :=
  -physicalScale A*positivePrimitiveFirst A (2*A-y)

/-- The genuine compact unit-bump integral is absolutely integrable before evaluation. -/
theorem unitBumpOverlap_integrand_integrable (u : ℝ) :
    Integrable (fun x : ℝ => sourceBump x*sourceBump (x-u)) :=
  (sourceBump_contDiff.continuous.mul
    (sourceBump_contDiff.continuous.comp (continuous_id.sub continuous_const)))
      .integrable_of_hasCompactSupport sourceBump_hasCompactSupport.mul_right

theorem primitiveCorrelationZero_integrand_integrable {A : ℝ} (hA : 0<A) (t : ℝ) :
    Integrable (fun x : ℝ => normalizedPrimitiveBump A x*normalizedPrimitiveBump A (x-t)) :=
  ((normalizedPrimitiveBump_contDiff hA).continuous.mul
    ((normalizedPrimitiveBump_contDiff hA).continuous.comp
      (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
        (normalizedPrimitiveBump_hasCompactSupport hA).mul_right

theorem reflectedPrimitive_hasDerivAt (A y : ℝ) :
    HasDerivAt (reflectedPrimitive A) (reflectedPrimitiveFirst A y) y := by
  have hd := ((positivePrimitive_hasDerivAt A (2*A-y)).comp y
    ((hasDerivAt_const y (2*A)).sub (hasDerivAt_id y))).const_mul (physicalScale A)
  apply hd.congr_deriv
  dsimp [reflectedPrimitiveFirst]
  ring

theorem reflectedPrimitiveFirst_hasDerivAt (A y : ℝ) :
    HasDerivAt (reflectedPrimitiveFirst A)
      (physicalScale A*(Real.exp ((2*A-y)/2)*correlationPolynomial A (2*A-y)/sourceNormalization A)) y := by
  have hd := ((positivePrimitiveFirst_hasDerivAt A (2*A-y)).comp y
    ((hasDerivAt_const y (2*A)).sub (hasDerivAt_id y))).const_mul (-physicalScale A)
  apply hd.congr_deriv
  ring

/-- Exact actual reflected source curvature, retaining the closed full half-support. -/
theorem reflectedPrimitive_second_actual {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    deriv (deriv (reflectedPrimitive A)) y=
      Real.exp (-y/2)*A^9*sourceCorrelation explicitSecondDerivative A (2*A-y) := by
  have he : deriv (reflectedPrimitive A)=reflectedPrimitiveFirst A :=
    funext fun x => (reflectedPrimitive_hasDerivAt A x).deriv
  rw [he,(reflectedPrimitiveFirst_hasDerivAt A y).deriv,
    actual_source_correlation_polynomial hA
      (show 2*A-y∈Icc (0:ℝ) (2*A) by constructor <;> linarith [hy.1,hy.2])]
  have hx : Real.exp (-A)*Real.exp ((2*A-y)/2)=Real.exp (-y/2) := by
    rw [←Real.exp_add]
    congr 1
    ring
  dsimp [physicalScale]
  calc
    _ = (Real.exp (-A)*Real.exp ((2*A-y)/2))*A^9*
      (correlationPolynomial A (2*A-y)/sourceNormalization A) := by ring
    _ = _ := by rw [hx]

/-- Positivity carries to the genuine reflected primitive without estimating its curvature. -/
theorem reflectedPrimitive_nonneg {A y : ℝ} (hA : 1≤A) (hthreshold : (136/7:ℝ)≤A^2)
    (hy : y∈Icc (0:ℝ) (2*A)) : 0≤reflectedPrimitive A y := by
  have hs : 0≤physicalScale A := by unfold physicalScale; positivity
  exact mul_nonneg hs (positivePrimitive_nonneg hA hthreshold
    (show 2*A-y∈Icc (0:ℝ) (2*A) by constructor <;> linarith [hy.1,hy.2]))

/-- Both lower reflected traces are exactly zero at physical source contact. -/
theorem reflectedPrimitive_lower_traces {A : ℝ} (hA : 1≤A) :
    reflectedPrimitive A 0=0 ∧ deriv (reflectedPrimitive A) 0=0 := by
  have hs := positivePrimitive_upper_traces (show 0<A by linarith)
  rw [reflectedPrimitive,(reflectedPrimitive_hasDerivAt A 0).deriv,reflectedPrimitiveFirst]
  simp only [sub_zero,hs.1,hs.2,mul_zero,and_self]

/-- Exact unscaled first upper trace with its original rational normalization. -/
theorem positivePrimitive_center_rational {A : ℝ} (hA : 1≤A) :
    positivePrimitive A 0=(28*A^4-544*A^2)/(7*A^4+272*A^2+7344) := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hd : 0<7*A^4+272*A^2+7344 := by positivity
  norm_num [positivePrimitive,overlapPolynomial0,overlapPolynomial1,overlapPolynomial2]
  dsimp [sourceNormalization]
  field_simp
  ring

/-- Exact unscaled derivative trace; reflection retains the minus sign. -/
theorem positivePrimitiveFirst_center_rational {A : ℝ} (hA : 1≤A) :
    positivePrimitiveFirst A 0=(14*A^4+272*A^2)/(7*A^4+272*A^2+7344) := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hd : 0<7*A^4+272*A^2+7344 := by positivity
  norm_num [positivePrimitiveFirst,overlapPolynomial0,overlapPolynomial1,overlapPolynomial2,
    overlapPolynomial3]
  dsimp [sourceNormalization]
  field_simp
  ring

/-- Finite upper reflected boundary values must not be dropped in two integrations by parts. -/
theorem reflectedPrimitive_upper_traces {A : ℝ} (hA : 1≤A) :
    reflectedPrimitive A (2*A)=physicalScale A*(28*A^4-544*A^2)/(7*A^4+272*A^2+7344) ∧
      deriv (reflectedPrimitive A) (2*A)=
        -physicalScale A*(14*A^4+272*A^2)/(7*A^4+272*A^2+7344) := by
  rw [reflectedPrimitive,(reflectedPrimitive_hasDerivAt A (2*A)).deriv,
    reflectedPrimitiveFirst,sub_self,positivePrimitive_center_rational hA,
    positivePrimitiveFirst_center_rational hA]
  constructor <;> ring

end ContinuousResearch.ReflectedPositivePrimitive

#check ContinuousResearch.ReflectedPositivePrimitive.physicalScale
#print ContinuousResearch.ReflectedPositivePrimitive.physicalScale
#print axioms ContinuousResearch.ReflectedPositivePrimitive.physicalScale

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst

#check ContinuousResearch.ReflectedPositivePrimitive.unitBumpOverlap_integrand_integrable
#print ContinuousResearch.ReflectedPositivePrimitive.unitBumpOverlap_integrand_integrable
#print axioms ContinuousResearch.ReflectedPositivePrimitive.unitBumpOverlap_integrand_integrable

#check ContinuousResearch.ReflectedPositivePrimitive.primitiveCorrelationZero_integrand_integrable
#print ContinuousResearch.ReflectedPositivePrimitive.primitiveCorrelationZero_integrand_integrable
#print axioms ContinuousResearch.ReflectedPositivePrimitive.primitiveCorrelationZero_integrand_integrable

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_hasDerivAt
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_hasDerivAt
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_hasDerivAt

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst_hasDerivAt
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst_hasDerivAt
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitiveFirst_hasDerivAt

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_second_actual
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_second_actual
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_second_actual

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_nonneg
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_nonneg
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_nonneg

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_lower_traces
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_lower_traces
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_lower_traces

#check ContinuousResearch.ReflectedPositivePrimitive.positivePrimitive_center_rational
#print ContinuousResearch.ReflectedPositivePrimitive.positivePrimitive_center_rational
#print axioms ContinuousResearch.ReflectedPositivePrimitive.positivePrimitive_center_rational

#check ContinuousResearch.ReflectedPositivePrimitive.positivePrimitiveFirst_center_rational
#print ContinuousResearch.ReflectedPositivePrimitive.positivePrimitiveFirst_center_rational
#print axioms ContinuousResearch.ReflectedPositivePrimitive.positivePrimitiveFirst_center_rational

#check ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_upper_traces
#print ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_upper_traces
#print axioms ContinuousResearch.ReflectedPositivePrimitive.reflectedPrimitive_upper_traces
```
