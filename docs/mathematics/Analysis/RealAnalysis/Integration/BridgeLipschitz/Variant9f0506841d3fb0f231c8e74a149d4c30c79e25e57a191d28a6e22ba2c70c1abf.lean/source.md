# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.BridgeLipschitz.Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e395408639a2c994510006eed3efb4e8843867fc` · SHA-256 `9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BridgeEnvelope

/-! Uniform Lipschitz control of the actual bridge before any signed curvature estimate.
Direction grwtsk contributors; scratch proof OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.BridgeLipschitz
open MeasureTheory Set BridgeEnvelope
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy

theorem average_bounds {f : ℝ → ℝ} {L a b : ℝ} (hL : 0<L)
    (hi : IntervalIntegrable f volume 0 L)
    (hf : ∀ t∈Icc (0:ℝ) L,a≤f t ∧ f t≤b) :
    a≤(∫ t in 0..L,f t)/L ∧ (∫ t in 0..L,f t)/L≤b := by
  have hh := segment_integral_bounds (L:=L) (a:=a) (b:=b)
    (by norm_num : (0:ℝ)≤0) hL.le le_rfl hi hf
  constructor
  · apply (le_div_iff₀ hL).mpr
    simpa only [sub_zero] using hh.1
  · apply (div_le_iff₀ hL).mpr
    simpa only [sub_zero] using hh.2

theorem integralBridge_sub {f : ℝ → ℝ} {L s t : ℝ}
    (hi : ∀ x y : ℝ,IntervalIntegrable f volume x y) :
    integralBridge f L t-integralBridge f L s =
      (∫ u in s..t,f u)-(t-s)*((∫ u in 0..L,f u)/L) := by
  have he := intervalIntegral.integral_interval_sub_left (hi 0 t) (hi 0 s)
  unfold integralBridge
  rw [show (∫ u in 0..t,f u)-(t/L)*(∫ u in 0..L,f u)-
      ((∫ u in 0..s,f u)-(s/L)*(∫ u in 0..L,f u)) =
      ((∫ u in 0..t,f u)-(∫ u in 0..s,f u))-
        (t-s)*((∫ u in 0..L,f u)/L) by ring]
  rw [he]

theorem integralBridge_increment_le {f : ℝ → ℝ} {L s t a b : ℝ}
    (hL : 0<L) (hs : 0≤s) (hst : s≤t) (ht : t≤L)
    (hi : ∀ x y : ℝ,IntervalIntegrable f volume x y)
    (hf : ∀ u∈Icc (0:ℝ) L,a≤f u ∧ f u≤b) :
    |integralBridge f L t-integralBridge f L s|≤(b-a)*(t-s) := by
  have hq := segment_integral_bounds hs hst ht (hi s t) hf
  have hm := average_bounds hL (hi 0 L) hf
  have h1 := mul_le_mul_of_nonneg_left hm.1 (sub_nonneg.mpr hst)
  have h2 := mul_le_mul_of_nonneg_left hm.2 (sub_nonneg.mpr hst)
  rw [integralBridge_sub hi]
  apply abs_le.mpr
  constructor <;> nlinarith

theorem integralBridge_lipschitz {f : ℝ → ℝ} {L s t a b : ℝ}
    (hL : 0<L) (hs : s∈Icc (0:ℝ) L) (ht : t∈Icc (0:ℝ) L)
    (hi : ∀ x y : ℝ,IntervalIntegrable f volume x y)
    (hf : ∀ u∈Icc (0:ℝ) L,a≤f u ∧ f u≤b) :
    |integralBridge f L t-integralBridge f L s|≤(b-a)*|t-s| := by
  rcases le_total s t with hst | hts
  · rw [abs_of_nonneg (sub_nonneg.mpr hst)]
    exact integralBridge_increment_le hL hs.1 hst ht.2 hi hf
  · rw [abs_sub_comm (integralBridge f L t),abs_sub_comm t]
    rw [abs_of_nonneg (sub_nonneg.mpr hts)]
    exact integralBridge_increment_le hL ht.1 hts hs.2 hi hf

theorem actual_bridge_lipschitz {A s t : ℝ} (hA : 0<A)
    (hs : s∈Icc (0:ℝ) (2*A)) (ht : t∈Icc (0:ℝ) (2*A)) :
    |criticalDiscrepancyBridge A t-criticalDiscrepancyBridge A s|≤
      (389/40:ℝ)*|t-s| := by
  rw [actual_bridge_eq,actual_bridge_eq]
  have hh := integralBridge_lipschitz (a:=-(133/40:ℝ)) (b:=(32/5:ℝ))
    (by linarith : 0<2*A) hs ht criticalCumulativeDiscrepancy_intervalIntegrable
    (fun u hu=>actual_discrepancy_bounds hu.1)
  norm_num only [show (32/5:ℝ)-(-(133/40:ℝ))=389/40 by norm_num] at hh
  exact hh

/-- Fixed unit-scale coordinates; no limit or uniform curvature budget is asserted. -/
def normalizedBridge (A x : ℝ) : ℝ := criticalDiscrepancyBridge A (A*x)/A

theorem normalizedBridge_lipschitz {A x y : ℝ} (hA : 0<A)
    (hx : x∈Icc (0:ℝ) 2) (hy : y∈Icc (0:ℝ) 2) :
    |normalizedBridge A y-normalizedBridge A x|≤(389/40:ℝ)*|y-x| := by
  have hs : A*x∈Icc (0:ℝ) (2*A) := by
    constructor
    · exact mul_nonneg hA.le hx.1
    · nlinarith [hx.2]
  have ht : A*y∈Icc (0:ℝ) (2*A) := by
    constructor
    · exact mul_nonneg hA.le hy.1
    · nlinarith [hy.2]
  have hh := actual_bridge_lipschitz hA hs ht
  have he : |A*y-A*x|=A*|y-x| := by rw [← mul_sub,abs_mul,abs_of_pos hA]
  rw [he] at hh
  unfold normalizedBridge
  rw [← sub_div,abs_div,abs_of_pos hA]
  apply (div_le_iff₀ hA).mpr
  nlinarith

theorem normalizedBridge_abs_le {A x : ℝ} (hA : 0<A) (hx : x∈Icc (0:ℝ) 2) :
    |normalizedBridge A x|≤(389/80:ℝ) := by
  have hu : A*x∈Icc (0:ℝ) (2*A) := by
    constructor
    · exact mul_nonneg hA.le hx.1
    · nlinarith [hx.2]
  have hh := actual_bridge_abs_le_scale hA hu.1 hu.2
  unfold normalizedBridge
  rw [abs_div,abs_of_pos hA]
  exact (div_le_iff₀ hA).mpr hh

#print axioms average_bounds
#print axioms integralBridge_sub
#print axioms integralBridge_increment_le
#print axioms integralBridge_lipschitz
#print axioms actual_bridge_lipschitz
#print axioms normalizedBridge
#print axioms normalizedBridge_lipschitz
#print axioms normalizedBridge_abs_le
end ContinuousResearch.BridgeLipschitz
```
