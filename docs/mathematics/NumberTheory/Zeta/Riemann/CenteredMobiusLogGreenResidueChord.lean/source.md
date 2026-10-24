# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueChord

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `033e0644af78adbd2cd83ceeffb730c8d71e6243` · SHA-256 `50d324a8e452757304a22bfb4c6903d93afea35504bf36416dbeec16943fb176`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAbel
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- A concrete centered residue representative: r = k - X*q, with the
principal-range property supplied explicitly. -/
structure GreenCenteredResidue (X : ℕ) (k : ℤ) where
  q : ℤ
  r : ℤ
  relation : k = (X : ℤ) * q + r
  range : 2 * |r| ≤ X

/-- Mesh phase only depends on the residue modulo X. -/
theorem greenMeshPhase_eq_residue
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k) :
    greenMeshPhase X k = greenMeshPhase X R.r := by
  unfold greenMeshPhase
  rw [R.relation]
  push_cast
  have hX0 : (X : ℂ) ≠ 0 := by exact_mod_cast (by omega : X ≠ 0)
  field_simp
  rw [Complex.exp_add]
  have hperiod :
      Complex.exp (-2 * Real.pi * Complex.I * (R.q : ℂ)) = 1 := by
    rw [Complex.exp_int_mul_two_pi_mul_I]
    simp
  rw [hperiod, one_mul]

/-- Exact chord identity for the mesh phase. -/
theorem norm_one_sub_greenMeshPhase_eq
    {X : ℕ} (hX : 1 ≤ X) (r : ℤ) :
    ‖1 - greenMeshPhase X r‖ =
      2 * |Real.sin (Real.pi * (r : ℝ) / (X : ℝ))| := by
  unfold greenMeshPhase
  have hXr : (X : ℝ) ≠ 0 := by positivity
  rw [Complex.norm_one_sub_exp_mul_I]
  congr 2
  ring

/-- Principal-range linear lower bound for the root-of-unity chord. -/
theorem four_mul_abs_residue_div_X_le_norm_one_sub_phase
    {X : ℕ} (hX : 1 ≤ X) {r : ℤ}
    (hrange : 2 * |r| ≤ X) :
    4 * |(r : ℝ)| / (X : ℝ) ≤ ‖1 - greenMeshPhase X r‖ := by
  rw [norm_one_sub_greenMeshPhase_eq hX]
  by_cases hr0 : r = 0
  · subst r
    simp
  · have hrabs : 0 < |(r : ℝ)| := abs_pos.mpr (by exact_mod_cast hr0)
    have hXpos : 0 < (X : ℝ) := by exact_mod_cast hX
    let x : ℝ := Real.pi * |(r : ℝ)| / X
    have hx0 : 0 < x := by
      dsimp [x]
      positivity
    have hxhalf : x ≤ Real.pi / 2 := by
      dsimp [x]
      have hrangeR : 2 * |(r : ℝ)| ≤ (X : ℝ) := by exact_mod_cast hrange
      apply (div_le_iff₀ hXpos).2
      nlinarith [Real.pi_pos]
    have hsin :
        2 / Real.pi * x ≤ Real.sin x := by
      by_cases heq : x = Real.pi / 2
      · rw [heq, Real.sin_pi_div_two]
        nlinarith [Real.pi_pos]
      · exact (Real.mul_lt_sin hx0 (lt_of_le_of_ne hxhalf heq)).le
    have habssin :
        |Real.sin (Real.pi * (r : ℝ) / X)| =
          Real.sin x := by
      dsimp [x]
      rw [← abs_mul, abs_of_pos Real.pi_pos, abs_div,
        abs_of_pos hXpos]
      rw [abs_sin]
    rw [habssin]
    dsimp [x] at hsin
    nlinarith [Real.pi_pos]

/-- Small-denominator lower bound in terms of an authenticated centered residue. -/
theorem centeredResidue_chord_lower_bound
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (R : GreenCenteredResidue X k) :
    4 * |(R.r : ℝ)| / (X : ℝ) ≤
      ‖1 - greenMeshPhase X k‖ := by
  rw [greenMeshPhase_eq_residue hX R]
  exact four_mul_abs_residue_div_X_le_norm_one_sub_phase hX R.range

end GRWTSK.RiemannHypothesis
```
