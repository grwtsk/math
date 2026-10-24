# Complete source: GRWTSK.Analysis.Fourier.SchwartzMoments

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ffe55e588dc155475c1d6afa2342ff065fb7803` · SHA-256 `a307bf8271e978265691d108cfce215149e04b123c0f856a2ecb9a5e0a5671ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual Fourier moments controlled by finitely many source Schwartz seminorms.
Adapted from OpenAI math, source project author OpenAI, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a:
lean/OAI/NumberTheory/DirichletL/Mellin/LogProfiles.lean,
SHA256 ff8735e421a2ee659df15272704206f2d114d7e2a849e8a755d545508f4038be.
Only the generic real-line Fourier/Schwartz proof slices are adapted.
Mathlib Analysis/Distribution/SchwartzSpace/Fourier.lean:
Copyright (c) 2024 Sébastien Gouëzel. All rights reserved.
Authors: Sébastien Gouëzel, Moritz Doll.
Mathlib Analysis/Fourier/FourierTransformDeriv.lean:
Copyright (c) 2024 David Loeffler. All rights reserved.
Authors: Alex Kontorovich, David Loeffler, Heather Macbeth, Sébastien Gouëzel.
Mathlib Analysis/Distribution/SchwartzSpace/Basic.lean:
Copyright (c) 2022 Moritz Doll. All rights reserved. Author: Moritz Doll.
Released under Apache-2.0 as described in LICENSE; imported notices retained.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
No compact-support, arithmetic, Gaussian-density or physical supplier is assumed.
-/
import Mathlib.Analysis.Distribution.SchwartzSpace.Fourier
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.GCongr

namespace GRWTSK.Analysis.Fourier.SchwartzMoments
noncomputable section
open scoped Classical FourierTransform SchwartzMap
open MeasureTheory

theorem fourier_coefficient_moment (g : 𝓢(ℝ, ℂ)) (J : ℕ) :
    ∫ t : ℝ, ‖t‖ ^ J * ‖(𝓕 g) t‖ ≤
      (2 ^ (volume : Measure ℝ).integrablePower *
        ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)) *
      ((SchwartzMap.seminorm ℝ 0 0) (𝓕 g) +
        (SchwartzMap.seminorm ℝ (J + (volume : Measure ℝ).integrablePower) 0) (𝓕 g)) := by
  simpa using SchwartzMap.integral_pow_mul_iteratedFDeriv_le ℝ volume (𝓕 g) J 0

theorem fourier_seminorm_from_derivative_integrals
    (g : 𝓢(ℝ, ℂ)) (k : ℕ) :
    (SchwartzMap.seminorm ℝ k 0) (𝓕 g) ≤
      (2 : ℝ) ^ k *
        ∑ p ∈ Finset.range 1 ×ˢ Finset.range (k + 1),
          ∫ v : ℝ, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 g v‖ := by
  have hpoint (w : ℝ) :=
    Real.pow_mul_norm_iteratedFDeriv_fourier_le
      (K := ⊤) (N := ⊤) (f := (g : ℝ → ℂ)) (g.smooth ⊤)
      (by intro a b ha hb; exact g.integrable_pow_mul_iteratedFDeriv volume a b)
      (k := 0) (n := k) (by simp) (by simp) w
  have hpoint' (w : ℝ) :
      ‖w‖ ^ k * ‖(𝓕 g) w‖ ≤
        (2 : ℝ) ^ k *
          ∑ p ∈ Finset.range 1 ×ˢ Finset.range (k + 1),
            ∫ v : ℝ, ‖v‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 g v‖ := by
    simpa [SchwartzMap.fourier_coe] using hpoint w
  apply SchwartzMap.seminorm_le_bound ℝ k 0 (𝓕 g) (by positivity)
  intro w
  simpa using hpoint' w

