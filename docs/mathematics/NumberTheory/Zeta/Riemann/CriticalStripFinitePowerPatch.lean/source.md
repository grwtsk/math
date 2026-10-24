# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858` · SHA-256 `644e5727bc7c804586c9334ea097c91eb3f74114574b54aa9ef434038433e339`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch

set_option autoImplicit false

/-!
# Finite power enclosures feeding the actual zeta patch

A finite sum of complex powers is not yet an executable certified evaluator.
`FinitePowerEnclosure` requires an actual enclosure theorem for every included
positive-integer power and for the endpoint term. Its pure soundness proof combines
those finite errors with the already sourced infinite Mellin tail. A separate
strict sample/variation margin is still necessary for a nonvanishing patch.

No floating-point value, rational table or filename is promoted to a power theorem.
The auxiliary rational enclosure calculation distributed with this source remains
external and unverified by Lean until its transcendental bounds are replayed.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex Set

noncomputable section

/-- Proof-bearing evaluations on the complete positive-index set, with the endpoint
power kept separate. Values outside Icc 1 N are not consumed. -/
structure FinitePowerEnclosure (N : ℕ) (s : ℂ) where
  value : ℕ → ℂ
  error : ℕ → ℝ
  error_nonneg : ∀ k ∈ Finset.Icc 1 N, 0 ≤ error k
  encloses : ∀ k ∈ Finset.Icc 1 N, ‖(k : ℂ) ^ (-s) - value k‖ ≤ error k
  endpoint : ℂ
  endpoint_error : ℝ
  endpoint_error_nonneg : 0 ≤ endpoint_error
  endpoint_encloses : ‖(N : ℂ) ^ (1 - s) - endpoint‖ ≤ endpoint_error

namespace FinitePowerEnclosure

variable {N : ℕ} {s : ℂ}

/-- Finite arithmetic expression; there is no quadrature call in this sample. -/
def sample (e : FinitePowerEnclosure N s) : ℂ :=
  (s - 1) * (∑ k ∈ Finset.Icc 1 N, e.value k) + e.endpoint

def finiteError (e : FinitePowerEnclosure N s) : ℝ :=
  ‖s - 1‖ * (∑ k ∈ Finset.Icc 1 N, e.error k) + e.endpoint_error

lemma finiteError_nonneg (e : FinitePowerEnclosure N s) : 0 ≤ e.finiteError := by
  apply add_nonneg
  · exact mul_nonneg (norm_nonneg _) (Finset.sum_nonneg e.error_nonneg)
  · exact e.endpoint_error_nonneg

/-- All errors are summed; no omitted term can be replaced by a diagonal sample. -/
theorem finite_sum_error (e : FinitePowerEnclosure N s) :
    ‖finiteDirichletPowerSum N s - ∑ k ∈ Finset.Icc 1 N, e.value k‖ ≤
      ∑ k ∈ Finset.Icc 1 N, e.error k := by
  rw [finiteDirichletPowerSum, ← Finset.sum_sub_distrib]
  exact (norm_sum_le _ _).trans (Finset.sum_le_sum e.encloses)

/-- The finite power expression is enclosed by its actual termwise source bounds. -/
theorem finite_model_error (e : FinitePowerEnclosure N s) :
    ‖finitePowerPoleModel N s - e.sample‖ ≤ e.finiteError := by
  have heq : finitePowerPoleModel N s - e.sample =
      (s - 1) * (finiteDirichletPowerSum N s - ∑ k ∈ Finset.Icc 1 N, e.value k) +
        ((N : ℂ) ^ (1 - s) - e.endpoint) := by
    unfold finitePowerPoleModel sample
    ring
  rw [heq]
  calc
    _ ≤ ‖(s - 1) * (finiteDirichletPowerSum N s -
          ∑ k ∈ Finset.Icc 1 N, e.value k)‖ +
        ‖(N : ℂ) ^ (1 - s) - e.endpoint‖ := norm_add_le _ _
    _ ≤ e.finiteError := by
      rw [norm_mul]
      exact add_le_add
        (mul_le_mul_of_nonneg_left e.finite_sum_error (norm_nonneg _)) e.endpoint_encloses

/-- Integration tail and finite evaluation error have distinct origins. -/
def sourceError (e : FinitePowerEnclosure N s) (σ : ℝ) : ℝ :=
  ‖s‖ * ‖s - 1‖ * ((N : ℝ) ^ (-σ) / σ) + e.finiteError

lemma sourceError_nonneg (e : FinitePowerEnclosure N s) {σ : ℝ} (hσ : 0 < σ) :
    0 ≤ e.sourceError σ := by
  exact add_nonneg
    (mul_nonneg (mul_nonneg (norm_nonneg _) (norm_nonneg _))
      (div_nonneg (Real.rpow_nonneg (Nat.cast_nonneg _) _) hσ.le)) e.finiteError_nonneg

