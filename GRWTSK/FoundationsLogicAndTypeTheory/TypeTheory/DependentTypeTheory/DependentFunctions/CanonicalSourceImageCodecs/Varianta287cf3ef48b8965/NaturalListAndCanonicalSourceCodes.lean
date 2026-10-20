/-
NaturalListAndCanonicalSourceCodes — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a287cf3ef48b896567987445f17e65a4fb59cbcc7a2cf24f277ff906de691b6b
Organized SHA-256: 01e012715d09f573e7b46f1491c0e5614aced09b130f982ef0ed71f6b5d04977
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete recursive naturalListCode with Nat.pair and its whole induction/injectivity proof; entire canonical source code via Char.toNat and exact injectivity proof. No executable compression bound, arithmetic efficiency or cryptographic property is inferred. -/

import BitMatrix.Carrier.BooleanSpace

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965.CanonicalStringCarrier

/-!
# Canonical finite sources and source-state codecs

This module states the provider-neutral source-codec interface. An
implementation must provide both decoding laws; only then is its source
constructor promoted to an equivalence with its image. The separate
`BitMatrix.Codec.SequentialPrimeSource` module now supplies the project's
concrete full-carrier implementation of this interface.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965


namespace BitMatrix.Codec

namespace CanonicalSource

/-- Prefix-free natural code for a finite list of naturals. -/
def naturalListCode : List Nat → Nat
  | [] => 0
  | head :: tail => Nat.pair head (naturalListCode tail) + 1


theorem naturalListCode_injective : Function.Injective naturalListCode := by
  intro left
  induction left with
  | nil =>
      intro right equal
      cases right with
      | nil => rfl
      | cons head tail => simp [naturalListCode] at equal
  | cons head tail inductionHypothesis =>
      intro right equal
      cases right with
      | nil => simp [naturalListCode] at equal
      | cons otherHead otherTail =>
          simp only [naturalListCode, Nat.add_right_cancel_iff] at equal
          have parts := Nat.pair_eq_pair.mp equal
          congr
          · exact parts.1
          · exact inductionHypothesis parts.2


/-- A lossless natural code for canonical source records. -/
def code (source : CanonicalSource) : Nat :=
  naturalListCode (source.body.toList.map Char.toNat)


theorem code_injective : Function.Injective code := by
  intro left right equal
  apply ext
  apply String.toList_injective
  apply (List.map_injective_iff.mpr (fun _ _ equality => Char.toNat_inj.mp equality))
  exact naturalListCode_injective equal


end CanonicalSource

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965
