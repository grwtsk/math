/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

set_option autoImplicit false
noncomputable section

/-!
# Prime-power exponent information absent from the actual cyclic matrix

For positive prime-power labels, both von Mangoldt and log(radical) depend
on the prime and not on its positive exponent. With character coefficient
zero, the full signed cyclic Hamiltonian therefore loses these exponents.
Constant labels 2 and 4 give the same matrix and rule out a label decoder
from that matrix alone, for every hopping strength and both real arithmetic
coefficients.

This obstruction concerns the declared zero-character-coefficient subfamily.
It does not discard labels retained separately by a source stage, establish
blindness for unrestricted character data, or refute ABC. It identifies data
that an operator-to-height reconstruction must actually preserve.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPrimePowerBlindness

open ArithmeticCyclicHamiltonian

variable (N : ℕ) [hN : NeZero N]
include hN

/-- The exponent vector is absent from the potential under the explicit w=0 condition. -/
theorem potential_of_prime_power_labels (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k : ZMod N → ℕ) (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i)
    (u v : ℝ) :
    arithmeticPotential N level χ (fun i => p i ^ k i) u v 0 =
      fun i => (u + v) * Real.log (p i) := by
  funext i
  unfold arithmeticPotential
  rw [ArithmeticFeatureGram.vonMangoldt_prime_power (hp i) (hk i),
    ArithmeticFeatureGram.radical_prime_power (hp i) (hk i)]
  simp only [zero_mul, add_zero]
  ring

/-- Identical prime support and any positive exponent vectors give the same actual matrix. -/
theorem hamiltonian_prime_power_exponents_invariant
    (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k l : ZMod N → ℕ) (hp : ∀ i, (p i).Prime)
    (hk : ∀ i, 0 < k i) (hl : ∀ i, 0 < l i) (t u v : ℝ) :
    arithmeticHamiltonian N level χ (fun i => p i ^ k i) t u v 0 =
      arithmeticHamiltonian N level χ (fun i => p i ^ l i) t u v 0 := by
  unfold arithmeticHamiltonian
  rw [potential_of_prime_power_labels N level χ p k hp hk u v,
    potential_of_prime_power_labels N level χ p l hp hl u v]

/-- Two distinct actual natural label vectors already collide. -/
theorem hamiltonian_two_eq_four (level : ℕ) (χ : DirichletCharacter ℂ level)
    (t u v : ℝ) :
    arithmeticHamiltonian N level χ (fun _ => 2) t u v 0 =
      arithmeticHamiltonian N level χ (fun _ => 4) t u v 0 := by
  have h := hamiltonian_prime_power_exponents_invariant N level χ
    (fun _ => 2) (fun _ => 1) (fun _ => 2) (fun _ => Nat.prime_two)
    (by intro i; norm_num) (by intro i; norm_num) t u v
  simpa using h

/-- No decoder of the matrix alone can recover even these two source label vectors. -/
theorem no_label_decoder_for_two_and_four
    (level : ℕ) (χ : DirichletCharacter ℂ level) (t u v : ℝ) :
    ¬ ∃ decode : Matrix (ZMod N) (ZMod N) ℂ → (ZMod N → ℕ),
      decode (arithmeticHamiltonian N level χ (fun _ => 2) t u v 0) =
          (fun _ => 2) ∧
      decode (arithmeticHamiltonian N level χ (fun _ => 4) t u v 0) =
          (fun _ => 4) := by
  rintro ⟨decode, htwo, hfour⟩
  have hlabels : (fun _ : ZMod N => (2 : ℕ)) = (fun _ => 4) :=
    htwo.symm.trans ((congrArg decode (hamiltonian_two_eq_four N level χ t u v)).trans hfour)
  have h := congrFun hlabels (0 : ZMod N)
  norm_num at h

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPrimePowerBlindness
