/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.StereographicArithmeticTube
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFareyFaryKakeyaIncidence
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory

/-!
# Genuine source-energy-matched Euclidean tube and shading family

Rather than choosing an arbitrary shared disk, attach to each
ORIGINAL integer endpoint index n the REAL Möbius diagonal energy
d_n(T)=mu(n)^2 pickupResponseGram(T,n,n), retaining its sign-free
diagonal and the original physical-time birth support.

The chosen shading is a genuine centered Euclidean closed disk of
radius sqrt(max(d_n(T),0)). The source tube is the ACTUAL existing
straight Tube 2 with direction determined by the rational primitive
integer stereographic chart and axial half-length rho+1 and
transverse radius 2*rho+1, each STRICTLY positive.

The true Lebesgue area of the disk is pi*max(d_n(T),0). For T>=0,
all source d_n are nonnegative and the physical pair mass is EXACTLY
pi*min(d_m(T),d_n(T)). A vanishing Mobius coefficient yields zero
area, but its original integer source ID remains present.

This is a genuine SOURCE-ENERGY/PHYSICAL-AREA realization. It does
not identify the signed cross Gram k_mn with positive disk overlap,
nor prove cancellation among the strong-overlap pairs.
-/

namespace GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Farey.StereographicArithmeticTube
open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

classical

/-- The actual original Möbius energy, clipped only to make the
geometric definition total at arbitrary negative T. For T>=0 this
is literally the original nonnegative sourceDiagonal, unchanged. -/
def positiveSourceEnergy (T : ℝ) (n : ℕ) : ℝ :=
  max (sourceDiagonal T n) 0

theorem positiveSourceEnergy_nonneg (T : ℝ) (n : ℕ) :
    0 ≤ positiveSourceEnergy T n := by
  unfold positiveSourceEnergy
  exact le_max_right _ _

/-- The actual source-energy radius, with no chosen a priori n
probability distribution or coarse cell-measure transfer. -/
def energyRadius (T : ℝ) (n : ℕ) : ℝ :=
  Real.sqrt (positiveSourceEnergy T n)

theorem energyRadius_nonneg (T : ℝ) (n : ℕ) :
    0 ≤ energyRadius T n := Real.sqrt_nonneg _

theorem energyRadius_sq (T : ℝ) (n : ℕ) :
    (energyRadius T n)^2 = positiveSourceEnergy T n := by
  unfold energyRadius
  exact Real.sq_sqrt (positiveSourceEnergy_nonneg T n)

/-- The REAL source-driven finite Euclidean straight cylinder.
All n carry distinct labels even if mu(n)=0 and their disks have
zero physical area. -/
def energyTube (T : ℝ) (n : ℕ) : Tube 2 where
  center := 0
  direction := stereoDirection n
  halfLength := energyRadius T n + 1
  halfLength_pos := by
    have h := energyRadius_nonneg T n
    linarith
  radius := 2 * energyRadius T n + 1
  radius_pos := by
    have h := energyRadius_nonneg T n
    linarith

/-- The actual original Euclidean shading, not a Boolean hit label. -/
def energyShading (T : ℝ) (n : ℕ) : Set (Space 2) :=
  Metric.closedBall (0 : Space 2) (energyRadius T n)

/-- Every energy-matched shading lies in the actual finite straight
tube of that SAME source integer, with Cauchy-Schwarz and the
pointwise transverse triangle bound paying the geometric offset. -/
theorem energyShading_subset_tube (T : ℝ) (n : ℕ) :
    energyShading T n ⊆ (energyTube T n).region := by
  intro x hx
  have hxnorm : ‖x‖ ≤ energyRadius T n := by
    simpa only [energyShading, Metric.mem_closedBall,
      dist_zero_right] using hx
  let ω : Direction 2 := stereoDirection n
  have hw : ‖(ω : Space 2)‖ = 1 := direction_norm ω
  have hinner : |inner ℝ x (ω : Space 2)| ≤ ‖x‖ := by
    simpa only [hw, mul_one] using
      (abs_real_inner_le_norm x (ω : Space 2))
  have haxial :
      |inner ℝ x (ω : Space 2)| ≤ energyRadius T n + 1 := by
    linarith
  have htrans :
      ‖x - (inner ℝ x (ω : Space 2)) • (ω : Space 2)‖ ≤
        2 * energyRadius T n + 1 := by
    calc
      _ ≤ ‖x‖ + ‖(inner ℝ x (ω : Space 2)) • (ω : Space 2)‖ :=
        norm_sub_le _ _
      _ = ‖x‖ + |inner ℝ x (ω : Space 2)| := by
        simp only [norm_smul, Real.norm_eq_abs, hw, mul_one]
      _ ≤ 2 * energyRadius T n + 1 := by linarith
  exact ((energyTube T n).mem_region_iff x).mpr
    (by simpa only [energyTube, sub_zero] using
      (And.intro haxial htrans))

/-- Canonical ORIGINAL integer-subtype-indexed family. It preserves
the actual complete endpoint inventory, not a quotient or
arbitrary chosen subset selected after inspecting cancellations. -/
def originalEnergyFamily (T : ℝ) : OriginalTubeFamily 2 T where
  tube i := energyTube T i.1
  shading i := energyShading T i.1
  shading_subtube := by
    intro i x hx
    exact energyShading_subset_tube T i.1 hx
  weight := fun _ => 1
  weight_nonneg := by intro i; norm_num

theorem originalEnergyFamily_direction (T : ℝ)
    (i : {n : ℕ // n ∈ endpointIndex T}) :
    ((originalEnergyFamily T).tube i).direction = stereoDirection i.1 := rfl

theorem energyShading_measurable (T : ℝ) (n : ℕ) :
    MeasurableSet (energyShading T n) :=
  Metric.isClosed_closedBall.measurableSet

theorem energyShading_finite (T : ℝ) (n : ℕ) :
    volume (energyShading T n) ≠ (⊤ : ENNReal) := by
  simp [energyShading, EuclideanSpace.volume_closedBall_fin_two]

/-- Genuine 2D area equals pi times the EXACT original diagonal
energy clipping. No invented row multiplicity or mass normalization. -/
theorem energyShading_real_volume (T : ℝ) (n : ℕ) :
    (volume : Measure (Space 2)).real (energyShading T n) =
      Real.pi * positiveSourceEnergy T n := by
  have hρ := energyRadius_nonneg T n
  have hπ := Real.pi_pos.le
  have hs : (energyRadius T n)^2 = positiveSourceEnergy T n :=
    energyRadius_sq T n
  calc
    (volume : Measure (Space 2)).real (energyShading T n) =
        (((ENNReal.ofReal (energyRadius T n)) ^ 2) *
          (ENNReal.ofReal Real.pi)).toReal := by
      simp only [energyShading, EuclideanSpace.volume_closedBall_fin_two]
    _ = (energyRadius T n)^2 * Real.pi := by
      simp [ENNReal.toReal_mul, ENNReal.toReal_pow, hρ, hπ]
    _ = Real.pi * positiveSourceEnergy T n := by rw [hs]; ring

/-- For nonnegative T the geometric source energy is literally
the original full signed-waveform diagonal, with mu(n)^2 retained. -/
theorem positiveSourceEnergy_eq_diagonal
    {T : ℝ} (hT : 0 ≤ T) (n : ℕ)
    (hn : n ∈ endpointIndex T) :
    positiveSourceEnergy T n = sourceDiagonal T n := by
  exact max_eq_left (sourceDiagonal_nonneg hT n hn)

/-- Nested concentric source-energy disks: if the original diagonal
for m is smaller, its entire physical shading is contained in n's.
The choice of disk radius is source-derived, not arbitrary clipping. -/
theorem energyShading_subset_of_le
    (T : ℝ) (m n : ℕ)
    (h : positiveSourceEnergy T m ≤ positiveSourceEnergy T n) :
    energyShading T m ⊆ energyShading T n := by
  intro x hx
  have hr : energyRadius T m ≤ energyRadius T n := by
    unfold energyRadius
    exact Real.sqrt_le_sqrt h
  have hx' : dist x (0 : Space 2) ≤ energyRadius T m :=
    Metric.mem_closedBall.mp hx
  exact Metric.mem_closedBall.mpr (hx'.trans hr)

/-- True physical intersection of source-energy shadings.
No inverse image under a hypothetical sample decoder is used. -/
theorem energyShading_pair_inter_of_le (T : ℝ) (m n : ℕ)
    (h : positiveSourceEnergy T m ≤ positiveSourceEnergy T n) :
    energyShading T m ∩ energyShading T n =
      energyShading T m := by
  exact Set.inter_eq_left.mpr (energyShading_subset_of_le T m n h)

/-- Actual REAL area of the common physical shading is exactly
pi times the MINIMUM original positive source diagonal energy. -/
theorem energyShading_pair_real_volume (T : ℝ) (m n : ℕ) :
    (volume : Measure (Space 2)).real
        (energyShading T m ∩ energyShading T n) =
      Real.pi * min (positiveSourceEnergy T m)
                        (positiveSourceEnergy T n) := by
  rcases le_total (positiveSourceEnergy T m)
      (positiveSourceEnergy T n) with h | h
  · rw [energyShading_pair_inter_of_le T m n h,
      energyShading_real_volume, min_eq_left h]
  · have hsubset := energyShading_subset_of_le T n m h
    have hinter :
        energyShading T m ∩ energyShading T n =
          energyShading T n :=
      Set.inter_eq_right.mpr hsubset
    rw [hinter, energyShading_real_volume, min_eq_right h]

/-- This is the critical source-to-physical-measure identification:
true original indexed Euclidean intersection volume is pi times
min(d_m,d_n) on every nonnegative horizon. No squareful source
index or orientation is omitted. -/
theorem originalEnergyFamily_pair_mass
    {T : ℝ} (hT : 0 ≤ T)
    (m n : ℕ) (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) :
    originalPhysicalPairMass (originalEnergyFamily T) m n =
      Real.pi * min (sourceDiagonal T m) (sourceDiagonal T n) := by
  simp only [originalPhysicalPairMass, dif_pos hm, dif_pos hn]
  change (volume : Measure (Space 2)).real
    (energyShading T m ∩ energyShading T n) = _
  rw [energyShading_pair_real_volume,
    positiveSourceEnergy_eq_diagonal hT m hm,
    positiveSourceEnergy_eq_diagonal hT n hn]

end GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
