# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187fSourceActualAbso.Variant820404ea9acb53ab8faa4780306e8fe68fef77793f73cfd91924a283808727ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1a034800415d7c10de93650ba55a42ad11c6295` · SHA-256 `820404ea9acb53ab8faa4780306e8fe68fef77793f73cfd91924a283808727ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEdgeComplementCancellation

/-!
The literal full prime-power inventory has unbounded absolute mass even though
the signed residual is relatively small. A constant absolute-value budget
therefore cannot supply the remaining signed estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentObstruction
open Filter ArithmeticFunction
open scoped BigOperators Topology
open SourceActualNegativeEdgeMangoldt SourceActualEdgeComplementCancellation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit
noncomputable section

/-- Absolute mass of every unchanged closed original prime-power atom. -/
def actualClosedAbsolutePrimeMoment (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊, |vonMangoldt n * closedPrimeWeight A n|

private theorem complement_le_absoluteMoment (A : ℝ) :
    actualNegativeEdgeComplement A ≤ actualClosedAbsolutePrimeMoment A := by
  unfold actualNegativeEdgeComplement actualClosedAbsolutePrimeMoment
  calc
    _ ≤ |∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
        vonMangoldt n * closedPrimeWeight A n| := le_abs_self _
    _ ≤ ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ \ actualNegativeEdgeWindow A,
        |vonMangoldt n * closedPrimeWeight A n| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset
      (fun _ _ _ => abs_nonneg _)

/-- The actual full absolute inventory has at least the same genuine exponential growth. -/
theorem actualClosedAbsolutePrimeMoment_eventually_lower :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 ≤
        actualClosedAbsolutePrimeMoment A := by
  obtain ⟨R,hR,hbound⟩ := actualNegativeEdgeComplement_eventually_positive_growth
  exact ⟨R,hR,fun A hA => (hbound A hA).trans (complement_le_absoluteMoment A)⟩

/-- This concerns the actual weighted prime-power terms, rather than raw coefficient labels. -/
theorem actualClosedAbsolutePrimeMoment_tendsto_atTop :
    Tendsto actualClosedAbsolutePrimeMoment atTop atTop :=
  tendsto_atTop_mono complement_le_absoluteMoment actualNegativeEdgeComplement_tendsto_atTop

/-- An eventual constant absolute-value bound is impossible for the unchanged source inventory. -/
theorem actualClosedAbsolutePrimeMoment_no_constant_tail_bound :
    ¬ ∃ K R : ℝ, ∀ A : ℝ, R ≤ A → actualClosedAbsolutePrimeMoment A ≤ K := by
  rintro ⟨K,R,hbound⟩
  have he := actualClosedAbsolutePrimeMoment_tendsto_atTop.eventually
    (eventually_ge_atTop (K + 1))
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 he
  have hl := hR0 (max R R0) (le_max_right _ _)
  have hu := hbound (max R R0) (le_max_left _ _)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentObstruction
```