/-- The actual pole-normalized zeta sample enclosure, with no missing quadrature
premise and no implied nonvanishing. -/
theorem source_encloses (e : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) {σ : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - e.sample‖ ≤ e.sourceError σ := by
  calc
    ‖poleNormalizedZeta s - e.sample‖ =
        ‖(poleNormalizedZeta s - finitePowerPoleModel N s) +
          (finitePowerPoleModel N s - e.sample)‖ := by congr 1; ring
    _ ≤ ‖poleNormalizedZeta s - finitePowerPoleModel N s‖ +
        ‖finitePowerPoleModel N s - e.sample‖ := norm_add_le _ _
    _ ≤ e.sourceError σ := add_le_add (finitePower_source_error hN hσ hs) e.finite_model_error

/-- Separate rational upper bounds for the two geometric factors can be used
without weakening them to one ambient modulus bound. -/
theorem sourceError_le_factorBounds (e : FinitePowerEnclosure N s)
    {σ R₀ R₁ : ℝ} (hσ : 0 < σ) (h₀ : ‖s‖ ≤ R₀) (h₁ : ‖s - 1‖ ≤ R₁) :
    e.sourceError σ ≤ R₀ * R₁ * ((N : ℝ) ^ (-σ) / σ) +
      R₁ * (∑ k ∈ Finset.Icc 1 N, e.error k) + e.endpoint_error := by
  have h₀pos : 0 ≤ R₀ := (norm_nonneg s).trans h₀
  have ht : 0 ≤ (N : ℝ) ^ (-σ) / σ :=
    div_nonneg (Real.rpow_nonneg (Nat.cast_nonneg N) _) hσ.le
  have htail := mul_le_mul_of_nonneg_right
    (mul_le_mul h₀ h₁ (norm_nonneg _) h₀pos) ht
  have hterms := mul_le_mul_of_nonneg_right h₁ (Finset.sum_nonneg e.error_nonneg)
  unfold sourceError finiteError
  linarith

/-- This coarser expression is useful when complex norms are supplied by rational
upper bounds. It must be proved, not substituted for the exact error by a label. -/
theorem source_error_with_modulus_bound (e : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) {σ B : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - e.sample‖ ≤
      B * (B + 1) * ((N : ℝ) ^ (-σ) / σ) +
        (B + 1) * (∑ k ∈ Finset.Icc 1 N, e.error k) + e.endpoint_error := by
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      ‖s - 1‖ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa using add_le_add_right hB 1
  have hsum : 0 ≤ ∑ k ∈ Finset.Icc 1 N, e.error k := Finset.sum_nonneg e.error_nonneg
  calc
    _ = ‖(poleNormalizedZeta s - finitePowerPoleModel N s) +
        (finitePowerPoleModel N s - e.sample)‖ := by congr 1; ring
    _ ≤ ‖poleNormalizedZeta s - finitePowerPoleModel N s‖ +
        ‖finitePowerPoleModel N s - e.sample‖ := norm_add_le _ _
    _ ≤ B * (B + 1) * ((N : ℝ) ^ (-σ) / σ) + e.finiteError :=
      add_le_add (finitePower_source_error_uniform hN hσ hs hB) e.finite_model_error
    _ ≤ _ := by
      unfold finiteError
      have h := mul_le_mul_of_nonneg_right hsub hsum
      linarith

/-- Explicit normalized-source derivative majorant from the existing Mellin proof. -/
def derivativeBound (a B : ℝ) : ℝ :=
  1 + (2 * B + 1) * (1 / a) + B * (B + 1) * (1 / a ^ 2)

/-- Finite source evaluations, infinite integration tail, and whole-region derivative
control combine in one actual patch. The strict margin remains an explicit input. -/
def toBoundedPatch (e : FinitePowerEnclosure N s) (hN : 1 ≤ N)
    {U V : Set ℂ} (a B b r : ℝ) (ha : 0 < a) (hB : 0 ≤ B) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : s ∈ V) (hUV : U ⊆ V)
    (hreal : ∀ z ∈ V, 2 * a ≤ z.re) (hmodulus : ∀ z ∈ V, ‖z‖ ≤ B)
    (hradius : ∀ z ∈ U, ‖z - s‖ ≤ r) (hsample : b ≤ ‖e.sample‖)
    (hmargin : e.sourceError (2 * a) + derivativeBound a B * r < b) :
    SampleVariationPatch poleNormalizedZeta U := by
  have hσ : 0 < 2 * a := by positivity
  have hd : 0 ≤ derivativeBound a B := by unfold derivativeBound; positivity
  exact SampleVariationPatch.ofDerivativeEnclosure s e.sample b
    (e.sourceError (2 * a)) (derivativeBound a B) r
    (e.sourceError_nonneg hσ) hd hr hconv hc hUV
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z hz => poleNormalized_deriv_norm_le ha (hreal z hz) (hmodulus z hz))
    hradius hsample (e.source_encloses hN hσ (hreal s hc)) hmargin

/-- A true zero defeats the strict margin regardless of cutoff refinement. -/
theorem no_strict_margin_at_source_zero (e : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) {σ : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re)
    (hzero : poleNormalizedZeta s = 0) : ¬ e.sourceError σ < ‖e.sample‖ :=
  no_strict_sample_margin_at_zero hzero (e.source_encloses hN hσ hs)

end FinitePowerEnclosure

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
