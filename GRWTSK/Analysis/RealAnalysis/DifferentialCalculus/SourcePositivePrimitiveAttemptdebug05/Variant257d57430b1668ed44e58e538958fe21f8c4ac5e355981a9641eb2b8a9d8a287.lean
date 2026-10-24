-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UnitBumpOverlap.Variant40d2eb57f8476b06b1daca2c7fa37753829e7f44a5473a005194bfce50e4c28e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40d2eb57f8476b06b1daca2c7fa37753829e7f44a5473a005194bfce50e4c28e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.UnitBumpOverlap.Variant40d2eb57f8476b06b1daca2c7fa37753829e7f44a5473a005194bfce50e4c28e","mathematical_subject":"Analysis.Calculus","original_sha256":"40d2eb57f8476b06b1daca2c7fa37753829e7f44a5473a005194bfce50e4c28e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass25/positive_primitive/SourcePositivePrimitive-attemptdebug05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import EndpointExpansion
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

/-! Literal quartic-bump autocorrelation and its positive weighted second primitive.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
No arithmetic estimate, unsigned budget, or RH witness is assumed or constructed. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.UnitBumpOverlap.Variant40d2eb57f8476b06b1daca2c7fa37753829e7f44a5473a005194bfce50e4c28e

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
  have h := ((((((((((hasDerivAt_const u ((65536/109395:ℝ):ℝ))).add (((hasDerivAt_id u).pow 2).const_mul ((-65536/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 4).const_mul ((8192/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((-4096/3465:ℝ):ℝ))).add (((hasDerivAt_id u).pow 8).const_mul ((256/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 9).const_mul ((-128/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 11).const_mul ((128/3465:ℝ):ℝ))).add (((hasDerivAt_id u).pow 13).const_mul ((-16/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 15).const_mul ((8/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 17).const_mul ((-1/218790:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial0,overlapPolynomial1,Pi.add_apply,Pi.pow_apply,id_eq] <;> (trace_state; ring)

theorem overlapPolynomial1_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial1 (overlapPolynomial2 u) u := by
  have h := ((((((((((hasDerivAt_id u).pow 1).const_mul ((-131072/45045:ℝ):ℝ)).add (((hasDerivAt_id u).pow 3).const_mul ((32768/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 5).const_mul ((-8192/1155:ℝ):ℝ))).add (((hasDerivAt_id u).pow 7).const_mul ((2048/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 8).const_mul ((-128/35:ℝ):ℝ))).add (((hasDerivAt_id u).pow 10).const_mul ((128/315:ℝ):ℝ))).add (((hasDerivAt_id u).pow 12).const_mul ((-16/385:ℝ):ℝ))).add (((hasDerivAt_id u).pow 14).const_mul ((8/3003:ℝ):ℝ))).add (((hasDerivAt_id u).pow 16).const_mul ((-1/12870:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial1,overlapPolynomial2,Pi.add_apply,Pi.pow_apply,id_eq] <;> (trace_state; ring)

theorem overlapPolynomial2_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial2 (overlapPolynomial3 u) u := by
  have h := (((((((((hasDerivAt_const u ((-131072/45045:ℝ):ℝ))).add (((hasDerivAt_id u).pow 2).const_mul ((98304/5005:ℝ):ℝ))).add (((hasDerivAt_id u).pow 4).const_mul ((-8192/231:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((2048/45:ℝ):ℝ))).add (((hasDerivAt_id u).pow 7).const_mul ((-1024/35:ℝ):ℝ))).add (((hasDerivAt_id u).pow 9).const_mul ((256/63:ℝ):ℝ))).add (((hasDerivAt_id u).pow 11).const_mul ((-192/385:ℝ):ℝ))).add (((hasDerivAt_id u).pow 13).const_mul ((16/429:ℝ):ℝ))).add (((hasDerivAt_id u).pow 15).const_mul ((-8/6435:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial2,overlapPolynomial3,Pi.add_apply,Pi.pow_apply,id_eq] <;> (trace_state; ring)

theorem overlapPolynomial3_hasDerivAt (u : ℝ) :
    HasDerivAt overlapPolynomial3 (overlapPolynomial4 u) u := by
  have h := (((((((((hasDerivAt_id u).pow 1).const_mul ((196608/5005:ℝ):ℝ)).add (((hasDerivAt_id u).pow 3).const_mul ((-32768/231:ℝ):ℝ))).add (((hasDerivAt_id u).pow 5).const_mul ((4096/15:ℝ):ℝ))).add (((hasDerivAt_id u).pow 6).const_mul ((-1024/5:ℝ):ℝ))).add (((hasDerivAt_id u).pow 8).const_mul ((256/7:ℝ):ℝ))).add (((hasDerivAt_id u).pow 10).const_mul ((-192/35:ℝ):ℝ))).add (((hasDerivAt_id u).pow 12).const_mul ((16/33:ℝ):ℝ))).add (((hasDerivAt_id u).pow 14).const_mul ((-8/429:ℝ):ℝ))
  convert h using 1 <;> (first | funext v | skip) <;> norm_num [overlapPolynomial3,overlapPolynomial4,Pi.add_apply,Pi.pow_apply,id_eq] <;> (trace_state; ring)

