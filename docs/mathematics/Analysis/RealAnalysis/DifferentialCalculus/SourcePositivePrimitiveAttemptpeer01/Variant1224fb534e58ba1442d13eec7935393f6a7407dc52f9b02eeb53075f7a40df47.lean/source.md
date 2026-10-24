# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePositivePrimitiveAttemptpeer01.Variant1224fb534e58ba1442d13eec7935393f6a7407dc52f9b02eeb53075f7a40df47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01bb81d52966b56763f1266a94fc2dfc414f1eb2` · SHA-256 `4522d0edbdac98489b51fcece9c4e972f693b8c9828c62f1d6b00d2a19a70b28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UnitBumpOverlap.Variant9d1793f3f48bda5d180c706937eab329bdd946310ef57d18be673535ea9eb56c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d1793f3f48bda5d180c706937eab329bdd946310ef57d18be673535ea9eb56c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.UnitBumpOverlap.Variant9d1793f3f48bda5d180c706937eab329bdd946310ef57d18be673535ea9eb56c","mathematical_subject":"Analysis.Calculus","original_sha256":"9d1793f3f48bda5d180c706937eab329bdd946310ef57d18be673535ea9eb56c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass25/arithmetic_route/peer-positive-primitive/SourcePositivePrimitive-attemptpeer01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import EndpointExpansion
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

/-! Literal quartic-bump autocorrelation and its positive weighted second primitive.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
No arithmetic estimate, unsigned budget, or RH witness is assumed or constructed. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UnitBumpOverlap.Variant9d1793f3f48bda5d180c706937eab329bdd946310ef57d18be673535ea9eb56c

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1600000
noncomputable section
namespace ContinuousResearch.SourcePositivePrimitive
open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCausalEnergy
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The independently specified full-line correlation of the actual unit bump. -/
def unitBumpOverlap (u : ℝ) : ℝ := ∫ x : ℝ, sourceBump x*sourceBump (x-u)

