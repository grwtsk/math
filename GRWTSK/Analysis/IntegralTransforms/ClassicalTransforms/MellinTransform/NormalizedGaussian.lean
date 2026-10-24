/- Exact normalized OpenAI Gaussian profile and a new forward/inverse consumer.
Source project authors: OpenAI, Apache-2.0; pinned openai/math commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/Detector/GaussianMellin.lean,
SHA-256 0526d85d63bcee8a85cb945c231af1263839ca0808c6d714132d0781b2618a04.
The profile definition and final inverse statement retain the exact source normalization.
New proof reuses the accepted general logarithmic Gaussian and Mathlib Mellin inversion.
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved. Apache 2.0.
Copyright (c) 2024 Lawrence Wu. All rights reserved. Apache 2.0.
Copyright (c) 2023 David Loeffler. All rights reserved. Apache 2.0.
Mathlib retains its Gaussian/Mellin authorship and LICENSE terms.
Mathematical direction grwtsk contributors; formal implementation OpenAI Codex.
Released under Apache-2.0. No arithmetic signal or zero-free claim.
-/
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.LogarithmicGaussian

namespace GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
noncomputable section
open MeasureTheory Set Filter
open scoped Topology
open LogarithmicGaussian

noncomputable def gaussianMellinProfile (y : ℝ) : ℂ :=
  ((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)*
    Complex.exp (-(Complex.log (y:ℂ))^2/4)

noncomputable def gaussianMellinCoefficient : ℂ :=
  ((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)

lemma quarter_root :
    ((Real.pi : ℂ) / (1/4 : ℂ)) ^ (1/2 : ℂ) =
      2 * (Real.pi : ℂ) ^ (1/2 : ℂ) := by
  have htwo : (4 : ℂ) ^ (1/2 : ℂ) = 2 := by
    convert Complex.sq_cpow_two_inv (x := (2 : ℂ)) (by norm_num) using 1; norm_num
  rw [show (Real.pi : ℂ) / (1/4 : ℂ) = ((4 : ℝ) : ℂ) * (Real.pi : ℂ) by push_cast; ring]
  rw [Complex.mul_cpow_ofReal_nonneg (by norm_num : (0 : ℝ) ≤ 4) Real.pi_pos.le]
  norm_num only [Complex.ofReal_ofNat]
  rw [htwo]

lemma gaussianMellinCoefficient_normalizes :
    gaussianMellinCoefficient * ((Real.pi : ℂ) / (1/4 : ℂ)) ^ (1/2 : ℂ) = 1 := by
  have hp : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  have hsq : ((Real.pi : ℂ) ^ (1/2 : ℂ)) ^ 2 = (Real.pi : ℂ) := by
    simp
  rw [quarter_root]
  calc
    gaussianMellinCoefficient * (2 * (Real.pi : ℂ) ^ (1/2 : ℂ)) =
        ((Real.pi : ℂ) ^ (1/2 : ℂ)) ^ 2 / (Real.pi : ℂ) := by
      unfold gaussianMellinCoefficient
      push_cast
      field_simp
    _ = 1 := by rw [hsq, div_self hp]

lemma gaussianMellinProfile_eq_quarter {x : ℝ} (hx : 0 < x) :
    gaussianMellinProfile x =
      gaussianMellinCoefficient • logarithmicGaussianWith (1/4 : ℂ) x := by
  unfold gaussianMellinProfile gaussianMellinCoefficient logarithmicGaussianWith
  rw [← Complex.ofReal_log hx.le]
  change _ * Complex.exp _ = _ * Complex.exp _
  congr 1
  congr 1
  ring

/-- Actual convergence at every complex Mellin coordinate, with all inputs proved. -/
theorem gaussianMellinProfile_convergent (s : ℂ) : MellinConvergent gaussianMellinProfile s := by
  have hbase := (logarithmicGaussianWith_convergent (b := (1/4 : ℂ)) (by norm_num) s).const_smul
    gaussianMellinCoefficient
  unfold MellinConvergent at *
  apply (integrableOn_congr_fun (fun x hx => ?_) measurableSet_Ioi).mpr hbase
  rw [gaussianMellinProfile_eq_quarter hx]

/-- The exact OpenAI detector normalization has forward Mellin transform exp(s^2). -/
theorem gaussianMellinProfile_mellin (s : ℂ) :
    mellin gaussianMellinProfile s = Complex.exp (s ^ 2) := by
  have heq : mellin gaussianMellinProfile s =
      mellin (fun x => gaussianMellinCoefficient • logarithmicGaussianWith (1/4 : ℂ) x) s := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    dsimp only
    rw [gaussianMellinProfile_eq_quarter hx]
  rw [heq, mellin_const_smul, logarithmicGaussianWith_mellin (by norm_num)]
  change gaussianMellinCoefficient * (_ * Complex.exp _) = _
  rw [← mul_assoc, gaussianMellinCoefficient_normalizes]
  norm_num

lemma gaussian_transform_vertical_norm (σ v : ℝ) :
    ‖Complex.exp (((σ : ℂ) + v * Complex.I) ^ 2)‖ =
      Real.exp (σ ^ 2) * Real.exp (-(v ^ 2)) := by
  rw [Complex.norm_exp]
  have hre : (((σ : ℂ) + v * Complex.I) ^ 2).re = σ ^ 2 - v ^ 2 := by
    simp [pow_two]
  rw [hre, sub_eq_add_neg, Real.exp_add]

lemma gaussian_transform_vertical_integrable (σ : ℝ) :
    Complex.VerticalIntegrable (fun s : ℂ => Complex.exp (s ^ 2)) σ := by
  have hg : Integrable (fun v : ℝ => Real.exp (σ ^ 2) * Real.exp (-(v ^ 2))) := by
    simpa using (integrable_exp_neg_mul_sq (b := 1) (by norm_num)).const_mul (Real.exp (σ ^ 2))
  exact hg.mono' (by fun_prop) (ae_of_all _ (fun v => (gaussian_transform_vertical_norm σ v).le))

lemma gaussian_transform_vertical_continuous (σ : ℝ) :
    Continuous (fun v : ℝ => Complex.exp (((σ : ℂ) + v * Complex.I) ^ 2)) := by
  fun_prop

lemma gaussianMellinProfile_continuousAt {x : ℝ} (hx : 0 < x) :
    ContinuousAt gaussianMellinProfile x := by
  have hl : ContinuousAt (fun y : ℝ => (Real.log y : ℂ)) x :=
    Complex.continuous_ofReal.continuousAt.comp (Real.continuousAt_log (ne_of_gt hx))
  have hc : ContinuousAt (fun y : ℝ =>
      gaussianMellinCoefficient • logarithmicGaussianWith (1/4 : ℂ) y) x := by
    unfold logarithmicGaussianWith
    exact (continuousAt_const : ContinuousAt (fun _ : ℝ => gaussianMellinCoefficient) x).smul
      (((continuousAt_const : ContinuousAt (fun _ : ℝ => -(1/4 : ℂ)) x).mul (hl.pow 2)).cexp)
  apply hc.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hx] with y hy
  exact gaussianMellinProfile_eq_quarter hy

/-- Every real contour is valid for the actual normalized profile, at positive x. -/
theorem gaussianMellinProfile_inverse (σ : ℝ) {x : ℝ} (hx : 0 < x) :
    mellinInv σ (fun s : ℂ => Complex.exp (s ^ 2)) x = gaussianMellinProfile x := by
  have hf : mellin gaussianMellinProfile = fun s : ℂ => Complex.exp (s ^ 2) :=
    funext gaussianMellinProfile_mellin
  rw [← hf]
  exact mellinInv_mellin_eq σ gaussianMellinProfile hx
    (gaussianMellinProfile_convergent (σ : ℂ))
    (by simpa only [hf] using gaussian_transform_vertical_integrable σ)
    (gaussianMellinProfile_continuousAt hx)

/-- Exact upstream inverse integral statement, recovered from the forward transform. -/
theorem gaussianMellin_inversion (y : ℝ) (hy : 0<y) (σ : ℝ) :
    ((1/(2*Real.pi):ℝ):ℂ)*
      (∫v : ℝ,(y:ℂ)^(-((σ:ℂ)+v*Complex.I))*Complex.exp (((σ:ℂ)+v*Complex.I)^2))=
      gaussianMellinProfile y := by
  simpa [mellinInv, smul_eq_mul] using gaussianMellinProfile_inverse σ hy

end
end GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
