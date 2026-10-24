# Complete source: GRWTSK.Analysis.Inequalities.SquaredNormErrorBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d34aba727b77066481dbd3df0584b42c382b4f89` · SHA-256 `67de8c691632be7738007b50058f914b34f8907b8a6f4821395278a5cb9daf86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
This is authored Lean proof source; kernel replay with the pinned environment is required.
Inherited mathematics retains its attribution. No unproved arithmetic bound is asserted.
-/

noncomputable section
namespace GRWTSK.Analysis.CertifiedNormReturn

/-- Rational admission criterion for the square-root error return. -/
theorem strict_squared_return (B H η x : ℝ) (hB : 0 ≤ B) (hη : 0 ≤ η)
    (hx : 0 ≤ x) (hxB : x^2 ≤ B)
    (hslack : 0 < H-B-η^2)
    (hdisc : 4*B*η^2 < (H-B-η^2)^2) : (x+η)^2 < H := by
  have hcross : 2*x*η < H-B-η^2 := by
    by_contra hn
    have hrev : H-B-η^2 ≤ 2*x*η := le_of_not_gt hn
    have hm : x^2*η^2 ≤ B*η^2 := mul_le_mul_of_nonneg_right hxB (sq_nonneg η)
    have hsquare : (H-B-η^2)*(H-B-η^2) ≤ (2*x*η)*(2*x*η) :=
      mul_le_mul hrev hrev hslack.le (by positivity)
    nlinarith
  nlinarith

/-- This checks only the displayed scalar slack, not the inherited coefficient enclosure. -/
theorem concrete_tensor_slack :
    0 < (254422437/500000000:ℝ)-(508844871/10^9:ℝ)-(3/(2*10^9):ℝ)^2 ∧
    4*(508844871/10^9:ℝ)*(3/(2*10^9):ℝ)^2 <
      ((254422437/500000000:ℝ)-(508844871/10^9:ℝ)-(3/(2*10^9):ℝ)^2)^2 := by
  norm_num

/-- Once the genuine matrix and full approximation estimates are proved, the
finite source norm returns. No coefficient-box truth is imported from a hash. -/
theorem tensor_source_norm_return {B : Type*} [NormedAddCommGroup B]
    (H C : B)
    (hC : ‖C‖^2 ≤ (508844871/10^9:ℝ))
    (herr : ‖H-C‖ ≤ (3/(2*10^9):ℝ)) :
    ‖H‖^2 < (254422437/500000000:ℝ) := by
  have hc := strict_squared_return (508844871/10^9) (254422437/500000000)
    (3/(2*10^9)) ‖C‖ (by norm_num) (by norm_num) (norm_nonneg _) hC
    concrete_tensor_slack.1 concrete_tensor_slack.2
  have ht : ‖H‖ ≤ ‖C‖+(3/(2*10^9):ℝ) := by
    calc
      ‖H‖ = ‖C+(H-C)‖ := by congr 1; abel
      _ ≤ ‖C‖+‖H-C‖ := norm_add_le _ _
      _ ≤ ‖C‖+(3/(2*10^9):ℝ) := add_le_add_left herr _
  have hsquare := mul_le_mul ht ht (norm_nonneg H)
    (show 0 ≤ ‖C‖+(3/(2*10^9):ℝ) by positivity)
  nlinarith

end GRWTSK.Analysis.CertifiedNormReturn
```
