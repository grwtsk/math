# Complete source: GRWTSK.Algebra.CommutativeAlgebra.EndpointExpansion.Variant96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9aa655e3e4aeda209ee18a9f1076c426b6d674cb` · SHA-256 `96f7d4cdc74079b4a2f7cda30e56448a5f9450137c1b1197f135db6494c1a1ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualEndpointLimit

/-! Exact complete nine-term endpoint expansion of the literal polynomial overlap.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
All coefficient values from the current paper are tested by genuine finite integration;
no derivative convergence, signed arithmetic budget or optional-certificate failure. -/
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1200000
noncomputable section
namespace ContinuousResearch.EndpointExpansion
open MeasureTheory Set Filter
open scoped Interval Topology
open EndpointProfile ActualEndpointCorrelation

/-- Complete nine coefficients; a is inverse scale, y is physical endpoint distance. -/
def endpointFullPolynomial (a y : ℝ) : ℝ :=
  (a^0)*(8/315:ℝ)*y^5*(y^4-576*y^2+48384) +
  (a^1)*(-16/315:ℝ)*y^6*(y^4-720*y^2+80640) +
  (a^2)*(152/3465:ℝ)*y^7*(y^4-880*y^2+126720) +
  (a^3)*(-74/3465:ℝ)*y^8*(y^4-1056*y^2+190080) +
  (a^4)*(289/45045:ℝ)*y^9*(y^4-1248*y^2+274560) +
  (a^5)*(-1/819:ℝ)*y^10*(y^4-1456*y^2+384384) +
  (a^6)*(1/6930:ℝ)*y^11*(y^4-1680*y^2+524160) +
  (a^7)*(-1/102960:ℝ)*y^12*(y^4-1920*y^2+698880) +
  (a^8)*(1/3500640:ℝ)*y^13*(y^4-2176*y^2+913920)

