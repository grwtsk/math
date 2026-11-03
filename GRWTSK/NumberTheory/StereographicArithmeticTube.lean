/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MeasureAndIntegration.FiniteStraightTubeFamily
import GRWTSK.RealFunctions.FiniteStraightTubeOppositeDirection
import Mathlib

set_option autoImplicit false
noncomputable section
open MeasureTheory

/-!
# Original integer indices as actual rational stereographic straight tubes

The primitive integer pair (n,1), n>=1, is assigned the explicit
rational unit-circle direction

    omega_n = ((n^2-1)/(n^2+1), 2*n/(n^2+1)).

The coordinates are defined for all natural n; on n>=1 both
coordinates are nonnegative. Every direction is a genuine element
of the EXISTING EuclideanSpace R (Fin 2) unit sphere.

The REAL tube has original center 0, positive axial half-length 2,
positive radius 2. Its actual shading is the original Euclidean
closed unit ball, included in every such tube. This is an explicit
geometric realization rather than a free favorable-family record.

This deliberately strong common-shading choice will be used to
study a structural obstruction: it eliminates weak-overlap pairs,
but all remaining long-distance pairs carry a dense positive
geometric row charge. Nothing equates geometry to signed arithmetic.
-/

namespace GRWTSK.NumberTheory.Farey.StereographicArithmeticTube

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

/-- Rational coordinate from the original integer n. -/
def stereoX (n : ℕ) : ℝ :=
  ((n : ℝ)^2 - 1) / ((n : ℝ)^2 + 1)

/-- Rational coordinate paired with stereoX. -/
def stereoY (n : ℕ) : ℝ :=
  2 * (n : ℝ) / ((n : ℝ)^2 + 1)

/-- Actual existing Euclidean two-dimensional carrier. -/
def stereoVector (n : ℕ) : Space 2 :=
  !₂[stereoX n, stereoY n]

theorem stereo_den_pos (n : ℕ) :
    0 < (n : ℝ)^2 + 1 := by positivity

/-- The primitive integer chart lands exactly on the unit circle. -/
theorem stereo_scalar_unit (n : ℕ) :
    (stereoX n)^2 + (stereoY n)^2 = 1 := by
  unfold stereoX stereoY
  have hn : (n : ℝ)^2 + 1 ≠ 0 :=
    ne_of_gt (stereo_den_pos n)
  field_simp [hn]
  ring

/-- The squared Euclidean norm is the original rational circle
equation, with no approximated trigonometric data. -/
theorem stereoVector_norm_sq (n : ℕ) :
    ‖stereoVector n‖^2 = 1 := by
  have hcoords :
      ‖stereoVector n‖^2 =
        (stereoX n)^2 + (stereoY n)^2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [stereoVector, Fin.sum_univ_two]
  exact hcoords.trans (stereo_scalar_unit n)

/-- Actual norm one, not merely nonzero direction data. -/
theorem stereoVector_norm_one (n : ℕ) :
    ‖stereoVector n‖ = 1 := by
  have hn := stereoVector_norm_sq n
  nlinarith [norm_nonneg (stereoVector n)]

/-- The required genuine source typed unit direction. -/
def stereoDirection (n : ℕ) : Direction 2 :=
  ⟨stereoVector n, by
    simpa only [Metric.mem_sphere, dist_zero_right] using
      (stereoVector_norm_one n)⟩

/-- The EXACT original finite straight tube with genuine positive
radius/half-length and source-derived rational direction. -/
def arithmeticTube (n : ℕ) : Tube 2 where
  center := 0
  direction := stereoDirection n
  halfLength := 2
  halfLength_pos := by norm_num
  radius := 2
  radius_pos := by norm_num

/-- A definite common measurable physical shading (not an
arbitrarily assigned incidence bit). -/
def commonShading : Set (Space 2) :=
  Metric.closedBall (0 : Space 2) 1

/-- Every source tube genuinely contains the common closed unit
ball, by Cauchy-Schwarz and a paid axial/transverse norm bound. -/
theorem commonShading_subset_arithmeticTube (n : ℕ) :
    commonShading ⊆ (arithmeticTube n).region := by
  intro x hx
  have hxnorm : ‖x‖ ≤ 1 := by
    simpa only [commonShading, Metric.mem_closedBall, dist_zero_right] using hx
  let ω : Direction 2 := stereoDirection n
  have hw : ‖(ω : Space 2)‖ = 1 := direction_norm ω
  have hi : |inner ℝ x (ω : Space 2)| ≤ ‖x‖ := by
    simpa only [hw, mul_one] using
      (abs_real_inner_le_norm x (ω : Space 2))
  have haxial : |inner ℝ x (ω : Space 2)| ≤ 2 := by linarith
  have htrans :
      ‖x - (inner ℝ x (ω : Space 2)) • (ω : Space 2)‖ ≤ 2 := by
    calc
      _ ≤ ‖x‖ + ‖(inner ℝ x (ω : Space 2)) • (ω : Space 2)‖ :=
        norm_sub_le _ _
      _ = ‖x‖ + |inner ℝ x (ω : Space 2)| := by
        simp only [norm_smul, Real.norm_eq_abs, hw, mul_one]
      _ ≤ 2 := by linarith
  have hreg :=
    ((arithmeticTube n).mem_region_iff x).mpr
      (by simpa only [arithmeticTube, sub_zero] using
        (And.intro haxial htrans))
  exact hreg

