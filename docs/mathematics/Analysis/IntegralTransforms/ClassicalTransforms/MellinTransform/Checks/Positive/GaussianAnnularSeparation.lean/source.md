# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianAnnularSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b19e822cdecd5f3ca14528844b70317e5e1c9c22` · SHA-256 `40aa3728724a8c6582f3701e6f44c7e8fa5eaad042b42cdf16bad51c88481d36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual annular quotient consumers and proved log/phase boundary controls.
OpenAI/Mathlib Apache-2.0 notices and individual author credits remain in the imported source. -/
import GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation
namespace GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation.Checks
noncomputable section
open scoped SchwartzMap FourierTransform
open MeasureTheory
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow
open GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation

noncomputable def multiplicativeWindow (_ : Unit) (x : ℝ) : ℂ :=
  if |Real.log x|≤1 then 1 else 0

lemma multiplicativeWindow_log_support (i : Unit) (y : ℝ)
    (hy : multiplicativeWindow i (Real.exp y)≠0) : |y|≤1 := by
  by_contra h
  simp [multiplicativeWindow,h] at hy

lemma actual_positive_quotient :
    Real.exp (∑i : Option Unit,gaussianSlotSlope i*
      gaussianSlotPoint (3/4) (fun _=>Real.exp (1/2)) i)=
      (3/4)/Real.exp (1/2) := by
  simpa using gaussianSlot_argument (3/4) (by norm_num) (fun _ : Unit=>Real.exp (1/2))
    (fun _=>Real.exp_pos _)

/-- A real nonzero annular parameter and a nontrivial positive multiplicative factor.
The same actually constructed cutoff supplies the integral and all density moments. -/
theorem actual_single_slot :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      (Integrable (fun t : ℝ=>rootWeight (logPhaseTwist gaussianFixedWindow t) (3/4)*
        logPhase (-t) (1/2)*gaussianJointDensity V hV (Real.exp (1/2)) t)) ∧
      (dyadicAnnulus (3/4)*gaussianMellinProfile (3/4)=
        ∫t : ℝ,rootWeight (logPhaseTwist gaussianFixedWindow t) (3/4)*
          logPhase (-t) (1/2)*gaussianJointDensity V hV (Real.exp (1/2)) t) ∧
      (∀A : ℝ,∀J : ℕ,∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
        Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
        (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-A)) := by
  obtain ⟨V,hV,hsep,hbound⟩ := gaussian_selected_slot_family multiplicativeWindow (fun _=>1)
    (fun _=>by norm_num) multiplicativeWindow_log_support
  have h := hsep (Real.exp (1/2)) (Real.exp_pos _) (3/4) (by norm_num)
    (fun _=>Real.exp (1/2)) (fun _=>Real.exp_pos _)
  have hratio : Real.exp (1/2)*(3/4)/Real.exp (1/2)=(3/4:ℝ) := by
    field_simp
  norm_num [multiplicativeWindow,hratio] at h
  exact ⟨V,hV,h.1,h.2,hbound⟩

/-- Empty auxiliary families still include the annulus slot, with an actual produced cutoff. -/
theorem actual_empty_slots :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      ∀R x : ℝ,0<R→0<x→
        Integrable (fun t : ℝ=>rootWeight (logPhaseTwist gaussianFixedWindow t) x*gaussianJointDensity V hV R t) ∧
        dyadicAnnulus x*gaussianMellinProfile (R*x)=
          ∫t : ℝ,rootWeight (logPhaseTwist gaussianFixedWindow t) x*gaussianJointDensity V hV R t := by
  obtain ⟨V,hV,hsep,_⟩ := gaussian_selected_slot_family (ι:=Empty) (fun i=>nomatch i)
    (fun i=>nomatch i) (fun i=>nomatch i) (fun i=>nomatch i)
  refine ⟨V,hV,?_⟩
  intro R x hR hx
  simpa using hsep R hR x hx (fun i=>nomatch i) (fun i=>nomatch i)

lemma actual_twist_root_normalization (t : ℝ) :
    rootWeight (logPhaseTwist gaussianFixedWindow t) (3/4)=
      dyadicAnnulus (3/4)*logPhase t (Real.log (3/4)) :=
  gaussianFixedWindow_rootWeight_twist t (3/4) (by norm_num)

lemma actual_twist_compact (t : ℝ) : HasCompactSupport (logPhaseTwist gaussianFixedWindow t) :=
  gaussianFixedWindow_twist_compact t

lemma actual_positive_phase_quarter : logPhase (1/4) 1=Complex.I := by
  unfold logPhase
  have he : (((2*Real.pi*(1/4)*1 : ℝ):ℂ)*Complex.I)=(Real.pi:ℂ)/2*Complex.I := by
    push_cast
    ring
  rw [he,Complex.exp_pi_div_two_mul_I]

lemma actual_negative_phase_quarter : logPhase (-(1/4)) 1= -Complex.I := by
  unfold logPhase
  have he : (((2*Real.pi*(-(1/4))*1 : ℝ):ℂ)*Complex.I)= -(Real.pi:ℂ)/2*Complex.I := by
    push_cast
    ring
  rw [he,Complex.exp_neg_pi_div_two_mul_I]

/-- Omitting the negative phase changes an actual scalar phase value. -/
theorem actual_phase_sign_differs : logPhase (1/4) 1≠logPhase (-(1/4)) 1 := by
  rw [actual_positive_phase_quarter,actual_negative_phase_quarter]
  intro h
  have hi := congrArg Complex.im h
  norm_num at hi

/-- The positive-x auxiliary argument really fails at x=0 for an empty auxiliary family. -/
theorem actual_zero_argument_false :
    Real.exp (∑i : Option Empty,gaussianSlotSlope i*gaussianSlotPoint 0 (fun j=>nomatch j) i)≠
      (0:ℝ)/(∏j : Empty,(fun k : Empty=>nomatch k) j) := by
  norm_num [Fintype.sum_option,gaussianSlotSlope,gaussianSlotPoint]

/-- The positive-q auxiliary argument also really fails at a zero denominator. -/
theorem actual_zero_denominator_false :
    Real.exp (∑i : Option Unit,gaussianSlotSlope i*gaussianSlotPoint 1 (fun _=>0) i)≠
      (1:ℝ)/(∏_i : Unit,(0:ℝ)) := by
  norm_num [Fintype.sum_option,gaussianSlotSlope,gaussianSlotPoint]

/-- The x=0 auxiliary failure is not a failure of the full annulus-weighted identity. -/
theorem actual_zero_annulus_identity (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) :
    dyadicAnnulus 0*gaussianMellinProfile (R*0)=
      ∫t : ℝ,rootWeight (logPhaseTwist gaussianFixedWindow t) 0*gaussianJointDensity V hV R t := by
  simp [dyadicAnnulus_small 0 (by norm_num),rootWeight]

end
end GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation.Checks
```