theorem uniform_fourier_seminorm_transfer
    (g : 𝓢(ℝ, ℂ)) (k : ℕ) (S C : ℝ)
    (hS : 0 ≤ S) (_hC : 0 ≤ C)
    (hsource : ∀ i ≤ k,
      S * ((SchwartzMap.seminorm ℝ 0 i) g +
        (SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i) g) ≤ C) :
    S * (SchwartzMap.seminorm ℝ k 0) (𝓕 g) ≤
      (2 : ℝ) ^ k * (k + 1) *
        (2 ^ (volume : Measure ℝ).integrablePower *
          ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)) * C := by
  let V : ℝ := 2 ^ (volume : Measure ℝ).integrablePower *
    ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)
  have hV : 0 ≤ V := by dsimp [V]; positivity
  have hI (i : ℕ) (hi : i ≤ k) :
      S * (∫ t : ℝ, ‖iteratedFDeriv ℝ i g t‖) ≤ V * C := by
    have hbase := SchwartzMap.integral_pow_mul_iteratedFDeriv_le ℝ volume g 0 i
    have hbase' :
        (∫ t : ℝ, ‖iteratedFDeriv ℝ i g t‖) ≤
          V * ((SchwartzMap.seminorm ℝ 0 i) g +
            (SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i) g) := by
      simpa [V] using hbase
    calc
      S * (∫ t : ℝ, ‖iteratedFDeriv ℝ i g t‖) ≤
          S * (V * ((SchwartzMap.seminorm ℝ 0 i) g +
            (SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i) g)) :=
        mul_le_mul_of_nonneg_left hbase' hS
      _ = V * (S * ((SchwartzMap.seminorm ℝ 0 i) g +
            (SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i) g)) := by ring
      _ ≤ V * C := mul_le_mul_of_nonneg_left (hsource i hi) hV
  have hFourier := fourier_seminorm_from_derivative_integrals g k
  calc
    S * (SchwartzMap.seminorm ℝ k 0) (𝓕 g) ≤
      S * ((2 : ℝ) ^ k *
        ∑ p ∈ Finset.range 1 ×ˢ Finset.range (k + 1),
          ∫ t : ℝ, ‖t‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 g t‖) :=
      mul_le_mul_of_nonneg_left hFourier hS
    _ = (2 : ℝ) ^ k *
      ∑ p ∈ Finset.range 1 ×ˢ Finset.range (k + 1),
        S * (∫ t : ℝ, ‖t‖ ^ p.1 * ‖iteratedFDeriv ℝ p.2 g t‖) := by
      simp only [Finset.mul_sum]
      ring_nf
    _ ≤ (2 : ℝ) ^ k *
      ∑ _p ∈ Finset.range 1 ×ˢ Finset.range (k + 1), V * C := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Finset.sum_le_sum
      intro p hp
      have hp0 : p.1 = 0 := by
        have hlt := Finset.mem_range.mp (Finset.mem_product.mp hp).1
        omega
      have hp2 : p.2 ≤ k := Nat.lt_succ_iff.mp
        (Finset.mem_range.mp (Finset.mem_product.mp hp).2)
      simpa [hp0] using hI p.2 hp2
    _ = (2 : ℝ) ^ k * (k + 1) * V * C := by
      simp []
      ring
    _ = (2 : ℝ) ^ k * (k + 1) *
        (2 ^ (volume : Measure ℝ).integrablePower *
          ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)) * C := rfl

