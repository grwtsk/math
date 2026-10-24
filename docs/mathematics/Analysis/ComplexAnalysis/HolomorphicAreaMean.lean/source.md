# Complete source: GRWTSK.Analysis.Complex.HolomorphicAreaMean

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6db10c5e3ed380aec8646252e3d6c855f420b61` · SHA-256 `b6e54c482a731a58e02799fbc59b6b1a9127cbd2a9b4c31a071980ea13132c07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle
import Mathlib.Analysis.SpecialFunctions.PolarCoord
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Disk area means and local square-integral bounds

All disk integrals use the actual two-dimensional complex Lebesgue measure.
The radial Jacobian is retained in the polar change of variables. Holomorphic
mean value is integrated over radii; no circle measure is renamed as area.
The complex square is holomorphic, whereas its norm square need not be.
This supplies a local area estimate, not yet a map on the historical area
section quotient or an identification with a prescribed arithmetic measure.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicAreaMean

open _root_.Complex Filter Metric MeasureTheory Real Set Topology
open scoped ENNReal
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle

noncomputable section

/-- The polar point is the historical circle parameter at that radius. -/
theorem polarPoint_eq_circleMap (r θ : ℝ) :
    Complex.polarCoord.symm (r, θ) = circleMap 0 r θ := by
  simp [Complex.polarCoord_symm_apply, circleMap, Complex.exp_mul_I,
    Complex.ofReal_cos, Complex.ofReal_sin]

/-- Exact polar integration over the disk, including the radial Jacobian. -/
theorem integral_closedBall_zero_polar (f : ℂ → ℂ) (R : ℝ) :
    (∫ z in closedBall (0 : ℂ) R, f z) =
      ∫ p : ℝ × ℝ in Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi,
        p.1 • f (Complex.polarCoord.symm p) := by
  classical
  let G : ℝ × ℝ → ℂ := fun p => p.1 • f (Complex.polarCoord.symm p)
  let H : Set (ℝ × ℝ) := Iic R ×ˢ univ
  have hH : MeasurableSet H := measurableSet_Iic.prod MeasurableSet.univ
  have hEq : Set.EqOn
      (fun p : ℝ × ℝ => p.1 • (closedBall (0 : ℂ) R).indicator f
        (Complex.polarCoord.symm p)) (H.indicator G) polarCoord.target := by
    intro p hp
    have hp0 : 0 < p.1 := hp.1
    have hmem : Complex.polarCoord.symm p ∈ closedBall (0 : ℂ) R ↔ p ∈ H := by
      simp only [mem_closedBall, dist_zero_right, Complex.norm_polarCoord_symm,
        abs_of_pos hp0, H, mem_prod, mem_Iic, mem_univ, and_true]
    by_cases hpH : p ∈ H
    · simp only [indicator_of_mem (hmem.mpr hpH), indicator_of_mem hpH, G]
    · simp only [indicator_of_notMem (fun h => hpH (hmem.mp h)),
        indicator_of_notMem hpH, smul_zero]
  have hSet : H ∩ polarCoord.target = Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi := by
    ext p
    simp only [H, polarCoord_target, mem_inter_iff, mem_prod, mem_Iic,
      mem_univ, and_true, mem_Ioi, mem_Ioc, mem_Ioo]
    tauto
  calc
    _ = ∫ z, (closedBall (0 : ℂ) R).indicator f z :=
      (integral_indicator measurableSet_closedBall).symm
    _ = ∫ p in polarCoord.target,
        p.1 • (closedBall (0 : ℂ) R).indicator f (Complex.polarCoord.symm p) :=
      (Complex.integral_comp_polarCoord_symm _).symm
    _ = ∫ p in polarCoord.target, H.indicator G p :=
      setIntegral_congr_fun polarCoord.open_target.measurableSet hEq
    _ = ∫ p in H ∩ polarCoord.target, G p := by
      rw [integral_indicator hH, Measure.restrict_restrict hH]
    _ = _ := by rw [hSet]

/-- The angular interval used by polar coordinates has the same circle average. -/
theorem angularIntegral_eq_circleAverage (f : ℂ → ℂ) (r : ℝ) :
    (∫ θ in Ioo (-Real.pi) Real.pi, f (Complex.polarCoord.symm (r, θ))) =
      (2 * Real.pi) • Real.circleAverage f 0 r := by
  have hp : Function.Periodic (fun θ => f (circleMap 0 r θ)) (2 * Real.pi) := by
    intro θ
    exact congrArg f (periodic_circleMap 0 r θ)
  have hshift : (∫ θ in -Real.pi..Real.pi, f (circleMap 0 r θ)) =
      ∫ θ in 0..2 * Real.pi, f (circleMap 0 r θ) := by
    have hπ : -Real.pi + 2 * Real.pi = Real.pi := by ring
    simpa only [hπ, zero_add] using hp.intervalIntegral_add_eq (-Real.pi) 0
  simp_rw [polarPoint_eq_circleMap]
  rw [← integral_Ioc_eq_integral_Ioo,
    ← intervalIntegral.integral_of_le (by linarith [Real.pi_pos]), hshift,
    Real.circleAverage, smul_smul,
    mul_inv_cancel₀ (ne_of_gt Real.two_pi_pos), one_smul]

