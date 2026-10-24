# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMeshPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9c26f20943b98381d8e239b89728a2184e954dc` · SHA-256 `18d26e442f9b13087d1025622511a596b768aac7c201f9090c705c8d2aa022f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenConstantResidual
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Mesh root of unity associated to frequency k mod X. -/
def greenMeshPhase (X : ℕ) (k : ℤ) : ℂ :=
  Complex.exp (-2 * Real.pi * Complex.I * (k : ℂ) / (X : ℂ))

theorem norm_greenMeshPhase (X : ℕ) (k : ℤ) :
    ‖greenMeshPhase X k‖ = 1 := by
  unfold greenMeshPhase
  rw [Complex.norm_exp]
  simp

/-- Mesh phase agrees with the Fourier character at j/X. -/
theorem fourier_mesh_eq_phase_pow
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) (j : ℕ) :
    fourier (-k) (greenRightMeshPoint X j : AddCircle (1 : ℝ)) =
      (greenMeshPhase X k) ^ j := by
  unfold greenMeshPhase greenRightMeshPoint fourier
  simp only [map_natCast]
  rw [← Complex.exp_nat_mul]
  congr 1
  push_cast
  field_simp
  ring

/-- Nonaliasing is equivalent to mesh phase not equal to one. -/
theorem greenMeshPhase_ne_one_of_nonaliasing
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hk : GreenMeshNonaliasing X k) :
    greenMeshPhase X k ≠ 1 := by
  intro h
  unfold GreenMeshNonaliasing GreenMeshAliasing at hk
  unfold greenMeshPhase at h
  have hexp :
      Complex.exp (-2 * Real.pi * Complex.I * (k : ℂ) / (X : ℂ)) = 1 := h
  rw [Complex.exp_eq_one_iff] at hexp
  obtain ⟨m, hm⟩ := hexp
  have hX0 : (X : ℤ) ≠ 0 := by omega
  have : k = (X : ℤ) * (-m) := by
    apply_fun fun z : ℂ => z / (2 * Real.pi * Complex.I) at hm
    field_simp [Real.pi_ne_zero] at hm
    exact_mod_cast hm
  exact hk ⟨-m, by simpa [mul_comm] using this⟩

/-- Exact finite geometric partial sum. -/
theorem sum_greenMeshPhase_pow
    {X m : ℕ} {k : ℤ}
    (hq : greenMeshPhase X k ≠ 1) :
    ∑ j ∈ Finset.Icc 1 m, (greenMeshPhase X k) ^ j =
      greenMeshPhase X k *
        (1 - (greenMeshPhase X k) ^ m) /
          (1 - greenMeshPhase X k) := by
  rw [Finset.sum_Icc_eq_sum_range]
  rw [Finset.sum_geometric]
  field_simp [hq]
  ring

/-- Uniform partial-sum bound with exact small denominator. -/
theorem norm_sum_greenMeshPhase_pow_le
    {X m : ℕ} {k : ℤ}
    (hq : greenMeshPhase X k ≠ 1) :
    ‖∑ j ∈ Finset.Icc 1 m, (greenMeshPhase X k) ^ j‖ ≤
      2 / ‖1 - greenMeshPhase X k‖ := by
  rw [sum_greenMeshPhase_pow hq, norm_div, norm_mul,
    norm_greenMeshPhase]
  have hnum :
      ‖1 - (greenMeshPhase X k) ^ m‖ ≤ 2 := by
    calc
      ‖1 - (greenMeshPhase X k) ^ m‖ ≤
          ‖(1 : ℂ)‖ + ‖(greenMeshPhase X k) ^ m‖ :=
        norm_sub_le _ _
      _ = 2 := by simp [norm_greenMeshPhase]
  have hden : 0 ≤ ‖1 - greenMeshPhase X k‖ := norm_nonneg _
  simpa using div_le_div_of_nonneg_right hnum hden

end GRWTSK.RiemannHypothesis
```
