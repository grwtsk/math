# Complete source: GRWTSK.Analysis.MellinTransform.CompactGaussianWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf939b35c7cb08c3dc0e26b5dfbac6fed6667c7e` · SHA-256 `b5cc04b0625455f54f5e0d0020f91169b152548a7f8514908fb6fc97d5bbd1d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact compact normalized Gaussian window and its Schwartz-map supplier.
Source project authors: OpenAI, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Detector/GaussianWindows.lean,
SHA256 045f00d06e64c005c0d37031c3842152d959fea2609ce4cb2f4916f7485f8f50;
lean/OAI/NumberTheory/DirichletL/Detector/GaussianLow.lean,
SHA256 3a37f28e065cc4c54fbd92e44a08cf0dd03ac6ae1cebc0bba46203be74721bd6.
The rootWeight definition is the source CompletedGauss.Vstar, from
lean/OAI/NumberTheory/DirichletL/Arithmetic/IdealMobius.lean,
SHA256 dd0ae071b0bdb5746fa6362de83aa86a4ee4462810a7fdbc72f0af95b5887675.
No surrounding ideal/Hecke/calibration/physical detector closure is imported.
Mathlib SchwartzSpace/Basic.lean: Copyright (c) 2022 Moritz Doll. All rights reserved.
Mathlib SpecialFunctions/Sqrt.lean: Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under the Apache 2.0 license as described in LICENSE.
Imported Gaussian/annulus results retain their original source and license notices.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
Z>0 is retained for the source smoothness theorem; no necessity assertion is made.
-/
import GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
import GRWTSK.Analysis.MellinTransform.NormalizedGaussian
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic

namespace GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
noncomputable section
open scoped Classical Topology ContDiff SchwartzMap
open Filter
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian

noncomputable def rootWeight (W : ℝ → ℂ) (y : ℝ) : ℂ := (Real.sqrt y:ℂ)*W y

lemma gaussianMellinProfile_real (y : ℝ) (hy : 0<y) :
    gaussianMellinProfile y=
      ((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)*
        (Real.exp (-(Real.log y)^2/4):ℂ) := by
  unfold gaussianMellinProfile
  rw [←Complex.ofReal_log hy.le]
  congr 1
  rw [Complex.ofReal_exp]
  congr 1
  push_cast
  ring

noncomputable def gaussianDyadicProfile (Z : ℝ) (j : ℕ) (y : ℝ) : ℂ :=
  dyadicAnnulus y*gaussianMellinProfile ((2:ℝ)^j*y/Z)/(Real.sqrt y:ℂ)

lemma gaussianDyadicProfile_small (Z : ℝ) (j : ℕ) (y : ℝ) (hy : y≤1/2) :
    gaussianDyadicProfile Z j y=0 := by
  simp only [gaussianDyadicProfile,dyadicAnnulus_small y hy,zero_mul,zero_div]
lemma gaussianDyadicProfile_large (Z : ℝ) (j : ℕ) (y : ℝ) (hy : 2≤y) :
    gaussianDyadicProfile Z j y=0 := by
  simp only [gaussianDyadicProfile,dyadicAnnulus_large y hy,zero_mul,zero_div]

lemma gaussianDyadicProfile_compact (Z : ℝ) (j : ℕ) : HasCompactSupport (gaussianDyadicProfile Z j) := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a:=(1/2:ℝ)) (b:=2))
  intro y hy
  change gaussianDyadicProfile Z j y≠0 at hy
  constructor
  · by_contra h
    exact hy (gaussianDyadicProfile_small Z j y (le_of_lt (lt_of_not_ge h)))
  · by_contra h
    exact hy (gaussianDyadicProfile_large Z j y (le_of_lt (lt_of_not_ge h)))

lemma gaussianDyadicProfile_contDiff (Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    ContDiff ℝ ∞ (gaussianDyadicProfile Z j) := by
  rw [contDiff_iff_contDiffAt]
  intro y
  by_cases hy : 0<y
  · have he : gaussianDyadicProfile Z j =ᶠ[𝓝 y]
        (fun x : ℝ=>dyadicAnnulus x*
          (((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)*
            (Real.exp (-(Real.log ((2:ℝ)^j*x/Z))^2/4):ℂ))/(Real.sqrt x:ℂ)) := by
      filter_upwards [eventually_gt_nhds hy] with x hx
      rw [gaussianDyadicProfile,gaussianMellinProfile_real _ (div_pos (mul_pos (by positivity) hx) hZ)]
    apply ContDiffAt.congr_of_eventuallyEq _ he
    have hq : (2:ℝ)^j*y/Z≠0 := ne_of_gt (div_pos (mul_pos (by positivity) hy) hZ)
    have hs : (Real.sqrt y:ℂ)≠0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hy).ne'
    have ha := dyadicAnnulus_contDiff.contDiffAt (x:=y)
    have hl : ContDiffAt ℝ ∞ (fun x : ℝ=>Real.log ((2:ℝ)^j*x/Z)) y :=
      (show ContDiffAt ℝ ∞ (fun x : ℝ=>(2:ℝ)^j*x/Z) y by fun_prop).log hq
    have hg : ContDiffAt ℝ ∞ (fun x : ℝ=>Real.exp (-(Real.log ((2:ℝ)^j*x/Z))^2/4)) y :=
      ((hl.pow 2).neg.div_const 4).exp
    have hgC := Complex.ofRealCLM.contDiff.contDiffAt.comp y hg
    have hsR : ContDiffAt ℝ ∞ Real.sqrt y := Real.contDiffAt_sqrt hy.ne'
    have ht : ContDiffAt ℝ ∞ (fun x : ℝ=>dyadicAnnulus x*
        (((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)*
          (Real.exp (-(Real.log ((2:ℝ)^j*x/Z))^2/4):ℂ))) y :=
      ha.mul (contDiffAt_const.mul hgC)
    have hsc : ContDiffAt ℝ ∞ (fun x : ℝ=>(Real.sqrt x:ℂ)) y :=
      Complex.ofRealCLM.contDiff.contDiffAt.comp y hsR
    simpa only [div_eq_mul_inv] using ht.mul (hsc.fun_inv hs)
  · apply contDiffAt_const.congr_of_eventuallyEq
    filter_upwards [eventually_lt_nhds (show y<(1/2:ℝ) by linarith)] with x hx
    exact gaussianDyadicProfile_small Z j x hx.le

lemma gaussianDyadicProfile_rootWeight (Z : ℝ) (j : ℕ) (y : ℝ) (hy : 0<y) :
    rootWeight (gaussianDyadicProfile Z j) y=
      dyadicAnnulus y*gaussianMellinProfile ((2:ℝ)^j*y/Z) := by
  have h : (Real.sqrt y:ℂ)≠0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hy).ne'
  simp only [rootWeight,gaussianDyadicProfile]
  field_simp


/-- An actual smooth compact window, packaged using Mathlib's existing constructor. -/
noncomputable def gaussianDyadicSchwartz (Z : ℝ) (hZ : 0<Z) (j : ℕ) : SchwartzMap ℝ ℂ :=
  (gaussianDyadicProfile_compact Z j).toSchwartzMap (gaussianDyadicProfile_contDiff Z hZ j)

@[simp] theorem gaussianDyadicSchwartz_apply (Z : ℝ) (hZ : 0<Z) (j : ℕ) (y : ℝ) :
    gaussianDyadicSchwartz Z hZ j y = gaussianDyadicProfile Z j y := rfl

theorem gaussianDyadicSchwartz_rootWeight (Z : ℝ) (hZ : 0<Z) (j : ℕ)
    (y : ℝ) (hy : 0<y) :
    rootWeight (gaussianDyadicSchwartz Z hZ j) y =
      dyadicAnnulus y*gaussianMellinProfile ((2:ℝ)^j*y/Z) :=
  gaussianDyadicProfile_rootWeight Z j y hy

end
end GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
```
