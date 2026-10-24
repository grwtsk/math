/- Actual finite-family, empty-family and zero-product consumers; proved missing-active obstruction.
OpenAI and Mathlib Apache-2.0 notices and individual credits remain in the imported sources. -/
import GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation
namespace GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation.Checks
noncomputable section
open scoped ContDiff SchwartzMap FourierTransform
open MeasureTheory
open GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactCutoff
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow

lemma actual_cutoff_center : schwartzCutoff 0 0=1 :=
  schwartzCutoff_one 0 0 (by norm_num) (by norm_num)

lemma actual_cutoff_boundary : schwartzCutoff 0 1=0 :=
  compactCutoff_zero_right 0 1 (by norm_num)

lemma actual_negative_radius_compact : HasCompactSupport (schwartzCutoff (-2):ℝ→ℂ) :=
  schwartzCutoff_compact (-2)

noncomputable def boxWindow (_ : Bool) (s : ℝ) : ℂ := if |s|≤1 then 1 else 0
noncomputable def boxWeight (i : Bool) : ℝ := if i then 2 else -1
noncomputable def boxPoint (i : Bool) : ℝ := if i then 1/2 else 1/4

lemma boxWindow_support (i : Bool) (s : ℝ) (hs : boxWindow i s≠0) : |s|≤1 := by
  by_contra h
  simp [boxWindow,h] at hs

/-- Actual bounded factors need no individual smoothness; the common cutoff is chosen first. -/
theorem actual_two_factor_family :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      (∀R : ℝ,0<R→∀y : Bool→ℝ,
        Integrable (fun t : ℝ=>(∏i : Bool,boxWindow i (y i)*logPhase t (boxWeight i*y i))*gaussianJointDensity V hV R t) ∧
        (∏i : Bool,boxWindow i (y i))*gaussianMellinProfile (R*Real.exp (∑i : Bool,boxWeight i*y i))=
          ∫t : ℝ,(∏i : Bool,boxWindow i (y i)*logPhase t (boxWeight i*y i))*gaussianJointDensity V hV R t) ∧
      (∀A : ℝ,∀J : ℕ,∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
        Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
        (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-A)) :=
  gaussian_coupled_family boxWindow boxWeight (fun _=>1) (fun _=>by norm_num) boxWindow_support

/-- A concrete nonzero two-factor phase identity with positive and negative weights. -/
theorem actual_two_factor_integral (R : ℝ) (hR : 0<R) :
    gaussianMellinProfile (R*Real.exp (3/4))=
      ∫t : ℝ,(logPhase t 1*logPhase t (-(1/4)))*
        gaussianJointDensity (schwartzCutoff 3) (schwartzCutoff_compact 3) R t := by
  have h := gaussian_coupled_separation boxWindow boxWeight boxPoint (schwartzCutoff 3)
    (schwartzCutoff_compact 3) R hR (by
      intro _
      apply schwartzCutoff_one 3 _ (by norm_num)
      norm_num [boxWeight,boxPoint,Fintype.sum_bool])
  norm_num [boxWindow,boxWeight,boxPoint,Fintype.sum_bool,Fintype.prod_bool] at h
  exact h

/-- An empty family has product one and phase zero, so its formula is genuine inverse evaluation. -/
theorem actual_empty_family (R : ℝ) (hR : 0<R) :
    gaussianMellinProfile R=
      ∫t : ℝ,gaussianJointDensity (schwartzCutoff 0) (schwartzCutoff_compact 0) R t := by
  have h := gaussian_coupled_separation (ι:=Empty) (fun i=>nomatch i) (fun i=>nomatch i)
    (fun i=>nomatch i) (schwartzCutoff 0) (schwartzCutoff_compact 0) R hR (by
      intro _
      simpa using actual_cutoff_center)
  simpa using h

lemma zero_cutoff_compact : HasCompactSupport ((0:SchwartzMap ℝ ℂ):ℝ→ℂ) := by
  change HasCompactSupport (fun _ : ℝ=>(0:ℂ))
  exact HasCompactSupport.zero

/-- Zero products impose no active-cutoff requirement, even for the zero cutoff. -/
theorem actual_zero_product (R : ℝ) (hR : 0<R) :
    (∏_i : Unit,(0:ℂ))*gaussianMellinProfile (R*Real.exp (∑_i : Unit,(0:ℝ)*0))=
      ∫t : ℝ,(∏_i : Unit,(0:ℂ)*logPhase t ((0:ℝ)*0))*
        gaussianJointDensity (0:SchwartzMap ℝ ℂ) zero_cutoff_compact R t :=
  gaussian_coupled_separation (ι:=Unit) (fun _ _=>(0:ℂ)) (fun _=>0)
    (fun _=>0) (0:SchwartzMap ℝ ℂ) zero_cutoff_compact R hR (by simp)

lemma zero_cutoff_density (R t : ℝ) :
    gaussianJointDensity (0:SchwartzMap ℝ ℂ) zero_cutoff_compact R t=0 := by
  have hz : gaussianLogWindow (0:SchwartzMap ℝ ℂ) zero_cutoff_compact R=0 := by
    ext s
    simp
  unfold gaussianJointDensity
  rw [hz]
  simp

lemma profile_one_ne_zero : gaussianMellinProfile 1≠0 := by
  have hc : gaussianMellinCoefficient≠0 := by
    intro h
    have hn := gaussianMellinCoefficient_normalizes
    rw [h,zero_mul] at hn
    norm_num at hn
  change gaussianMellinCoefficient*Complex.exp (-(Complex.log (1:ℂ))^2/4)≠0
  simpa only [Complex.log_one,pow_two,mul_zero,neg_zero,zero_div,Complex.exp_zero,mul_one] using hc

/-- Actual inactive data: every factor is one, but the zero cutoff loses the nonzero profile. -/
theorem actual_missing_active_false :
    gaussianMellinProfile 1≠
      ∫t : ℝ,(∏_i : Unit,(1:ℂ)*logPhase t 0)*
        gaussianJointDensity (0:SchwartzMap ℝ ℂ) zero_cutoff_compact 1 t := by
  simpa only [zero_cutoff_density,mul_zero,integral_zero] using profile_one_ne_zero

lemma actual_zero_cutoff_not_active :
    ¬ ((∏_i : Unit,(1:ℂ))≠0→(0:SchwartzMap ℝ ℂ) (∑_i : Unit,(0:ℝ)*0)=1) := by
  simp

/-- The phase-product identity also holds for empty products. -/
lemma actual_empty_phase (t : ℝ) : logPhase t (∑_i : Empty,(0:ℝ))=∏_i : Empty,logPhase t 0 := by
  simp

end
end GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation.Checks
