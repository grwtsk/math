# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteObservationExample.Variant81de7ac4c2ffe3c8.FiniteEncoderImageAndQuotient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b3635ddb574df571356b77d345174d8124a7448` · SHA-256 `909eca6b43e32a9f3c4a8c331d6b3b905778608fbf0ea777ff8968afbf6fb13e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteEncoderImageAndQuotient — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1
Organized SHA-256: 3f6b749749faee1026925fa0a5a1e2816c43dca81e86ccb33bbb72b3187c7e68
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- A concrete four-configuration one-by-two encoder realizes three observed matrices. Quotient-to-image bijection is inherited only from the exact original quantizer provider; the image is not identified with all four matrices. Array-backed equalities pass solely through toMatrix. All private declarations stay in this one module; native_decide proof bytes are retained without evaluation. -/

import BitMatrix.Quantization.Core
import Mathlib.Tactic.DeriveFintype

/-!
# Finite quantization tests

Test-only examples for declarative and array-backed quantizers.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteObservationExample.Variant81de7ac4c2ffe3c8

namespace BitMatrix.Tests.Quantization

private inductive SampleCfg where
  | cfg₁
  | cfg₂
  | cfg₃
  | cfg₄
  deriving DecidableEq, Fintype

private def sampleRows : Nat := 1

private def sampleCols : Nat := 2

/-- Four configurations with outputs `00`, `00`, `10`, and `11`. -/
private def sampleEncode :
    SampleCfg → BitMatrix sampleRows sampleCols
  | .cfg₁ | .cfg₂ => fun _ _ => false
  | .cfg₃ => fun _ j => j.val == 0
  | .cfg₄ => fun _ _ => true

private def sampleQ :
    BitMatrix.Quantizer SampleCfg sampleRows sampleCols :=
  ⟨sampleEncode⟩

/-- The same four observations produced through the array-backed layer. -/
private def sampleEncodeArrayBacked :
    SampleCfg → BitMatrix.ArrayBacked sampleRows sampleCols
  | .cfg₁ | .cfg₂ => ⟨#[false, false], by decide⟩
  | .cfg₃ => ⟨#[true, false], by decide⟩
  | .cfg₄ => ⟨#[true, true], by decide⟩

private def sampleArrayBackedQ :
    BitMatrix.Quantizer SampleCfg sampleRows sampleCols :=
  BitMatrix.Quantizer.ofArrayBacked sampleEncodeArrayBacked

example :
    sampleQ.Indistinguishable .cfg₁ .cfg₂ := by
  rfl

example :
    ¬ sampleQ.Indistinguishable .cfg₁ .cfg₃ := by
  change sampleQ.encode .cfg₁ ≠ sampleQ.encode .cfg₃
  intro h
  have h00 := congrArg
    (fun A : BitMatrix sampleRows sampleCols =>
      A ⟨0, by decide⟩ ⟨0, by decide⟩)
    h
  simp [sampleQ, sampleEncode] at h00

example :
    sampleQ.effectiveStates.card = 3 := by
  native_decide

example :
    sampleQ.effectiveStates.card ≤
      2 ^ (sampleRows * sampleCols) :=
  sampleQ.card_effectiveStates_le_bits

example :
    Function.Bijective sampleQ.quotientToEffective :=
  ⟨sampleQ.quotientToEffective_injective,
   sampleQ.quotientToEffective_surjective⟩

example :
    sampleArrayBackedQ.Indistinguishable .cfg₁ .cfg₂ := by
  change (BitMatrix.Quantizer.ofArrayBacked sampleEncodeArrayBacked).Indistinguishable .cfg₁ .cfg₂
  rw [BitMatrix.Quantizer.ofArrayBacked_indistinguishable_iff]
  rfl

example :
    sampleArrayBackedQ.encode .cfg₃ =
      (sampleEncodeArrayBacked .cfg₃).toMatrix :=
  BitMatrix.Quantizer.ofArrayBacked_encode sampleEncodeArrayBacked .cfg₃

end BitMatrix.Tests.Quantization

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteObservationExample.Variant81de7ac4c2ffe3c8
```
