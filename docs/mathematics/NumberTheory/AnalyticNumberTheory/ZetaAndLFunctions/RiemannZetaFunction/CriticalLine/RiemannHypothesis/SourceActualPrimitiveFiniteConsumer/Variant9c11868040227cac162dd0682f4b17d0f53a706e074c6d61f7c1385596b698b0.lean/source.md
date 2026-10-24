# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer.Variant9c11868040227cac162dd0682f4b17d0f53a706e074c6d61f7c1385596b698b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d24f292a89b2e494eb8f6ae3b51dc88328ad765` · SHA-256 `9c11868040227cac162dd0682f4b17d0f53a706e074c6d61f7c1385596b698b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPrimitiveFiniteReadout

/-!
The global second-primitive budget is transported to its actual finite Mangoldt
readout. This reformulates the arithmetic obligation without constructing M.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer

open MeasureTheory ArithmeticFunction
open scoped Interval
open SourceMangoldtAbel Research.ActualCriticalPrimitive
open SourceActualPrimitiveFiniteReadout

/-- Independent finite atoms and exact continuous endpoint rows at the first-atom anchor. -/
def actualFiniteSecondReadout (t : ℝ) : ℝ :=
  let L := Real.log (2 : ℝ)
  4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant + 4) -
  Real.exp (L / 2) * (2 * (t - L) + 4) *
    (mangoldtLogError L + Real.eulerMascheroniConstant) -
  Real.exp (L / 2) * (4 * (t - L) + 16) -
  ∑ n ∈ Finset.Ioc ⌊Real.exp L⌋₊ ⌊Real.exp t⌋₊,
    vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
      (2 * (t - Real.log (n : ℝ)) + 4)

/-- Concrete return of the exact readout to the actual nested arithmetic primitive. -/
theorem actual_nested_primitive_eq_finite_readout (t : ℝ) (ht : Real.log 2 ≤ t) :
    (∫ s in Real.log 2..t, criticalPrimitive s - criticalPrimitive (Real.log 2)) =
      actualFiniteSecondReadout t := by
  rw [actual_centered_second_primitive_eq_weighted (Real.log 2) t
    (Real.log_nonneg (by norm_num)) ht]
  exact weightedActualSecondPrimitive_eq_finite_window (Real.log 2) t
    (Real.log_nonneg (by norm_num)) ht

/-- The touching first atom gives zero second-primitive value with its closed convention. -/
theorem actualFiniteSecondReadout_at_first_atom :
    actualFiniteSecondReadout (Real.log 2) = 0 := by
  have h := actual_nested_primitive_eq_finite_readout (Real.log 2) le_rfl
  simpa using h.symm

/-- Exact global arithmetic-budget reduction; the same M is retained in both directions. -/
theorem global_second_primitive_budget_iff_finite_readout :
    (∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |∫ s in Real.log 2..t,
        criticalPrimitive s - criticalPrimitive (Real.log 2)| ≤ M * (t - Real.log 2)) ↔
    (∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) := by
  constructor
  · rintro ⟨M, hM, h⟩
    refine ⟨M, hM, ?_⟩
    intro t ht
    rw [← actual_nested_primitive_eq_finite_readout t ht]
    exact h t ht
  · rintro ⟨M, hM, h⟩
    refine ⟨M, hM, ?_⟩
    intro t ht
    rw [actual_nested_primitive_eq_finite_readout t ht]
    exact h t ht

end FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer
```
