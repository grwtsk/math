# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProfileFactorizationBoundary.Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56ec1e794d347bea09d773f658bd6099da1fcb18` · SHA-256 `b7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# Factoring an index does not factor a complete three-variable profile

B21-L01 requires the actual exceptional coefficient/profile to separate into
short variables, beyond a factorization of its modulus. A literal two-state
three-variable comparison profile has both diagonal corner values one but the
mixed corners zero, and cannot be one product of three scalar functions. Any
finite-rank expansion must retain every mode and its complete coefficients.
This is an exact algebraic applicability control, not the actual Eisenstein
003 sequence or a proof that a useful finite-rank separation is impossible.

Human separation boundary: grwtsk contributors. Local complete profile witness
and Lean proof: OpenAI Codex. No external Type-III theorem is renamed.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ProfileFactorizationBoundary
noncomputable section

def diagonalProfile (a b c : Fin 2) : ℝ := if a = b ∧ b = c then 1 else 0

theorem two_diagonal_corners : diagonalProfile 0 0 0 = 1 ∧ diagonalProfile 1 1 1 = 1 := by
  norm_num [diagonalProfile]

theorem mixed_corner_zero : diagonalProfile 0 1 0 = 0 := by
  norm_num [diagonalProfile]

theorem profile_has_no_single_three_factor_separation :
    ¬ ∃ f g h : Fin 2 → ℝ, ∀ a b c, diagonalProfile a b c = f a * g b * h c := by
  rintro ⟨f, g, h, hp⟩
  have h000 := hp 0 0 0
  have h111 := hp 1 1 1
  have h010 := hp 0 1 0
  rw [two_diagonal_corners.1] at h000
  rw [two_diagonal_corners.2] at h111
  rw [mixed_corner_zero] at h010
  have hf0 : f 0 ≠ 0 := by intro he; rw [he, zero_mul, zero_mul] at h000; norm_num at h000
  have hg1 : g 1 ≠ 0 := by intro he; rw [he, mul_zero, zero_mul] at h111; norm_num at h111
  have hh0 : h 0 ≠ 0 := by intro he; rw [he, mul_zero] at h000; norm_num at h000
  exact mul_ne_zero (mul_ne_zero hf0 hg1) hh0 h010.symm

/-- The two-term expansion is exact; neither term may be silently removed. -/
theorem full_two_mode_separation (a b c : Fin 2) :
    diagonalProfile a b c =
      (if a = 0 then (1 : ℝ) else 0) * (if b = 0 then 1 else 0) * (if c = 0 then 1 else 0) +
      (if a = 1 then (1 : ℝ) else 0) * (if b = 1 then 1 else 0) * (if c = 1 then 1 else 0) := by
  fin_cases a <;> fin_cases b <;> fin_cases c <;> norm_num [diagonalProfile]

end
end GRWTSK.RiemannHypothesis.Conversation.ProfileFactorizationBoundary
```
