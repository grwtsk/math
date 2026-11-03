/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.Analysis.Calculus.BumpFunction.InnerProduct
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# Smooth waypoint-centered windows, shrinking boundaries, exact data residual

The finite dataset is an externally supplied prefix of ordered waypoints, with
separate center and value columns. The center may be physical decay time
converted to the dimensionless arithmetic clock by an EXPLICIT calibration
factor. NO numeric CERN events are manufactured and no mapping from a CERN
particle state to a CM class or Mobius coefficient is assumed.

At refinement k each bump is C-infinity and has compact support in the open
ball of radius 1/(k+2) around its OWN UNCHANGED center. It equals one on the
concentric half-radius ball. The priority weights are a smooth, nonnegative
partition with an explicit uncovered boundary multiplier:

  w_i = b_i * product_(h<i) (1-b_h),   beta = product_(i<N) (1-b_i),
  sum_(i<N) w_i + beta = 1.

Order resolves overlaps without data interpolation or deleting duplicate
center observations. The complete source is exactly the fixed observation
sum PLUS its residual; the latter is not asserted to vanish. If events have
identical time centers, priority is deliberately order-dependent and the
record ordering must be source-preserved.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredWaypointPartition

/-- Exact shrinking outer radius in dimensionless source time. -/
def outerRadius (k : ℕ) : ℝ := 1 / ((k : ℝ) + 2)

theorem outerRadius_pos (k : ℕ) : 0 < outerRadius k := by
  unfold outerRadius
  positivity

theorem outerRadius_succ_lt (k : ℕ) :
    outerRadius (k + 1) < outerRadius k := by
  have hpositive : (0 : ℝ) < (k : ℝ) + 2 := by positivity
  have hlt : (k : ℝ) + 2 < (k : ℝ) + 3 := by linarith
  simpa [outerRadius, Nat.cast_add, Nat.cast_one, one_div] using
    (one_div_lt_one_div_of_lt hpositive hlt)

/-- A concrete Mathlib C-infinity compact bump centered on the exact datum.
No arbitrary precomputed or numerically approximated smoothing kernel. -/
def centeredBump (centers : ℕ → ℝ) (k i : ℕ) :
    ContDiffBump (centers i) where
  rIn := outerRadius k / 2
  rOut := outerRadius k
  rIn_pos := by
    exact div_pos (outerRadius_pos k) (by norm_num)
  rIn_lt_rOut := by
    have h := outerRadius_pos k
    linarith

/-- C-infinity window value in the same dimensionless time coordinate. -/
def gate (centers : ℕ → ℝ) (k i : ℕ) (t : ℝ) : ℝ :=
  centeredBump centers k i t

