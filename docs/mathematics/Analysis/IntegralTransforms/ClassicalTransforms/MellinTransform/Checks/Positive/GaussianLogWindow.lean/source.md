# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianLogWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `538779e316563b34c0f6070af3d5afe293d26067` · SHA-256 `fd159e0dfc762dba6a3db7652004e6147afdd71f9e10bb7ee043a79ead83273d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual compact-window/density consumers and a proved missing-support-box obstruction.
OpenAI/Mathlib Apache-2.0 notices and credits remain retained in the imported sources. -/
import GRWTSK.Analysis.MellinTransform.GaussianLogWindow
import GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
namespace GRWTSK.Analysis.MellinTransform.GaussianLogWindow.Checks
noncomputable section
open scoped ContDiff FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow

noncomputable def exampleWindow : SchwartzMap ℝ ℂ := gaussianDyadicSchwartz 1 (by norm_num) 0
lemma exampleWindow_compact : HasCompactSupport (exampleWindow:ℝ→ℂ) :=
  gaussianDyadicProfile_compact 1 0

theorem actual_gaussian_nonzero : gaussianDyadicProfile 1 0 (3/4) ≠ 0 := by
  have ha : dyadicAnnulus (3/4) ≠ 0 := by
    have hpos : 0 < (dyadicAnnulus (3/4)).re := by
      change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
      rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
      have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
      linarith
    intro hz
    rw [hz, Complex.zero_re] at hpos
    norm_num at hpos
  have hc : gaussianMellinCoefficient ≠ 0 := by
    intro hz
    have h := gaussianMellinCoefficient_normalizes
    rw [hz,zero_mul] at h
    norm_num at h
  have hp : gaussianMellinProfile (3/4) ≠ 0 := by
    change gaussianMellinCoefficient * Complex.exp _ ≠ 0
    exact mul_ne_zero hc (Complex.exp_ne_zero _)
  unfold gaussianDyadicProfile
  norm_num only [pow_zero,one_mul,div_one]
  exact div_ne_zero (mul_ne_zero ha hp)
    (Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 3/4)).ne')


lemma exampleWindow_nonzero : exampleWindow (3/4)≠0 := actual_gaussian_nonzero

theorem actual_zero_box_false : ¬ (∀s : ℝ,exampleWindow s≠0→|s|≤0) := by
  intro h
  have hh := h (3/4) exampleWindow_nonzero
  norm_num at hh

theorem actual_box_produced : ∃L : ℝ,0<L ∧ ∀s : ℝ,exampleWindow s≠0→|s|≤L :=
  gaussianLogWindow_support_box exampleWindow exampleWindow_compact

theorem actual_zero_scale_window_compact :
    HasCompactSupport (gaussianLogWindow exampleWindow exampleWindow_compact 0:ℝ→ℂ) :=
  gaussianLogWindow_compact exampleWindow exampleWindow_compact 0

theorem actual_zero_scale_density_integrable :
    Integrable (fun t : ℝ=>(1+‖t‖)^2*‖gaussianJointDensity exampleWindow exampleWindow_compact 0 t‖) :=
  gaussianJointDensity_moment_integrable exampleWindow exampleWindow_compact 0 2

theorem actual_positive_profile_integrable :
    Integrable (fun s : ℝ=>exampleWindow s*gaussianMellinProfile (1*Real.exp s)) :=
  gaussianLogWindow_positive_integrable exampleWindow exampleWindow_compact 1 (by norm_num)

theorem actual_density_integral (t : ℝ) : gaussianJointDensity exampleWindow exampleWindow_compact 1 t=
    ∫s : ℝ,Complex.exp (((-2*Real.pi*inner ℝ s t:ℝ):ℂ)*Complex.I)*
      (exampleWindow s*gaussianMellinProfile (1*Real.exp s)) :=
  gaussianJointDensity_integral exampleWindow exampleWindow_compact 1 (by norm_num) t

theorem actual_moment_bound : ∃C : ℝ,0<C ∧
    Integrable (fun t : ℝ=>(1+‖t‖)^2*‖gaussianJointDensity exampleWindow exampleWindow_compact 1 t‖) ∧
    (∫t : ℝ,(1+‖t‖)^2*‖gaussianJointDensity exampleWindow exampleWindow_compact 1 t‖)≤C := by
  obtain ⟨C,hC,h⟩ := gaussianJointDensity_moment exampleWindow exampleWindow_compact 1 2
  refine ⟨C,hC,?_⟩
  simpa only [Real.one_rpow,mul_one] using h 1 (by norm_num)

theorem all_real_power_moment (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ)) (a : ℝ) (J : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
      Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
      (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-a) :=
  gaussianJointDensity_moment V hV a J

end
end GRWTSK.Analysis.MellinTransform.GaussianLogWindow.Checks
```
