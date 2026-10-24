# Complete source: GRWTSK.NumberTheory.Zeta.PoleRegularization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `378527073faffc80c4241eabbda7e70a57d59dd3` · SHA-256 `5032d9b76107a648739082a0d7625013d34a48b5aa25cc3af67036049b7971ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Convex.PathConnected

/-!
# actual zeta pole regularization

Mathlib's total riemannZeta function has a finite assigned value at one, so
the literal product (s - 1) * riemannZeta s is zero there. Its actual punctured
limit is one. The update below pays this exceptional value explicitly and is
proved entire by the residue and removable singularity theorems.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
No original pickup-growth premise, cancellation budget, or RH proof is supplied.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ZetaPoleRegularization

open Set Filter
open scoped Topology

noncomputable section

def rawZetaProduct (s : ℂ) : ℂ := (s - 1) * riemannZeta s

def regularizedZeta : ℂ → ℂ := Function.update rawZetaProduct 1 1

theorem raw_product_at_one : rawZetaProduct 1 = 0 := by
  simp [rawZetaProduct]

theorem regularized_zeta_at_one : regularizedZeta 1 = 1 := by
  simp [regularizedZeta]

theorem regularized_zeta_of_ne_one {s : ℂ} (hs : s ≠ 1) :
    regularizedZeta s = (s - 1) * riemannZeta s := by
  rw [regularizedZeta, Function.update_of_ne hs]
  rfl

theorem raw_product_residue_one : Tendsto rawZetaProduct (𝓝[≠] 1) (𝓝 1) :=
  riemannZeta_residue_one

/-- The literal total-function product does not already have the correct pole value. -/
theorem raw_product_not_continuousAt_one : ¬ ContinuousAt rawZetaProduct 1 := by
  intro continuous
  have limits : (1 : ℂ) = rawZetaProduct 1 :=
    tendsto_nhds_unique raw_product_residue_one
      (continuous.tendsto.mono_left nhdsWithin_le_nhds)
  simp [rawZetaProduct] at limits

theorem regularized_zeta_continuousAt_one : ContinuousAt regularizedZeta 1 := by
  unfold regularizedZeta
  exact continuousAt_update_same.mpr raw_product_residue_one

theorem raw_product_differentiableAt_of_ne_one {s : ℂ} (hs : s ≠ 1) :
    DifferentiableAt ℂ rawZetaProduct s :=
  (differentiableAt_id.sub_const 1).mul (differentiableAt_riemannZeta hs)

theorem regularized_zeta_differentiableAt_of_ne_one {s : ℂ} (hs : s ≠ 1) :
    DifferentiableAt ℂ regularizedZeta s := by
  have agreement : regularizedZeta =ᶠ[𝓝 s] rawZetaProduct := by
    filter_upwards [isOpen_compl_singleton.mem_nhds hs] with z hz
    exact regularized_zeta_of_ne_one hz
  exact (raw_product_differentiableAt_of_ne_one hs).congr_of_eventuallyEq agreement

/-- The actual residue supplies continuity; removable singularity supplies analyticity. -/
theorem regularized_zeta_analyticAt_one : AnalyticAt ℂ regularizedZeta 1 := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · filter_upwards [eventually_mem_nhdsWithin] with s hs
    exact regularized_zeta_differentiableAt_of_ne_one hs
  · exact regularized_zeta_continuousAt_one

theorem regularized_zeta_differentiable : Differentiable ℂ regularizedZeta := by
  intro s
  rcases eq_or_ne s 1 with rfl | hs
  · exact regularized_zeta_analyticAt_one.differentiableAt
  · exact regularized_zeta_differentiableAt_of_ne_one hs

theorem regularized_zeta_analyticOnNhd : AnalyticOnNhd ℂ regularizedZeta univ :=
  regularized_zeta_differentiable.differentiableOn.analyticOnNhd isOpen_univ

theorem regularized_zeta_analyticAt (s : ℂ) : AnalyticAt ℂ regularizedZeta s :=
  regularized_zeta_analyticOnNhd s (mem_univ s)

/-! The following bridge is conditional on an arbitrary holomorphic function and
an exact initial identity. No adapter from the original pickup is supplied. -/

def rightHalfPlane : Set ℂ := {z | 0 < z.re}

def InitialReciprocalIdentity (F : ℂ → ℂ) : Prop :=
  ∀ z : ℂ, (1 / 2 : ℝ) < z.re →
    z * (z + (1 / 2 : ℂ)) * riemannZeta (z + (1 / 2 : ℂ)) * F z = 1

