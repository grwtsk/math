/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.FiniteLabelledPickupCocycle
import Mathlib.Analysis.InnerProductSpace.ProdL2
import Mathlib.Tactic

/-!
# Uniform finite-inventory causal transport and a source-exact isometry obstruction

The response is the original pickupResponse n t for integer labels n >= 1.
Its absolute value on nonnegative physical time is <= 2, independent of n.
Consequently the actual finite-label diagonal has operator norm <= 2, and the
complete two-time causal shear has operator norm <= 5, independent of dyadic
inventory j and nonnegative endpoints s,t. This is a *finite-inventory Hilbert
operator bound*, NOT an RH energy bound, and NOT a uniform bound on the
infinite signed coherent scalar readout across j.

On the actual source graph the norm-square gain from time zero to 2 log 2
is at least 1 for every j: the n=1 birth response equals 1. Hence no
linear isometry (or unitary evolution) can carry that original graph state
to the later original graph state in the specified fixed positive metric.
The bounded, invertible causal shear does so precisely because it is not
required to be isometric. No arithmetic premise is added.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupUniformTransport

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupCocycle

/-- A genuine estimate on the ORIGINAL causal source response, with no
coefficient absolute-value replacement inside any signed source sum. -/
theorem pickupResponse_abs_le_two {n : ℕ} (hn : 1 ≤ n)
    {u : ℝ} (hu : 0 ≤ u) : |pickupResponse n u| ≤ 2 := by
  have hnreal : (1 : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
  have hs : (1 : ℝ) ≤ Real.sqrt (n : ℝ) := by
    simpa using Real.sqrt_le_sqrt hnreal
  have ha0 : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ := by positivity
  have ha1 : (Real.sqrt (n : ℝ))⁻¹ ≤ 1 := inv_le_one_of_one_le₀ hs
  have hb0 : 0 ≤ Real.exp (-u / 2) := (Real.exp_pos _).le
  have hb1 : Real.exp (-u / 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by linarith)
  by_cases hborn : Real.log (n : ℝ) ≤ u
  · simp only [pickupResponse, if_pos hborn]
    apply abs_le.mpr
    constructor <;> nlinarith
  · simp [pickupResponse, hborn]

/-- Finite Euclidean operator norm, independent of the dyadic inventory. -/
theorem actualPickupDiagonal_norm_le_two (j : ℕ) {u : ℝ} (hu : 0 ≤ u)
    (x : SourceHilbert j) :
    ‖actualPickupDiagonal j u x‖ ≤ 2 * ‖x‖ := by
  have hpoint (i : SourceLabels j) :
      ‖(actualPickupDiagonal j u x) i‖ ^ 2 ≤ (2 * ‖x i‖) ^ 2 := by
    rw [actualPickupDiagonal_apply, norm_mul]
    have hs : ‖(pickupResponse (i.val + 1) u : ℂ)‖ ≤ 2 := by
      simpa using (pickupResponse_abs_le_two (n := i.val + 1) (by omega) hu)
    have hmul : ‖(pickupResponse (i.val + 1) u : ℂ)‖ * ‖x i‖ ≤
        2 * ‖x i‖ :=
      mul_le_mul_of_nonneg_right hs (norm_nonneg _)
    have hn : 0 ≤ ‖(pickupResponse (i.val + 1) u : ℂ)‖ * ‖x i‖ := by
      positivity
    have hn' : 0 ≤ 2 * ‖x i‖ := by positivity
    nlinarith
  have hsum :
      (∑ i : SourceLabels j, ‖(actualPickupDiagonal j u x) i‖ ^ 2) ≤
        4 * ∑ i : SourceLabels j, ‖x i‖ ^ 2 := by
    calc
      _ ≤ ∑ i : SourceLabels j, (2 * ‖x i‖) ^ 2 :=
        Finset.sum_le_sum (fun i _ => hpoint i)
      _ = 4 * ∑ i : SourceLabels j, ‖x i‖ ^ 2 := by
        simp_rw [mul_pow]
        simp only [← Finset.mul_sum]
        ring
  have hsq : ‖actualPickupDiagonal j u x‖ ^ 2 ≤
      (2 * ‖x‖) ^ 2 := by
    calc
      _ = ∑ i : SourceLabels j, ‖(actualPickupDiagonal j u x) i‖ ^ 2 :=
        EuclideanSpace.norm_sq_eq _
      _ ≤ 4 * ∑ i : SourceLabels j, ‖x i‖ ^ 2 := hsum
      _ = (2 * ‖x‖) ^ 2 := by
        rw [← EuclideanSpace.norm_sq_eq x]
        ring
  nlinarith [norm_nonneg (actualPickupDiagonal j u x), norm_nonneg x]

theorem actualPickupDiagonal_opNorm_le_two (j : ℕ) {u : ℝ} (hu : 0 ≤ u) :
    ‖actualPickupDiagonal j u‖ ≤ 2 := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by norm_num)
  intro x
  exact actualPickupDiagonal_norm_le_two j hu x