theorem uniform_fourier_coefficient_moment
    (g : 𝓢(ℝ, ℂ)) (J : ℕ) (S C : ℝ)
    (hS : 0 ≤ S) (hC : 0 ≤ C)
    (hsource : ∀ i ≤ J + (volume : Measure ℝ).integrablePower,
      S * ((SchwartzMap.seminorm ℝ 0 i) g +
        (SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i) g) ≤ C) :
    S * (∫ t : ℝ, ‖t‖ ^ J * ‖(𝓕 g) t‖) ≤
      (2 ^ (volume : Measure ℝ).integrablePower *
        ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)) *
      ((2 : ℝ) ^ 0 * (0 + 1) *
        (2 ^ (volume : Measure ℝ).integrablePower *
          ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)) * C +
        (2 : ℝ) ^ (J + (volume : Measure ℝ).integrablePower) *
          (J + (volume : Measure ℝ).integrablePower + 1) *
          (2 ^ (volume : Measure ℝ).integrablePower *
            ∫ t : ℝ, (1 + ‖t‖) ^ (-(volume : Measure ℝ).integrablePower : ℝ)) * C) := by
  let p := (volume : Measure ℝ).integrablePower
  let V : ℝ := 2 ^ p * ∫ t : ℝ, (1 + ‖t‖) ^ (-(p : ℝ))
  let K := J + p
  have hV : 0 ≤ V := by dsimp [V]; positivity
  have hfourier_zero := uniform_fourier_seminorm_transfer g 0 S C hS hC
    (by intro i hi; exact hsource i (by omega))
  have hfourier_K := uniform_fourier_seminorm_transfer g K S C hS hC
    (by intro i hi; exact hsource i (by simpa [K, p] using hi))
  have hmoment := fourier_coefficient_moment g J
  calc
    S * (∫ t : ℝ, ‖t‖ ^ J * ‖(𝓕 g) t‖) ≤
        S * (V * ((SchwartzMap.seminorm ℝ 0 0) (𝓕 g) +
          (SchwartzMap.seminorm ℝ K 0) (𝓕 g))) :=
      mul_le_mul_of_nonneg_left (by simpa [V, K, p] using hmoment) hS
    _ = V * (S * (SchwartzMap.seminorm ℝ 0 0) (𝓕 g) +
        S * (SchwartzMap.seminorm ℝ K 0) (𝓕 g)) := by ring
    _ ≤ V * ((2 : ℝ) ^ 0 * (0 + 1) * V * C +
        (2 : ℝ) ^ K * (K + 1) * V * C) := by
      apply mul_le_mul_of_nonneg_left _ hV
      exact add_le_add (by simpa [V] using hfourier_zero)
        (by simpa [K, V] using hfourier_K)
    _ = _ := by simp [V, K, p, Nat.cast_add]

/-- Actual integrability of the one-plus Fourier moment, not merely a totalized integral bound. -/
theorem fourier_one_plus_moment_integrable (g : 𝓢(ℝ, ℂ)) (J : ℕ) :
    Integrable (fun t : ℝ => (1+‖t‖)^J*‖(𝓕 g) t‖) := by
  let b := 𝓕 g
  have hI0 : Integrable (fun t : ℝ => ‖b t‖) volume := by
    simpa using b.integrable_pow_mul volume 0
  have hIJ : Integrable (fun t : ℝ => ‖t‖^J*‖b t‖) volume :=
    b.integrable_pow_mul volume J
  have hIrhs : Integrable (fun t : ℝ => (2:ℝ)^J*(‖b t‖+‖t‖^J*‖b t‖)) :=
    (hI0.add hIJ).const_mul _
  refine hIrhs.mono' ?_ (Filter.Eventually.of_forall ?_)
  · exact (((continuous_const.add continuous_norm).pow J).mul b.continuous.norm).aestronglyMeasurable
  · intro t
    rw [Real.norm_eq_abs,abs_of_nonneg (by positivity : 0≤(1+‖t‖)^J*‖b t‖)]
    have hpow := add_pow_le (show (0:ℝ)≤1 by norm_num) (norm_nonneg t) J
    have htwo : (2:ℝ)^(J-1)≤(2:ℝ)^J := pow_le_pow_right₀ (by norm_num) (Nat.sub_le J 1)
    calc
      _ ≤ (2:ℝ)^(J-1)*(1^J+‖t‖^J)*‖b t‖ := mul_le_mul_of_nonneg_right hpow (norm_nonneg _)
      _ ≤ (2:ℝ)^J*(1^J+‖t‖^J)*‖b t‖ := by gcongr
      _ = _ := by simp; ring

noncomputable def coefficientMomentBound (J : ℕ) (C : ℝ) : ℝ :=
  let p := (volume : Measure ℝ).integrablePower
  let V : ℝ := 2 ^ p * ∫ t : ℝ, (1 + ‖t‖) ^ (-(p : ℝ))
  V * (V * C + (2 : ℝ) ^ (J + p) * (J + p + 1) * V * C)

theorem coefficientMomentBound_nonneg (J : ℕ) (C : ℝ) (hC : 0 ≤ C) :
    0 ≤ coefficientMomentBound J C := by
  unfold coefficientMomentBound
  positivity

