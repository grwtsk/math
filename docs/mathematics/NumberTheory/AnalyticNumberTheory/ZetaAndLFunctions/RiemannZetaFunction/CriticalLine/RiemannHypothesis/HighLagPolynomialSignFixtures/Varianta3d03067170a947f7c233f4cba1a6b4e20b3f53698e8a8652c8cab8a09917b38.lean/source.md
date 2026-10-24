# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HighLagPolynomialSignFixtures.Varianta3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f825f54854e78e19511092a0094a5f69e22196a0` · SHA-256 `a3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceHighLagPolynomialSign

/-!
UNCOMPILED hostile fixtures for the independent polynomial certificate.
These statements concern the computed algebraic coefficient only. They do not
claim a checked transport to the normalized source integral or actual state.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.HighLagPolynomialSignFixtures

open SourceHighLagPolynomialSign

theorem fixed_edge_is_negative : algebraicEdgeCoefficient 10 < 0 :=
  algebraicEdgeCoefficient_neg (by norm_num)

theorem fixed_edge_is_not_nonnegative : ¬ 0 ≤ algebraicEdgeCoefficient 10 := by
  exact not_le_of_gt fixed_edge_is_negative

theorem every_larger_edge_is_negative (A : ℝ) (hA : 10 ≤ A) :
    algebraicEdgeCoefficient A < 0 := algebraicEdgeCoefficient_neg hA

theorem positive_normalization_does_not_repair_sign :
    algebraicEdgeCoefficient 10 / (10 * (123 : ℝ)) < 0 :=
  algebraicEdgeCoefficient_normalized_neg (by norm_num) (by norm_num)

theorem eventual_nonnegative_route_is_refuted :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 0 ≤ algebraicEdgeCoefficient A :=
  not_eventually_algebraicEdgeCoefficient_nonneg

end FormalResearch.RiemannHypothesis.HighLagPolynomialSignFixtures
```