/-- Continuity on the closed disk gives the genuine integrability needed by Fubini. -/
theorem polarIntegrable {f : ℂ → ℂ} {R : ℝ}
    (hf : ContinuousOn f (closedBall (0 : ℂ) R)) :
    IntegrableOn (fun p : ℝ × ℝ => p.1 • f (Complex.polarCoord.symm p))
      (Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi) := by
  have hp : Continuous (fun p : ℝ × ℝ => Complex.polarCoord.symm p) := by
    simp only [Complex.polarCoord_symm_apply]
    fun_prop
  have hmap : MapsTo (fun p : ℝ × ℝ => Complex.polarCoord.symm p)
      (Icc 0 R ×ˢ Icc (-Real.pi) Real.pi) (closedBall (0 : ℂ) R) := by
    intro p hp
    simpa only [mem_closedBall, dist_zero_right, Complex.norm_polarCoord_symm,
      abs_of_nonneg hp.1.1] using hp.1.2
  have hc : ContinuousOn (fun p : ℝ × ℝ => p.1 • f (Complex.polarCoord.symm p))
      (Icc 0 R ×ˢ Icc (-Real.pi) Real.pi) :=
    continuous_fst.continuousOn.smul (hf.comp hp.continuousOn hmap)
  exact (hc.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)).mono_set
    (Set.prod_mono Ioc_subset_Icc_self Ioo_subset_Icc_self)

