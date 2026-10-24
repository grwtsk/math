-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPhysicalWeight.Variant4f6a99c2a375e51e7bb656c48f91190a084dad019c47cbbba68ef2bdc18a31e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f6a99c2a375e51e7bb656c48f91190a084dad019c47cbbba68ef2bdc18a31e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualPhysicalWeight.Variant4f6a99c2a375e51e7bb656c48f91190a084dad019c47cbbba68ef2bdc18a31e7","mathematical_subject":"Analysis.Calculus","original_sha256":"4f6a99c2a375e51e7bb656c48f91190a084dad019c47cbbba68ef2bdc18a31e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/native-physical-birth-kernel/minimal-source-adapter/lint-repair-v4/SourcePhysicalBirthSource.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePhysicalEndpointConvolution
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-! Native actual physical weighted-correlation kernel on the birth interval.
Direction: grwtsk contributors. Source construction/formalization: Codex graph_review.
Full27 endpoint coefficients and complete R63 source curvature are retained.
The135Bernstein positivity certificate retains its existing PAPER grade.
The complete signed atomic interior is not estimated here. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualPhysicalWeight.Variant4f6a99c2a375e51e7bb656c48f91190a084dad019c47cbbba68ef2bdc18a31e7

set_option autoImplicit false
set_option maxRecDepth 8192
noncomputable section
namespace RH16PhysicalBirthKernel
open Set MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePhysicalEndpointConvolution SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

def actualPhysicalWeight (A y : ℝ) : ℝ :=
  A ^ 9 * Real.exp (-y / 2) * sourceCorrelation explicitSecondDerivative A (2 * A - y)

def actualPhysicalKernel (A y : ℝ) : ℝ := deriv (deriv (actualPhysicalWeight A)) y

def physicalCurvaturePolynomial (r y : ℝ) : ℝ :=
  (24576) +
    (-6144) * y +
    ((-1536 / 5)) * y ^ 2 +
    ((512 / 5)) * y ^ 3 +
    ((-64 / 35)) * y ^ 4 +
    ((-8 / 35)) * y ^ 5 +
    ((2 / 315)) * y ^ 6 +
    (-122880) * r * y +
    (24576) * r * y ^ 2 +
    (1024) * r * y ^ 3 +
    ((-2048 / 7)) * r * y ^ 4 +
    ((32 / 7)) * r * y ^ 5 +
    ((32 / 63)) * r * y ^ 6 +
    ((-4 / 315)) * r * y ^ 7 +
    (233472) * r ^ 2 * y ^ 2 +
    (-38912) * r ^ 2 * y ^ 3 +
    ((-9728 / 7)) * r ^ 2 * y ^ 4 +
    ((2432 / 7)) * r ^ 2 * y ^ 5 +
    ((-304 / 63)) * r ^ 2 * y ^ 6 +
    ((-152 / 315)) * r ^ 2 * y ^ 7 +
    ((38 / 3465)) * r ^ 2 * y ^ 8 +
    (-227328) * r ^ 3 * y ^ 3 +
    ((227328 / 7)) * r ^ 3 * y ^ 4 +
    ((7104 / 7)) * r ^ 3 * y ^ 5 +
    ((-4736 / 21)) * r ^ 3 * y ^ 6 +
    ((296 / 105)) * r ^ 3 * y ^ 7 +
    ((296 / 1155)) * r ^ 3 * y ^ 8 +
    ((-37 / 6930)) * r ^ 3 * y ^ 9 +
    ((887808 / 7)) * r ^ 4 * y ^ 4 +
    ((-110976 / 7)) * r ^ 4 * y ^ 5 +
    ((-9248 / 21)) * r ^ 4 * y ^ 6 +
    ((9248 / 105)) * r ^ 4 * y ^ 7 +
    ((-1156 / 1155)) * r ^ 4 * y ^ 8 +
    ((-289 / 3465)) * r ^ 4 * y ^ 9 +
    ((289 / 180180)) * r ^ 4 * y ^ 10 +
    (-42240) * r ^ 5 * y ^ 5 +
    ((14080 / 3)) * r ^ 5 * y ^ 6 +
    ((352 / 3)) * r ^ 5 * y ^ 7 +
    ((-64 / 3)) * r ^ 5 * y ^ 8 +
    ((2 / 9)) * r ^ 5 * y ^ 9 +
    ((2 / 117)) * r ^ 5 * y ^ 10 +
    ((-1 / 3276)) * r ^ 5 * y ^ 11 +
    (8320) * r ^ 6 * y ^ 6 +
    (-832) * r ^ 6 * y ^ 7 +
    ((-208 / 11)) * r ^ 6 * y ^ 8 +
    ((104 / 33)) * r ^ 6 * y ^ 9 +
    ((-1 / 33)) * r ^ 6 * y ^ 10 +
    ((-1 / 462)) * r ^ 6 * y ^ 11 +
    ((1 / 27720)) * r ^ 6 * y ^ 12 +
    (-896) * r ^ 7 * y ^ 7 +
    ((896 / 11)) * r ^ 7 * y ^ 8 +
    ((56 / 33)) * r ^ 7 * y ^ 9 +
    ((-112 / 429)) * r ^ 7 * y ^ 10 +
    ((1 / 429)) * r ^ 7 * y ^ 11 +
    ((1 / 6435)) * r ^ 7 * y ^ 12 +
    ((-1 / 411840)) * r ^ 7 * y ^ 13 +
    ((448 / 11)) * r ^ 8 * y ^ 8 +
    ((-112 / 33)) * r ^ 8 * y ^ 9 +
    ((-28 / 429)) * r ^ 8 * y ^ 10 +
    ((4 / 429)) * r ^ 8 * y ^ 11 +
    ((-1 / 12870)) * r ^ 8 * y ^ 12 +
    ((-1 / 205920)) * r ^ 8 * y ^ 13 +
    ((1 / 14002560)) * r ^ 8 * y ^ 14

