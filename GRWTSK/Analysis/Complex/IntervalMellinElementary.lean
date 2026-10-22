/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntervalMellinQuadrature
import GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure
import GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure

set_option autoImplicit false

/-!
# Finite elementary samples for the existing Mellin quadrature

No new density or kernel is defined. Logarithms are enclosed by reciprocal
sums at exact nodes, and exponentials by finite Taylor values with a checked
ratio bound. The resulting sample error supplies the parent's former hv input.
Output sums are exact mathematical arithmetic; a rounded accumulator is
handled separately by local step-error premises. No zeta data or tail theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntervalMellinElementary

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.IntervalMellinQuadrature
open GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure
open GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure

noncomputable section

/-- Reuse the existing affine nodes, now to enclose the logarithm on [1,t]. -/
def logCenter (t : ℝ) (L : ℕ) : ℝ :=
  (lowerSum (uniformNodes 1 t L) L + upperSum (uniformNodes 1 t L) L) / 2

def logRadius (t : ℝ) (L : ℕ) : ℝ :=
  (upperSum (uniformNodes 1 t L) L - lowerSum (uniformNodes 1 t L) L) / 2

/-- This is a derived logarithm enclosure, not a supplied floating-point value. -/
theorem logCenter_error {t : ℝ} (ht : 1 ≤ t) (L : ℕ) (hL : 0 < L) :
    |Real.log t - logCenter t L| ≤ logRadius t L := by
  have h := midpoint_error (uniformNodes 1 t L) (uniformNodes_monotone ht L)
    (by simp) L
  simpa only [uniformNodes_zero, uniformNodes_end 1 t L hL, Real.log_one, sub_zero,
    logCenter, logRadius] using h

theorem logRadius_nonneg {t : ℝ} (ht : 1 ≤ t) (L : ℕ) (hL : 0 < L) :
    0 ≤ logRadius t L :=
  (abs_nonneg _).trans (logCenter_error ht L hL)

/-- Exact radius, not only an asymptotic claim. Large t requires a finer log grid. -/
theorem logRadius_eq {t : ℝ} (ht : 1 ≤ t) (L : ℕ) (hL : 0 < L) :
    logRadius t L = (t - 1) ^ 2 / (2 * (L : ℝ) * t) := by
  have h := constant_step_gap (uniformNodes 1 t L) L ((t - 1) / (L : ℝ))
    (fun i _ => uniformNodes_step 1 t L i)
  have ht0 : t ≠ 0 := ne_of_gt (lt_of_lt_of_le zero_lt_one ht)
  have hL0 : (L : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hL)
  unfold logRadius
  rw [h, uniformNodes_zero, uniformNodes_end 1 t L hL]
  field_simp [ht0, hL0]

/-- Finite real arithmetic upper bound for both true and approximate exponents. -/
def nodeBound (z : ℂ) (t : ℝ) (L : ℕ) : ℝ :=
  componentBound (z - 1) * (|logCenter t L| + logRadius t L)

/-- Exponent uncertainty caused by the logarithm approximation. -/
def nodeInputError (z : ℂ) (t : ℝ) (L : ℕ) : ℝ :=
  componentBound (z - 1) * logRadius t L

/-- The actual sample: only finite sums, divisions, and natural powers. -/
def nodeValue (z : ℂ) (t : ℝ) (L M : ℕ) : ℂ :=
  taylorValue ((z - 1) * (logCenter t L : ℂ)) M

/-- Separate truncation and logarithm-input error channels. -/
def nodeError (z : ℂ) (t : ℝ) (L M : ℕ) : ℝ :=
  taylorTail (nodeBound z t L) M +
    polynomialRadius (nodeBound z t L) (nodeInputError z t L) M

/-- Norm and coordinate differences for the literal density exponent. -/
theorem node_argument_bounds (z : ℂ) {t : ℝ} (ht : 1 ≤ t) (L : ℕ) (hL : 0 < L) :
    ‖(z - 1) * (Real.log t : ℂ)‖ ≤ nodeBound z t L ∧
    ‖(z - 1) * (logCenter t L : ℂ)‖ ≤ nodeBound z t L ∧
    ‖(z - 1) * (Real.log t : ℂ) - (z - 1) * (logCenter t L : ℂ)‖ ≤
      nodeInputError z t L := by
  have he := logCenter_error ht L hL
  have he0 := logRadius_nonneg ht L hL
  have hq := norm_le_componentBound (z - 1)
  have hq0 := componentBound_nonneg (z - 1)
  have hlog : |Real.log t| ≤ |logCenter t L| + logRadius t L := by
    calc
      _ = |(Real.log t - logCenter t L) + logCenter t L| := by rw [sub_add_cancel]
      _ ≤ |Real.log t - logCenter t L| + |logCenter t L| := abs_add_le _ _
      _ ≤ _ := by linarith
  refine ⟨?_, ?_, ?_⟩
  · simpa [norm_mul, Real.norm_eq_abs, nodeBound] using
      mul_le_mul hq hlog (abs_nonneg _) hq0
  · simpa [norm_mul, Real.norm_eq_abs, nodeBound] using
      mul_le_mul hq (le_add_of_nonneg_right he0) (abs_nonneg (logCenter t L)) hq0
  · have hdiff : (z - 1) * (Real.log t : ℂ) - (z - 1) * (logCenter t L : ℂ) =
        (z - 1) * ((Real.log t - logCenter t L : ℝ) : ℂ) := by push_cast; ring
    rw [hdiff]
    simpa only [norm_mul, Complex.norm_real, Real.norm_eq_abs, nodeInputError] using
      mul_le_mul hq he (abs_nonneg _) hq0