/-- The source-determined response increment is uniformly bounded on the
nonnegative time axis. This is not a cancellation estimate. -/
theorem actualPickupDiagonal_increment_opNorm_le_four
    (j : ℕ) {s t : ℝ} (hs : 0 ≤ s) (ht : 0 ≤ t) :
    ‖actualPickupDiagonal j t - actualPickupDiagonal j s‖ ≤ 4 := by
  calc
    ‖actualPickupDiagonal j t - actualPickupDiagonal j s‖ ≤
        ‖actualPickupDiagonal j t‖ + ‖actualPickupDiagonal j s‖ :=
      norm_sub_le _ _
    _ ≤ 2 + 2 :=
      add_le_add (actualPickupDiagonal_opNorm_le_two j ht)
        (actualPickupDiagonal_opNorm_le_two j hs)
    _ = 4 := by norm_num

section GenericHilbert
universe u
variable {H : Type u} [NormedAddCommGroup H]
  [InnerProductSpace ℂ H] [CompleteSpace H]

/-- The difference from identity is precisely the observed source increment. -/
theorem causalStep_minus_identity_norm (B : ObservationFamily H)
    (s t : ℝ) (z : SourceState H) :
    ‖causalStep B s t z - z‖ = ‖(B t - B s) z.fst‖ := by
  have h : causalStep B s t z - z =
      WithLp.toLp 2 ((0 : H), (B t - B s) z.fst) := by
    rw [causalStep_apply]
    change WithLp.toLp 2 (z.fst, z.snd + (B t - B s) z.fst) -
      WithLp.toLp 2 (z.fst, z.snd) = _
    rw [← WithLp.toLp_sub]
    simp
  rw [h]
  exact WithLp.norm_toLp_snd 2 H H _

/-- The latent component never exceeds the norm of the full L² state. -/
theorem causalState_latent_norm_le (z : SourceState H) : ‖z.fst‖ ≤ ‖z‖ := by
  have h := WithLp.prod_norm_sq_eq_of_L2 z
  nlinarith [norm_nonneg z.fst, norm_nonneg z, sq_nonneg ‖z.snd‖]

/-- Explicit quantitative source-increment bound, not just finiteness of
the operator norm. -/
theorem causalStep_increment_bound (B : ObservationFamily H)
    (s t : ℝ) (z : SourceState H) :
    ‖causalStep B s t z - z‖ ≤ ‖B t - B s‖ * ‖z‖ := by
  calc
    _ = ‖(B t - B s) z.fst‖ := causalStep_minus_identity_norm B s t z
    _ ≤ ‖B t - B s‖ * ‖z.fst‖ := (B t - B s).le_opNorm _
    _ ≤ ‖B t - B s‖ * ‖z‖ :=
      mul_le_mul_of_nonneg_left (causalState_latent_norm_le z) (norm_nonneg _)

/-- A scale-by-scale general bound on the entire causal cocycle. -/
theorem causalStep_norm_bound (B : ObservationFamily H)
    (s t : ℝ) (z : SourceState H) :
    ‖causalStep B s t z‖ ≤ (1 + ‖B t - B s‖) * ‖z‖ := by
  calc
    ‖causalStep B s t z‖ = ‖(causalStep B s t z - z) + z‖ := by
      congr 1
      abel
    _ ≤ ‖causalStep B s t z - z‖ + ‖z‖ := norm_add_le _ _
    _ ≤ ‖B t - B s‖ * ‖z‖ + ‖z‖ :=
      add_le_add_right (causalStep_increment_bound B s t z) _
    _ = (1 + ‖B t - B s‖) * ‖z‖ := by ring

