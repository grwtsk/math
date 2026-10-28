/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupPhaseTransport
import GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers
import GRWTSK.NumberTheory.Chebyshev.RHThroughpoint

/-!
# The diffused observations return to the unchanged arithmetic target

The phase comparison is supplied by the actual causal reconstruction, not
assumed here. Signed off-diagonal observations, exact polynomial/quarter-unit
allowances, the fixed dyadic clock and original analytic return are retained.
No all-positive-rate arithmetic witness or uniform source-mass witness is
asserted. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.PickupDiffusionCriterion

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupPhaseQuadratic
open GRWTSK.NumberTheory.Moebius.PickupPhaseTransport
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Chebyshev.RHThroughpoint

/-- Both signed quantities preserve the full diagonal accounting. -/
theorem cross_phase_bounds {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ 9 * phaseCross T + 8 * pickupDiagonal T ∧
    phaseCross T ≤ 9 * pickupCross T + 8 * pickupDiagonal T := by
  have h := phaseAverage_comparison hT
  simp only [phaseAverage_split, pickupEnergy_eq_diagonal_add_cross hT] at h
  constructor <;> linarith [h.1, h.2]

theorem endpoint_phase_bounds {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤ 9 * phaseCross T + 16 * T^2 + 1/4 ∧
    phaseCross T ≤ 9 * endpointSum T + 16 * T^2 + 9/4 := by
  have hc := cross_phase_bounds hT
  have he := abs_le.mp (endpointSum_error hT)
  have hd := (pickupDiagonal_quadratic_bound hT).2
  constructor <;> linarith [hc.1, hc.2, he.1, he.2]

/-- A fixed multiplier changes the constant, never the rate or the scale set. -/
theorem on_const_mul {f : ℝ → ℝ} {G : Set ℝ}
    (hf : SubexponentialOn f G) (a : ℝ) (ha : 0 ≤ a) :
    SubexponentialOn (fun T => a * f T) G := by
  intro ε hε
  obtain ⟨C, R, hC, hR, hb⟩ := hf ε hε
  refine ⟨a * C, R, mul_nonneg ha hC, hR, ?_⟩
  intro T hG hT
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_left (hb T hG hT) ha

theorem global_const_mul {f : ℝ → ℝ} (hf : SubexponentialUpper f)
    (a : ℝ) (ha : 0 ≤ a) : SubexponentialUpper (fun T => a * f T) := by
  intro ε hε
  obtain ⟨C, hC, hb⟩ := hf ε hε
  refine ⟨a * C, mul_nonneg ha hC, ?_⟩
  intro T hT
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_left (hb T hT) ha

/-- Exact same quantifiers, source scale set, and positive rates in both directions. -/
theorem phaseCross_subexponential_iff {G : Set ℝ} :
    SubexponentialOn phaseCross G ↔ SubexponentialOn pickupCross G := by
  have hd := global_const_mul pickupDiagonal_subexponential 8 (by norm_num)
  constructor
  · intro h
    exact subexponentialOn_mono (add_global (on_const_mul h 9 (by norm_num)) hd)
      (fun T _ hT => (cross_phase_bounds hT).1)
  · intro h
    exact subexponentialOn_mono (add_global (on_const_mul h 9 (by norm_num)) hd)
      (fun T _ hT => (cross_phase_bounds hT).2)

/-- This names an equivalent arithmetic goal; it does not assert its truth. -/
def PhaseDyadicBound : Prop := SubexponentialOn phaseCross dyadicScales

theorem phase_bound_iff_dyadicBirthBound : PhaseDyadicBound ↔ DyadicBirthBound := by
  unfold PhaseDyadicBound
  exact phaseCross_subexponential_iff.trans
    (endpoint_subexponential_iff.symm.trans
      (dyadicEndpointBound_iff_good_scales.symm.trans dyadicBirthBound_iff_endpoint.symm))

theorem riemannHypothesis_of_phase_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G) (hbudget : SubexponentialOn phaseCross G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover (phaseCross_subexponential_iff.mp hbudget)

/-- RH is obtained internally; the same established downstream implication follows. -/
theorem phase_dyadic_throughpoint (h : PhaseDyadicBound) :
    _root_.RiemannHypothesis ∧
      (∃ K : ℝ, 0 ≤ K ∧
        GRWTSK.NumberTheory.Chebyshev.TentPrimeConsequences.LogWindowSignedBound K) ∧
      PrimeWindowConclusion :=
  dyadic_arithmetic_throughpoint (phase_bound_iff_dyadicBirthBound.mp h)

/-- Nonmonotone phase observations inherit a fixed quasi-monotonicity factor. -/
theorem phaseAverage_quasi_monotone {T S : ℝ} (hT : 0 ≤ T) (hTS : T ≤ S) :
    phaseAverage T ≤ 81 * phaseAverage S := by
  have hS : 0 ≤ S := hT.trans hTS
  have hmono := pickupEnergy_monotoneOn_nonnegative hT hS hTS
  have h1 := (phaseAverage_comparison hT).2
  have h2 := (phaseAverage_comparison hS).1
  linarith

/-- The fixed-size Hilbert packet source allowance is an actual derived inequality. -/
theorem cross_le_nine_phaseAverage_sub_diagonal {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ 9 * phaseAverage T - pickupDiagonal T := by
  have h := (phaseAverage_comparison hT).1
  rw [pickupEnergy_eq_diagonal_add_cross hT] at h
  linarith

end GRWTSK.NumberTheory.Moebius.PickupDiffusionCriterion
