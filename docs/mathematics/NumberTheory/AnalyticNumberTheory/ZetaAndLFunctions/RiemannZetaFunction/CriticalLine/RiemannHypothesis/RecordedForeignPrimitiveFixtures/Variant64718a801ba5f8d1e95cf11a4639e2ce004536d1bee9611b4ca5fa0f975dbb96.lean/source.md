# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RecordedForeignPrimitiveFixtures.Variant64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11f1bc3179aec2d4a1d3b0c9adf6305fa4a438de` · SHA-256 `64718a801ba5f8d1e95cf11a4639e2ce004536d1bee9611b4ca5fa0f975dbb96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCorrelationSignChange
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
Prospective recorded-scope foreign primitive controls only. UNCOMPILED here.
The root sign2 proof has no dependency on these foreign modules. These fixtures
do not replay or integrate the foreign packet or identify a literal prime atom.
-/

set_option autoImplicit false
noncomputable section
namespace Cycle24RecordedForeignPrimitiveFixtures

open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationSignChange SourceMangoldtInteraction
open SourcePositivePeanoPrimitive SourcePeanoProfileTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem primitive_five_nonneg_on_closed_support :
    ∀ t : ℝ, 0 ≤ t → t ≤ 10 → 0 ≤ sourcePeanoPrimitive 5 t := by
  intro t ht0 ht10
  have he : (2 : ℝ) * 5 = 10 := by norm_num
  exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht0 (by rw [he]; exact ht10)

theorem primitive_five_second_derivative_negative_inside :
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧ deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  obtain ⟨t, ht0, ht2, ht⟩ :=
    sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
  have he : (2 : ℝ) * 5 = 10 := by norm_num
  rw [he] at ht2
  refine ⟨t, ht0, ht2, ?_⟩
  rw [sourcePeanoPrimitive_second_deriv (by norm_num : (0 : ℝ) < 5)]
  exact mul_neg_of_pos_of_neg (Real.exp_pos _) ht

theorem primitive_five_second_derivative_at_zero_one :
    deriv (deriv (sourcePeanoPrimitive 5)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by norm_num : (0 : ℝ) < 5),
    sourceCorrelation_zero (by norm_num : (0 : ℝ) < 5)]
  norm_num

end Cycle24RecordedForeignPrimitiveFixtures
```