def regularizedProduct (F : ℂ → ℂ) (z : ℂ) : ℂ :=
  z * (z + (1 / 2 : ℂ)) * regularizedZeta (z + (1 / 2 : ℂ)) * F z

theorem right_half_plane_isOpen : IsOpen rightHalfPlane :=
  isOpen_Ioi.preimage Complex.continuous_re

theorem right_half_plane_isPreconnected : IsPreconnected rightHalfPlane := by
  have convex : Convex ℝ rightHalfPlane :=
    (convex_Ioi (0 : ℝ)).linear_preimage Complex.reCLM.toLinearMap
  exact convex.isPreconnected

theorem regularized_product_analyticOnNhd {F : ℂ → ℂ}
    (hF : DifferentiableOn ℂ F rightHalfPlane) :
    AnalyticOnNhd ℂ (regularizedProduct F) rightHalfPlane := by
  intro z hz
  have shift : AnalyticAt ℂ (fun w : ℂ => w + (1 / 2 : ℂ)) z :=
    analyticAt_id.add analyticAt_const
  have regularized : AnalyticAt ℂ (fun w : ℂ => regularizedZeta (w + (1 / 2 : ℂ))) z :=
    (regularized_zeta_analyticAt (z + (1 / 2 : ℂ))).comp
      (f := fun w : ℂ => w + (1 / 2 : ℂ)) (x := z) shift
  exact ((analyticAt_id.mul shift).mul regularized).mul
    ((hF.analyticOnNhd right_half_plane_isOpen) z hz)

theorem regularized_product_initial {F : ℂ → ℂ} (hInitial : InitialReciprocalIdentity F)
    {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    regularizedProduct F z = z - (1 / 2 : ℂ) := by
  have offPole : z + (1 / 2 : ℂ) ≠ 1 := by
    intro equality
    have realEquality := congrArg Complex.re equality
    norm_num [Complex.add_re] at realEquality
    linarith
  rw [regularizedProduct, regularized_zeta_of_ne_one offPole]
  calc
    z * (z + (1 / 2 : ℂ)) *
        ((z + (1 / 2 : ℂ) - 1) * riemannZeta (z + (1 / 2 : ℂ))) * F z =
        (z - (1 / 2 : ℂ)) *
          (z * (z + (1 / 2 : ℂ)) * riemannZeta (z + (1 / 2 : ℂ)) * F z) := by
      ring
    _ = z - (1 / 2 : ℂ) := by rw [hInitial z hz, mul_one]

/-- Identity propagation uses the regularized entire factor at the interior pole. -/
theorem regularized_product_identity {F : ℂ → ℂ}
    (hF : DifferentiableOn ℂ F rightHalfPlane) (hInitial : InitialReciprocalIdentity F) :
    EqOn (regularizedProduct F) (fun z => z - (1 / 2 : ℂ)) rightHalfPlane := by
  apply (regularized_product_analyticOnNhd hF).eqOn_of_preconnected_of_eventuallyEq
    (fun _ _ => analyticAt_id.sub analyticAt_const) right_half_plane_isPreconnected
    (z₀ := (1 : ℂ)) (by norm_num [rightHalfPlane])
  have eventuallyRight : ∀ᶠ z : ℂ in 𝓝 1, (1 / 2 : ℝ) < z.re :=
    (isOpen_Ioi.preimage Complex.continuous_re).mem_nhds (by norm_num)
  filter_upwards [eventuallyRight] with z hz
  exact regularized_product_initial hInitial hz

/-- This conclusion retains both the holomorphic-function and initial-identity premises. -/
theorem zeta_ne_zero_right_of_holomorphic_reciprocal {F : ℂ → ℂ}
    (hF : DifferentiableOn ℂ F rightHalfPlane) (hInitial : InitialReciprocalIdentity F)
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) (hsOne : s ≠ 1) : riemannZeta s ≠ 0 := by
  intro zero
  have shifted : s - (1 / 2 : ℂ) ∈ rightHalfPlane := by
    simp only [rightHalfPlane, mem_ofPred_eq, Complex.sub_re]
    norm_num
    linarith
  have propagated := regularized_product_identity hF hInitial shifted
  have regularizedZero : regularizedZeta s = 0 := by
    rw [regularized_zeta_of_ne_one hsOne, zero, mul_zero]
  have shiftCancel : s - (1 / 2 : ℂ) + (1 / 2 : ℂ) = s := by ring
  simp only [regularizedProduct, shiftCancel, regularizedZero, mul_zero] at propagated
  apply hsOne
  linear_combination -propagated

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ZetaPoleRegularization
```