theorem causalStep_opNorm_bound (B : ObservationFamily H) (s t : ℝ) :
    ‖causalStep B s t‖ ≤ 1 + ‖B t - B s‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (by positivity)
  intro z
  exact causalStep_norm_bound B s t z

end GenericHilbert

/-- New all-inventory bound on the genuine *labelled* causal cocycle at all
nonnegative endpoint pairs; independent of the number 2^j of labels. -/
theorem actualLabelTwoTime_opNorm_le_five (j : ℕ)
    {s t : ℝ} (hs : 0 ≤ s) (ht : 0 ≤ t) :
    ‖actualLabelTwoTime j s t‖ ≤ 5 := by
  calc
    _ ≤ 1 + ‖actualPickupDiagonal j t - actualPickupDiagonal j s‖ :=
      causalStep_opNorm_bound (actualLabelObservationFamily j) s t
    _ ≤ 1 + 4 := add_le_add_left
      (actualPickupDiagonal_increment_opNorm_le_four j hs ht) 1
    _ = 5 := by norm_num

/-- Positive Hilbert norm on the actual latent and response graph. -/
theorem originalLabelledState_norm_sq (j : ℕ) (u : ℝ) :
    ‖originalLabelledState j u‖ ^ 2 =
      ‖actualMoebiusLabels j‖ ^ 2 + ‖actualLabelResponse j u‖ ^ 2 := by
  simpa only [originalLabelledState_latent, originalLabelledState_observed] using
    (WithLp.prod_norm_sq_eq_of_L2 (originalLabelledState j u))

/-- The n=1 birth enforces observed norm >= 1 for EVERY finite inventory.
There is no numerical experiment or asymptotic assumption in this estimate. -/
theorem actualLabelResponse_later_norm_ge_one (j : ℕ) :
    1 ≤ ‖actualLabelResponse j (2 * Real.log (2 : ℝ))‖ := by
  have hcoord : actualLabelResponse j (2 * Real.log (2 : ℝ))
      (0 : SourceLabels j) = (1 : ℂ) := by
    simp [actualLabelResponse_apply, moebiusReal,
      actual_pickupResponse_one_at_two_log_two]
  have h := PiLp.norm_apply_le
    (actualLabelResponse j (2 * Real.log (2 : ℝ))) (0 : SourceLabels j)
  simpa [hcoord] using h

/-- At least one entire unit of squared L² energy is gained between these
two actual source-graph states. This is independent of inventory j. -/
theorem originalLabelledState_birth_norm_sq_gain (j : ℕ) :
    ‖originalLabelledState j 0‖ ^ 2 + 1 ≤
      ‖originalLabelledState j (2 * Real.log (2 : ℝ))‖ ^ 2 := by
  simp only [originalLabelledState_norm_sq]
  have hzero := actualLabelResponse_at_zero j
  have hpositive := actualLabelResponse_later_norm_ge_one j
  rw [hzero, norm_zero]
  nlinarith [norm_nonneg (actualLabelResponse j (2 * Real.log (2 : ℝ)))]

/-- No isometric linear evolution in the FIXED chosen positive metric can
move the actual labelled graph from time zero through this literal birth.
The old bounded shear is invertible but cannot be unitary on that graph. -/
theorem no_isometric_original_graph_transport (j : ℕ) :
    ¬ ∃ U : LabelledState j →ₗᵢ[ℂ] LabelledState j,
      U (originalLabelledState j 0) =
        originalLabelledState j (2 * Real.log (2 : ℝ)) := by
  rintro ⟨U, hU⟩
  have heq := U.norm_map (originalLabelledState j 0)
  rw [hU] at heq
  have hgain := originalLabelledState_birth_norm_sq_gain j
  nlinarith

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.FiniteLabelledPickupUniformTransport
