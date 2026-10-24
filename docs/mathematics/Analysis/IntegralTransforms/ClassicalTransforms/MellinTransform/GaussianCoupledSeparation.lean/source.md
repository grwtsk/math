# Complete source: GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1063713a1f78fffd9290cff787affd647b9d7728` · SHA-256 `b8d8584bafc3c1d1be3e3d630f979a97fe90812b34e96988ff34444e309596b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual finite-family Gaussian separation from a compact active cutoff.
Adapted from OpenAI math, source project author OpenAI, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianCoupled.lean,
SHA256 21a6117120a386823e2f596b2b5e2e52e7cf4ffebddffac10de8ed320ba9cb5e;
lean/OAI/NumberTheory/DirichletL/Mellin/LogProfiles.lean,
SHA256 ff8735e421a2ee659df15272704206f2d114d7e2a849e8a755d545508f4038be.
Mathlib Analysis/Distribution/SchwartzSpace/Fourier.lean:
Copyright (c) 2024 Sébastien Gouëzel. All rights reserved.
Authors: Sébastien Gouëzel, Moritz Doll.
Mathlib Analysis/Fourier/FourierTransform.lean:
Copyright (c) 2023 David Loeffler. All rights reserved. Author: David Loeffler.
Mathlib Analysis/Fourier/Notation.lean:
Copyright (c) 2025 Moritz Doll. All rights reserved. Author: Moritz Doll.
Released under Apache-2.0 as described in LICENSE. Imported individual credit is retained.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
No ideal, Hecke/calibration, completed physical-row or RH theorem is inferred.
-/
import GRWTSK.Analysis.Calculus.CompactCutoff
import GRWTSK.Analysis.MellinTransform.GaussianLogWindow

namespace GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation
noncomputable section
open scoped ContDiff FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.Calculus.CompactCutoff
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow

/-- The positive inverse-Fourier phase, with the exact Mathlib 2*pi normalization. -/
noncomputable def logPhase (t y : ℝ) : ℂ :=
  Complex.exp (((2*Real.pi*t*y : ℝ) : ℂ)*Complex.I)

lemma logPhase_add (t u v : ℝ) : logPhase t (u+v)=logPhase t u*logPhase t v := by
  unfold logPhase
  convert Complex.exp_add _ _ using 1
  push_cast
  ring_nf

@[simp] lemma logPhase_zero (t : ℝ) : logPhase t 0=1 := by simp [logPhase]

@[simp] lemma logPhase_norm (t y : ℝ) : ‖logPhase t y‖=1 := by
  simp [logPhase,Complex.norm_exp]

lemma logPhase_sum {ι : Type*} [DecidableEq ι] (s : Finset ι) (t : ℝ) (z : ι→ℝ) :
    logPhase t (∑i∈s,z i)=∏i∈s,logPhase t (z i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert i s hi ih => simp [hi,logPhase_add,ih]

lemma coupled_phase_product {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (a y : ι→ℝ) (t : ℝ) :
    (∏i : ι,W i (y i)*logPhase t (a i*y i))=
      (∏i : ι,W i (y i))*logPhase t (∑i : ι,a i*y i) := by
  classical
  rw [logPhase_sum,Finset.prod_mul_distrib]

/-- Genuine inverse Fourier evaluation for the actual compact Gaussian logarithmic window. -/
lemma gaussianLogWindow_inversion (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R) (x : ℝ) :
    V x*gaussianMellinProfile (R*Real.exp x)=
      ∫t : ℝ,logPhase t x*gaussianJointDensity V hV R t := by
  have hinv : (𝓕⁻ (𝓕 (gaussianLogWindow V hV R)) : SchwartzMap ℝ ℂ)=
      gaussianLogWindow V hV R := by simp
  have h := congrArg (fun f : SchwartzMap ℝ ℂ=>f x) hinv
  rw [SchwartzMap.fourierInv_coe,Real.fourierInv_eq'] at h
  rw [gaussianLogWindow_apply_positive V hV R hR] at h
  simpa only [smul_eq_mul,Real.inner_apply,logPhase,gaussianJointDensity,mul_assoc] using h.symm

/-- The actual separation integrand is integrable for every real R, including zero products. -/
lemma gaussian_coupled_integrable {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (a y : ι→ℝ) (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) :
    Integrable (fun t : ℝ=>(∏i : ι,W i (y i)*logPhase t (a i*y i))*
      gaussianJointDensity V hV R t) := by
  have hp : Integrable (fun t : ℝ=>logPhase t (∑i : ι,a i*y i)*
      gaussianJointDensity V hV R t) :=
    (gaussianJointDensity V hV R).integrable.bdd_mul
      (by unfold logPhase; fun_prop) (ae_of_all _ (fun t=>(logPhase_norm t _).le))
  simpa only [coupled_phase_product,mul_assoc] using hp.const_mul (∏i : ι,W i (y i))

/-- Actual separation. The active condition is needed only when the finite product is nonzero. -/
theorem gaussian_coupled_separation {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (a y : ι→ℝ) (V : SchwartzMap ℝ ℂ)
    (hV : HasCompactSupport (V:ℝ→ℂ)) (R : ℝ) (hR : 0<R)
    (hactive : (∏i : ι,W i (y i))≠0→V (∑i : ι,a i*y i)=1) :
    (∏i : ι,W i (y i))*gaussianMellinProfile (R*Real.exp (∑i : ι,a i*y i))=
      ∫t : ℝ,(∏i : ι,W i (y i)*logPhase t (a i*y i))*gaussianJointDensity V hV R t := by
  classical
  have hinv := gaussianLogWindow_inversion V hV R hR (∑i : ι,a i*y i)
  by_cases hp : (∏i : ι,W i (y i))=0
  · simp only [coupled_phase_product,hp,zero_mul,integral_zero]
  · rw [hactive hp,one_mul] at hinv
    simp only [coupled_phase_product,mul_assoc,integral_const_mul,←hinv]

/-- One actual Schwartz cutoff is chosen before every positive R and every evaluation tuple.
The same actual density also supplies all natural Fourier moments, with the constant before R. -/
theorem gaussian_coupled_family {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (a M : ι→ℝ) (hM : ∀i,0≤M i)
    (hwindow : ∀i y,W i y≠0→|y|≤M i) :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      (∀R : ℝ,0<R→∀y : ι→ℝ,
        Integrable (fun t : ℝ=>(∏i : ι,W i (y i)*logPhase t (a i*y i))*gaussianJointDensity V hV R t) ∧
        (∏i : ι,W i (y i))*gaussianMellinProfile (R*Real.exp (∑i : ι,a i*y i))=
          ∫t : ℝ,(∏i : ι,W i (y i)*logPhase t (a i*y i))*gaussianJointDensity V hV R t) ∧
      (∀A : ℝ,∀J : ℕ,∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
        Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
        (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-A)) := by
  classical
  let T := ∑i : ι,|a i| *M i
  have hT : 0≤T := Finset.sum_nonneg (fun i _=>mul_nonneg (abs_nonneg _) (hM i))
  let V := schwartzCutoff T
  have hV : HasCompactSupport (V:ℝ→ℂ) := schwartzCutoff_compact T
  refine ⟨V,hV,?_,fun A J=>gaussianJointDensity_moment V hV A J⟩
  intro R hR y
  refine ⟨gaussian_coupled_integrable W a y V hV R,gaussian_coupled_separation W a y V hV R hR ?_⟩
  exact coupled_cutoff_active W V a y M hwindow (fun s hs=>schwartzCutoff_one T s hT hs)

end
end GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation
```
