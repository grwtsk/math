# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt06.Variantdebd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1457834c911f9c6a358a51c6abb90a4333a3c385` · SHA-256 `debd9670a97d1750d86a30ce61c0ec503ac96377c6c83344165dacef2434181a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  unfold endpointFullPolynomial endpointFirstPolynomial
  simp (disch := fun_prop)
  ring

theorem endpoint_first_deriv (a y : ℝ) :
    deriv (endpointFirstPolynomial a) y=endpointSecondPolynomial a y := by
  unfold endpointFirstPolynomial endpointSecondPolynomial
  simp (disch := fun_prop)
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


/-- Genuine uniform compact-y derivative remainder; no arithmetic premise. -/
theorem endpoint_slope_uniform_remainder {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ a : ℝ in 𝓝 0, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullSlope a y-endpointLeadingSlope y|<ε := by
  apply isCompact_Icc.eventually_forall_of_forall_eventually
  intro y _
  have hc : Continuous (fun p : ℝ×ℝ =>
      |endpointFullSlope p.1 p.2-endpointLeadingSlope p.2|) := by
    unfold endpointFullSlope endpointFullPolynomial endpointFirstPolynomial endpointLeadingSlope
    fun_prop
  have he : ∀ᶠ r : ℝ in 𝓝 (|endpointFullSlope 0 y-endpointLeadingSlope y|), r<ε := by
    simpa only [endpoint_slope_zero,sub_self,abs_zero] using gt_mem_nhds hε
  exact (hc.continuousAt (x:=(0,y))).eventually he

theorem endpoint_curvature_uniform_remainder {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ a : ℝ in 𝓝 0, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullCurvature a y-endpointLeadingCurvature y|<ε := by
  apply isCompact_Icc.eventually_forall_of_forall_eventually
  intro y _
  have hc : Continuous (fun p : ℝ×ℝ =>
      |endpointFullCurvature p.1 p.2-endpointLeadingCurvature p.2|) := by
    unfold endpointFullCurvature endpointFullPolynomial endpointFirstPolynomial
      endpointSecondPolynomial endpointLeadingCurvature
    fun_prop
  have he : ∀ᶠ r : ℝ in 𝓝 (|endpointFullCurvature 0 y-endpointLeadingCurvature y|), r<ε := by
    simpa only [endpoint_curvature_zero,sub_self,abs_zero] using gt_mem_nhds hε
  exact (hc.continuousAt (x:=(0,y))).eventually he

/-- Literal source equality on an open physical interval permits actual differentiation. -/
theorem actual_endpoint_model_eventuallyEq {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    criticalPrimeTest A =ᶠ[𝓝 u] fun v =>
      Real.exp (v/2)*endpointFullPolynomial A⁻¹ (2*A-v)/(A^9*sourceNormalization A) := by
  have hZ := (source_normalization_pos A hA).ne'
  have hne : A≠0 := by linarith
  filter_upwards [Ioo_mem_nhds hu.1 hu.2] with v hv
  have he := actual_endpoint_full_polynomial hA
    (y:=2*A-v) (show 2*A-v∈Icc (0:ℝ) (2*A) by constructor <;> linarith [hv.1,hv.2])
  have hvv : 2*A-(2*A-v)=v := by ring
  rw [hvv] at he
  unfold criticalPrimeTest
  rw [←he]
  field_simp [hne,hZ]

/-- Exact actual g' formula, with the physical endpoint orientation retained. -/
theorem actual_endpoint_first_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    HasDerivAt (criticalPrimeTest A)
      (Real.exp (u/2)*endpointFullSlope A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hd := (endpoint_full_hasDerivAt A⁻¹ (2*A-u)).comp u
    ((hasDerivAt_const u (2*A)).sub (hasDerivAt_id u))
  have hh := (he.mul hd).div_const (A^9*sourceNormalization A)
  have hm : HasDerivAt
      (fun v : ℝ => Real.exp (v/2)*endpointFullPolynomial A⁻¹ (2*A-v)/(A^9*sourceNormalization A))
      (Real.exp (u/2)*endpointFullSlope A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
    convert hh using 1 <;> first | rfl | (dsimp [endpointFullSlope]; ring)
  exact hm.congr_of_eventuallyEq (actual_endpoint_model_eventuallyEq hA hu)

/-- Exact actual g'' formula on the same open interval, not a seam assumption for D. -/
theorem actual_endpoint_second_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : u∈Ioo (0:ℝ) (2*A)) :
    HasDerivAt (deriv (criticalPrimeTest A))
      (Real.exp (u/2)*endpointFullCurvature A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hs := ((endpoint_full_hasDerivAt A⁻¹ (2*A-u)).div_const 2).sub
    (endpoint_first_hasDerivAt A⁻¹ (2*A-u))
  have hs' : HasDerivAt (endpointFullSlope A⁻¹)
      (endpointFirstPolynomial A⁻¹ (2*A-u)/2-endpointSecondPolynomial A⁻¹ (2*A-u)) (2*A-u) := by
    exact hs
  have hd := hs'.comp u ((hasDerivAt_const u (2*A)).sub (hasDerivAt_id u))
  have hh := (he.mul hd).div_const (A^9*sourceNormalization A)
  have hm : HasDerivAt
      (fun v : ℝ => Real.exp (v/2)*endpointFullSlope A⁻¹ (2*A-v)/(A^9*sourceNormalization A))
      (Real.exp (u/2)*endpointFullCurvature A⁻¹ (2*A-u)/(A^9*sourceNormalization A)) u := by
    convert hh using 1 <;> first | rfl | (dsimp [endpointFullSlope,endpointFullCurvature]; ring)
  apply hm.congr_of_eventuallyEq
  filter_upwards [Ioo_mem_nhds hu.1 hu.2] with v hv
  exact (actual_endpoint_first_hasDerivAt hA hv).deriv


/-- The true differentiated coefficients converge uniformly through every real inverse scale. -/
theorem actual_endpoint_uniform_derivative_remainders {ε : ℝ} (hε : 0<ε) :
    ∀ᶠ A : ℝ in atTop, ∀ y∈Icc (1/2:ℝ) 1,
      |endpointFullSlope A⁻¹ y-endpointLeadingSlope y|<ε ∧
      |endpointFullCurvature A⁻¹ y-endpointLeadingCurvature y|<ε := by
  have hs := (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0:ℝ))).eventually
    (endpoint_slope_uniform_remainder hε)
  have hc := (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 (0:ℝ))).eventually
    (endpoint_curvature_uniform_remainder hε)
  filter_upwards [hs,hc] with A hS hC
  intro y hy
  exact ⟨hS y hy,hC y hy⟩

/-- Actual strict negative-slope/positive-curvature endpoint phase on one fixed physical interval.
This is independent of arithmetic/intercept information and supplies no signed-work bound. -/
theorem actual_endpoint_strict_phase_eventually :
    ∀ᶠ A : ℝ in atTop, ∀ y∈Icc (1/2:ℝ) 1,
      deriv (criticalPrimeTest A) (2*A-y)<0 ∧
      0<deriv (deriv (criticalPrimeTest A)) (2*A-y) ∧
      ActualSecondAbel.pairedTailCurvature A (2*A-y)<0 := by
  filter_upwards [eventually_ge_atTop (1:ℝ),
    actual_endpoint_uniform_derivative_remainders (ε:=1) (by norm_num)] with A hA hR
  intro y hy
  have hy0 : y∈Icc (0:ℝ) 1 := ⟨by linarith [hy.1],hy.2⟩
  have hypos : 0<y := by linarith [hy.1]
  have hu : 2*A-y∈Ioo (0:ℝ) (2*A) := by constructor <;> linarith [hy.2]
  have hpow4 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤1/2) hy.1 4
  have hpow3 := pow_le_pow_left₀ (by norm_num : (0:ℝ)≤1/2) hy.1 3
  norm_num at hpow4 hpow3
  have hs0 := endpoint_leading_slope_upper hy0
  have hc0 := endpoint_leading_curvature_lower hy0
  have hsR := (abs_lt.mp (hR y hy).1).2
  have hcR := (abs_lt.mp (hR y hy).2).1
  have hs : endpointFullSlope A⁻¹ y<0 := by linarith
  have hc : 0<endpointFullCurvature A⁻¹ y := by linarith
  have hden : 0<A^9*sourceNormalization A :=
    mul_pos (pow_pos (by linarith : 0<A) _) (source_normalization_pos A hA)
  have hyid : 2*A-(2*A-y)=y := by ring
  have hg1 := (actual_endpoint_first_hasDerivAt hA hu).deriv
  have hg2 := (actual_endpoint_second_hasDerivAt hA hu).deriv
  rw [hyid] at hg1 hg2
  have hn : deriv (criticalPrimeTest A) (2*A-y)<0 := by
    rw [hg1]
    exact div_neg_of_neg_of_pos (mul_neg_of_pos_of_neg (Real.exp_pos _) hs) hden
  have hp : 0<deriv (deriv (criticalPrimeTest A)) (2*A-y) := by
    rw [hg2]
    exact div_pos (mul_pos (Real.exp_pos _) hc) hden
  exact ⟨hn,hp,actual_curvature_neg_of_negative_slope_positive_curvature hA hn hp⟩

end ContinuousResearch.EndpointDerivatives
```
