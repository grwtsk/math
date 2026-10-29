/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Bochner integration retains Zhouhang Zhou, Yury Kudryashov,
Sébastien Gouëzel and Rémy Degenne's attribution; open-positive measures
retain Yury Kudryashov's. Imports retain their Apache-2.0 licenses. -/
import GRWTSK.GeneralTopology.FiniteRealCoordinateAlgebra
import Mathlib.MeasureTheory.Measure.OpenPos
import Mathlib.Tactic.Linarith

/-!
# Continuous real observables determined by all coordinate-word moments

The literal pairing p->integral h*p is constructed as a bounded linear
functional, with norm bound norm(h)_infty*norm(p)_infty on the actual
probability space. Word moments annihilate the coordinate polynomial span.
Stone--Weierstrass in the uniform topology and this actual bounded functional
then give integral h^2=0. Full support upgrades AE zero to pointwise zero.
No L2 moment extension or all-L2 injectivity is asserted.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.InnerProductSpace.ContinuousWordMoments

open MeasureTheory
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Topology.FiniteRealCoordinateAlgebra

variable {X C : Type*} [Fintype C] [TopologicalSpace X] [CompactSpace X] [T2Space X]
variable [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

theorem integrable_pairing (h p : C(X, ℝ)) : Integrable (fun x => h x * p x) μ :=
  (h.continuous.mul p.continuous).integrable_of_hasCompactSupport
    (HasCompactSupport.of_compactSpace _)

def pairingLinearMap (h : C(X, ℝ)) : C(X, ℝ) →ₗ[ℝ] ℝ where
  toFun p := ∫ x, h x * p x ∂μ
  map_add' p q := by
    change (∫ x, h x * (p x + q x) ∂μ) = _
    simp_rw [mul_add]
    exact integral_add (integrable_pairing μ h p) (integrable_pairing μ h q)
  map_smul' r p := by
    change (∫ x, h x * (r * p x) ∂μ) = r * (∫ x, h x * p x ∂μ)
    have he (x : X) : h x * (r * p x) = r * (h x * p x) := by ring
    simp_rw [he]
    exact integral_const_mul r _

theorem norm_pairing_le (h p : C(X, ℝ)) :
    ‖pairingLinearMap μ h p‖ ≤ ‖h‖ * ‖p‖ := by
  have hb : ∀ᵐ x ∂μ, ‖h x * p x‖ ≤ ‖h‖ * ‖p‖ :=
    ae_of_all _ (fun x => by
      rw [norm_mul]
      exact mul_le_mul (h.norm_coe_le_norm x) (p.norm_coe_le_norm x)
        (norm_nonneg _) (norm_nonneg _))
  simpa only [probReal_univ, mul_one] using norm_integral_le_of_norm_le_const hb

def pairingCLM (h : C(X, ℝ)) : C(X, ℝ) →L[ℝ] ℝ :=
  (pairingLinearMap μ h).mkContinuous ‖h‖ (norm_pairing_le μ h)

theorem coordinateAlgebra_le_pairing_ker (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (h : C(X, ℝ))
    (hm : ∀ (n : ℕ) (w : Fin n → C), ∫ x, h x * wordFeature f w x ∂μ = 0) :
    (coordinateAlgebra f hf).toSubmodule ≤ (pairingCLM μ h).ker := by
  change wordSpan f hf ≤ (pairingCLM μ h).ker
  unfold wordSpan
  apply Submodule.span_le.mpr
  rintro p ⟨⟨n, w⟩, rfl⟩
  change (∫ x, h x * wordFeature f w x ∂μ) = 0
  exact hm n w

/-- Uniform polynomial approximation is consumed by the actual bounded pairing. -/
theorem integral_sq_eq_zero_of_wordMoments (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (hinj : Function.Injective f)
    (h : C(X, ℝ))
    (hm : ∀ (n : ℕ) (w : Fin n → C), ∫ x, h x * wordFeature f w x ∂μ = 0) :
    ∫ x, (h x) ^ 2 ∂μ = 0 := by
  have hs : (coordinateAlgebra f hf : Set C(X, ℝ)) ⊆
      {p : C(X, ℝ) | pairingCLM μ h p = 0} :=
    coordinateAlgebra_le_pairing_ker μ f hf h hm
  have hc : IsClosed {p : C(X, ℝ) | pairingCLM μ h p = 0} :=
    isClosed_eq (pairingCLM μ h).continuous continuous_const
  have hh : h ∈ closure (coordinateAlgebra f hf : Set C(X, ℝ)) := by
    change h ∈ (coordinateAlgebra f hf).topologicalClosure
    rw [coordinateAlgebra_topologicalClosure f hf hinj]
    trivial
  have hz : pairingCLM μ h h = 0 := (closure_minimal hs hc) hh
  change (∫ x, h x * h x ∂μ) = 0 at hz
  simpa only [pow_two] using hz

variable [Measure.IsOpenPosMeasure μ]

theorem continuous_eq_zero_of_integral_sq_eq_zero (h : C(X, ℝ))
    (hz : ∫ x, (h x) ^ 2 ∂μ = 0) : h = 0 := by
  have hi : Integrable (fun x => (h x) ^ 2) μ :=
    (h.continuous.pow 2).integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  have hae : (fun x => (h x) ^ 2) =ᵐ[μ] 0 :=
    (integral_eq_zero_iff_of_nonneg (fun x => sq_nonneg (h x)) hi).mp hz
  have hall : (fun x => (h x) ^ 2) = (fun _ : X => (0 : ℝ)) :=
    Measure.eq_of_ae_eq hae (h.continuous.pow 2) continuous_const
  ext x
  have hx : (h x) ^ 2 = 0 := congrFun hall x
  change h x = 0
  nlinarith [sq_nonneg (h x)]

theorem eq_zero_of_wordMoments (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (hinj : Function.Injective f)
    (h : C(X, ℝ))
    (hm : ∀ (n : ℕ) (w : Fin n → C), ∫ x, h x * wordFeature f w x ∂μ = 0) : h = 0 :=
  continuous_eq_zero_of_integral_sq_eq_zero μ h
    (integral_sq_eq_zero_of_wordMoments μ f hf hinj h hm)

end GRWTSK.Analysis.InnerProductSpace.ContinuousWordMoments