private def endpointD1 (r y : ℝ) : ℝ :=
  (6144) * y ^ 4 +
    ((-512 / 5)) * y ^ 6 +
    ((8 / 35)) * y ^ 8 +
    (-24576) * r * y ^ 5 +
    ((2048 / 7)) * r * y ^ 7 +
    ((-32 / 63)) * r * y ^ 9 +
    (38912) * r ^ 2 * y ^ 6 +
    ((-2432 / 7)) * r ^ 2 * y ^ 8 +
    ((152 / 315)) * r ^ 2 * y ^ 10 +
    ((-227328 / 7)) * r ^ 3 * y ^ 7 +
    ((4736 / 21)) * r ^ 3 * y ^ 9 +
    ((-296 / 1155)) * r ^ 3 * y ^ 11 +
    ((110976 / 7)) * r ^ 4 * y ^ 8 +
    ((-9248 / 105)) * r ^ 4 * y ^ 10 +
    ((289 / 3465)) * r ^ 4 * y ^ 12 +
    ((-14080 / 3)) * r ^ 5 * y ^ 9 +
    ((64 / 3)) * r ^ 5 * y ^ 11 +
    ((-2 / 117)) * r ^ 5 * y ^ 13 +
    (832) * r ^ 6 * y ^ 10 +
    ((-104 / 33)) * r ^ 6 * y ^ 12 +
    ((1 / 462)) * r ^ 6 * y ^ 14 +
    ((-896 / 11)) * r ^ 7 * y ^ 11 +
    ((112 / 429)) * r ^ 7 * y ^ 13 +
    ((-1 / 6435)) * r ^ 7 * y ^ 15 +
    ((112 / 33)) * r ^ 8 * y ^ 12 +
    ((-4 / 429)) * r ^ 8 * y ^ 14 +
    ((1 / 205920)) * r ^ 8 * y ^ 16

