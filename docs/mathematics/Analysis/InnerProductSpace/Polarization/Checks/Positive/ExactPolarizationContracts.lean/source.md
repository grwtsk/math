# Complete source: GRWTSK.Analysis.InnerProductSpace.Polarization.Checks.Positive.ExactPolarizationContracts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58f7445927adf110f2d1a95841246d1a37bf9a73` · SHA-256 `fdec3da11390853f79b3d064fc99d4d492af8bd9613e111397238e57a16481e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := real_inner_eq_signed_norm_square x y
example : 0 ≤ ‖(1 : ℝ) + (-1)‖ ^ 2 ∧ 0 ≤ ‖(1 : ℝ) - (-1)‖ ^ 2 ∧ (‖(1 : ℝ) + (-1)‖ ^ 2 - ‖(1 : ℝ) - (-1)‖ ^ 2) / 4 < 0 := nonnegative_sectors_negative_difference
example : ¬ ∃ C : ℝ, ∀ x y : ℝ, -C ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := signed_difference_has_no_universal_lower_bound
```
