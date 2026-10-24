# Complete source: GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cece7d1179cc3b67ce0dabc1b7bbaeb5aed0068a` · SHA-256 `725a2e18e6fb9d2a734366308eba880a9bb1dcfc001e3274782f4d980a47a2cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Strict separation of closed rational complex disks

Squared rational tests do not compute a norm. The radius signs and STRICT
separation are required: tangent closed disks can share a source point.
The height test retains both imaginary signs and the closed cutoff boundary.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation

open RationalComplexEnclosure

/-- A sufficient and exact center-distance test for separated closed disks. -/
def separated (c d : Coordinates) (r s : ℚ) : Bool :=
  decide (0 ≤ r ∧ 0 ≤ s ∧ (r + s) ^ 2 < squareNorm (sub c d))

/-- Every point in this disk has absolute imaginary height at most T. -/
def belowHeight (c : Coordinates) (r T : ℚ) : Bool :=
  decide (0 ≤ r ∧ |c.2| + r ≤ T)

theorem separated_iff (c d : Coordinates) (r s : ℚ) :
    separated c d r s = true ↔
      0 ≤ r ∧ 0 ≤ s ∧ (r + s) ^ 2 < squareNorm (sub c d) := by
  simp only [separated, decide_eq_true_eq]

theorem belowHeight_iff (c : Coordinates) (r T : ℚ) :
    belowHeight c r T = true ↔ 0 ≤ r ∧ |c.2| + r ≤ T := by
  simp only [belowHeight, decide_eq_true_eq]

theorem separation_distance {c d : Coordinates} {r s : ℚ}
    (h : separated c d r s = true) :
    (r : ℝ) + (s : ℝ) < ‖toComplex c - toComplex d‖ := by
  obtain ⟨hr, hs, he⟩ := (separated_iff c d r s).mp h
  have hr' : (0 : ℝ) ≤ r := by exact_mod_cast hr
  have hs' : (0 : ℝ) ≤ s := by exact_mod_cast hs
  have he' : ((r : ℝ) + (s : ℝ)) ^ 2 < (squareNorm (sub c d) : ℝ) := by
    exact_mod_cast he
  have hid := norm_sq_toComplex (sub c d)
  rw [toComplex_sub] at hid
  have hn := norm_nonneg (toComplex c - toComplex d)
  nlinarith

/-- Distinct separated records cannot choose the same actual enclosed point. -/
theorem enclosed_points_ne {c d : Coordinates} {r s : ℚ} {z v : ℂ}
    (hsep : separated c d r s = true)
    (hz : ‖z - toComplex c‖ ≤ (r : ℝ))
    (hv : ‖v - toComplex d‖ ≤ (s : ℝ)) : z ≠ v := by
  intro he
  subst v
  have htri : ‖toComplex c - toComplex d‖ ≤ (r : ℝ) + (s : ℝ) := by
    calc
      _ = ‖(toComplex c - z) + (z - toComplex d)‖ := by congr 1; ring
      _ ≤ ‖toComplex c - z‖ + ‖z - toComplex d‖ := norm_add_le _ _
      _ ≤ _ := add_le_add (by rw [norm_sub_rev]; exact hz) hv
  exact (not_lt_of_ge htri) (separation_distance hsep)

/-- A closed disk may touch the cutoff; the canonical height head is closed too. -/
theorem enclosed_height_le {c : Coordinates} {r T : ℚ} {z : ℂ}
    (hb : belowHeight c r T = true) (hz : ‖z - toComplex c‖ ≤ (r : ℝ)) :
    |z.im| ≤ (T : ℝ) := by
  have ht : |(c.2 : ℝ)| + (r : ℝ) ≤ (T : ℝ) := by
    exact_mod_cast ((belowHeight_iff c r T).mp hb).2
  have him : |z.im - (c.2 : ℝ)| ≤ (r : ℝ) := by
    simpa only [Complex.sub_im, toComplex] using
      (Complex.abs_im_le_norm (z - toComplex c)).trans hz
  calc
    |z.im| = |(z.im - (c.2 : ℝ)) + (c.2 : ℝ)| := by congr 1; ring
    _ ≤ |z.im - (c.2 : ℝ)| + |(c.2 : ℝ)| := abs_add _ _
    _ ≤ (r : ℝ) + |(c.2 : ℝ)| := add_le_add_right him _
    _ ≤ (T : ℝ) := by linarith

end GRWTSK.Analysis.ErrorBounds.RationalDiskSeparation
```