private def endpointD2 (r y : ℝ) : ℝ :=
  (24576) * y ^ 3 +
    ((-3072 / 5)) * y ^ 5 +
    ((64 / 35)) * y ^ 7 +
    (-122880) * r * y ^ 4 +
    (2048) * r * y ^ 6 +
    ((-32 / 7)) * r * y ^ 8 +
    (233472) * r ^ 2 * y ^ 5 +
    ((-19456 / 7)) * r ^ 2 * y ^ 7 +
    ((304 / 63)) * r ^ 2 * y ^ 9 +
    (-227328) * r ^ 3 * y ^ 6 +
    ((14208 / 7)) * r ^ 3 * y ^ 8 +
    ((-296 / 105)) * r ^ 3 * y ^ 10 +
    ((887808 / 7)) * r ^ 4 * y ^ 7 +
    ((-18496 / 21)) * r ^ 4 * y ^ 9 +
    ((1156 / 1155)) * r ^ 4 * y ^ 11 +
    (-42240) * r ^ 5 * y ^ 8 +
    ((704 / 3)) * r ^ 5 * y ^ 10 +
    ((-2 / 9)) * r ^ 5 * y ^ 12 +
    (8320) * r ^ 6 * y ^ 9 +
    ((-416 / 11)) * r ^ 6 * y ^ 11 +
    ((1 / 33)) * r ^ 6 * y ^ 13 +
    (-896) * r ^ 7 * y ^ 10 +
    ((112 / 33)) * r ^ 7 * y ^ 12 +
    ((-1 / 429)) * r ^ 7 * y ^ 14 +
    ((448 / 11)) * r ^ 8 * y ^ 11 +
    ((-56 / 429)) * r ^ 8 * y ^ 13 +
    ((1 / 12870)) * r ^ 8 * y ^ 15

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
private theorem endpoint_deriv (r : ℝ) : deriv (endpointPolynomial r) = endpointD1 r := by
  funext y
  unfold endpointPolynomial endpointD1
  simp (disch := fun_prop) only [deriv_fun_add, deriv_fun_mul, deriv_fun_pow,
    deriv_id'', deriv_const]
  ring

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
private theorem endpointD1_deriv (r : ℝ) : deriv (endpointD1 r) = endpointD2 r := by
  funext y
  unfold endpointD1 endpointD2
  simp (disch := fun_prop) only [deriv_fun_add, deriv_fun_mul, deriv_fun_pow,
    deriv_id'', deriv_const]
  ring

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
private theorem weighted_polynomial_identity (r y : ℝ) :
    endpointD2 r y - endpointD1 r y + endpointPolynomial r y / 4 =
      y ^ 3 * physicalCurvaturePolynomial r y := by
  unfold endpointD2 endpointD1 endpointPolynomial physicalCurvaturePolynomial
  ring

private def physicalProfile (A y : ℝ) : ℝ :=
  Real.exp (-y / 2) * endpointPolynomial (1 / A) y / sourceNormalization A

private theorem physicalProfile_contDiff (A : ℝ) : ContDiff ℝ 2 (physicalProfile A) := by
  unfold physicalProfile endpointPolynomial
  fun_prop

private theorem actualPhysicalWeight_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (actualPhysicalWeight A) := by
  unfold actualPhysicalWeight
  exact (contDiff_const.mul ((contDiff_id.neg.div_const 2).exp)).mul
    ((sourceCorrelation_contDiff_two hA).comp (contDiff_const.sub contDiff_id))

theorem actualPhysicalWeight_eq_profile {A y : ℝ} (hA : 0 < A)
    (hy0 : 0 ≤ y) (hy2 : y ≤ 2 * A) :
    actualPhysicalWeight A y = physicalProfile A y := by
  unfold actualPhysicalWeight physicalProfile
  rw [sourceCorrelation_endpoint_eq_polynomial hA hy0 hy2]
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  field_simp [hA.ne', hZ.ne']

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

