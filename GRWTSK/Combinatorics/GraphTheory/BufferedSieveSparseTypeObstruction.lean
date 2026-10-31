/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.GraphSandwichDiffusion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-specific sparse-type obstruction for the buffered arithmetic kernel

This is a NEW upper consumer of the actual q = 1 bufferedDiagonalKernel,
not a claim that any positive diffusion mass implies arithmetic density.
The original lower theorem remains untouched.

For the inclusive scope {1,...,N}, every raw q=1 target weight is at
least N and at most 2N; the source-equality boost is between one and
two. Therefore the exact outgoing normalizer is at least N squared,
each transition is at most 4/N, and every positive-time type mass is
at most 4/N times the number of states in the specified type fiber.

When the type is ordinary primality, combining this finite inequality
with the classical prime density zero gives decay of prime-type mass.
That external asymptotic implication is NOT claimed as a Lean theorem
here. No Möbius cancellation, signed RH estimate, PNT proof, or prime
typing of a different source is inferred from the stochastic model.
-/

namespace GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel

/-- Every target of the q=1 source lies in the coprime survivor set. -/
theorem coprime_one (n : ℕ) : Nat.Coprime n 1 := by
  simp

/-- For q=1, all N in-scope targets contribute at least N to the
diagonal row normalizer. This is the missing lower bound needed for
a source-specific *upper* transition estimate. -/
theorem bufferedDiagonalRowMass_one_ge_cutoff_sq
    (N : ℕ) (hN : 1 ≤ N) (source : ℕ) :
    (N : ℝ) * (N : ℝ) ≤
      ∑ target ∈ scope N,
        bufferedDiagonalEdgeWeight 1 N source target := by
  have hweight : ∀ target ∈ scope N,
      (N : ℝ) ≤ bufferedDiagonalEdgeWeight 1 N source target := by
    intro target ht
    exact (bufferedRadicalWeight_ge_cutoff_of_coprime
      1 N target (coprime_one target)).trans
        (bufferedRadicalWeight_le_edge 1 N source target)
  calc
    (N : ℝ) * (N : ℝ) =
        ((scope N).card : ℝ) * (N : ℝ) := by
      rw [scope_card N hN]
    _ = ∑ _target ∈ scope N, (N : ℝ) := by simp
    _ ≤ ∑ target ∈ scope N,
          bufferedDiagonalEdgeWeight 1 N source target :=
      Finset.sum_le_sum hweight

/-- The true, normalized q=1 edge probability is at most 4/N
for EVERY ordered in-scope pair; no PNT or asymptotic input is used. -/
theorem bufferedDiagonalKernel_one_transition_le_four_div_cutoff
    (N : ℕ) (hN : 1 ≤ N)
    (source target : ℕ) (ht : target ∈ scope N) :
    (bufferedDiagonalKernel 1 N hN).transition source target ≤
      (4 : ℝ) / (N : ℝ) := by
  have hNpos : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast (show 0 < N by omega)
  have hrowpos :
      0 < ∑ y ∈ scope N,
          bufferedDiagonalEdgeWeight 1 N source y :=
    bufferedDiagonalRowMass_pos 1 N hN source
  have hrowlower :
      (N : ℝ) * (N : ℝ) ≤
        ∑ y ∈ scope N, bufferedDiagonalEdgeWeight 1 N source y :=
    bufferedDiagonalRowMass_one_ge_cutoff_sq N hN source
  have hedge :
      bufferedDiagonalEdgeWeight 1 N source target ≤
        (4 : ℝ) * (N : ℝ) :=
    bufferedDiagonalEdgeWeight_le_four_cutoff 1 N source target ht
  change (if target ∈ scope N then
      bufferedDiagonalEdgeWeight 1 N source target /
        (∑ y ∈ scope N, bufferedDiagonalEdgeWeight 1 N source y)
    else 0) ≤ (4 : ℝ) / (N : ℝ)
  rw [if_pos ht]
  apply (div_le_div_iff₀ hrowpos hNpos).mpr
  calc
    bufferedDiagonalEdgeWeight 1 N source target * (N : ℝ) ≤
        ((4 : ℝ) * (N : ℝ)) * (N : ℝ) :=
      mul_le_mul_of_nonneg_right hedge hNpos.le
    _ = ((N : ℝ) * (N : ℝ)) * 4 := by ring
    _ ≤ (∑ y ∈ scope N,
          bufferedDiagonalEdgeWeight 1 N source y) * 4 :=
      mul_le_mul_of_nonneg_right hrowlower (by norm_num)

