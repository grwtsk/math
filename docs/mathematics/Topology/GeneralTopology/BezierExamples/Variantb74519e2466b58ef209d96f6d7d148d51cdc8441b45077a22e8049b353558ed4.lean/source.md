# Complete source: GRWTSK.Topology.GeneralTopology.BezierExamples.Variantb74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8433d5ac2a078414f4a1718138a88b64190b3a3` · SHA-256 `b74519e2466b58ef209d96f6d7d148d51cdc8441b45077a22e8049b353558ed4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.Bezier.Subdivision

/-!
# Rational Bézier substrate examples

These noncanonical examples exercise endpoint, denominator, and reversal
behavior without granting theorem-cone authority.
-/

namespace Surface.Audit.BezierExamples

open Surface.Core.Bezier

noncomputable section

/-- A nontrivial affine segment with unequal positive rational weights. -/
def weightedLine : RationalSegment ℝ 1 where
  control i := if i = 0 then 2 else 5
  weight i := if i = 0 then 1 else 3
  weight_pos i := by
    split_ifs <;> norm_num

/-- The midpoint parameter used by the exact subdivision regression. -/
def half : UnitInterval :=
  ⟨(1 : ℝ) / 2, by constructor <;> norm_num⟩

example : weightedLine.eval (0 : UnitInterval) = 2 := by
  simp [weightedLine]

example : weightedLine.eval (1 : UnitInterval) = 5 := by
  simp [weightedLine]

example (t : UnitInterval) : 0 < weightedLine.denominator t.1 :=
  weightedLine.denominator_pos t

example (t : UnitInterval) :
    weightedLine.reverse.eval t =
      weightedLine.eval (reverseParameter t) :=
  weightedLine.eval_reverse t

example (tau t : UnitInterval) :
    (weightedLine.splitAt tau).1.eval t =
      weightedLine.eval (RationalSegment.leftParameter tau t) :=
  weightedLine.eval_split_left tau t

example (tau t : UnitInterval) :
    (weightedLine.splitAt tau).2.eval t =
      weightedLine.eval (RationalSegment.rightParameter tau t) :=
  weightedLine.eval_split_right tau t

/-- Splitting the unequal-weight segment changes its control net while its
left endpoint-to-midpoint image remains exact. -/
example :
    (weightedLine.splitAt half).1.eval (1 : UnitInterval) = (17 : ℝ) / 4 := by
  rw [weightedLine.eval_split_left]
  norm_num [half, RationalSegment.leftParameter, weightedLine,
    RationalSegment.eval, RationalSegment.numerator,
    RationalSegment.denominator, Surface.Core.Bezier.bernstein,
    Fin.sum_univ_succ]

end

end Surface.Audit.BezierExamples

#print axioms Surface.Core.Bezier.RationalSegment.denominator_pos
#print axioms Surface.Core.Bezier.RationalSegment.eval_zero
#print axioms Surface.Core.Bezier.RationalSegment.eval_one
#print axioms Surface.Core.Bezier.RationalSegment.continuous_eval
#print axioms Surface.Core.Bezier.RationalSegment.eval_reverse
#print axioms Surface.Core.Bezier.RationalSegment.eval_split_left
#print axioms Surface.Core.Bezier.RationalSegment.eval_split_right
```
