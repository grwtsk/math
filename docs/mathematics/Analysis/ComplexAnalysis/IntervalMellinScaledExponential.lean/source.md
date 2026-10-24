# Complete source: GRWTSK.Analysis.Complex.IntervalMellinScaledExponential

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `625d1683e862eabb9bc10ddea4eeabfef7e5fcbd` · SHA-256 `1ee82245a9ef9129b37a2d98736e23523c09b005b0b5457e64bb2acc45ab6a67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntervalMellinRangeReduction
import GRWTSK.Analysis.ErrorBounds.ComplexExpScaling

set_option autoImplicit false

/-!
# Scaled exponential samples for the existing Mellin quadrature

The log center/radius and their shared-error accounting are reused unchanged.
Only the finite exponential approximation is replaced. The log-input error is
charged before the scaling proof and is not propagated as a squaring seed error.
The exact source, endpoints, quadrature, and arithmetic obligations are retained.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntervalMellinScaledExponential

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.IntervalMellinQuadrature
open GRWTSK.Analysis.Complex.IntervalMellinElementary
open GRWTSK.Analysis.Complex.IntervalMellinRangeReduction
open GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure
open GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure
open GRWTSK.Analysis.ErrorBounds.ComplexExpScaling
noncomputable section

/-- Separate dyadic scales: k reduces the log input; s reduces its complex exponent. -/
def scaledNodeValue (z : ℂ) (t : ℝ) (k L₂ Lr s M : ℕ) : ℂ :=
  scaledTaylor ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) s M

/-- Log-input error plus the reconstructed, not merely initial, Taylor radius. -/
def scaledNodeError (z : ℂ) (t : ℝ) (k L₂ Lr s M : ℕ) : ℝ :=
  componentBound (z - 1) * reducedLogRadius t k L₂ Lr +
    scaledRadius (reducedNodeBound z t k L₂ Lr) s M

/-- The same nonnegative log center makes the exact reconstruction contractive. -/
theorem reduced_exponent_re_nonpos {z : ℂ} (hz : z.re ≤ 1) {t : ℝ}
    (k L₂ Lr : ℕ) (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)).re ≤ 0 := by
  have hc := reducedLogCenter_nonneg k L₂ Lr hk hL₂ hLr
  simpa only [Complex.mul_re, Complex.sub_re, Complex.one_re,
    Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero] using
    mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hz) hc

/-- The unchanged ray theorem pays for logarithm uncertainty only once. -/
theorem density_to_reduced_exponential {z : ℂ} (hz : z.re ≤ 1) {t : ℝ} (ht : 1 ≤ t)
    (k L₂ Lr : ℕ) (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    ‖density z t - Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))‖ ≤
      componentBound (z - 1) * reducedLogRadius t k L₂ Lr := by
  have hc := reducedLogCenter_nonneg k L₂ Lr hk hL₂ hLr
  have hr := reducedLogCenter_error ht k L₂ Lr hk hL₂ hLr
  have ha : (z - 1).re ≤ 0 := by simpa using sub_nonpos.mpr hz
  exact (norm_exp_ray_sub_le ha (Real.log_nonneg ht) hc).trans
    (mul_le_mul (norm_le_componentBound (z - 1)) hr (abs_nonneg _)
      (componentBound_nonneg (z - 1)))

/-- The guard is checked at B/2^s. Reconstruction pays the full squaring radius. -/
theorem density_scaled_node_error {z : ℂ} (hz : z.re ≤ 1) {t : ℝ} (ht : 1 ≤ t)
    (k L₂ Lr s M : ℕ) (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr)
    (hguard : (reducedNodeBound z t k L₂ Lr / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤
      (1 / 2 : ℝ)) :
    ‖density z t - scaledNodeValue z t k L₂ Lr s M‖ ≤
      scaledNodeError z t k L₂ Lr s M := by
  have hi := density_to_reduced_exponential hz ht k L₂ Lr hk hL₂ hLr
  have he := scaled_exp_error (reduced_argument_bound z t k L₂ Lr)
    (reduced_exponent_re_nonpos hz k L₂ Lr hk hL₂ hLr) s M hguard
  calc
    _ = ‖(density z t - Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))) +
        (Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) -
          scaledNodeValue z t k L₂ Lr s M)‖ := by congr 1; abel
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add hi he)

/-- A separately checked seed and square trace can replace exact polynomial arithmetic.
Exponent division/seed-evaluation error belongs in e_seed; every square error stays in r. -/
theorem density_scaled_trace_error {z : ℂ} (hz : z.re ≤ 1) {t : ℝ} (ht : 1 ≤ t)
    (k L₂ Lr s M : ℕ) (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr)
    (hguard : (reducedNodeBound z t k L₂ Lr / (2 ^ s : ℕ)) / (M + 1 : ℕ) ≤
      (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e_seed : ℝ) (r : ℕ → ℝ)
    (hseed : ‖taylorValue (((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) /
      (2 ^ s : ℕ)) M - acc 0‖ ≤ e_seed)
    (hstep : ∀ j < s, ‖acc (j + 1) - acc j ^ 2‖ ≤ r j) :
    ‖density z t - acc s‖ ≤ componentBound (z - 1) * reducedLogRadius t k L₂ Lr +
      roundedRadius (taylorTail (reducedNodeBound z t k L₂ Lr / (2 ^ s : ℕ)) M +
        e_seed) r s := by
  have hi := density_to_reduced_exponential hz ht k L₂ Lr hk hL₂ hLr
  have he := scaled_exp_trace_error (reduced_argument_bound z t k L₂ Lr)
    (reduced_exponent_re_nonpos hz k L₂ Lr hk hL₂ hLr) s M hguard acc e_seed r hseed hstep
  calc
    _ = ‖(density z t - Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))) +
        (Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) - acc s)‖ := by
      congr 1; abel
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add hi he)

/-- Substitute the new samples into the existing exact covered partition. -/
theorem kernel_scaled_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {z : ℂ} (hz : z.re ≤ 1)
    (k Lr s M : ℕ → ℕ) (L₂ : ℕ) (hL₂ : 0 < L₂)
    (hk : ∀ i < N, (2 : ℝ) ^ k i ≤ x i)
    (_hk₂ : ∀ i < N, x i ≤ (2 : ℝ) ^ (k i + 1))
    (hLr : ∀ i < N, 0 < Lr i)
    (hguard : ∀ i < N,
      (reducedNodeBound z (x i) (k i) L₂ (Lr i) / (2 ^ s i : ℕ)) / (M i + 1 : ℕ) ≤
        (1 / 2 : ℝ)) :
    ‖kernel (x 0) (x N) z - ∑ i ∈ Finset.range N,
      (x (i + 1) - x i) • scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i)‖ ≤
      arithmeticMeshBound x N z + ∑ i ∈ Finset.range N,
        (x (i + 1) - x i) * scaledNodeError z (x i) (k i) L₂ (Lr i) (s i) (M i) := by
  have h := kernel_sample_error x N hx ha (show z.re ≤ (2 : ℝ) by linarith)
    (fun i => scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i))
    (fun i => scaledNodeError z (x i) (k i) L₂ (Lr i) (s i) (M i))
    (fun i hi => density_scaled_node_error hz (ha.le.trans (hx (Nat.zero_le i)))
      (k i) L₂ (Lr i) (s i) (M i) (hk i hi) hL₂ (hLr i hi) (hguard i hi))
  exact h.trans (add_le_add (partitionError_le_arithmeticMeshBound x N z) (le_refl _))

/-- Outer weighted accumulation remains distinct from inner exponential squarings. -/
theorem kernel_scaled_accumulated_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {z : ℂ} (hz : z.re ≤ 1)
    (k Lr s M : ℕ → ℕ) (L₂ : ℕ) (hL₂ : 0 < L₂)
    (hk : ∀ i < N, (2 : ℝ) ^ k i ≤ x i)
    (hk₂ : ∀ i < N, x i ≤ (2 : ℝ) ^ (k i + 1))
    (hLr : ∀ i < N, 0 < Lr i)
    (hguard : ∀ i < N,
      (reducedNodeBound z (x i) (k i) L₂ (Lr i) / (2 ^ s i : ℕ)) / (M i + 1 : ℕ) ≤
        (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e : ℕ → ℝ) (h0 : acc 0 = 0)
    (hstep : ∀ i < N, ‖acc (i + 1) - (acc i + (x (i + 1) - x i) •
      scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i))‖ ≤ e i) :
    ‖kernel (x 0) (x N) z - acc N‖ ≤ arithmeticMeshBound x N z +
      (∑ i ∈ Finset.range N, (x (i + 1) - x i) *
        scaledNodeError z (x i) (k i) L₂ (Lr i) (s i) (M i)) + ∑ i ∈ Finset.range N, e i := by
  have hq := kernel_scaled_error x N hx ha hz k Lr s M L₂ hL₂ hk hk₂ hLr hguard
  have hs := sum_from_step_errors
    (fun i => (x (i + 1) - x i) • scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i))
    acc e h0 N hstep
  let Q : ℂ := ∑ i ∈ Finset.range N,
    (x (i + 1) - x i) • scaledNodeValue z (x i) (k i) L₂ (Lr i) (s i) (M i)
  calc
    _ = ‖(kernel (x 0) (x N) z - Q) + (Q - acc N)‖ := by congr 1; abel
    _ ≤ ‖kernel (x 0) (x N) z - Q‖ + ‖Q - acc N‖ := norm_add_le _ _
    _ ≤ _ := add_le_add hq hs

/-- Parameter one remains exactly one, with zero constructed node error. -/
theorem unit_parameter_scaled_exact (t : ℝ) (k L₂ Lr s : ℕ) :
    scaledNodeValue 1 t k L₂ Lr s 1 = 1 ∧ scaledNodeError 1 t k L₂ Lr s 1 = 0 := by
  simp [scaledNodeValue, scaledNodeError, reducedNodeBound, componentBound, (zero_exponent_exact s).1, (zero_exponent_exact s).2]

end
end GRWTSK.Analysis.Complex.IntervalMellinScaledExponential
```