theorem gate_smooth (centers : ℕ → ℝ) (k i : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (gate centers k i) :=
  (centeredBump centers k i).contDiff

theorem gate_nonneg (centers : ℕ → ℝ) (k i : ℕ) (t : ℝ) :
    0 ≤ gate centers k i t :=
  (centeredBump centers k i).nonneg

theorem gate_le_one (centers : ℕ → ℝ) (k i : ℕ) (t : ℝ) :
    gate centers k i t ≤ 1 :=
  (centeredBump centers k i).le_one

/-- The datum remains at the SAME waypoint for ALL refinement levels. -/
theorem gate_at_center (centers : ℕ → ℝ) (k i : ℕ) :
    gate centers k i (centers i) = 1 := by
  exact (centeredBump centers k i).one_of_mem_closedBall
    (by simp [Metric.mem_closedBall, (outerRadius_pos k).le])

/-- Outside the shrinking compact boundary, this window is exactly zero. -/
theorem gate_zero_outside (centers : ℕ → ℝ) (k i : ℕ) (t : ℝ)
    (h : outerRadius k ≤ dist t (centers i)) :
    gate centers k i t = 0 :=
  (centeredBump centers k i).zero_of_le_dist h

/-- Each consecutive center has priority only over centers preceding it.
The original recorded order is retained instead of sorting and merging events. -/
def waypointWeight (centers : ℕ → ℝ) (k i : ℕ) (t : ℝ) : ℝ :=
  gate centers k i t *
    ∏ h ∈ Finset.range i, (1 - gate centers k h t)

/-- All uncovered mass is explicitly carried by the boundary channel. -/
def boundaryWeight (centers : ℕ → ℝ) (k N : ℕ) (t : ℝ) : ℝ :=
  ∏ h ∈ Finset.range N, (1 - gate centers k h t)

/-- The finite priority partition is exact, including overlapping and
repeated time centers. There is no assumption of disjoint supports. -/
theorem partition_exact (centers : ℕ → ℝ) (k N : ℕ) (t : ℝ) :
    (∑ i ∈ Finset.range N, waypointWeight centers k i t) +
      boundaryWeight centers k N t = 1 := by
  induction N with
  | zero => simp [boundaryWeight]
  | succ N ih =>
      have hsucc : boundaryWeight centers k (N + 1) t =
          boundaryWeight centers k N t * (1 - gate centers k N t) := by
        simp [boundaryWeight, Finset.prod_range_succ]
      rw [Finset.sum_range_succ, hsucc]
      change (∑ i ∈ Finset.range N, waypointWeight centers k i t) +
          gate centers k N t * boundaryWeight centers k N t +
          boundaryWeight centers k N t * (1 - gate centers k N t) = 1
      calc
        _ = (∑ i ∈ Finset.range N, waypointWeight centers k i t) +
              boundaryWeight centers k N t := by ring
        _ = 1 := ih

/-- Pointwise positivity is independent of sign of the ARITHMETIC source. -/
theorem boundary_nonneg (centers : ℕ → ℝ) (k N : ℕ) (t : ℝ) :
    0 ≤ boundaryWeight centers k N t := by
  unfold boundaryWeight
  apply Finset.prod_nonneg
  intro i hi
  linarith [gate_le_one centers k i t]

theorem waypointWeight_nonneg (centers : ℕ → ℝ) (k i : ℕ) (t : ℝ) :
    0 ≤ waypointWeight centers k i t := by
  unfold waypointWeight
  apply mul_nonneg (gate_nonneg centers k i t)
  apply Finset.prod_nonneg
  intro h hh
  linarith [gate_le_one centers k h t]

/-- A true data waypoint remains completely covered by some smooth window,
including when several records share the same proper-time coordinate. -/
theorem boundary_zero_at_center (centers : ℕ → ℝ) (k N i : ℕ)
    (hi : i < N) : boundaryWeight centers k N (centers i) = 0 := by
  unfold boundaryWeight
  apply Finset.prod_eq_zero (Finset.mem_range.mpr hi)
  simp [gate_at_center]

/-- An INDEPENDENT per-event observation discrepancy, not collapsed by
priority at duplicate proper-time centers. This retains every event in the
inspectable dataset even where scalar partition weights overlap. -/
def individualWaypointDeviation (centers values : ℕ → ℝ)
    (k i : ℕ) (source : ℝ → ℝ) (t : ℝ) : ℝ :=
  gate centers k i t * (source t - values i)

/-- Every record remains an exactly centered diagnostic waypoint, including
multiple records with identical timestamps and differing observations. -/
theorem individualDeviation_at_center (centers values : ℕ → ℝ)
    (k i : ℕ) (source : ℝ → ℝ) :
    individualWaypointDeviation centers values k i source (centers i) =
      source (centers i) - values i := by
  simp [individualWaypointDeviation, gate_at_center]

/-- A fixed source datum is multiplied by the weight of its own time center. -/
def dataAnchor (centers values : ℕ → ℝ) (k N : ℕ) (t : ℝ) : ℝ :=
  ∑ i ∈ Finset.range N, waypointWeight centers k i t * values i

/-- The complete, signed data-model discrepancy and uncovered window boundary.
No observed CERN value is silently substituted for the original waveform. -/
def paidBoundaryResidual (centers values : ℕ → ℝ) (k N : ℕ)
    (source : ℝ → ℝ) (t : ℝ) : ℝ :=
  (∑ i ∈ Finset.range N,
       waypointWeight centers k i t * (source t - values i)) +
    boundaryWeight centers k N t * source t

/-- Exact original-source return, including ALL data comparison residuals. -/
theorem dataAnchor_add_paidResidual (centers values : ℕ → ℝ)
    (k N : ℕ) (source : ℝ → ℝ) (t : ℝ) :
    dataAnchor centers values k N t +
      paidBoundaryResidual centers values k N source t = source t := by
  have h := partition_exact centers k N t
  have hsplit :
      dataAnchor centers values k N t +
        paidBoundaryResidual centers values k N source t =
      ((∑ i ∈ Finset.range N, waypointWeight centers k i t) +
         boundaryWeight centers k N t) * source t := by
    simp only [dataAnchor, paidBoundaryResidual, mul_sub,
      Finset.sum_sub_distrib, ← Finset.sum_mul]
    ring
  rw [hsplit, h, one_mul]

/-- Physical proper time is NOT equal to logarithmic arithmetic time by
notation. This is an explicit, user-calibrated normalization in matching units. -/
def dimensionlessCenters (properTimePs : ℕ → ℝ) (tau0Ps : ℝ) : ℕ → ℝ :=
  fun i => properTimePs i / tau0Ps

/-- Finer windows are individually C-infinity and retain all recorded
centers; they do not by themselves smooth a non-C1 source waveform. -/
theorem waypointWeight_smooth (centers : ℕ → ℝ) (k i : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (waypointWeight centers k i) := by
  have hprod : ∀ N : ℕ,
      ContDiff ℝ (⊤ : ℕ∞)
        (fun t : ℝ => ∏ h ∈ Finset.range N, (1 - gate centers k h t)) := by
    intro N
    induction N with
    | zero => simpa using (contDiff_const : ContDiff ℝ (⊤ : ℕ∞) (fun _ : ℝ => (1 : ℝ)))
    | succ N ih =>
        simp_rw [Finset.prod_range_succ]
        exact ih.mul (contDiff_const.sub (gate_smooth centers k N))
  exact (gate_smooth centers k i).mul (hprod i)

theorem boundaryWeight_smooth (centers : ℕ → ℝ) (k N : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (boundaryWeight centers k N) := by
  induction N with
  | zero => simpa [boundaryWeight] using
      (contDiff_const : ContDiff ℝ (⊤ : ℕ∞) (fun _ : ℝ => (1 : ℝ)))
  | succ N ih =>
      change ContDiff ℝ (⊤ : ℕ∞)
        (fun t : ℝ => boundaryWeight centers k N t * (1 - gate centers k N t))
      exact ih.mul (contDiff_const.sub (gate_smooth centers k N))

/-- The data-anchor function is C-infinity because every fixed datum is
multiplied by an actual C-infinity priority weight. Values are not fitted. -/
theorem dataAnchor_smooth (centers values : ℕ → ℝ) (k N : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (dataAnchor centers values k N) := by
  unfold dataAnchor
  apply ContDiff.sum
  intro i hi
  exact (waypointWeight_smooth centers k i).mul contDiff_const

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredWaypointPartition
