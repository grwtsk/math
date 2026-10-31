/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Signed two-parameter Abel transport for the actual Liouville causal kernel

An arithmetic-independent, exact finite rectangular summation identity is
proved below. The source-specific coefficients and integral kernel use the
original ArithmeticFunction.liouville and CCC.pickupResponse, without
changing signs, indices, causal weights, or the squareful zero conventions
of the separate Möbius source.

The scalar mixed-difference polynomial has an exact decomposition into
products of discrete response differences; it is nonnegative under the
explicit decreasing/convex assumptions. Its application to the actual
causal response, and the polynomial integral-moment estimate, are proved
mathematically in the pinned review but NOT promoted to Lean-checked
proofs by this candidate. A separate signed rectangular-prefix upper
estimate remains a genuinely unproved arithmetic premise.

The unpublished local LiouvilleWeightedCyclicEnergy.lean was not read,
replaced, rebased, or incorporated here. The local Git index lock was not
accessed. No new research axiom or unconditional RH theorem is inserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy

/-- Ordered integer lattice in the complete 1..N square, BEFORE the
triangular support mask is applied. This keeps zero endpoint entries. -/
def lattice (N : ℕ) : Finset (ℕ × ℕ) :=
  (Finset.Icc 1 N).product (Finset.Icc 1 N)

/-- Coordinatewise prefix order for the two variables (base, positive gap). -/
def prefixLE (mg pq : ℕ × ℕ) : Prop :=
  mg.1 ≤ pq.1 ∧ mg.2 ≤ pq.2

/-- Original signed Liouville product, including every base/gap label.
Only the explicitly visible triangular cutoff changes the coefficient. -/
def signedPair (N m g : ℕ) : ℝ :=
  if m + g < N then coefficient m * coefficient (m + g) else 0

/-- Signed rectangle prefix with the actual triangular active source. -/
def rectangularPrefix (N p q : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    if prefixLE mg (p, q) then signedPair N mg.1 mg.2 else 0

/-- A source-independent finite mixed-difference weight inventory. -/
def tailOfOmega (N : ℕ) (omega : ℕ → ℕ → ℝ) (m g : ℕ) : ℝ :=
  ∑ pq ∈ lattice N,
    if prefixLE (m, g) pq then omega pq.1 pq.2 else 0

/-- The actual finite weighted rectangles, without taking absolute values
of the signed source observations. -/
def rectangularOmegaAggregate (N : ℕ) (omega : ℕ → ℕ → ℝ) : ℝ :=
  ∑ pq ∈ lattice N,
    rectangularPrefix N pq.1 pq.2 * omega pq.1 pq.2

/-- The finite signed source weighted by the tail kernel of omega. -/
def tailWeightedAggregate (N : ℕ) (omega : ℕ → ℕ → ℝ) : ℝ :=
  ∑ mg ∈ lattice N,
    signedPair N mg.1 mg.2 * tailOfOmega N omega mg.1 mg.2

/-- EXACT finite double Abel/Fubini equality: every signed source
coefficient and every mixed kernel weight occurs exactly once.
The theorem does not assume omega nonnegative or a correlation saving. -/
theorem tailWeightedAggregate_eq_rectangularOmegaAggregate
    (N : ℕ) (omega : ℕ → ℕ → ℝ) :
    tailWeightedAggregate N omega = rectangularOmegaAggregate N omega := by
  classical
  unfold tailWeightedAggregate rectangularOmegaAggregate tailOfOmega rectangularPrefix
  calc
    (∑ mg ∈ lattice N,
        signedPair N mg.1 mg.2 *
          ∑ pq ∈ lattice N,
            if prefixLE mg pq then omega pq.1 pq.2 else 0) =
      ∑ mg ∈ lattice N, ∑ pq ∈ lattice N,
        if prefixLE mg pq then
          signedPair N mg.1 mg.2 * omega pq.1 pq.2 else 0 := by
      apply Finset.sum_congr rfl
      intro mg _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro pq _
      split_ifs <;> simp
    _ = ∑ pq ∈ lattice N, ∑ mg ∈ lattice N,
          if prefixLE mg pq then
            signedPair N mg.1 mg.2 * omega pq.1 pq.2 else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ pq ∈ lattice N,
          (∑ mg ∈ lattice N,
            if prefixLE mg pq then signedPair N mg.1 mg.2 else 0) *
              omega pq.1 pq.2 := by
      apply Finset.sum_congr rfl
      intro pq _
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro mg _
      split_ifs <;> simp

/-- The original response Gram kernel on the (base, gap) lattice.
The difference between g=0 and g>0 is explicit in the source. -/
def causalKernel (T : ℝ) (m g : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T, pickupResponse m u * pickupResponse (m + g) u

/-- Mixed forward difference in both integer source coordinates. -/
def causalOmega (T : ℝ) (p q : ℕ) : ℝ :=
  causalKernel T p q - causalKernel T (p + 1) q -
    causalKernel T p (q + 1) + causalKernel T (p + 1) (q + 1)

/-- Full original signed positive-gap kernel aggregate, with the exact
zero-birth boundary retained by the original integral kernel. -/
def positiveGapAggregate (N : ℕ) : ℝ :=
  ∑ mg ∈ lattice N,
    signedPair N mg.1 mg.2 * causalKernel (Real.log (N : ℝ)) mg.1 mg.2

/-- The crucial kernel telescoping statement is kept VISIBLE as the
specific source analytical obligation, not assumed silently. -/
def KernelTailIdentity (N : ℕ) : Prop :=
  ∀ mg ∈ lattice N,
    causalKernel (Real.log (N : ℝ)) mg.1 mg.2 =
      tailOfOmega N (causalOmega (Real.log (N : ℝ))) mg.1 mg.2

/-- A conditional exact source transport using only the named kernel
telescoping hypothesis. It does NOT claim that the kernel has been
integral-verified by Lean. -/
theorem positiveGapAggregate_eq_rectangles_of_tail
    (N : ℕ) (h : KernelTailIdentity N) :
    positiveGapAggregate N =
      rectangularOmegaAggregate N (causalOmega (Real.log (N : ℝ))) := by
  unfold positiveGapAggregate
  calc
    (∑ mg ∈ lattice N,
        signedPair N mg.1 mg.2 *
          causalKernel (Real.log (N : ℝ)) mg.1 mg.2) =
      tailWeightedAggregate N (causalOmega (Real.log (N : ℝ))) := by
      unfold tailWeightedAggregate
      apply Finset.sum_congr rfl
      intro mg hmg
      rw [h mg hmg]
    _ = _ := tailWeightedAggregate_eq_rectangularOmegaAggregate N _

/-- The raw four-corner integrand at one physical time. -/
def mixedIntegrand (v : ℕ → ℝ) (p q : ℕ) : ℝ :=
  v p * v (p + q) - v (p + 1) * v (p + q + 1) -
    v p * v (p + q + 1) + v (p + 1) * v (p + q + 2)

/-- Pointwise algebra separates two NONNEGATIVE terms under convexity. -/
theorem mixedIntegrand_decomposition (v : ℕ → ℝ) (p q : ℕ) :
    mixedIntegrand v p q =
      (v p - v (p + 1)) * (v (p + q) - v (p + q + 1)) +
      v (p + 1) *
        ((v (p + q) - v (p + q + 1)) -
          (v (p + q + 1) - v (p + q + 2))) := by
  unfold mixedIntegrand
  ring

/-- The exact structural positivity lemma. For the ACTUAL causal
response these monotonicity/convexity obligations remain to be discharged
in the source-bound real analysis verification. -/
theorem mixedIntegrand_nonneg_of_convex
    (v : ℕ → ℝ) (p q : ℕ)
    (hv : ∀ n : ℕ, 0 ≤ v n)
    (hdecreasing : ∀ n : ℕ, 0 ≤ v n - v (n + 1))
    (hconvex : ∀ n : ℕ,
      v (n + 1) - v (n + 2) ≤ v n - v (n + 1)) :
    0 ≤ mixedIntegrand v p q := by
  rw [mixedIntegrand_decomposition]
  apply add_nonneg
  · exact mul_nonneg (hdecreasing p) (hdecreasing (p + q))
  · exact mul_nonneg (hv (p + 1)) (sub_nonneg.mpr (hconvex (p + q)))

/-- Abstract positive-weight one-sided transport. This is a
conditional lemma, not a proof that the arithmetic prefix is small. -/
theorem rectangularOmegaAggregate_le_of_prefix_budget
    (N : ℕ) (omega : ℕ → ℕ → ℝ) (B : ℝ)
    (homega : ∀ pq ∈ lattice N, 0 ≤ omega pq.1 pq.2)
    (hprefix : ∀ pq ∈ lattice N,
      rectangularPrefix N pq.1 pq.2 ≤ B) :
    rectangularOmegaAggregate N omega ≤
      B * (∑ pq ∈ lattice N, omega pq.1 pq.2) := by
  unfold rectangularOmegaAggregate
  calc
    (∑ pq ∈ lattice N,
        rectangularPrefix N pq.1 pq.2 * omega pq.1 pq.2) ≤
      ∑ pq ∈ lattice N, B * omega pq.1 pq.2 := by
        apply Finset.sum_le_sum
        intro pq hpq
        exact mul_le_mul_of_nonneg_right (hprefix pq hpq) (homega pq hpq)
    _ = _ := by rw [Finset.mul_sum]

/-- The RH-strength rectangle premise remains open; it is NOT
introduced as an axiom or as an automatic theorem. -/
def UniformRectangularArithmeticSupplier : Prop :=
  ∀ δ : ℝ, 0 < δ →
    ∃ Cδ : ℝ, 0 ≤ Cδ ∧
      ∀ N : ℕ, 2 ≤ N → ∀ p q : ℕ,
        1 ≤ p → 1 ≤ q → p + q < N →
        rectangularPrefix N p q ≤ Cδ * ((p * q : ℕ) : ℝ) ^ (1 / 2 + δ)

end GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel
