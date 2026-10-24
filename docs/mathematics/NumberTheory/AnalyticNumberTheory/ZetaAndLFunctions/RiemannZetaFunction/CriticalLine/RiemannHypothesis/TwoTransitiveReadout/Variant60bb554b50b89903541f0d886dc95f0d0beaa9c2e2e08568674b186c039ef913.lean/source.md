# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwoTransitiveReadout.Variant60bb554b50b89903541f0d886dc95f0d0beaa9c2e2e08568674b186c039ef913

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `689c763351713034dd1486e4fcd96ead083278d1` · SHA-256 `60bb554b50b89903541f0d886dc95f0d0beaa9c2e2e08568674b186c039ef913`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.CenteredPermutation

/-!
# A two-transitive 23-slot invariant is scalar on the centered carrier

Batch 23's bilinear obstruction is proved from explicit permutation-family
transitivity and ordered-distinct-pair transitivity. The coefficient matrix
has just its diagonal and off-diagonal values. On the centered carrier it
acts by one scalar, so invariant packaging cannot by itself improve a source
readout. No concrete M23 action or arithmetic equivariance is constructed.

Human framework: grwtsk contributors. Local finite interface and Lean proof:
OpenAI Codex. Matrix and finite-sum laws retain their Mathlib names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.TwoTransitiveReadout

open CenteredPermutation
open scoped BigOperators
noncomputable section

/-- The pair transitive family in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def PairTransitiveFamily {G : Type*} (ρ : G → Equiv.Perm (Fin 23)) : Prop := ∀ i j k l : Fin
23, i ≠ j → k ≠ l → ∃ g : G, ρ g i = k ∧ ρ g j = l
-/
def PairTransitiveFamily {G : Type*} (ρ : G → Equiv.Perm (Fin 23)) : Prop :=
  ∀ i j k l : Fin 23, i ≠ j → k ≠ l → ∃ g : G, ρ g i = k ∧ ρ g j = l

/-- The invariant matrix in this module, with the following exact parameterization.

This defines a condition; no witness is supplied by the definition.
def InvariantMatrix {G : Type*} (ρ : G → Equiv.Perm (Fin 23)) (M : Matrix (Fin 23) (Fin 23) ℚ)
: Prop := ∀ g i j, M (ρ g i) (ρ g j) = M i j
-/
def InvariantMatrix {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (M : Matrix (Fin 23) (Fin 23) ℚ) : Prop :=
  ∀ g i j, M (ρ g i) (ρ g j) = M i j

/-- The common matrix in this module, with the following exact parameterization.

def commonMatrix : Matrix (Fin 23) (Fin 23) ℚ := fun _ _ => 1
-/
def commonMatrix : Matrix (Fin 23) (Fin 23) ℚ := fun _ _ => 1

theorem diagonal_constant {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (htrans : TransitiveFamily ρ) {M : Matrix (Fin 23) (Fin 23) ℚ}
    (hM : InvariantMatrix ρ M) (i : Fin 23) : M i i = M 0 0 := by
  obtain ⟨g, hg⟩ := htrans i 0
  simpa only [hg] using (hM g i i).symm

theorem off_diagonal_constant {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (hpair : PairTransitiveFamily ρ) {M : Matrix (Fin 23) (Fin 23) ℚ}
    (hM : InvariantMatrix ρ M) (i j : Fin 23) (hij : i ≠ j) : M i j = M 0 1 := by
  obtain ⟨g, hi, hj⟩ := hpair i j 0 1 hij (by decide)
  simpa only [hi, hj] using (hM g i j).symm

theorem invariant_matrix_two_coefficients {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (htrans : TransitiveFamily ρ) (hpair : PairTransitiveFamily ρ)
    {M : Matrix (Fin 23) (Fin 23) ℚ} (hM : InvariantMatrix ρ M) :
    M = (M 0 0 - M 0 1) • (1 : Matrix (Fin 23) (Fin 23) ℚ) + M 0 1 • commonMatrix := by
  ext i j
  by_cases hij : i = j
  · subst j
    rw [diagonal_constant ρ htrans hM i]
    simp [commonMatrix]
  · rw [off_diagonal_constant ρ hpair hM i j hij]
    simp [commonMatrix, hij]

theorem common_matrix_annihilates_centered {v : Fin 23 → ℚ} (hv : Centered v) :
    commonMatrix.mulVec v = 0 := by
  funext i
  change ∑ i, v i = 0 at hv
  simpa only [commonMatrix, Matrix.mulVec, dotProduct, one_mul, Pi.zero_apply] using hv

/-- The whole coefficient form, rather than merely each centered factor, is scalar. -/
theorem centered_invariant_matrix_action {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (htrans : TransitiveFamily ρ) (hpair : PairTransitiveFamily ρ)
    {M : Matrix (Fin 23) (Fin 23) ℚ} (hM : InvariantMatrix ρ M)
    {v : Fin 23 → ℚ} (hv : Centered v) : M.mulVec v = (M 0 0 - M 0 1) • v := by
  conv_lhs => rw [invariant_matrix_two_coefficients ρ htrans hpair hM]
  rw [Matrix.add_mulVec,
    Matrix.smul_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec,
    common_matrix_annihilates_centered hv, smul_zero, add_zero]

theorem centered_invariant_bilinear_readout {G : Type*} (ρ : G → Equiv.Perm (Fin 23))
    (htrans : TransitiveFamily ρ) (hpair : PairTransitiveFamily ρ)
    {M : Matrix (Fin 23) (Fin 23) ℚ} (hM : InvariantMatrix ρ M)
    {v : Fin 23 → ℚ} (hv : Centered v) (w : Fin 23 → ℚ) :
    (∑ i, w i * M.mulVec v i) = (M 0 0 - M 0 1) * ∑ i, w i * v i := by
  rw [centered_invariant_matrix_action ρ htrans hpair hM hv, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _hi
  change w i * ((M 0 0 - M 0 1) * v i) = _
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.TwoTransitiveReadout
```
