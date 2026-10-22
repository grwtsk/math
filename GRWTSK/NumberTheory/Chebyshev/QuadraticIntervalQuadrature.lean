/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntervalMellinQuadrature
import GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel

set_option autoImplicit false

/-!
# Finite quadrature on the unchanged half-square interval

The same kernel, endpoints, finite family and natural multiplicities feed the
coordinate and evaluation bounds. Mesh error is constructed analytically;
node-value enclosure proofs remain inputs. This supplies no zero-source identity,
complete divisor, omitted tail, prime witness, or arithmetic cancellation bound.
Source draft: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalQuadrature

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.IntervalMellinQuadrature
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
open GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalKernel

noncomputable section

/-- The exact width is reused, not rounded or replaced by an asymptotic equivalent. -/
theorem square_uniform_left_error (n : ℕ) (hn : 1 ≤ n) {β : ℝ} {z : ℂ}
    (hz : z.re ≤ β) (N : ℕ) (hN : 0 < N) :
    ‖squareKernel n z -
      leftSum (uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N) N z‖ ≤
      spatialSlopeBound (squareEndpoint n) (squareEndpoint (n + 1)) β z *
        (2 * (n : ℝ) + 1) ^ 2 / (2 * (N : ℝ)) := by
  simpa only [squareKernel, squareEndpoint_width] using
    uniform_leftSum_error (squareEndpoint_gt_one n hn)
      (squareEndpoint_strict_order n).le hz N hN

/-- This is a proved source candidate for the center-sum evaluation budget.
Each node value still requires its own numerical enclosure proof. -/
theorem square_finite_quadrature_error (n : ℕ) (hn : 1 ≤ n)
    {ι : Type*} (S : Finset ι) (m : ι → ℕ) (c : ι → ℂ) (β : ι → ℝ)
    (N : ℕ) (hN : 0 < N) (v : ι → ℕ → ℂ) (ε : ι → ℕ → ℝ)
    (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hv : ∀ j ∈ S, ∀ i < N,
      ‖density (c j) (uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N i) -
        v j i‖ ≤ ε j i) :
    let x := uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N
    ‖(∑ j ∈ S, (m j : ℂ) * squareKernel n (c j)) -
      ∑ j ∈ S, (m j : ℂ) * (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ ≤
      ∑ j ∈ S, (m j : ℝ) * (partitionError x N (β j) (c j) +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε j i) := by
  dsimp only
  simpa only [uniformNodes_zero, uniformNodes_end _ _ N hN, squareKernel] using
    finite_weighted_sample_error S m c β
      (uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N) N
      (uniformNodes_monotone (squareEndpoint_strict_order n).le N)
      (by simpa using squareEndpoint_gt_one n hn) v ε hc hv

/-- Coordinate, quadrature and sample errors compose for exactly the same family.
Omitted-zero, source-correction and arithmetic-source premises are not manufactured. -/
theorem square_enclosed_quadrature_error (n : ℕ) (hn : 1 ≤ n)
    {ι : Type*} (S : Finset ι) (m : ι → ℕ) (ρ c : ι → ℂ) (r β : ι → ℝ)
    (N : ℕ) (hN : 0 < N) (v : ι → ℕ → ℂ) (ε : ι → ℕ → ℝ)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ β j) (hc : ∀ j ∈ S, (c j).re ≤ β j)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j)
    (hv : ∀ j ∈ S, ∀ i < N,
      ‖density (c j) (uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N i) -
        v j i‖ ≤ ε j i) :
    let x := uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N
    ‖(∑ j ∈ S, (m j : ℂ) * squareKernel n (ρ j)) -
      ∑ j ∈ S, (m j : ℂ) * (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)‖ ≤
      (∑ j ∈ S, (m j : ℝ) *
        (sensitivity (squareEndpoint n) (squareEndpoint (n + 1)) (β j) * r j)) +
      ∑ j ∈ S, (m j : ℝ) * (partitionError x N (β j) (c j) +
        ∑ i ∈ Finset.range N, (x (i + 1) - x i) * ε j i) := by
  let x := uniformNodes (squareEndpoint n) (squareEndpoint (n + 1)) N
  let exactSum := ∑ j ∈ S, (m j : ℂ) * squareKernel n (ρ j)
  let centerSum := ∑ j ∈ S, (m j : ℂ) * squareKernel n (c j)
  let sampleSum := ∑ j ∈ S, (m j : ℂ) *
    (∑ i ∈ Finset.range N, (x (i + 1) - x i) • v j i)
  have htriangle : ‖exactSum - sampleSum‖ ≤
      ‖exactSum - centerSum‖ + ‖centerSum - sampleSum‖ := by
    calc
      _ = ‖(exactSum - centerSum) + (centerSum - sampleSum)‖ := by congr 1; ring
      _ ≤ _ := norm_add_le _ _
  exact htriangle.trans (add_le_add
    (square_finite_enclosure_error n hn S m ρ c r β hρ hc hr)
    (square_finite_quadrature_error n hn S m c β N hN v ε hc hv))

end
end GRWTSK.NumberTheory.Chebyshev.QuadraticIntervalQuadrature
