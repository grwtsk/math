# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Polarization.Variantd7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dc2b066c5b9ea0451c7a7e1ec79b7704acba8ac` · SHA-256 `d7d0c5c99f2409fcffe849136aa693b27bb8a18062bed13efcb1f1151804299a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic.NormNum

/-!
# Signed quadratic polarization

The real inner product is a signed difference of two nonnegative quadratic
sectors. Their separate nonnegativity supplies no sign for that difference.
These are generic identities; no arithmetic weight or RH estimate is assumed.
-/

namespace FormalResearch.MathematicalTooling.Reflection

open scoped InnerProductSpace

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

/-- Real polarization, retaining the subtraction between the two sectors. -/
theorem real_inner_eq_signed_norm_square (x y : E) :
    ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  simpa only [RCLike.re_to_real, pow_two] using
    (re_inner_eq_norm_add_mul_self_sub_norm_sub_mul_self_div_four (𝕜 := ℝ) x y)

/-- Both squared sectors can be nonnegative while their signed difference is
strictly negative: the explicit pair is `x = 1`, `y = -1` in `ℝ`. -/
theorem nonnegative_sectors_negative_difference :
    0 ≤ ‖(1 : ℝ) + (-1)‖ ^ 2 ∧
    0 ≤ ‖(1 : ℝ) - (-1)‖ ^ 2 ∧
    (‖(1 : ℝ) + (-1)‖ ^ 2 - ‖(1 : ℝ) - (-1)‖ ^ 2) / 4 < 0 := by
  norm_num

/-- Scaling the second vector gives arbitrarily negative signed differences;
separate positivity cannot supply even a fixed universal lower bound. -/
theorem signed_difference_has_no_universal_lower_bound :
    ¬ ∃ C : ℝ, ∀ x y : ℝ,
      -C ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  rintro ⟨C, hC⟩
  have h := hC 1 (-C - 1)
  rw [← real_inner_eq_signed_norm_square] at h
  norm_num at h

end FormalResearch.MathematicalTooling.Reflection
```
