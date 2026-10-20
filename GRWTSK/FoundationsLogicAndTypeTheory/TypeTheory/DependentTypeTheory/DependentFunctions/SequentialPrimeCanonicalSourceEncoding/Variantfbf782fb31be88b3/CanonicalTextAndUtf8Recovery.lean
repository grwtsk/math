/-
CanonicalTextAndUtf8Recovery — individually reviewed exact source
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

/- Exact existing CanonicalSource UTF8 injectivity proof plus both normalization/terminal-LF recursions and their full typed canonical-source constructor/proofs. All no-CR/no-terminal-LF witnesses and exact finalLF framing remain. No document is read and no embedded include_str is copied. -/

import BitMatrix.Carrier.SequentialPrime
import BitMatrix.Codec.Source
import Mathlib.Data.Nat.Bitwise

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

namespace CanonicalSource

theorem utf8_injective : Function.Injective utf8 := by
  intro left right equality
  apply ext
  apply String.toList_injective
  have decoded := congrArg ByteArray.utf8Decode? equality
  have arrays : (left.body.toList ++ ['\n']).toArray =
      (right.body.toList ++ ['\n']).toArray := by
    simpa [utf8, text, String.toUTF8_eq_toByteArray,
      ← String.utf8Encode_toList, ← List.utf8Encode_append] using decoded
  have lists : left.body.toList ++ ['\n'] = right.body.toList ++ ['\n'] := by
    simpa using arrays
  exact List.append_cancel_right lists


end CanonicalSource

namespace SequentialPrimeSource

/-- Normalize CRLF and bare CR to LF, preserving every other character. -/
def normalizeLineEndings : List Char → List Char
  | [] => []
  | '\r' :: '\n' :: tail => '\n' :: normalizeLineEndings tail
  | '\r' :: tail => '\n' :: normalizeLineEndings tail
  | character :: tail => character :: normalizeLineEndings tail


/-- Remove every terminal LF while preserving interior line feeds. -/
def stripTerminalLineFeeds : List Char → List Char
  | [] => []
  | character :: tail =>
      match stripTerminalLineFeeds tail with
      | [] => if character = '\n' then [] else [character]
      | first :: rest => character :: first :: rest


theorem normalizeLineEndings_noCarriageReturn
    (characters : List Char) :
    '\r' ∉ normalizeLineEndings characters := by
  induction characters using normalizeLineEndings.induct <;>
    simp_all [normalizeLineEndings, eq_comm]


theorem stripTerminalLineFeeds_subset
    {character : Char}
    {characters : List Char}
    (member : character ∈ stripTerminalLineFeeds characters) :
    character ∈ characters := by
  induction characters with
  | nil => simp [stripTerminalLineFeeds] at member
  | cons head tail inductionHypothesis =>
      simp only [stripTerminalLineFeeds] at member
      split at member
      · split at member
        · contradiction
        · have headEquality : character = head := by simpa using member
          simp [headEquality]
      · rename_i first rest result
        simp only [List.mem_cons] at member ⊢
        exact member.elim Or.inl (fun tailMember =>
          Or.inr (inductionHypothesis (by simpa [result] using tailMember)))


theorem stripTerminalLineFeeds_noTerminalLineFeed
    (characters : List Char) :
    (stripTerminalLineFeeds characters).getLast? ≠ some '\n' := by
  induction characters with
  | nil => simp [stripTerminalLineFeeds]
  | cons head tail inductionHypothesis =>
      simp only [stripTerminalLineFeeds]
      split
      · split
        · simp
        · rename_i notLineFeed
          simp [notLineFeed]
      · rename_i first rest result
        simpa [result] using inductionHypothesis


/--
The exact documentation canonicalizer: normalize line endings, remove all
terminal LFs, and append exactly one LF.  `String` supplies UTF-8 encoding
without a BOM through `String.toUTF8`.
-/
def documentationSourceCanonicalizer (source : String) : String :=
  String.ofList
    (stripTerminalLineFeeds (normalizeLineEndings source.toList) ++ ['\n'])


/-- Typed canonical source produced by the documentation convention. -/
def documentationCanonicalSource (source : String) : CanonicalSource where
  body := String.ofList
    (stripTerminalLineFeeds (normalizeLineEndings source.toList))
  noCarriageReturn := by
    intro member
    have inStripped : '\r' ∈
        stripTerminalLineFeeds (normalizeLineEndings source.toList) := by
      simpa using member
    exact normalizeLineEndings_noCarriageReturn source.toList
      (stripTerminalLineFeeds_subset inStripped)
  noTerminalLineFeed := by
    simpa using stripTerminalLineFeeds_noTerminalLineFeed
      (normalizeLineEndings source.toList)


theorem documentationCanonicalSource_text
    (source : String) :
    (documentationCanonicalSource source).text =
      documentationSourceCanonicalizer source := by
  simp [documentationCanonicalSource, documentationSourceCanonicalizer,
    CanonicalSource.text, String.push_eq_append]


end SequentialPrimeSource

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3
