# Complete source: GRWTSK.Topology.GeneralTopology.ControllerScheduleLiteralSnippet.Variant6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35f921b1e1f9e24afddaddbf69ace4c05904e6d5` · SHA-256 `6b89d0980057b821eee2e610707b94fefe7088a35102d748847c80b2b8880184`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace ControllerScheduleLiteral
open Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open ControllerScheduleScratch
noncomputable section
example (q : ℕ → H) (j : ℕ) :
    cumulativeCost q j = ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2 := rfl
example (q : ℕ → H) (j : ℕ) :
    controllerAlpha q j =
      1 / ((j : ℝ) * (1 + ∑ k ∈ Finset.Icc 1 j, ‖q k‖ ^ 2)) := rfl
example (q : ℕ → H) (j : ℕ) : 0 ≤ cumulativeCost q j := cumulativeCost_nonneg q j
example (q : ℕ → H) : Monotone (cumulativeCost q) := cumulativeCost_monotone q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    0 < controllerAlpha q j := controllerAlpha_pos q j hj
example (q : ℕ → H) : StrictAntiOn (controllerAlpha q) (Set.Ici 1) :=
  controllerAlpha_strictAntiOn q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j ≤ 1 / (j : ℝ) := controllerAlpha_le_one_div q j hj
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    controllerAlpha q j * ‖q j‖ ^ 2 ≤ 1 / (j : ℝ) := controllerAlpha_input_cost_le q j hj
example (q : ℕ → H) : Tendsto (controllerAlpha q) atTop (nhds 0) :=
  controllerAlpha_tendsto_zero q
example (q : ℕ → H) (j : ℕ) (hj : 1 ≤ j) :
    sourceMass (controllerAlpha q j) ≤
      ‖referenceVector - sourceOperator (q j)‖ ^ 2 + 1 / (j : ℝ) :=
  sourceMass_controllerAlpha_le q j hj
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    Tendsto (fun j => sourceMass (controllerAlpha q j)) atTop (nhds 0) :=
  sourceMass_controllerAlpha_tendsto_zero q hres
end
end ControllerScheduleLiteral
```