theorem uniform_fourier_one_plus_moment
    (g : 𝓢(ℝ, ℂ)) (J : ℕ) (S C : ℝ)
    (hS : 0 ≤ S) (hC : 0 ≤ C)
    (hsource : ∀ i ≤ J + (volume : Measure ℝ).integrablePower,
      S * ((SchwartzMap.seminorm ℝ 0 i) g +
        (SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i) g) ≤ C) :
    S * (∫ t : ℝ, (1 + ‖t‖) ^ J * ‖(𝓕 g) t‖) ≤
      (2 : ℝ) ^ J *
        (coefficientMomentBound 0 C + coefficientMomentBound J C) := by
  let b := 𝓕 g
  have hI0 : Integrable (fun t : ℝ => ‖b t‖) volume := by
    simpa using b.integrable_pow_mul volume 0
  have hIJ : Integrable (fun t : ℝ => ‖t‖ ^ J * ‖b t‖) volume :=
    b.integrable_pow_mul volume J
  have hIrhs : Integrable
      (fun t : ℝ => (2 : ℝ) ^ J *
        (‖b t‖ + ‖t‖ ^ J * ‖b t‖)) volume :=
    (hI0.add hIJ).const_mul _
  have hpoint (t : ℝ) :
      (1 + ‖t‖) ^ J * ‖b t‖ ≤
        (2 : ℝ) ^ J * (‖b t‖ + ‖t‖ ^ J * ‖b t‖) := by
    have hpow := add_pow_le (show (0 : ℝ) ≤ 1 by norm_num) (norm_nonneg t) J
    have htwo : (2 : ℝ) ^ (J - 1) ≤ (2 : ℝ) ^ J :=
      pow_le_pow_right₀ (by norm_num) (Nat.sub_le J 1)
    calc
      (1 + ‖t‖) ^ J * ‖b t‖ ≤
          (2 : ℝ) ^ (J - 1) * (1 ^ J + ‖t‖ ^ J) * ‖b t‖ :=
        mul_le_mul_of_nonneg_right hpow (norm_nonneg _)
      _ ≤ (2 : ℝ) ^ J * (1 ^ J + ‖t‖ ^ J) * ‖b t‖ := by
        gcongr
      _ = (2 : ℝ) ^ J * (‖b t‖ + ‖t‖ ^ J * ‖b t‖) := by
        simp; ring
  have hintegral :
      (∫ t : ℝ, (1 + ‖t‖) ^ J * ‖b t‖) ≤
        (2 : ℝ) ^ J *
          ((∫ t : ℝ, ‖b t‖) +
            (∫ t : ℝ, ‖t‖ ^ J * ‖b t‖)) := by
    calc
      _ ≤ ∫ t : ℝ, (2 : ℝ) ^ J *
          (‖b t‖ + ‖t‖ ^ J * ‖b t‖) :=
        integral_mono_of_nonneg (Filter.Eventually.of_forall (by intro t; positivity))
          hIrhs (Filter.Eventually.of_forall hpoint)
      _ = (2 : ℝ) ^ J *
          ((∫ t : ℝ, ‖b t‖) +
            (∫ t : ℝ, ‖t‖ ^ J * ‖b t‖)) := by
        rw [integral_const_mul, integral_add hI0 hIJ]
  have hbound0 := uniform_fourier_coefficient_moment g 0 S C hS hC
    (by intro i hi; exact hsource i (by omega))
  have hboundJ := uniform_fourier_coefficient_moment g J S C hS hC hsource
  calc
    S * (∫ t : ℝ, (1 + ‖t‖) ^ J * ‖b t‖) ≤
        S * ((2 : ℝ) ^ J *
          ((∫ t : ℝ, ‖b t‖) +
            (∫ t : ℝ, ‖t‖ ^ J * ‖b t‖))) :=
      mul_le_mul_of_nonneg_left hintegral hS
    _ = (2 : ℝ) ^ J *
        (S * (∫ t : ℝ, ‖b t‖) +
          S * (∫ t : ℝ, ‖t‖ ^ J * ‖b t‖)) := by ring
    _ ≤ (2 : ℝ) ^ J *
        (coefficientMomentBound 0 C + coefficientMomentBound J C) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply add_le_add
      · simpa [coefficientMomentBound, b] using hbound0
      · simpa [coefficientMomentBound, b] using hboundJ


end
end GRWTSK.Analysis.Fourier.SchwartzMoments
```
