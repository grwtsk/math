import Mathlib.Data.Complex.Basic
import Mathlib.Tactic
example (A Z sa sz z B : ℂ) (ha : sa ≠ 0) (hz : sz ≠ 0)
    (hA : A ≠ 0) (hZ : Z ≠ 0) (hAsqrt : sa ^ 2 = A) (hZsqrt : sz ^ 2 = Z) :
    ((z ^ 2 - 1 / 4) * (A / sa * B) / sz) *
      ((z ^ 2 - 1 / 4) * (A / sa * B) / sz) = A / Z * (z ^ 2 - 1 / 4) ^ 2 * B ^ 2 := by
  field_simp [ha, hz, hA, hZ]
  rw [hAsqrt, hZsqrt]
  ring
example (A : ℝ) (ρ : ℂ) : (((A : ℂ) * (ρ - 1 / 2)).re) = A * (ρ.re - 1 / 2) := by simp
