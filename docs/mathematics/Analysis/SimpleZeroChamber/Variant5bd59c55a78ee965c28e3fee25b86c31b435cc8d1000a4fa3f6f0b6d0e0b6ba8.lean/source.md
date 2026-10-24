# Complete source: GRWTSK.Analysis.SimpleZeroChamber.Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36beab17f38206dd289deee8b012aec9596897a0` · SHA-256 `5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Calculus.ImplicitContDiff

/-!
# Local C¹ zero graph at a simple interior zero

The scalar spatial derivative is kept explicit. Its nonzero value supplies
the invertibility hypothesis of Mathlib's pinned implicit-function theorem.
The local contribution is the zero-level and chamber interface; the upstream
implicit-function construction retains its Mathlib identity and authorship.
This local chart does not assert a complete compact-interval zero census or
stability through a discriminant crossing. Human chamber direction:
grwtsk contributors. Local Lean adaptation and consumer: OpenAI Codex.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.SimpleZeroChamber
open scoped Topology ContDiff
noncomputable section

def spatialSlope (g : ℝ × ℝ → ℝ) (u : ℝ × ℝ) : ℝ :=
  (fderiv ℝ g u ∘L ContinuousLinearMap.inr ℝ ℝ ℝ) 1

theorem scalar_map_invertible_of_nonzero (L : ℝ →L[ℝ] ℝ) (h : L 1 ≠ 0) :
    L.IsInvertible := by
  refine ⟨ContinuousLinearEquiv.unitsEquivAut ℝ (Units.mk0 (L 1) h), ?_⟩
  apply ContinuousLinearMap.ext
  intro x
  change ContinuousLinearEquiv.unitsEquivAut ℝ (Units.mk0 (L 1) h) x = L x
  rw [ContinuousLinearEquiv.unitsEquivAut_apply]
  simpa only [Units.val_mk0, smul_eq_mul, mul_one] using
    (L.map_smul x (1 : ℝ)).symm

theorem spatial_map_invertible {g : ℝ × ℝ → ℝ} {u : ℝ × ℝ}
    (hs : spatialSlope g u ≠ 0) :
    (fderiv ℝ g u ∘L ContinuousLinearMap.inr ℝ ℝ ℝ).IsInvertible :=
  scalar_map_invertible_of_nonzero _ hs

theorem spatial_slope_eq_partial_deriv {g : ℝ × ℝ → ℝ} {u : ℝ × ℝ}
    (hc : ContDiffAt ℝ 1 g u) :
    spatialSlope g u = deriv (fun x => g (u.1,x)) u.2 := by
  have hd := (hc.differentiableAt_one.hasFDerivAt.comp u.2
    (hasFDerivAt_prodMk_right u.1 u.2)).hasDerivAt
  simpa only [spatialSlope, Function.comp_def, ContinuousLinearMap.comp_apply] using hd.deriv.symm

theorem simple_zero_local_c1_graph {g : ℝ × ℝ → ℝ} {u : ℝ × ℝ}
    (hc : ContDiffAt ℝ 1 g u) (hz : g u = 0)
    (hs : spatialSlope g u ≠ 0) :
    ∃ z : ℝ → ℝ, z u.1 = u.2 ∧ ContDiffAt ℝ 1 z u.1 ∧
      (∀ᶠ l in 𝓝 u.1, g (l,z l) = 0) ∧
      (∀ᶠ v in 𝓝 u, g v = 0 ↔ z v.1 = v.2) := by
  let hi := spatial_map_invertible hs
  let z := hc.implicitFunction (by decide) hi
  refine ⟨z, hc.implicitFunction_apply_self _ hi,
    hc.contDiffAt_implicitFunction _ hi, ?_, ?_⟩
  · simpa only [hz] using hc.eventually_apply_implicitFunction (by decide) hi
  · simpa only [hz] using hc.eventually_apply_eq_iff_implicitFunction (by decide) hi

theorem simple_zero_c1_chamber {g : ℝ × ℝ → ℝ} {u : ℝ × ℝ} {a b : ℝ}
    (hc : ContDiffAt ℝ 1 g u) (hz : g u = 0)
    (hs : deriv (fun x => g (u.1,x)) u.2 ≠ 0)
    (ha : a < u.2) (hb : u.2 < b) :
    ∃ (z : ℝ → ℝ) (U : Set ℝ), IsOpen U ∧ u.1 ∈ U ∧
      ContDiffOn ℝ 1 z U ∧ z u.1 = u.2 ∧
      (∀ l ∈ U, g (l,z l) = 0 ∧ z l ∈ Set.Ioo a b) ∧
      (∀ᶠ v in 𝓝 u, g v = 0 ↔ z v.1 = v.2) := by
  have hs' : spatialSlope g u ≠ 0 := by
    rwa [spatial_slope_eq_partial_deriv hc]
  obtain ⟨z,hz0,hzc,hzeq,hzunique⟩ := simple_zero_local_c1_graph hc hz hs'
  obtain ⟨V,hV,hVc⟩ := hzc.contDiffOn (le_refl 1) (by simp)
  have hzi : ∀ᶠ l in 𝓝 u.1, z l ∈ Set.Ioo a b :=
    hzc.continuousAt (by simpa only [hz0] using Ioo_mem_nhds ha hb)
  have hW : V ∩ {l | g (l,z l) = 0} ∩ {l | z l ∈ Set.Ioo a b} ∈ 𝓝 u.1 :=
    Filter.inter_mem (Filter.inter_mem hV hzeq) hzi
  obtain ⟨U,hUW,hU,hu⟩ := mem_nhds_iff.mp hW
  refine ⟨z,U,hU,hu,hVc.mono (fun l hl => (hUW hl).1.1),hz0,?_,hzunique⟩
  intro l hl
  exact ⟨(hUW hl).1.2,(hUW hl).2⟩

end
end GRWTSK.RiemannHypothesis.Conversation.SimpleZeroChamber
```
