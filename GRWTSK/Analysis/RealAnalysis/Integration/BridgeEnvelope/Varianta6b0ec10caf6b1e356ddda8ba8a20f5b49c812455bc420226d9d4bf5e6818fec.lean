import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import ActualPrimeError

/-! Quantitative endpoint-vanishing envelope for the actual literal prime bridge.
Direction grwtsk contributors; scratch proof OpenAI Codex. The signed curvature
pairing and its source adapter are not assumed or bounded by this coefficient result. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.BridgeEnvelope
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourceCriticalCumulativeDiscrepancy SourceCriticalDecayWork WeightedPrimeAbel

/-- A generic finite integral bridge; total division outside L>0 is not used. -/
def integralBridge (f : ℝ → ℝ) (L u : ℝ) : ℝ :=
  (∫ t in 0..u, f t)-(u/L)*(∫ t in 0..L,f t)

theorem segment_integral_bounds {f : ℝ → ℝ} {L a b x y : ℝ}
    (hx : 0≤x) (hxy : x≤y) (hy : y≤L)
    (hi : IntervalIntegrable f volume x y)
    (hf : ∀ t∈Icc (0:ℝ) L,a≤f t ∧ f t≤b) :
    a*(y-x)≤(∫ t in x..y,f t) ∧ (∫ t in x..y,f t)≤b*(y-x) := by
  constructor
  · have hh := intervalIntegral.integral_mono_on hxy
      (intervalIntegrable_const) hi
      (fun t ht => (hf t ⟨hx.trans ht.1,ht.2.trans hy⟩).1)
    simpa only [intervalIntegral.integral_const,smul_eq_mul,mul_comm] using hh
  · have hh := intervalIntegral.integral_mono_on hxy hi
      (intervalIntegrable_const)
      (fun t ht => (hf t ⟨hx.trans ht.1,ht.2.trans hy⟩).2)
    simpa only [intervalIntegral.integral_const,smul_eq_mul,mul_comm] using hh

theorem integralBridge_abs_le {f : ℝ → ℝ} {L u a b : ℝ}
    (hL : 0<L) (hu : 0≤u) (huL : u≤L)
    (hi : ∀ x y : ℝ,IntervalIntegrable f volume x y)
    (hf : ∀ t∈Icc (0:ℝ) L,a≤f t ∧ f t≤b) :
    |integralBridge f L u|≤(b-a)*u*(L-u)/L := by
  have hq := segment_integral_bounds (L:=L) (a:=a) (b:=b)
    (by norm_num : (0:ℝ)≤0) hu huL (hi 0 u) hf
  have hr := segment_integral_bounds (L:=L) (a:=a) (b:=b)
    hu huL le_rfl (hi u L) hf
  have he := intervalIntegral.integral_add_adjacent_intervals (hi 0 u) (hi u L)
  have htu : 0≤u/L := div_nonneg hu hL.le
  have htl : 0≤(L-u)/L := div_nonneg (sub_nonneg.mpr huL) hL.le
  have hx : integralBridge f L u =
      ((L-u)/L)*(∫ t in 0..u,f t)-(u/L)*(∫ t in u..L,f t) := by
    unfold integralBridge
    rw [← he]
    field_simp
    ring
  rw [hx]
  apply abs_le.mpr
  constructor
  · have h1 := mul_le_mul_of_nonneg_left hq.1 htl
    have h2 := mul_le_mul_of_nonneg_left hr.2 htu
    have he : ((L-u)/L)*(a*(u-0))-(u/L)*(b*(L-u)) =
        -((b-a)*u*(L-u)/L) := by ring
    linarith
  · have h1 := mul_le_mul_of_nonneg_left hq.2 htl
    have h2 := mul_le_mul_of_nonneg_left hr.1 htu
    have he : ((L-u)/L)*(b*(u-0))-(u/L)*(a*(L-u)) =
        (b-a)*u*(L-u)/L := by ring
    linarith

theorem actual_discrepancy_bounds {u : ℝ} (hu : 0≤u) :
    -(133/40:ℝ)≤criticalCumulativeDiscrepancy u ∧
      criticalCumulativeDiscrepancy u≤(32/5:ℝ) := by
  rw [criticalCumulativeDiscrepancy_eq]
  have he := ActualPrimeError.actual_primeLogError_bounds hu
  have hd0 : 0≤criticalDecay u := (Real.exp_pos _).le
  have hd1 : criticalDecay u≤1 := by
    unfold criticalDecay
    exact Real.exp_le_one_iff.mpr (by linarith)
  have hl := Real.log_two_lt_d9
  have hh := ActualPrimeError.explicit_prime_budget_lt
  constructor <;> linarith

theorem actual_bridge_eq (A u : ℝ) :
    criticalDiscrepancyBridge A u =
      integralBridge criticalCumulativeDiscrepancy (2*A) u := rfl

/-- All real source scales, both endpoints, and literal closed-step arithmetic. -/
theorem actual_bridge_abs_le_chord {A u : ℝ} (hA : 0<A)
    (hu : 0≤u) (huA : u≤2*A) :
    |criticalDiscrepancyBridge A u|≤(389/40:ℝ)*u*(2*A-u)/(2*A) := by
  rw [actual_bridge_eq]
  have hh := integralBridge_abs_le (a:=-(133/40:ℝ)) (b:=(32/5:ℝ))
    (by linarith : 0<2*A) hu huA
    criticalCumulativeDiscrepancy_intervalIntegrable
    (fun t ht=>actual_discrepancy_bounds ht.1)
  norm_num only [show (32/5:ℝ)-(-(133/40:ℝ))=389/40 by norm_num] at hh
  exact hh

theorem chord_le_scale {A u : ℝ} (hA : 0<A) :
    (389/40:ℝ)*u*(2*A-u)/(2*A)≤(389/80:ℝ)*A := by
  apply (div_le_iff₀ (by linarith : 0<2*A)).mpr
  nlinarith [sq_nonneg (u-A)]

theorem actual_bridge_abs_le_scale {A u : ℝ} (hA : 0<A)
    (hu : 0≤u) (huA : u≤2*A) :
    |criticalDiscrepancyBridge A u|≤(389/80:ℝ)*A :=
  (actual_bridge_abs_le_chord hA hu huA).trans (chord_le_scale hA)

#print axioms integralBridge
#print axioms segment_integral_bounds
#print axioms integralBridge_abs_le
#print axioms actual_discrepancy_bounds
#print axioms actual_bridge_eq
#print axioms actual_bridge_abs_le_chord
#print axioms chord_le_scale
#print axioms actual_bridge_abs_le_scale
end ContinuousResearch.BridgeEnvelope