theorem endpointPolynomialCorrelation_eq_full (a y : ℝ) :
    endpointPolynomialCorrelation a y=endpointFullPolynomial a y := by
  have he : (fun s : ℝ => endpointInteriorPolynomial a s*endpointInteriorPolynomial a (y-s))=
    fun s => (36864*y^2-768*y^4-122880*a*y^3+1536*a*y^5+138240*a^2*y^4-1152*a^2*y^6-64512*a^3*y^5+384*a^3*y^7+10752*a^4*y^6-48*a^4*y^8)*s^2+
      (-73728*y+3072*y^3+245760*a*y^2-5120*a*y^4-143360*a^2*y^3+1792*a^2*y^5-138240*a^3*y^4+1152*a^3*y^6+150528*a^4*y^5-896*a^4*y^7-35840*a^5*y^6+160*a^5*y^8)*s^3+
      (36864-5376*y^2+16*y^4-122880*a*y+7680*a*y^3-32*a*y^5-261120*a^2*y^2+2560*a^2*y^4+24*a^2*y^6+737280*a^3*y^3-7872*a^3*y^5-8*a^3*y^7-395520*a^4*y^4+3072*a^4*y^6+1*a^4*y^8-26880*a^5*y^5+160*a^5*y^7+40320*a^6*y^6-180*a^6*y^8)*s^4+
      (4608*y-64*y^3-6144*a*y^2+128*a*y^4+399360*a^2*y-10240*a^2*y^3-80*a^2*y^5-801792*a^3*y^2+15744*a^3*y^4+8*a^3*y^6+76800*a^4*y^3-2304*a^4*y^5+8*a^4*y^7+430080*a^5*y^4-3136*a^5*y^6-2*a^5*y^8-129024*a^6*y^5+768*a^6*y^7-18816*a^7*y^6+84*a^7*y^8)*s^5+
      (-1536+96*y^2+2048*a*y-192*a*y^3-133120*a^2+13568*a^2*y^2+64*a^2*y^4+267264*a^3*y-16896*a^3*y^3+72*a^3*y^5+486912*a^4*y^2-4384*a^4*y^4-48*a^4*y^6-770560*a^5*y^3+8960*a^5*y^5+4*a^5*y^7+80640*a^6*y^4-1008*a^6*y^6+(3/2:ℝ)*a^6*y^8+94080*a^7*y^5-560*a^7*y^7+3136*a^8*y^6-14*a^8*y^8)*s^6+
      (-64*y+128*a*y^2-8704*a^2*y+64*a^2*y^3+9984*a^3*y^2-208*a^3*y^4-439296*a^4*y+11904*a^4*y^3+80*a^4*y^5+537600*a^5*y^2-13120*a^5*y^4+16*a^5*y^6+161280*a^6*y^3-672*a^6*y^5-8*a^6*y^7-188160*a^7*y^4+1680*a^7*y^6-(1/2:ℝ)*a^7*y^8-18816*a^8*y^5+112*a^8*y^7)*s^7+
      (16-32*a*y+2176*a^2-136*a^2*y^2-2496*a^3*y+232*a^3*y^3+109824*a^4-12336*a^4*y^2-29*a^4*y^4-134400*a^5*y+11200*a^5*y^3-70*a^5*y^5-282240*a^6*y^2+4020*a^6*y^4+(31/2:ℝ)*a^6*y^6+188160*a^7*y^3-2940*a^7*y^5+(7/2:ℝ)*a^7*y^7+47040*a^8*y^4-406*a^8*y^6+(1/16:ℝ)*a^8*y^8)*s^8+
      (80*a^2*y-120*a^3*y^2+6240*a^4*y-60*a^4*y^3-5280*a^5*y^2+110*a^5*y^4+161280*a^6*y-6000*a^6*y^3-9*a^6*y^5-94080*a^7*y^2+3220*a^7*y^4-(21/2:ℝ)*a^7*y^6-62720*a^8*y^3+868*a^8*y^5-(1/2:ℝ)*a^8*y^7)*s^9+
      (-16*a^2+24*a^3*y-1248*a^4+78*a^4*y^2+1056*a^5*y-88*a^5*y^3-32256*a^6+4632*a^6*y^2-(25/2:ℝ)*a^6*y^4+18816*a^7*y-2184*a^7*y^3+(35/2:ℝ)*a^7*y^5+47040*a^8*y^2-1190*a^8*y^4+(7/4:ℝ)*a^8*y^6)*s^10+
      (-36*a^4*y+36*a^5*y^2-1872*a^6*y+26*a^6*y^3+840*a^7*y^2-(35/2:ℝ)*a^7*y^4-18816*a^8*y+1064*a^8*y^3-(7/2:ℝ)*a^8*y^5)*s^11+
      (6*a^4-6*a^5*y+312*a^6-(39/2:ℝ)*a^6*y^2-140*a^7*y+(21/2:ℝ)*a^7*y^3+3136*a^8-602*a^8*y^2+(35/8:ℝ)*a^8*y^4)*s^12+
      (7*a^6*y-(7/2:ℝ)*a^7*y^2+196*a^8*y-(7/2:ℝ)*a^8*y^3)*s^13+
      (-1*a^6+(1/2:ℝ)*a^7*y-28*a^8+(7/4:ℝ)*a^8*y^2)*s^14+
      (-(1/2:ℝ)*a^8*y)*s^15+
      ((1/16:ℝ)*a^8)*s^16 := by
    funext s
    dsimp [endpointInteriorPolynomial]
    ring
  unfold endpointPolynomialCorrelation
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,
      intervalIntegral.integral_const_mul,integral_pow]
  dsimp [endpointFullPolynomial]
  ring

/-- Full source correlation expansion, with all original normalization factors. -/
theorem actual_endpoint_full_polynomial {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    FormalResearch.RiemannHypothesis.SourcePairing.sourceCorrelation
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.explicitSecondDerivative
      A (2*A-y)*(A^9*FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A)=
      endpointFullPolynomial A⁻¹ y := by
  rw [actual_endpoint_polynomial_correlation hA hy,endpointPolynomialCorrelation_eq_full]

end ContinuousResearch.EndpointExpansion

-- Full frozen public trusted-closure audits.
#check ContinuousResearch.EndpointExpansion.endpointFullPolynomial
#print axioms ContinuousResearch.EndpointExpansion.endpointFullPolynomial
#print ContinuousResearch.EndpointExpansion.endpointFullPolynomial
#check ContinuousResearch.EndpointExpansion.endpointPolynomialCorrelation_eq_full
#print axioms ContinuousResearch.EndpointExpansion.endpointPolynomialCorrelation_eq_full
#print ContinuousResearch.EndpointExpansion.endpointPolynomialCorrelation_eq_full
#check ContinuousResearch.EndpointExpansion.actual_endpoint_full_polynomial
#print axioms ContinuousResearch.EndpointExpansion.actual_endpoint_full_polynomial
#print ContinuousResearch.EndpointExpansion.actual_endpoint_full_polynomial
```
