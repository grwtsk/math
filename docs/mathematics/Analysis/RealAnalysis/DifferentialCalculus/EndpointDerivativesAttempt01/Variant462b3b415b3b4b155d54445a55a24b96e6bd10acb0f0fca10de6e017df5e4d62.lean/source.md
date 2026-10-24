# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt01.Variant462b3b415b3b4b155d54445a55a24b96e6bd10acb0f0fca10de6e017df5e4d62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d684b06576b73b2e6dfcb4b04dca3581423223a` · SHA-256 `462b3b415b3b4b155d54445a55a24b96e6bd10acb0f0fca10de6e017df5e4d62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import EndpointExpansion

/-! Differentiated complete actual endpoint polynomial.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No arithmetic bridge or signed-work budget. -/
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 600000
noncomputable section
namespace ContinuousResearch.EndpointDerivatives
open MeasureTheory Set Filter
open scoped Interval Topology
open EndpointExpansion EndpointProfile ActualEndpointCorrelation ActualPhaseCurvature
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

def endpointFirstPolynomial (a y : ℝ) : ℝ :=
  (6144/1:ℝ)*y^4 +
  (-512/5:ℝ)*y^6 +
  (8/35:ℝ)*y^8 +
  (-24576/1:ℝ)*a^1*y^5 +
  (2048/7:ℝ)*a^1*y^7 +
  (-32/63:ℝ)*a^1*y^9 +
  (38912/1:ℝ)*a^2*y^6 +
  (-2432/7:ℝ)*a^2*y^8 +
  (152/315:ℝ)*a^2*y^10 +
  (-227328/7:ℝ)*a^3*y^7 +
  (4736/21:ℝ)*a^3*y^9 +
  (-296/1155:ℝ)*a^3*y^11 +
  (110976/7:ℝ)*a^4*y^8 +
  (-9248/105:ℝ)*a^4*y^10 +
  (289/3465:ℝ)*a^4*y^12 +
  (-14080/3:ℝ)*a^5*y^9 +
  (64/3:ℝ)*a^5*y^11 +
  (-2/117:ℝ)*a^5*y^13 +
  (832/1:ℝ)*a^6*y^10 +
  (-104/33:ℝ)*a^6*y^12 +
  (1/462:ℝ)*a^6*y^14 +
  (-896/11:ℝ)*a^7*y^11 +
  (112/429:ℝ)*a^7*y^13 +
  (-1/6435:ℝ)*a^7*y^15 +
  (112/33:ℝ)*a^8*y^12 +
  (-4/429:ℝ)*a^8*y^14 +
  (1/205920:ℝ)*a^8*y^16

def endpointSecondPolynomial (a y : ℝ) : ℝ :=
  (24576/1:ℝ)*y^3 +
  (-3072/5:ℝ)*y^5 +
  (64/35:ℝ)*y^7 +
  (-122880/1:ℝ)*a^1*y^4 +
  (2048/1:ℝ)*a^1*y^6 +
  (-32/7:ℝ)*a^1*y^8 +
  (233472/1:ℝ)*a^2*y^5 +
  (-19456/7:ℝ)*a^2*y^7 +
  (304/63:ℝ)*a^2*y^9 +
  (-227328/1:ℝ)*a^3*y^6 +
  (14208/7:ℝ)*a^3*y^8 +
  (-296/105:ℝ)*a^3*y^10 +
  (887808/7:ℝ)*a^4*y^7 +
  (-18496/21:ℝ)*a^4*y^9 +
  (1156/1155:ℝ)*a^4*y^11 +
  (-42240/1:ℝ)*a^5*y^8 +
  (704/3:ℝ)*a^5*y^10 +
  (-2/9:ℝ)*a^5*y^12 +
  (8320/1:ℝ)*a^6*y^9 +
  (-416/11:ℝ)*a^6*y^11 +
  (1/33:ℝ)*a^6*y^13 +
  (-896/1:ℝ)*a^7*y^10 +
  (112/33:ℝ)*a^7*y^12 +
  (-1/429:ℝ)*a^7*y^14 +
  (448/11:ℝ)*a^8*y^11 +
  (-56/429:ℝ)*a^8*y^13 +
  (1/12870:ℝ)*a^8*y^15

def endpointFullSlope (a y : ℝ) : ℝ :=
  endpointFullPolynomial a y/2-endpointFirstPolynomial a y

def endpointFullCurvature (a y : ℝ) : ℝ :=
  endpointFullPolynomial a y/4-endpointFirstPolynomial a y+endpointSecondPolynomial a y

theorem endpointFullPolynomial_contDiff (a : ℝ) : ContDiff ℝ 2 (endpointFullPolynomial a) := by
  unfold endpointFullPolynomial
  fun_prop

theorem endpointFirstPolynomial_contDiff (a : ℝ) : ContDiff ℝ 1 (endpointFirstPolynomial a) := by
  unfold endpointFirstPolynomial
  fun_prop

theorem endpoint_full_deriv (a y : ℝ) :
    deriv (endpointFullPolynomial a) y=endpointFirstPolynomial a y := by
  simp (disch := fun_prop) [endpointFullPolynomial,endpointFirstPolynomial]
  ring

theorem endpoint_first_deriv (a y : ℝ) :
    deriv (endpointFirstPolynomial a) y=endpointSecondPolynomial a y := by
  simp (disch := fun_prop) [endpointFirstPolynomial,endpointSecondPolynomial]
  ring

theorem endpoint_full_hasDerivAt (a y : ℝ) :
    HasDerivAt (endpointFullPolynomial a) (endpointFirstPolynomial a y) y := by
  rw [←endpoint_full_deriv]
  exact ((endpointFullPolynomial_contDiff a).differentiable (by norm_num) y).hasDerivAt

theorem endpoint_first_hasDerivAt (a y : ℝ) :
    HasDerivAt (endpointFirstPolynomial a) (endpointSecondPolynomial a y) y := by
  rw [←endpoint_first_deriv]
  exact ((endpointFirstPolynomial_contDiff a).differentiable (by norm_num) y).hasDerivAt

theorem endpoint_slope_zero (y : ℝ) : endpointFullSlope 0 y=endpointLeadingSlope y := by
  unfold endpointFullSlope endpointFullPolynomial endpointFirstPolynomial endpointLeadingSlope
  ring

theorem endpoint_curvature_zero (y : ℝ) :
    endpointFullCurvature 0 y=endpointLeadingCurvature y := by
  unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial
    endpointSecondPolynomial endpointLeadingCurvature
  ring

theorem endpoint_slope_continuous : Continuous (fun p : ℝ×ℝ => endpointFullSlope p.1 p.2) := by
  unfold endpointFullSlope endpointFullPolynomial endpointFirstPolynomial
  fun_prop

theorem endpoint_curvature_continuous : Continuous (fun p : ℝ×ℝ => endpointFullCurvature p.1 p.2) := by
  unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial endpointSecondPolynomial
  fun_prop

end ContinuousResearch.EndpointDerivatives
```