/-- All sample accuracy is derived after the finite ratio guard has been proved. -/
theorem density_node_error (z : ℂ) {t : ℝ} (ht : 1 ≤ t) (L M : ℕ) (hL : 0 < L)
    (hguard : nodeBound z t L / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖density z t - nodeValue z t L M‖ ≤ nodeError z t L M := by
  have h := node_argument_bounds z ht L hL
  have hB0 : 0 ≤ nodeBound z t L := (norm_nonneg _).trans h.1
  have he0 : 0 ≤ nodeInputError z t L := (norm_nonneg _).trans h.2.2
  exact exponential_enclosure hB0 he0 h.1 h.2.1 h.2.2 M hguard

/-- Replace the parent's sample-enclosure premise by constructed elementary samples. -/
theorem kernel_elementary_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {β : ℝ} {z : ℂ} (hz : z.re ≤ β)
    (L M : ℕ → ℕ) (hL : ∀ i < N, 0 < L i)
    (hguard : ∀ i < N, nodeBound z (x i) (L i) / (M i + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖kernel (x 0) (x N) z -
      ∑ i ∈ Finset.range N, (x (i + 1) - x i) • nodeValue z (x i) (L i) (M i)‖ ≤
      partitionError x N β z +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * nodeError z (x i) (L i) (M i) := by
  apply kernel_sample_error x N hx ha hz
  intro i hi
  exact density_node_error z (ha.le.trans (hx (Nat.zero_le i)))
    (L i) (M i) (hL i hi) (hguard i hi)

/-- For Re(z)<=2 the inherited spatial density majorant is exactly one.
This gives a finite arithmetic mesh radius, without another exponential call. -/
def arithmeticMeshBound (x : ℕ → ℝ) (N : ℕ) (z : ℂ) : ℝ :=
  componentBound (z - 1) / 2 *
    ∑ i ∈ Finset.range N, (x (i + 1) - x i) ^ 2

theorem partitionError_le_arithmeticMeshBound (x : ℕ → ℝ) (N : ℕ) (z : ℂ) :
    partitionError x N 2 z ≤ arithmeticMeshBound x N z := by
  have h := mul_le_mul_of_nonneg_right
    (div_le_div_of_nonneg_right (norm_le_componentBound (z - 1)) (by norm_num : (0 : ℝ) ≤ 2))
    (Finset.sum_nonneg (fun i (_ : i ∈ Finset.range N) => sq_nonneg (x (i + 1) - x i)))
  simpa [partitionError, spatialSlopeBound, densityBound, arithmeticMeshBound,
    show (2 : ℝ) - 1 - 1 = 0 by norm_num] using h

/-- Final arithmetic errors are accumulated from local checks of each weighted term.
All radii are finite arithmetic for rational nodes and rational complex components.
A proof of exact rational accumulation may set step errors to zero; floats may not. -/
theorem kernel_accumulated_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {z : ℂ} (hz : z.re ≤ 2)
    (L M : ℕ → ℕ) (hL : ∀ i < N, 0 < L i)
    (hguard : ∀ i < N, nodeBound z (x i) (L i) / (M i + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e : ℕ → ℝ) (h0 : acc 0 = 0)
    (hstep : ∀ i < N, ‖acc (i + 1) - (acc i +
      (x (i + 1) - x i) • nodeValue z (x i) (L i) (M i))‖ ≤ e i) :
    ‖kernel (x 0) (x N) z - acc N‖ ≤
      arithmeticMeshBound x N z +
        (∑ i ∈ Finset.range N, (x (i + 1) - x i) * nodeError z (x i) (L i) (M i)) +
        ∑ i ∈ Finset.range N, e i := by
  let Q : ℂ := ∑ i ∈ Finset.range N,
    (x (i + 1) - x i) • nodeValue z (x i) (L i) (M i)
  have hq := kernel_elementary_error x N hx ha hz L M hL hguard
  have hmesh := partitionError_le_arithmeticMeshBound x N z
  have ha' := sum_from_step_errors
    (fun i => (x (i + 1) - x i) • nodeValue z (x i) (L i) (M i)) acc e h0 N hstep
  calc
    _ = ‖(kernel (x 0) (x N) z - Q) + (Q - acc N)‖ := by congr 1; abel
    _ ≤ ‖kernel (x 0) (x N) z - Q‖ + ‖Q - acc N‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (hq.trans (add_le_add hmesh (le_refl _))) ha'

/-- Degenerate log interval is exact, not an invented nonzero error. -/
theorem log_one_control (L : ℕ) : logCenter 1 L = 0 ∧ logRadius 1 L = 0 := by
  simp [logCenter, logRadius, lowerSum, upperSum, uniformNodes]

/-- The constant density has an exact one-term elementary value. -/
theorem unit_parameter_control (t : ℝ) (L : ℕ) : nodeValue 1 t L 1 = 1 := by
  simp [nodeValue, taylorValue]

/-- A large exponent does not satisfy the tail guard at an arbitrary short truncation. -/
theorem short_truncation_guard_control : ¬ (4 : ℝ) / (1 + 1 : ℕ) ≤ 1 / 2 := by
  norm_num

end
end GRWTSK.Analysis.Complex.IntervalMellinElementary
