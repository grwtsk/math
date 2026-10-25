# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSimp.Variantaaa3d726f4dd8ae482b201ebb4d6232415cab0adff1f25e0f970fc13a27c0cca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d422e12e0051dd6debe83c2858bc6b3cccff4dec` · SHA-256 `aaa3d726f4dd8ae482b201ebb4d6232415cab0adff1f25e0f970fc13a27c0cca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Ring.Basic
import Mathlib.Data.Rat.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
## `field_simp` tests.
-/

/-
Check that `field_simp` works for units of a ring.
-/

variable {R : Type _} [CommRing R] (a b c d e f g : R) (u₁ u₂ : Rˣ)

/--
Check that `divp_add_divp_same` takes priority over `divp_add_divp`.
-/
example : a /ₚ u₁ + b /ₚ u₁ = (a + b) /ₚ u₁ :=
by field_simp

/--
Check that `divp_sub_divp_same` takes priority over `divp_sub_divp`.
-/
example : a /ₚ u₁ - b /ₚ u₁ = (a - b) /ₚ u₁ :=
by field_simp

/-
Combining `eq_divp_iff_mul_eq` and `divp_eq_iff_mul_eq`.
-/
example : a /ₚ u₁ = b /ₚ u₂ ↔ a * u₂ = b * u₁ :=
by field_simp

/--
Making sure inverses of units are rewritten properly.
-/
example : ↑u₁⁻¹ = 1 /ₚ u₁ := by field_simp

/--
Checking arithmetic expressions.
-/
example : (f - (e + c * -(a /ₚ u₁) * b + d) - g) =
  (f * u₁ - (e * u₁ + c * (-a) * b + d * u₁) - g * u₁) /ₚ u₁ :=
by field_simp

/--
Division of units.
-/
example : a /ₚ (u₁ / u₂) = a * u₂ /ₚ u₁ :=
by field_simp

example : a /ₚ u₁ /ₚ u₂ = a /ₚ (u₂ * u₁) :=
by field_simp

/--
Test that the discharger can clear nontrivial denominators in ℚ.
-/
example (x : ℚ) (h₀ : x ≠ 0) :
    (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 = 18 * x^8 := by
  field_simp
  ring

example {x y z w : ℚ} (h : x / y = z / w) (hy : y ≠ 0) (hw : w ≠ 0) : x * w = z * y := by
  field_simp at h
  assumption
```