/-- The actual support intersection, including both closed zero seams. -/
theorem unitBumpOverlap_eq_interval {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    unitBumpOverlap u=∫ x in (u-1)..1,(1-x^2)^4*(1-(x-u)^2)^4 := by
  have he : (fun x : ℝ => sourceBump x*sourceBump (x-u))=
      (Icc (u-1) 1).indicator (fun x => (1-x^2)^4*(1-(x-u)^2)^4) := by
    funext x
    by_cases hx : x∈Icc (u-1) 1
    · have h1 : x∈Icc (-1:ℝ) 1 := by constructor <;> linarith [hu.1,hx.1,hx.2]
      have h2 : x-u∈Icc (-1:ℝ) 1 := by constructor <;> linarith [hu.1,hu.2,hx.1,hx.2]
      simp [sourceBump,h1,h2,hx]
    · rw [indicator_of_notMem hx]
      by_cases h1 : x∈Icc (-1:ℝ) 1
      · have h2 : x-u∉Icc (-1:ℝ) 1 := by
          intro h2
          exact hx ⟨by linarith [h2.1],h1.2⟩
        simp [sourceBump,h1,h2]
      · simp [sourceBump,h1]
  rw [unitBumpOverlap,he,zeroExtension_integral _ (u-1) 1 (by linarith [hu.2])]

/-- Integrability precedes the finite polynomial evaluation. -/
theorem unitOverlap_integrand_intervalIntegrable (u : ℝ) :
    IntervalIntegrable (fun x : ℝ => (1-x^2)^4*(1-(x-u)^2)^4) volume (u-1) 1 := by
  apply Continuous.intervalIntegrable
  fun_prop

def overlapPolynomial0 (u : ℝ) : ℝ := (65536/109395:ℝ) + (-65536/45045:ℝ)*u^2 + (8192/5005:ℝ)*u^4 + (-4096/3465:ℝ)*u^6 + (256/315:ℝ)*u^8 + (-128/315:ℝ)*u^9 + (128/3465:ℝ)*u^11 + (-16/5005:ℝ)*u^13 + (8/45045:ℝ)*u^15 + (-1/218790:ℝ)*u^17

def overlapPolynomial1 (u : ℝ) : ℝ := (-131072/45045:ℝ)*u + (32768/5005:ℝ)*u^3 + (-8192/1155:ℝ)*u^5 + (2048/315:ℝ)*u^7 + (-128/35:ℝ)*u^8 + (128/315:ℝ)*u^10 + (-16/385:ℝ)*u^12 + (8/3003:ℝ)*u^14 + (-1/12870:ℝ)*u^16

def overlapPolynomial2 (u : ℝ) : ℝ := (-131072/45045:ℝ) + (98304/5005:ℝ)*u^2 + (-8192/231:ℝ)*u^4 + (2048/45:ℝ)*u^6 + (-1024/35:ℝ)*u^7 + (256/63:ℝ)*u^9 + (-192/385:ℝ)*u^11 + (16/429:ℝ)*u^13 + (-8/6435:ℝ)*u^15

def overlapPolynomial3 (u : ℝ) : ℝ := (196608/5005:ℝ)*u + (-32768/231:ℝ)*u^3 + (4096/15:ℝ)*u^5 + (-1024/5:ℝ)*u^6 + (256/7:ℝ)*u^8 + (-192/35:ℝ)*u^10 + (16/33:ℝ)*u^12 + (-8/429:ℝ)*u^14

def overlapPolynomial4 (u : ℝ) : ℝ := (196608/5005:ℝ) + (-32768/77:ℝ)*u^2 + (4096/3:ℝ)*u^4 + (-6144/5:ℝ)*u^5 + (2048/7:ℝ)*u^7 + (-384/7:ℝ)*u^9 + (64/11:ℝ)*u^11 + (-112/429:ℝ)*u^13

/-- Exact polynomial integration of the literal actual overlap, not a fitted polynomial. -/
theorem unitBumpOverlap_eq_polynomial {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    unitBumpOverlap u=overlapPolynomial0 u := by
  rw [unitBumpOverlap_eq_interval hu]
  have he : (fun x : ℝ => (1-x^2)^4*(1-(x-u)^2)^4)=
    fun x => (1 + -4*u^2 + 6*u^4 + -4*u^6 + 1*u^8)*x^0 + (8*u + -24*u^3 + 24*u^5 + -8*u^7)*x^1 + (-8 + 52*u^2 + -84*u^4 + 44*u^6 + -4*u^8)*x^2 + (-56*u + 176*u^3 + -152*u^5 + 32*u^7)*x^3 + (28 + -228*u^2 + 346*u^4 + -136*u^6 + 6*u^8)*x^4 + (168*u + -520*u^3 + 368*u^5 + -48*u^7)*x^5 + (-56 + 500*u^2 + -664*u^4 + 184*u^6 + -4*u^8)*x^6 + (-280*u + 800*u^3 + -432*u^5 + 32*u^7)*x^7 + (70 + -620*u^2 + 666*u^4 + -116*u^6 + 1*u^8)*x^8 + (280*u + -680*u^3 + 248*u^5 + -8*u^7)*x^9 + (-56 + 444*u^2 + -340*u^4 + 28*u^6)*x^10 + (-168*u + 304*u^3 + -56*u^5)*x^11 + (28 + -172*u^2 + 70*u^4)*x^12 + (56*u + -56*u^3)*x^13 + (-8 + 28*u^2)*x^14 + (-8*u)*x^15 + (1)*x^16 := by
    funext x
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,intervalIntegral.integral_const_mul,integral_pow]
  dsimp [overlapPolynomial0]
  ring

/-- Actual normalization and dilation give one Z denominator and no extra A. -/
theorem primitiveCorrelationZero_eq_unit {A : ℝ} (hA : 1≤A) (t : ℝ) :
    primitiveCorrelationZero A t=unitBumpOverlap (t/A)/sourceNormalization A := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hsa := Real.sqrt_ne_zero'.mpr hp
  have hsz := Real.sqrt_ne_zero'.mpr hz
  have he : (fun x : ℝ => normalizedPrimitiveBump A x*normalizedPrimitiveBump A (x-t))=
      fun x => (sourceBump (x/A)*sourceBump (x/A-t/A))/(A*sourceNormalization A) := by
    funext x
    have hs : (x-t)/A=x/A-t/A := by ring
    dsimp [normalizedPrimitiveBump,scaledBump]
    rw [hs]
    field_simp [hsa,hsz]
    rw [Real.sq_sqrt hp.le,Real.sq_sqrt hz.le]
    ring
  rw [primitiveCorrelationZero,he,integral_div]
  rw [Measure.integral_comp_div (fun x : ℝ => sourceBump x*sourceBump (x-t/A)) A]
  dsimp [unitBumpOverlap]
  rw [abs_of_pos hp]
  field_simp

/-- Literal actual compact bump correlation agrees with the exact polynomial on half-support. -/
theorem primitiveCorrelationZero_eq_polynomial {A t : ℝ} (hA : 1≤A)
    (ht : t∈Icc (0:ℝ) (2*A)) :
    primitiveCorrelationZero A t=overlapPolynomial0 (t/A)/sourceNormalization A := by
  rw [primitiveCorrelationZero_eq_unit hA]
  have hp : 0<A := by linarith
  rw [unitBumpOverlap_eq_polynomial (show t/A∈Icc (0:ℝ) 2 by
    constructor
    · exact div_nonneg ht.1 hp.le
    · exact (div_le_iff₀ hp).mpr (by linarith [ht.2]))]

theorem overlapPolynomial0_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial0 (overlapPolynomial1 u) u := by
  have he : deriv overlapPolynomial0 u=overlapPolynomial1 u := by
    unfold overlapPolynomial0 overlapPolynomial1
    simp (disch := fun_prop)
    ring
  rw [←he]
  have hc : ContDiff ℝ 1 overlapPolynomial0 := by unfold overlapPolynomial0; fun_prop
  exact (hc.differentiable one_ne_zero u).hasDerivAt

theorem overlapPolynomial1_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial1 (overlapPolynomial2 u) u := by
  have he : deriv overlapPolynomial1 u=overlapPolynomial2 u := by
    unfold overlapPolynomial1 overlapPolynomial2
    simp (disch := fun_prop)
    ring
  rw [←he]
  have hc : ContDiff ℝ 1 overlapPolynomial1 := by unfold overlapPolynomial1; fun_prop
  exact (hc.differentiable one_ne_zero u).hasDerivAt

theorem overlapPolynomial2_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial2 (overlapPolynomial3 u) u := by
  have he : deriv overlapPolynomial2 u=overlapPolynomial3 u := by
    unfold overlapPolynomial2 overlapPolynomial3
    simp (disch := fun_prop)
    ring
  rw [←he]
  have hc : ContDiff ℝ 1 overlapPolynomial2 := by unfold overlapPolynomial2; fun_prop
  exact (hc.differentiable one_ne_zero u).hasDerivAt

theorem overlapPolynomial3_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial3 (overlapPolynomial4 u) u := by
  have he : deriv overlapPolynomial3 u=overlapPolynomial4 u := by
    unfold overlapPolynomial3 overlapPolynomial4
    simp (disch := fun_prop)
    ring
  rw [←he]
  have hc : ContDiff ℝ 1 overlapPolynomial3 := by unfold overlapPolynomial3; fun_prop
  exact (hc.differentiable one_ne_zero u).hasDerivAt

/-- Exact positive coefficient certificate for the literal overlap. -/
theorem overlapPolynomial0_factor (u : ℝ) :
    overlapPolynomial0 u=(2-u)^9*(7*u^8+126*u^7+988*u^6+4344*u^5+11376*u^4+
      17376*u^3+15808*u^2+8064*u+1792)/1531530 := by
  dsimp [overlapPolynomial0]
  ring

theorem overlapPolynomial1_factor (u : ℝ) :
    -overlapPolynomial1 u=u*(2-u)^8*(7*u^7+112*u^6+768*u^5+2880*u^4+
      6144*u^3+6912*u^2+4096*u+1024)/90090 := by
  dsimp [overlapPolynomial1]
  ring

theorem overlapPolynomial2_lower_factor (u : ℝ) :
    overlapPolynomial2 u+(34/7:ℝ)*overlapPolynomial0 u=
      u^2*(2-u)^7*(7*u^8+98*u^7+904*u^6+6384*u^5+30096*u^4+
      88032*u^3+149056*u^2+108416*u+30976)/315315 := by
  dsimp [overlapPolynomial0,overlapPolynomial2]
  ring

theorem overlapPolynomial_signs {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    0≤overlapPolynomial0 u ∧ overlapPolynomial1 u≤0 ∧
      0≤overlapPolynomial2 u+(34/7:ℝ)*overlapPolynomial0 u := by
  have h0 : 0≤u := hu.1
  have h2 : 0≤2-u := by linarith [hu.2]
  rw [overlapPolynomial2_lower_factor,overlapPolynomial0_factor,←neg_nonneg,
    overlapPolynomial1_factor]
  constructor
  · positivity
  constructor <;> positivity

/-- Literal quartic filter of the exact primitive autocorrelation polynomial. -/
def correlationPolynomial (A t : ℝ) : ℝ :=
  overlapPolynomial4 (t/A)/A^4-overlapPolynomial2 (t/A)/(2*A^2)+
    overlapPolynomial0 (t/A)/16

/-- Algebraic crosswalk to the already proved actual q correlation, without a C4 assumption. -/
theorem correlationPolynomial_endpoint_dictionary {A : ℝ} (hA : A≠0) (t : ℝ) :
    A^9*correlationPolynomial A t=
      ContinuousResearch.EndpointExpansion.endpointFullPolynomial A⁻¹ (2*A-t) := by
  dsimp [correlationPolynomial,overlapPolynomial0,overlapPolynomial2,overlapPolynomial4,
    ContinuousResearch.EndpointExpansion.endpointFullPolynomial]
  field_simp
  ring

/-- The exact filter is bound to the original normalized actual source on the closed half-support. -/
theorem actual_source_correlation_polynomial {A t : ℝ} (hA : 1≤A)
    (ht : t∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A t=
      correlationPolynomial A t/sourceNormalization A := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hi := ContinuousResearch.EndpointExpansion.actual_endpoint_full_polynomial hA
    (show 2*A-t∈Icc (0:ℝ) (2*A) by constructor <;> linarith [ht.1,ht.2])
  rw [show 2*A-(2*A-t)=t by ring,
    ←correlationPolynomial_endpoint_dictionary hp.ne' t] at hi
  apply (eq_div_iff hz.ne').mpr
  apply (mul_left_cancel₀ (pow_ne_zero 9 hp.ne'))
  convert hi using 1
  ring

/-- Explicit weighted primitive, defined from the genuine bump-overlap polynomial. -/
def positivePrimitive (A t : ℝ) : ℝ :=
  Real.exp (t/2)*(overlapPolynomial2 (t/A)/A^2-overlapPolynomial1 (t/A)/A+
    overlapPolynomial0 (t/A)/4)/sourceNormalization A

/-- Ordinary derivative of that primitive. -/
def positivePrimitiveFirst (A t : ℝ) : ℝ :=
  Real.exp (t/2)*(overlapPolynomial3 (t/A)/A^3-overlapPolynomial2 (t/A)/(2*A^2)-
    overlapPolynomial1 (t/A)/(4*A)+overlapPolynomial0 (t/A)/8)/sourceNormalization A

theorem positivePrimitive_hasDerivAt (A t : ℝ) :
    HasDerivAt (positivePrimitive A) (positivePrimitiveFirst A t) t := by
  have h0 := (overlapPolynomial0_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h1 := (overlapPolynomial1_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h2 := (overlapPolynomial2_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have he := ((hasDerivAt_id t).div_const 2).exp
  have hd := (he.mul (((h2.div_const (A^2)).sub (h1.div_const A)).add
    (h0.div_const 4))).div_const (sourceNormalization A)
  apply hd.congr_deriv
  dsimp [positivePrimitiveFirst]
  ring

theorem positivePrimitiveFirst_hasDerivAt (A t : ℝ) :
    HasDerivAt (positivePrimitiveFirst A)
      (Real.exp (t/2)*correlationPolynomial A t/sourceNormalization A) t := by
  have h0 := (overlapPolynomial0_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h1 := (overlapPolynomial1_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h2 := (overlapPolynomial2_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have h3 := (overlapPolynomial3_hasDerivAt (t/A)).comp t ((hasDerivAt_id t).div_const A)
  have he := ((hasDerivAt_id t).div_const 2).exp
  have hd := (he.mul ((((h3.div_const (A^3)).sub (h2.div_const (2*A^2))).sub
    (h1.div_const (4*A))).add (h0.div_const 8))).div_const (sourceNormalization A)
  apply hd.congr_deriv
  dsimp [correlationPolynomial]
  ring

/-- Actual source identity, including both closed physical endpoints. -/
theorem positivePrimitive_second_actual {A t : ℝ} (hA : 1≤A)
    (ht : t∈Icc (0:ℝ) (2*A)) :
    deriv (deriv (positivePrimitive A)) t=
      Real.exp (t/2)*sourceCorrelation explicitSecondDerivative A t := by
  have he : deriv (positivePrimitive A)=positivePrimitiveFirst A :=
    funext fun x => (positivePrimitive_hasDerivAt A x).deriv
  rw [he,(positivePrimitiveFirst_hasDerivAt A t).deriv,
    actual_source_correlation_polynomial hA ht]
  ring

/-- Positive overlap certificates and the sharp A2 threshold imply positivity everywhere. -/
theorem positivePrimitive_nonneg {A t : ℝ} (hA : 1≤A) (hthreshold : (136/7:ℝ)≤A^2)
    (ht : t∈Icc (0:ℝ) (2*A)) : 0≤positivePrimitive A t := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hs := overlapPolynomial_signs (show t/A∈Icc (0:ℝ) 2 by
    constructor
    · exact div_nonneg ht.1 hp.le
    · exact (div_le_iff₀ hp).mpr (by linarith [ht.2]))
  have hg : 0≤(1/4:ℝ)-(34/7:ℝ)/A^2 := by
    apply sub_nonneg.mpr
    apply (div_le_iff₀ (sq_pos_of_pos hp)).mpr
    linarith
  have he : overlapPolynomial2 (t/A)/A^2-overlapPolynomial1 (t/A)/A+
      overlapPolynomial0 (t/A)/4=
      (overlapPolynomial2 (t/A)+(34/7:ℝ)*overlapPolynomial0 (t/A))/A^2+
      (-overlapPolynomial1 (t/A))/A+
      ((1/4:ℝ)-(34/7:ℝ)/A^2)*overlapPolynomial0 (t/A) := by ring
  unfold positivePrimitive
  rw [he]
  apply div_nonneg _ hz.le
  apply mul_nonneg (Real.exp_pos _).le
  exact add_nonneg (add_nonneg (div_nonneg hs.2.2 (sq_nonneg A))
    (div_nonneg (neg_nonneg.mpr hs.2.1) hp.le)) (mul_nonneg hg hs.1)

/-- The center value fixes the sharp threshold and keeps actual normalization. -/
theorem positivePrimitive_zero_value (A : ℝ) :
    positivePrimitive A 0=((65536/109395:ℝ)/sourceNormalization A)*
      ((1/4:ℝ)-(34/7:ℝ)/A^2) := by
  norm_num [positivePrimitive,overlapPolynomial0,overlapPolynomial1,overlapPolynomial2]
  ring

/-- Sharp iff for this actual source primitive; no arithmetic bound follows. -/
theorem positivePrimitive_nonneg_iff {A : ℝ} (hA : 1≤A) :
    (∀t∈Icc (0:ℝ) (2*A),0≤positivePrimitive A t) ↔ (136/7:ℝ)≤A^2 := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  constructor
  · intro h
    have hc := h 0 (show (0:ℝ)∈Icc 0 (2*A) by constructor <;> linarith)
    rw [positivePrimitive_zero_value] at hc
    have ht : 0≤(1/4:ℝ)-(34/7:ℝ)/A^2 :=
      (mul_nonneg_iff_of_pos_left (by positivity : 0<(65536/109395:ℝ)/sourceNormalization A)).mp hc
    have hd := (div_le_iff₀ (sq_pos_of_pos hp)).mp (sub_nonneg.mp ht)
    linarith
  · intro h t ht
    exact positivePrimitive_nonneg hA h ht

/-- Both zero lower traces after reflection correspond to actual full support contact. -/
theorem positivePrimitive_upper_traces {A : ℝ} (hA : 0<A) :
    positivePrimitive A (2*A)=0 ∧ positivePrimitiveFirst A (2*A)=0 := by
  have he : (2*A)/A=2 := by field_simp
  rw [positivePrimitive,positivePrimitiveFirst,he]
  norm_num [overlapPolynomial0,overlapPolynomial1,overlapPolynomial2,overlapPolynomial3]

end ContinuousResearch.SourcePositivePrimitive

-- Complete public statement, proof, and trusted-closure audits.
#check ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap
#print ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap
#print axioms ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap

#check ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_interval
#print ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_interval
#print axioms ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_interval

#check ContinuousResearch.SourcePositivePrimitive.unitOverlap_integrand_intervalIntegrable
#print ContinuousResearch.SourcePositivePrimitive.unitOverlap_integrand_intervalIntegrable
#print axioms ContinuousResearch.SourcePositivePrimitive.unitOverlap_integrand_intervalIntegrable

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial4
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial4
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial4

#check ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_polynomial
#print ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_polynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.unitBumpOverlap_eq_polynomial

#check ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_unit
#print ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_unit
#print axioms ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_unit

#check ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_polynomial
#print ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_polynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.primitiveCorrelationZero_eq_polynomial

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial3_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_factor
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_factor
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial0_factor

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_factor
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_factor
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial1_factor

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_lower_factor
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_lower_factor
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial2_lower_factor

#check ContinuousResearch.SourcePositivePrimitive.overlapPolynomial_signs
#print ContinuousResearch.SourcePositivePrimitive.overlapPolynomial_signs
#print axioms ContinuousResearch.SourcePositivePrimitive.overlapPolynomial_signs

#check ContinuousResearch.SourcePositivePrimitive.correlationPolynomial
#print ContinuousResearch.SourcePositivePrimitive.correlationPolynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.correlationPolynomial

#check ContinuousResearch.SourcePositivePrimitive.correlationPolynomial_endpoint_dictionary
#print ContinuousResearch.SourcePositivePrimitive.correlationPolynomial_endpoint_dictionary
#print axioms ContinuousResearch.SourcePositivePrimitive.correlationPolynomial_endpoint_dictionary

#check ContinuousResearch.SourcePositivePrimitive.actual_source_correlation_polynomial
#print ContinuousResearch.SourcePositivePrimitive.actual_source_correlation_polynomial
#print axioms ContinuousResearch.SourcePositivePrimitive.actual_source_correlation_polynomial

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst_hasDerivAt
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst_hasDerivAt
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitiveFirst_hasDerivAt

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_second_actual
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_second_actual
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_second_actual

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_zero_value
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_zero_value
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_zero_value

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg_iff
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg_iff
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_nonneg_iff

#check ContinuousResearch.SourcePositivePrimitive.positivePrimitive_upper_traces
#print ContinuousResearch.SourcePositivePrimitive.positivePrimitive_upper_traces
#print axioms ContinuousResearch.SourcePositivePrimitive.positivePrimitive_upper_traces

```
