# Complete source: GRWTSK.Analysis.InnerProductSpace.HankelGramBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f1574e025f039652d385ff7f4ab9fe4feba5824` · SHA-256 `c042c34401b4e860ce3dd55795ff05188e7dd512caa00d5a1d3d151f782081ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.WeightedSchurBounds

/-!
Research direction: grwtsk contributors.
Implementation prepared with ChatGPT assistance. Ordinary mathematical lemmas
and Mathlib retain their authorship. Kernel compilation has not been run for
this additive source. No arithmetic growth hypothesis is asserted.
-/

noncomputable section
namespace GRWTSK.Analysis.HankelGram
open scoped BigOperators

/-- Literal coefficient rows, not freely chosen replacement vectors. -/
def row (c : ℕ → ℂ) (n : ℕ) (i : Fin n) : EuclideanSpace ℂ (Fin n) :=
  WithLp.toLp 2 (fun j => c (i.val+j.val+1))

/-- Reuse the existing weighted Gram theorem on the actual Hankel rows.
The entire row inequality is still a premise, not an arithmetic theorem. -/
theorem synthesis_bound (c : ℕ → ℂ) (n : ℕ) (a : Fin n → ℂ)
    (w : Fin n → ℝ) {B : ℝ} (hw : ∀ i, 0 < w i)
    (hrow : ∀ i, ∑ j, ‖inner ℂ (row c n i) (row c n j)‖ * w j ≤ B*w i) :
    ‖∑ i, a i • row c n i‖^2 ≤ B * ∑ i, ‖a i‖^2 := by
  exact EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows
    Finset.univ (row c n) a w (fun i _ => hw i) (fun i _ => hrow i)

end GRWTSK.Analysis.HankelGram
#print axioms GRWTSK.Analysis.HankelGram.synthesis_bound
```