/-- The common source shading is genuinely measurable. -/
theorem commonShading_measurable : MeasurableSet commonShading := by
  exact Metric.isClosed_closedBall.measurableSet

/-- Exact 2D physical mass; hence it is strictly positive and finite. -/
theorem commonShading_volume :
    (volume : Measure (Space 2)).real commonShading = Real.pi := by
  simp [commonShading, EuclideanSpace.volume_closedBall_fin_two]

theorem commonShading_volume_pos :
    0 < (volume : Measure (Space 2)).real commonShading := by
  rw [commonShading_volume]
  exact Real.pi_pos

theorem commonShading_volume_finite :
    volume commonShading ≠ (⊤ : ENNReal) := by
  rw [commonShading]
  simp [EuclideanSpace.volume_closedBall_fin_two]

/-- Pythagorean stereographic formula, EXACT in the original
integer coordinates. -/
theorem stereo_scalar_minus_sq (m n : ℕ) :
    (stereoX m - stereoX n)^2 +
        (stereoY m - stereoY n)^2 =
      4 * ((m : ℝ) - (n : ℝ))^2 /
        (((m : ℝ)^2 + 1) * ((n : ℝ)^2 + 1)) := by
  unfold stereoX stereoY
  have hm : (m : ℝ)^2 + 1 ≠ 0 :=
    ne_of_gt (stereo_den_pos m)
  have hn : (n : ℝ)^2 + 1 ≠ 0 :=
    ne_of_gt (stereo_den_pos n)
  field_simp [hm, hn]
  ring

theorem stereo_scalar_plus_sq (m n : ℕ) :
    (stereoX m + stereoX n)^2 +
        (stereoY m + stereoY n)^2 =
      4 * ((m : ℝ) * (n : ℝ) + 1)^2 /
        (((m : ℝ)^2 + 1) * ((n : ℝ)^2 + 1)) := by
  unfold stereoX stereoY
  have hm : (m : ℝ)^2 + 1 ≠ 0 :=
    ne_of_gt (stereo_den_pos m)
  have hn : (n : ℝ)^2 + 1 ≠ 0 :=
    ne_of_gt (stereo_den_pos n)
  field_simp [hm, hn]
  ring

/-- Corresponding true Euclidean squared chord, no surrogate scalar. -/
theorem stereoVector_minus_sq (m n : ℕ) :
    ‖stereoVector m - stereoVector n‖^2 =
      4 * ((m : ℝ) - (n : ℝ))^2 /
        (((m : ℝ)^2 + 1) * ((n : ℝ)^2 + 1)) := by
  have hcoord :
      ‖stereoVector m - stereoVector n‖^2 =
        (stereoX m - stereoX n)^2 +
          (stereoY m - stereoY n)^2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [stereoVector, Fin.sum_univ_two]
  exact hcoord.trans (stereo_scalar_minus_sq m n)

theorem stereoVector_plus_sq (m n : ℕ) :
    ‖stereoVector m + stereoVector n‖^2 =
      4 * ((m : ℝ) * (n : ℝ) + 1)^2 /
        (((m : ℝ)^2 + 1) * ((n : ℝ)^2 + 1)) := by
  have hcoord :
      ‖stereoVector m + stereoVector n‖^2 =
        (stereoX m + stereoX n)^2 +
          (stereoY m + stereoY n)^2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [stereoVector, Fin.sum_univ_two]
  exact hcoord.trans (stereo_scalar_plus_sq m n)