/-- Integrate the actual holomorphic circle mean over all positive radii. -/
theorem integral_closedBall_zero {f : ℂ → ℂ} {R : ℝ} (hR : 0 < R)
    (hf : DifferentiableOn ℂ f (closedBall (0 : ℂ) R)) :
    (∫ z in closedBall (0 : ℂ) R, f z) = (Real.pi * R ^ 2) • f 0 := by
  have hmean (r : ℝ) (hr : r ∈ Ioc 0 R) : Real.circleAverage f 0 r = f 0 := by
    apply circleAverage_of_differentiable_on_off_countable (s := ∅) countable_empty
    · simpa only [abs_of_pos hr.1] using
        hf.continuousOn.mono (closedBall_subset_closedBall hr.2)
    · intro z hz
      have hz' : z ∈ ball (0 : ℂ) r := by
        simpa only [sdiff_empty, abs_of_pos hr.1] using hz
      exact hf.differentiableAt (Filter.mem_of_superset (isOpen_ball.mem_nhds hz')
        (ball_subset_closedBall.trans (closedBall_subset_closedBall hr.2)))
  have hint := polarIntegrable hf.continuousOn
  rw [Measure.volume_eq_prod] at hint
  rw [integral_closedBall_zero_polar, Measure.volume_eq_prod, setIntegral_prod _ hint]
  calc
    _ = ∫ r in Ioc 0 R, r • ((2 * Real.pi) • f 0) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro r hr
      rw [integral_smul, angularIntegral_eq_circleAverage, hmean r hr]
    _ = (∫ r in Ioc 0 R, r) • ((2 * Real.pi) • f 0) := integral_smul_const _ _
    _ = (R ^ 2 / 2) • ((2 * Real.pi) • f 0) := by
      congr 1
      rw [← intervalIntegral.integral_of_le hR.le]
      simp [integral_id]
    _ = _ := by rw [smul_smul]; congr 1; ring

/-- Translation uses Lebesgue invariance; no pushforward is mistaken for a new measure. -/
theorem integral_closedBall_translate (f : ℂ → ℂ) (c : ℂ) (R : ℝ) :
    (∫ z in closedBall (0 : ℂ) R, f (z + c)) = ∫ z in closedBall c R, f z := by
  classical
  calc
    _ = ∫ z, (closedBall (0 : ℂ) R).indicator (fun w => f (w + c)) z :=
      (integral_indicator measurableSet_closedBall).symm
    _ = ∫ z, (closedBall c R).indicator f (z + c) := by
      apply integral_congr_ae
      filter_upwards [] with z
      simp [Set.indicator, mem_closedBall, dist_eq_norm]
    _ = ∫ z, (closedBall c R).indicator f z := integral_add_right_eq_self _ c
    _ = _ := integral_indicator measurableSet_closedBall

/-- The exact area mean on a disk of arbitrary center. -/
theorem integral_closedBall {f : ℂ → ℂ} {c : ℂ} {R : ℝ} (hR : 0 < R)
    (hf : DifferentiableOn ℂ f (closedBall c R)) :
    (∫ z in closedBall c R, f z) = (Real.pi * R ^ 2) • f c := by
  have hc : DifferentiableOn ℂ (fun z : ℂ => z + c) (closedBall 0 R) := by fun_prop
  have hg : DifferentiableOn ℂ (fun z => f (z + c)) (closedBall 0 R) :=
    hf.comp hc (by intro z hz; simpa [mem_closedBall, dist_eq_norm] using hz)
  rw [← integral_closedBall_translate]
  simpa only [zero_add] using integral_closedBall_zero hR hg

/-- Both quantities used by integral domination are genuinely integrable on the disk. -/
theorem square_integrable {f : ℂ → ℂ} {c : ℂ} {R : ℝ}
    (hf : DifferentiableOn ℂ f (closedBall c R)) :
    IntegrableOn (fun z => f z * f z) (closedBall c R) ∧
      IntegrableOn (fun z => ‖f z‖ ^ 2) (closedBall c R) :=
  ⟨(hf.continuousOn.mul hf.continuousOn).integrableOn_compact (isCompact_closedBall c R),
    (hf.continuousOn.norm.pow 2).integrableOn_compact (isCompact_closedBall c R)⟩

/-- Apply the area mean to the COMPLEX square, then dominate its integral by its norm. -/
theorem norm_sq_le_areaIntegral {f : ℂ → ℂ} {c : ℂ} {R : ℝ} (hR : 0 < R)
    (hf : DifferentiableOn ℂ f (closedBall c R)) :
    (Real.pi * R ^ 2) * ‖f c‖ ^ 2 ≤ ∫ z in closedBall c R, ‖f z‖ ^ 2 := by
  have hi := square_integrable hf
  have h := norm_integral_le_of_norm_le hi.2
    (Eventually.of_forall (fun z => (by simp only [norm_mul, pow_two] :
      ‖f z * f z‖ ≤ ‖f z‖ ^ 2)))
  rw [integral_closedBall hR (hf.mul hf), norm_smul,
    Real.norm_eq_abs, abs_of_pos (mul_pos Real.pi_pos (sq_pos_of_pos hR)),
    norm_mul, ← pow_two] at h
  exact h

/-- The coefficient is explicitly the reciprocal disk area, with positive radius retained. -/
theorem norm_sq_le_normalized_areaIntegral {f : ℂ → ℂ} {c : ℂ} {R : ℝ} (hR : 0 < R)
    (hf : DifferentiableOn ℂ f (closedBall c R)) :
    ‖f c‖ ^ 2 ≤ (Real.pi * R ^ 2)⁻¹ * (∫ z in closedBall c R, ‖f z‖ ^ 2) := by
  have hp : 0 < Real.pi * R ^ 2 := mul_pos Real.pi_pos (sq_pos_of_pos hR)
  have h := mul_le_mul_of_nonneg_left (norm_sq_le_areaIntegral hR hf) (inv_nonneg.mpr hp.le)
  simpa only [← mul_assoc, inv_mul_cancel₀ hp.ne', one_mul] using h

/-- Bind the primitive to the existing contained-disk window and actual holomorphic section. -/
theorem window_section_area_bound {X : Domain} (W : CircleWindow X)
    (f : HolomorphicSection X) :
    (Real.pi * W.radius ^ 2) * ‖(f : Section X) W.centerPoint‖ ^ 2 ≤
      ∫ z in closedBall W.center W.radius, ‖ambientRepresentative X (f : Section X) z‖ ^ 2 := by
  have hf := (ambientRepresentative_differentiableOn X f).mono W.closedBall_subset
  have h := norm_sq_le_areaIntegral W.radius_pos hf
  simpa only [ambientRepresentative_apply X (f : Section X) W.center W.centerPoint.2] using h

/-- The historical identity-bundle section is the input, not a newly supplied scalar function. -/
theorem window_bundleSection_area_bound {ι : Type*} {D : IndexedDomainCover ι}
    (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) :
    (Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2 ≤
      ∫ z in closedBall W.center W.radius, ‖ambientRepresentative D.X s.value z‖ ^ 2 :=
  window_section_area_bound W (identitySymbol hOpen s)

namespace Fixtures

/-- Area mean retains the imaginary part; it is not a real-valued averaging surrogate. -/
theorem imaginary_constant_mean {c : ℂ} {R : ℝ} (hR : 0 < R) :
    (∫ _z in closedBall c R, Complex.I) = (Real.pi * R ^ 2) • Complex.I :=
  integral_closedBall hR (by fun_prop)

/-- A holomorphic square can have zero mean without being a nonnegative square. -/
theorem coordinate_square_mean_zero {R : ℝ} (hR : 0 < R) :
    (∫ z in closedBall (0 : ℂ) R, z * z) = 0 := by
  simpa using integral_closedBall_zero hR
    (show DifferentiableOn ℂ (fun z : ℂ => z * z) (closedBall 0 R) from by fun_prop)

/-- The complex square used in the proof is not the norm square. -/
theorem complex_square_ne_norm_square :
    Complex.I * Complex.I ≠ (‖Complex.I‖ ^ 2 : ℂ) := by norm_num

/-- Dropping positive radius makes the claimed normalized estimate false for the unit function. -/
theorem zero_radius_not_normalized :
    ¬ (‖(1 : ℂ)‖ ^ 2 ≤ (Real.pi * (0 : ℝ) ^ 2)⁻¹ *
      (∫ _z in closedBall (0 : ℂ) 0, ‖(1 : ℂ)‖ ^ 2)) := by simp

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicAreaMean
```
