/-
ExactImageAndSequentialPrimeSourceCodec — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882
Organized SHA-256: b0f2381d484b71c4d60ce0aa283ad410e14dec07f719b065f987ed87485026d2
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full classical exact-image Option decoder, entire two-law SourceCodec construction from an explicit injective encoder, and its sequential-prime specialization/round-trip. Membership is decided classically and a witness chosen noncomputably; no executable decoder, total acceptance of arbitrary states, or external tool result is asserted. -/

import BitMatrix.Carrier.SequentialPrime
import BitMatrix.Codec.Source
import Mathlib.Data.Nat.Bitwise

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3.SourceStatePlacementAndRecovery

/-!
# Canonical source layout on the sequential-prime carrier

The constructor below uses the three documented specifications:

* `(0;3)` for the eight MSB-first byte bits;
* `(1;1)` for `contains`, `next`, and `ref` incidence bits;
* `(2;1)` for the unary UTF-8 byte length.

All remaining addresses are false.  The length and byte fields are proved to
recover the canonical source exactly; incidence is retained as an additional
checked self-description rather than used as an injectivity shortcut.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3

open _root_.BitMatrix.Codec

namespace BitMatrix.Codec

open _root_.BitMatrix.Codec.CanonicalSource
open _root_.BitMatrix.Carrier

namespace SequentialPrimeSource

/-- Generic exact-image decoder for an injective source representation. -/
noncomputable def decodeSourceState
    {Address : Type}
    (encode : CanonicalSource → BooleanState Address)
    (state : BooleanState Address) : Option CanonicalSource := by
  classical
  exact if witness : ∃ source, encode source = state then
    some (Classical.choose witness)
  else none


noncomputable def sourceCodecOfInjective
    {Address : Type}
    (encode : CanonicalSource → BooleanState Address)
    (injective : Function.Injective encode) : SourceCodec Address where
  encode := encode
  decode := decodeSourceState encode
  decode_encode source := by
    classical
    simp only [decodeSourceState]
    split
    · rename_i witness
      congr 1
      apply injective
      exact Classical.choose_spec witness
    · rename_i absent
      exact False.elim (absent ⟨source, rfl⟩)
  encode_decode := by
    classical
    intro state source decoded
    simp only [decodeSourceState] at decoded
    split at decoded
    · rename_i witness
      have chosen : Classical.choose witness = source := Option.some.inj decoded
      rw [← chosen]
      exact Classical.choose_spec witness
    · contradiction


/-- Concrete exact codec using the complete sequential-prime carrier layout. -/
noncomputable def sourceCodec : SourceCodec SequentialPrimeCarrierAddress :=
  sourceCodecOfInjective sourceState sourceState_injective


@[simp]
theorem sourceCodec_decode_encode (source : CanonicalSource) :
    sourceCodec.decode (sourceCodec.encode source) = some source :=
  sourceCodec.decode_encode source


end SequentialPrimeSource

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3