/-- On the ORIGINAL positive arithmetic indices, both rational
stereographic directions lie in one closed quadrant, hence their
unoriented projective distance is their ordinary chord distance. -/
theorem stereo_projective_gap_sq (m n : ℕ)
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    projectiveDirectionGap (stereoDirection m) (stereoDirection n)^2 =
      4 * ((m : ℝ) - (n : ℝ))^2 /
        (((m : ℝ)^2 + 1) * ((n : ℝ)^2 + 1)) := by
  have hm1 : (1 : ℝ) ≤ m := by exact_mod_cast hm
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hprod :
      0 ≤ ((m : ℝ)^2 - 1) * ((n : ℝ)^2 - 1) :=
    mul_nonneg (by nlinarith) (by nlinarith)
  have hmn : 0 ≤ (m : ℝ) * (n : ℝ) := by positivity
  have hnum :
      ((m : ℝ) - (n : ℝ))^2 ≤
        ((m : ℝ) * (n : ℝ) + 1)^2 := by
    nlinarith [hprod, hmn]
  have hden :
      0 < ((m : ℝ)^2 + 1) * ((n : ℝ)^2 + 1) :=
    mul_pos (stereo_den_pos m) (stereo_den_pos n)
  have hleSq :
      ‖stereoVector m - stereoVector n‖^2 ≤
        ‖stereoVector m + stereoVector n‖^2 := by
    rw [stereoVector_minus_sq, stereoVector_plus_sq]
    exact div_le_div_of_nonneg_right
      (by nlinarith [hnum]) hden.le
  have hle :
      ‖stereoVector m - stereoVector n‖ ≤
        ‖stereoVector m + stereoVector n‖ := by
    nlinarith [norm_nonneg (stereoVector m - stereoVector n),
      norm_nonneg (stereoVector m + stereoVector n), hleSq]
  have hprojective :
      projectiveDirectionGap (stereoDirection m) (stereoDirection n) =
        ‖stereoVector m - stereoVector n‖ := by
    unfold projectiveDirectionGap
    change min (dist (stereoVector m) (stereoVector n))
       (dist (stereoVector m) (-stereoVector n)) = _
    rw [dist_eq_norm, dist_eq_norm, sub_neg_eq_add]
    exact min_eq_left hle
  rw [hprojective]
  exact stereoVector_minus_sq m n

/-- Source indices in the standard positive integer inventory have
a projective gap controlled below by their integer additive distance.
This is the quantitative source-to-geometry coercivity. -/
theorem stereo_gap_lower_on_height (m n N : ℕ)
    (hm : 1 ≤ m) (hn : 1 ≤ n)
    (hmN : m ≤ N) (hnN : n ≤ N) :
    2 * |(m : ℝ) - (n : ℝ)| / ((N : ℝ)^2 + 1) ≤
      projectiveDirectionGap (stereoDirection m) (stereoDirection n) := by
  have hmR : (m : ℝ) ≤ N := by exact_mod_cast hmN
  have hnR : (n : ℝ) ≤ N := by exact_mod_cast hnN
  have hmsq : (m : ℝ)^2 + 1 ≤ (N : ℝ)^2 + 1 := by
    have hdiff : 0 ≤ (N : ℝ) - (m : ℝ) := sub_nonneg.mpr hmR
    have hsum : 0 ≤ (N : ℝ) + (m : ℝ) := by positivity
    nlinarith [mul_nonneg hdiff hsum]
  have hnsq : (n : ℝ)^2 + 1 ≤ (N : ℝ)^2 + 1 := by
    have hdiff : 0 ≤ (N : ℝ) - (n : ℝ) := sub_nonneg.mpr hnR
    have hsum : 0 ≤ (N : ℝ) + (n : ℝ) := by positivity
    nlinarith [mul_nonneg hdiff hsum]
  have hproduct :
      ((m : ℝ)^2+1) * ((n : ℝ)^2+1) ≤
        ((N : ℝ)^2+1)^2 := by
    have hmul := mul_le_mul hmsq hnsq
      (le_of_lt (stereo_den_pos n))
      (by positivity : 0 ≤ (N : ℝ)^2+1)
    simpa only [pow_two] using hmul
  have hden :
      0 < ((m : ℝ)^2+1) * ((n : ℝ)^2+1) :=
    mul_pos (stereo_den_pos m) (stereo_den_pos n)
  have hNden : 0 < ((N : ℝ)^2+1)^2 := by positivity
  have hratio :
      (4 * ((m : ℝ)-(n : ℝ))^2) /
          (((N : ℝ)^2+1)^2) ≤
        (4 * ((m : ℝ)-(n : ℝ))^2) /
          (((m : ℝ)^2+1)*((n : ℝ)^2+1)) := by
    exact (div_le_div_iff₀ hNden hden).2
      (mul_le_mul_of_nonneg_left hproduct
        (by positivity))
  have hprojective :=
    stereo_projective_gap_sq m n hm hn
  have hnonneg :
      0 ≤ projectiveDirectionGap
        (stereoDirection m) (stereoDirection n) :=
    projectiveDirectionGap_nonneg _ _
  have hleft :
      0 ≤ 2 * |(m : ℝ)-(n : ℝ)| / ((N : ℝ)^2+1) := by positivity
  have hsquare :
      (2 * |(m : ℝ)-(n : ℝ)| / ((N : ℝ)^2+1))^2 =
        (4 * ((m : ℝ)-(n : ℝ))^2) / (((N : ℝ)^2+1)^2) := by
    rw [div_pow, mul_pow, sq_abs]
    ring
  rw [← hsquare, ← hprojective] at hratio
  nlinarith

end GRWTSK.NumberTheory.Farey.StereographicArithmeticTube