private theorem actualPhysicalWeight_second_eq_profile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (actualPhysicalWeight A))) (deriv (deriv (physicalProfile A)))
      (Icc 0 (2 * A)) := by
  have hf := actualPhysicalWeight_contDiff hA
  have hg := physicalProfile_contDiff A
  apply deriv_eq_on_closed (by linarith)
  · have hf1 : ContDiff ℝ 1 (deriv (actualPhysicalWeight A)) := hf.deriv'
    exact hf1.differentiable (by norm_num)
  · have hg1 : ContDiff ℝ 1 (deriv (physicalProfile A)) := hg.deriv'
    exact hg1.differentiable (by norm_num)
  · apply deriv_eq_on_closed (by linarith)
    · exact hf.differentiable (by norm_num)
    · exact hg.differentiable (by norm_num)
    · intro y hy
      exact actualPhysicalWeight_eq_profile hA hy.1 hy.2

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
private theorem physicalProfile_deriv (A : ℝ) :
    deriv (physicalProfile A) = fun y => Real.exp (-y / 2) *
      (endpointD1 (1 / A) y - endpointPolynomial (1 / A) y / 2) / sourceNormalization A := by
  funext y
  have hf : Differentiable ℝ (endpointPolynomial (1 / A)) := by unfold endpointPolynomial; fun_prop
  have hp : HasDerivAt (endpointPolynomial (1 / A)) (endpointD1 (1 / A) y) y := by
    simpa only [endpoint_deriv] using (hf y).hasDerivAt
  have he0 := ((hasDerivAt_id y).neg.div_const 2).exp
  have he : HasDerivAt (fun x : ℝ => Real.exp (-x / 2)) (-Real.exp (-y / 2) / 2) y := by
    (convert he0 using 1 <;> simp only [Pi.neg_apply, id_eq])
    ring
  have h := (he.mul hp).div_const (sourceNormalization A)
  unfold physicalProfile
  exact (h.congr_deriv (by ring)).deriv

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
private theorem physicalProfile_second (A y : ℝ) :
    deriv (deriv (physicalProfile A)) y =
      Real.exp (-y / 2) * y ^ 3 * physicalCurvaturePolynomial (1 / A) y /
        sourceNormalization A := by
  have hf : Differentiable ℝ (endpointPolynomial (1 / A)) := by unfold endpointPolynomial; fun_prop
  have hg : Differentiable ℝ (endpointD1 (1 / A)) := by unfold endpointD1; fun_prop
  have hp : HasDerivAt (endpointPolynomial (1 / A)) (endpointD1 (1 / A) y) y := by
    simpa only [endpoint_deriv] using (hf y).hasDerivAt
  have hq : HasDerivAt (endpointD1 (1 / A)) (endpointD2 (1 / A) y) y := by
    simpa only [endpointD1_deriv] using (hg y).hasDerivAt
  have he0 := ((hasDerivAt_id y).neg.div_const 2).exp
  have he : HasDerivAt (fun x : ℝ => Real.exp (-x / 2)) (-Real.exp (-y / 2) / 2) y := by
    (convert he0 using 1 <;> simp only [Pi.neg_apply, id_eq])
    ring
  have h := (he.mul (hq.sub (hp.div_const 2))).div_const (sourceNormalization A)
  rw [physicalProfile_deriv]
  calc
    _ = Real.exp (-y / 2) * (endpointD2 (1 / A) y - endpointD1 (1 / A) y +
        endpointPolynomial (1 / A) y / 4) / sourceNormalization A :=
      (h.congr_deriv (by dsimp only [Pi.mul_apply, Pi.sub_apply]; ring)).deriv
    _ = _ := by rw [weighted_polynomial_identity]; ring

theorem actualPhysicalKernel_eq_polynomial {A y : ℝ} (hA : 0 < A)
    (hy0 : 0 ≤ y) (hy2 : y ≤ 2 * A) :
    actualPhysicalKernel A y = Real.exp (-y / 2) * y ^ 3 *
      physicalCurvaturePolynomial (1 / A) y / sourceNormalization A := by
  unfold actualPhysicalKernel
  rw [actualPhysicalWeight_second_eq_profile hA ⟨hy0, hy2⟩]
  exact physicalProfile_second A y


/-- Literal scaled/reflected original Peano primitive; no polynomial defines the source. -/
def actualPhysicalPrimitive (A y : ℝ) : ℝ :=
  A ^ 9 * Real.exp (-A) * SourcePositivePeanoPrimitive.sourcePeanoPrimitive A (2 * A - y)

set_option maxHeartbeats 8000000 in
-- Exact full polynomial/source derivative normalization is retained here.
theorem actualPhysicalPrimitive_second_eq_weight {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (actualPhysicalPrimitive A)) y = actualPhysicalWeight A y := by
  have hd : deriv (actualPhysicalPrimitive A) = fun y =>
      -(A ^ 9 * Real.exp (-A)) *
        deriv (SourcePositivePeanoPrimitive.sourcePeanoPrimitive A) (2 * A - y) := by
    funext y
    unfold actualPhysicalPrimitive
    rw [deriv_const_mul_field, deriv_comp_const_sub]
    ring
  rw [hd, deriv_const_mul_field, deriv_comp_const_sub,
    SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv hA]
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualPhysicalWeight
  calc
    _ = A ^ 9 * (Real.exp (-A) * Real.exp ((2 * A - y) / 2)) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [he]

theorem actualPhysicalPrimitive_fourth_eq_kernel {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (deriv (deriv (actualPhysicalPrimitive A)))) y = actualPhysicalKernel A y := by
  have hd : deriv (deriv (actualPhysicalPrimitive A)) = actualPhysicalWeight A :=
    funext (actualPhysicalPrimitive_second_eq_weight hA)
  rw [hd]
  rfl


end RH16PhysicalBirthKernel
