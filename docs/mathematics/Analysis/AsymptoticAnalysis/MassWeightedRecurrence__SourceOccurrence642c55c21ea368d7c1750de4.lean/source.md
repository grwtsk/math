# Complete source: GRWTSK.Analysis.Asymptotics.MassWeightedRecurrence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5` · SHA-256 `7d4c98ea7a03d5a792c8fa1ad83e9f33c16233a5dcad548c18d11ae8d5dee3a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
The finite recurrence behind ASBN–P04.

This file does not assert an arithmetic AS estimate or construct its reserve.
All recurrence assumptions remain explicit theorem arguments.
-/

namespace ASBNP04

def mass (ω : ℕ → ℝ) : ℕ → ℝ :=
  Nat.rec 0 (fun n r => r + ω n)

@[simp] theorem mass_zero (ω : ℕ → ℝ) : mass ω 0 = 0 := rfl
@[simp] theorem mass_succ (ω : ℕ → ℝ) (n : ℕ) : mass ω (n+1) = mass ω n + ω n := rfl

theorem mass_nonneg (ω : ℕ → ℝ) (hω : ∀ n, 0 ≤ ω n) :
    ∀ n, 0 ≤ mass ω n := by
  intro n
  induction n with
  | zero => simp [mass]
  | succ n ih => exact add_nonneg ih (hω n)

/-- Iteration of an amortized block estimate with nonnegative harmonic masses. -/
theorem amortized_iteration
    (φ ω : ℕ → ℝ) (C K : ℝ)
    (hC : 0 ≤ C) (hK : 0 ≤ K)
    (hω : ∀ n, 0 ≤ ω n)
    (hstep : ∀ n, φ (n + 1) ≤ Real.exp (C * ω n) * φ n + C * ω n * K) :
    ∀ n, φ n ≤ Real.exp (C * mass ω n) * (φ 0 + C * mass ω n * K) := by
  intro n
  induction n with
  | zero => simp [mass]
  | succ n ih =>
      have hφ :
          Real.exp (C * ω n) * φ n ≤
            Real.exp (C * ω n) *
              (Real.exp (C * mass ω n) * (φ 0 + C * mass ω n * K)) :=
        mul_le_mul_of_nonneg_left ih (Real.exp_pos _).le
      have hsmall : 0 ≤ C * ω n * K :=
        mul_nonneg (mul_nonneg hC (hω n)) hK
      have hmass : 0 ≤ C * mass ω (n + 1) :=
        mul_nonneg hC (mass_nonneg ω hω (n + 1))
      have hexp : 1 ≤ Real.exp (C * mass ω (n + 1)) :=
        Real.one_le_exp_iff.mpr hmass
      have hpay :
          C * ω n * K ≤ Real.exp (C * mass ω (n + 1)) * (C * ω n * K) := by
        nlinarith
      have hproduct :
          Real.exp (C * ω n) * Real.exp (C * mass ω n) =
            Real.exp (C * mass ω (n + 1)) := by
        rw [← Real.exp_add]
        congr 1
        simp only [mass]
        ring
      calc
        φ (n + 1) ≤ Real.exp (C * ω n) * φ n + C * ω n * K := hstep n
        _ ≤ Real.exp (C * ω n) *
              (Real.exp (C * mass ω n) * (φ 0 + C * mass ω n * K)) +
              C * ω n * K := add_le_add hφ le_rfl
        _ = Real.exp (C * mass ω (n + 1)) * (φ 0 + C * mass ω n * K) +
              C * ω n * K := by rw [← mul_assoc, hproduct]
        _ ≤ Real.exp (C * mass ω (n + 1)) * (φ 0 + C * mass ω n * K) +
              Real.exp (C * mass ω (n + 1)) * (C * ω n * K) :=
          add_le_add le_rfl hpay
        _ = Real.exp (C * mass ω (n + 1)) *
              (φ 0 + C * mass ω (n + 1) * K) := by
          simp only [mass]
          ring

/-- Nonnegative reserves and diagonal energies justify the terminal transfer. -/
theorem terminal_transfer (E A D X M : ℝ)
    (hA : 0 ≤ A) (hD : 0 ≤ D) (hX : X = E - D)
    (hφ : E + A ≤ M) : X ≤ M := by
  linarith

/-- A homogeneous shifted potential may be signed at intermediate states.
Only its explicit recurrence is needed for finite transport. -/
theorem shifted_homogeneous_iteration
    (φ ω : ℕ → ℝ) (C K : ℝ)
    (hstep : ∀ n, φ (n + 1) + K ≤ Real.exp (C * ω n) * (φ n + K)) :
    ∀ n, φ n + K ≤ Real.exp (C * mass ω n) * (φ 0 + K) := by
  intro n
  induction n with
  | zero => simp [mass]
  | succ n ih =>
      have hφ := mul_le_mul_of_nonneg_left ih (Real.exp_pos (C * ω n)).le
      have hproduct :
          Real.exp (C * ω n) * Real.exp (C * mass ω n) =
            Real.exp (C * mass ω (n + 1)) := by
        rw [← Real.exp_add]
        congr 1
        simp only [mass]
        ring
      calc
        φ (n + 1) + K ≤ Real.exp (C * ω n) * (φ n + K) := hstep n
        _ ≤ Real.exp (C * ω n) *
              (Real.exp (C * mass ω n) * (φ 0 + K)) := hφ
        _ = Real.exp (C * mass ω (n + 1)) * (φ 0 + K) := by
          rw [← mul_assoc, hproduct]

end ASBNP04

#print axioms ASBNP04.amortized_iteration
#print axioms ASBNP04.terminal_transfer
#print axioms ASBNP04.shifted_homogeneous_iteration
```