/-- The cutoff upper bound remains valid after EVERY positive number
of steps and for every nonnegative initial unit-mass distribution. -/
theorem bufferedDiagonalKernel_one_evolve_succ_le_four_div_cutoff
    (N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ x ∈ scope N, 0 ≤ initial x)
    (initial_mass_one : (∑ x ∈ scope N, initial x) = 1)
    (depth target : ℕ) (target_mem : target ∈ scope N) :
    (bufferedDiagonalKernel 1 N hN).evolve initial (depth + 1) target ≤
      (4 : ℝ) / (N : ℝ) := by
  classical
  let K := bufferedDiagonalKernel 1 N hN
  have hnonneg :
      ∀ x ∈ scope N, 0 ≤ K.evolve initial depth x :=
    K.evolve_nonneg initial initial_nonneg depth
  have hmass :
      (∑ x ∈ scope N, K.evolve initial depth x) = 1 := by
    calc
      (∑ x ∈ scope N, K.evolve initial depth x) =
          ∑ x ∈ scope N, initial x :=
        K.sum_evolve_eq_sum initial depth
      _ = 1 := initial_mass_one
  change ∑ x ∈ scope N,
      K.evolve initial depth x * K.transition x target ≤
        (4 : ℝ) / (N : ℝ)
  calc
    ∑ x ∈ scope N,
        K.evolve initial depth x * K.transition x target ≤
        ∑ x ∈ scope N,
          K.evolve initial depth x * ((4 : ℝ) / (N : ℝ)) := by
      apply Finset.sum_le_sum
      intro x hx
      exact mul_le_mul_of_nonneg_left
        (bufferedDiagonalKernel_one_transition_le_four_div_cutoff
          N hN x target target_mem) (hnonneg x hx)
    _ = (∑ x ∈ scope N, K.evolve initial depth x) *
          ((4 : ℝ) / (N : ℝ)) := by rw [Finset.sum_mul]
    _ = (4 : ℝ) / (N : ℝ) := by rw [hmass, one_mul]

/-- A finite *type* is sparse exactly when its declared in-scope fiber is
small. Its probability is bounded by four times the fiber count divided
by the arithmetic cutoff, independently of positive iteration depth. -/
theorem bufferedDiagonalKernel_one_typeMass_le_four_fiber_count
    {TypeLabel : Type*}
    (N : ℕ) (hN : 1 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ x ∈ scope N, 0 ≤ initial x)
    (initial_mass_one : (∑ x ∈ scope N, initial x) = 1)
    (typeOf : ℕ → TypeLabel) (targetType : TypeLabel) (depth : ℕ) :
    (bufferedDiagonalKernel 1 N hN).typeMass initial typeOf
        (depth + 1) targetType ≤
      (((scope N).filter (fun target => typeOf target = targetType)).card : ℝ) *
        ((4 : ℝ) / (N : ℝ)) := by
  classical
  let fiber := (scope N).filter (fun target => typeOf target = targetType)
  change (∑ target ∈ fiber,
      (bufferedDiagonalKernel 1 N hN).evolve initial
        (depth + 1) target) ≤
      ((fiber.card : ℝ) * ((4 : ℝ) / (N : ℝ)))
  calc
    (∑ target ∈ fiber,
        (bufferedDiagonalKernel 1 N hN).evolve initial
          (depth + 1) target) ≤
        ∑ _target ∈ fiber, (4 : ℝ) / (N : ℝ) := by
      apply Finset.sum_le_sum
      intro target ht
      exact bufferedDiagonalKernel_one_evolve_succ_le_four_div_cutoff
        N hN initial initial_nonneg initial_mass_one depth target
        (Finset.mem_filter.mp ht).1
    _ = ((fiber.card : ℝ) * ((4 : ℝ) / (N : ℝ))) := by simp

end GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel
