# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bilinear.Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d9285f6c1dd5688c7813c81af9ddc6f118f9e98` · SHA-256 `9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Sébastien Gouëzel, Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.FDeriv.Prod

#align_import analysis.calculus.fderiv.bilinear from "leanprover-community/mathlib"@"e3fb84046afd187b710170887195d50bada934ee"

/-!
# The derivative of bounded bilinear maps

For detailed documentation of the Fréchet derivative,
see the module docstring of `Analysis/Calculus/Fderiv/Basic.lean`.

This file contains the usual formulas (and existence assertions) for the derivative of
bounded bilinear maps.
-/


open Filter Asymptotics ContinuousLinearMap Set Metric
open Topology Classical NNReal Asymptotics ENNReal

noncomputable section

section

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]

variable {G' : Type*} [NormedAddCommGroup G'] [NormedSpace 𝕜 G']

variable {f f₀ f₁ g : E → F}

variable {f' f₀' f₁' g' : E →L[𝕜] F}

variable (e : E →L[𝕜] F)

variable {x : E}

variable {s t : Set E}

variable {L L₁ L₂ : Filter E}

section BilinearMap

/-! ### Derivative of a bounded bilinear map -/

variable {b : E × F → G} {u : Set (E × F)}

open NormedField

-- porting note: todo: rewrite/golf using analytic functions?
theorem IsBoundedBilinearMap.hasStrictFDerivAt (h : IsBoundedBilinearMap 𝕜 b) (p : E × F) :
    HasStrictFDerivAt b (h.deriv p) p := by
  simp only [HasStrictFDerivAt]
  simp only [← map_add_left_nhds_zero (p, p), isLittleO_map]
  set T := (E × F) × E × F
  calc
    _ = fun x ↦ h.deriv (x.1 - x.2) (x.2.1, x.1.2) := by
      ext ⟨⟨x₁, y₁⟩, ⟨x₂, y₂⟩⟩
      rcases p with ⟨x, y⟩
      simp [h.add_left, h.add_right, h.deriv_apply, h.map_sub_left, h.map_sub_right]
      abel
    -- _ =O[𝓝 (0 : T)] fun x ↦ ‖x.1 - x.2‖ * ‖(x.2.1, x.1.2)‖ :=
    --     h.toContinuousLinearMap.deriv₂.isBoundedBilinearMap.isBigO_comp
    -- _ = o[𝓝 0] fun x ↦ ‖x.1 - x.2‖ * 1 := _
    _ =o[𝓝 (0 : T)] fun x ↦ x.1 - x.2 := by
      -- TODO : add 2 `calc` steps instead of the next 3 lines
      refine h.toContinuousLinearMap.deriv₂.isBoundedBilinearMap.isBigO_comp.trans_isLittleO ?_
      suffices : (fun x : T ↦ ‖x.1 - x.2‖ * ‖(x.2.1, x.1.2)‖) =o[𝓝 0] fun x ↦ ‖x.1 - x.2‖ * 1
      · simpa only [mul_one, isLittleO_norm_right] using this
      refine (isBigO_refl _ _).mul_isLittleO ((isLittleO_one_iff _).2 ?_)
      -- TODO: `continuity` fails
      exact (continuous_snd.fst.prod_mk continuous_fst.snd).norm.tendsto' _ _ (by simp)
    _ = _ := by simp [(· ∘ ·)]
#align is_bounded_bilinear_map.has_strict_fderiv_at IsBoundedBilinearMap.hasStrictFDerivAt

theorem IsBoundedBilinearMap.hasFDerivAt (h : IsBoundedBilinearMap 𝕜 b) (p : E × F) :
    HasFDerivAt b (h.deriv p) p :=
  (h.hasStrictFDerivAt p).hasFDerivAt
#align is_bounded_bilinear_map.has_fderiv_at IsBoundedBilinearMap.hasFDerivAt

theorem IsBoundedBilinearMap.hasFDerivWithinAt (h : IsBoundedBilinearMap 𝕜 b) (p : E × F) :
    HasFDerivWithinAt b (h.deriv p) u p :=
  (h.hasFDerivAt p).hasFDerivWithinAt
#align is_bounded_bilinear_map.has_fderiv_within_at IsBoundedBilinearMap.hasFDerivWithinAt

theorem IsBoundedBilinearMap.differentiableAt (h : IsBoundedBilinearMap 𝕜 b) (p : E × F) :
    DifferentiableAt 𝕜 b p :=
  (h.hasFDerivAt p).differentiableAt
#align is_bounded_bilinear_map.differentiable_at IsBoundedBilinearMap.differentiableAt

theorem IsBoundedBilinearMap.differentiableWithinAt (h : IsBoundedBilinearMap 𝕜 b) (p : E × F) :
    DifferentiableWithinAt 𝕜 b u p :=
  (h.differentiableAt p).differentiableWithinAt
#align is_bounded_bilinear_map.differentiable_within_at IsBoundedBilinearMap.differentiableWithinAt

protected theorem IsBoundedBilinearMap.fderiv (h : IsBoundedBilinearMap 𝕜 b) (p : E × F) :
    fderiv 𝕜 b p = h.deriv p :=
  HasFDerivAt.fderiv (h.hasFDerivAt p)
#align is_bounded_bilinear_map.fderiv IsBoundedBilinearMap.fderiv

protected theorem IsBoundedBilinearMap.fderivWithin (h : IsBoundedBilinearMap 𝕜 b) (p : E × F)
    (hxs : UniqueDiffWithinAt 𝕜 u p) : fderivWithin 𝕜 b u p = h.deriv p := by
  rw [DifferentiableAt.fderivWithin (h.differentiableAt p) hxs]
  exact h.fderiv p
#align is_bounded_bilinear_map.fderiv_within IsBoundedBilinearMap.fderivWithin

theorem IsBoundedBilinearMap.differentiable (h : IsBoundedBilinearMap 𝕜 b) : Differentiable 𝕜 b :=
  fun x => h.differentiableAt x
#align is_bounded_bilinear_map.differentiable IsBoundedBilinearMap.differentiable

theorem IsBoundedBilinearMap.differentiableOn (h : IsBoundedBilinearMap 𝕜 b) :
    DifferentiableOn 𝕜 b u :=
  h.differentiable.differentiableOn
#align is_bounded_bilinear_map.differentiable_on IsBoundedBilinearMap.differentiableOn

variable (B : E →L[𝕜] F →L[𝕜] G)

theorem ContinuousLinearMap.hasFDerivWithinAt_of_bilinear {f : G' → E} {g : G' → F}
    {f' : G' →L[𝕜] E} {g' : G' →L[𝕜] F} {x : G'} {s : Set G'} (hf : HasFDerivWithinAt f f' s x)
    (hg : HasFDerivWithinAt g g' s x) :
    HasFDerivWithinAt (fun y => B (f y) (g y))
      (B.precompR G' (f x) g' + B.precompL G' f' (g x)) s x :=
  (B.isBoundedBilinearMap.hasFDerivAt (f x, g x)).comp_hasFDerivWithinAt x (hf.prod hg)
#align continuous_linear_map.has_fderiv_within_at_of_bilinear ContinuousLinearMap.hasFDerivWithinAt_of_bilinear

theorem ContinuousLinearMap.hasFDerivAt_of_bilinear {f : G' → E} {g : G' → F} {f' : G' →L[𝕜] E}
    {g' : G' →L[𝕜] F} {x : G'} (hf : HasFDerivAt f f' x) (hg : HasFDerivAt g g' x) :
    HasFDerivAt (fun y => B (f y) (g y)) (B.precompR G' (f x) g' + B.precompL G' f' (g x)) x :=
  (B.isBoundedBilinearMap.hasFDerivAt (f x, g x)).comp x (hf.prod hg)
#align continuous_linear_map.has_fderiv_at_of_bilinear ContinuousLinearMap.hasFDerivAt_of_bilinear

theorem ContinuousLinearMap.fderivWithin_of_bilinear {f : G' → E} {g : G' → F} {x : G'} {s : Set G'}
    (hf : DifferentiableWithinAt 𝕜 f s x) (hg : DifferentiableWithinAt 𝕜 g s x)
    (hs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 (fun y => B (f y) (g y)) s x =
      B.precompR G' (f x) (fderivWithin 𝕜 g s x) + B.precompL G' (fderivWithin 𝕜 f s x) (g x) :=
  (B.hasFDerivWithinAt_of_bilinear hf.hasFDerivWithinAt hg.hasFDerivWithinAt).fderivWithin hs
#align continuous_linear_map.fderiv_within_of_bilinear ContinuousLinearMap.fderivWithin_of_bilinear

theorem ContinuousLinearMap.fderiv_of_bilinear {f : G' → E} {g : G' → F} {x : G'}
    (hf : DifferentiableAt 𝕜 f x) (hg : DifferentiableAt 𝕜 g x) :
    fderiv 𝕜 (fun y => B (f y) (g y)) x =
      B.precompR G' (f x) (fderiv 𝕜 g x) + B.precompL G' (fderiv 𝕜 f x) (g x) :=
  (B.hasFDerivAt_of_bilinear hf.hasFDerivAt hg.hasFDerivAt).fderiv
#align continuous_linear_map.fderiv_of_bilinear ContinuousLinearMap.fderiv_of_bilinear

end BilinearMap

end
```
