# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.PositiveFiniteWeightNormalization.Variant03d73452c99c6fd3.WholeWeightsAndSupportCongruence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01051f5c3b3909870a3ce6147f9f8095450584dd` · SHA-256 `0327905740817854e0b0a0dcbc37143951554842b6e2e43f6f5712234af7e31f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeWeightsAndSupportCongruence
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole NormalizableWeights retains nonnegative coordinates and strictly positive total; normalization, all-true projection and support congruence retain every hypothesis. The independent real FiniteRasterState record remains distinct from this rational normalized construction. No binary64 addition/overflow correspondence is inferred. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- A normalized finite raster state. -/
structure FiniteRasterState (carrierCount : Nat) where
  weight : Fin carrierCount → ℝ
  nonnegative : ∀ carrier, 0 ≤ weight carrier
  normalized : ∑ carrier, weight carrier = 1

/-- Arbitrary nonnegative runtime weights with a positive total mass.  This is
the valid-input domain of `createFiniteRasterState`, which is broader than a
binary ownership mask. -/
structure NormalizableWeights (count : Nat) where
  rawWeight : Fin count → ℚ
  nonnegative : ∀ index, 0 ≤ rawWeight index
  positiveTotal : 0 < ∑ index, rawWeight index

/-- Normalize a valid finite weight vector exactly. -/
def normalizedWeight {count : Nat} (weights : NormalizableWeights count)
    (index : Fin count) : ℚ :=
  weights.rawWeight index / ∑ carrier, weights.rawWeight carrier

theorem normalizedWeight_nonnegative {count : Nat}
    (weights : NormalizableWeights count) (index : Fin count) :
    0 ≤ normalizedWeight weights index := by
  exact div_nonneg (weights.nonnegative index) weights.positiveTotal.le

/-- Normalization produces total mass exactly one. -/
theorem normalizedWeight_sum {count : Nat}
    (weights : NormalizableWeights count) :
    ∑ index, normalizedWeight weights index = 1 := by
  simp only [normalizedWeight, ← Finset.sum_div]
  exact div_self (ne_of_gt weights.positiveTotal)

/-- Exact finite evaluation used by `createFiniteRasterState`. -/
def normalizedWeightedEvaluation {count : Nat}
    (weights : NormalizableWeights count) (values : Fin count → ℚ) : ℚ :=
  ∑ index, normalizedWeight weights index * values index

/-- Boolean specialization used by `evaluateBitProjection`. -/
def normalizedBitProjection {count : Nat}
    (weights : NormalizableWeights count) (bits : Fin count → Bool) : ℚ :=
  normalizedWeightedEvaluation weights (fun index => if bits index then 1 else 0)

/-- Projecting the constant true bit field produces unit mass. -/
@[simp] theorem normalizedBitProjection_all_true {count : Nat}
    (weights : NormalizableWeights count) :
    normalizedBitProjection weights (fun _ => true) = 1 := by
  simpa [normalizedBitProjection, normalizedWeightedEvaluation] using
    normalizedWeight_sum weights

/-- Values on zero-weight coordinates cannot affect a finite raster state. -/
theorem normalizedWeightedEvaluation_congr_support {count : Nat}
    (weights : NormalizableWeights count) (left right : Fin count → ℚ)
    (agree : ∀ index, weights.rawWeight index ≠ 0 → left index = right index) :
    normalizedWeightedEvaluation weights left =
      normalizedWeightedEvaluation weights right := by
  unfold normalizedWeightedEvaluation
  apply Finset.sum_congr rfl
  intro index _
  by_cases selected : weights.rawWeight index = 0
  · simp [normalizedWeight, selected]
  · rw [agree index selected]

end BitMatrix.Runtime.Semantics
```
