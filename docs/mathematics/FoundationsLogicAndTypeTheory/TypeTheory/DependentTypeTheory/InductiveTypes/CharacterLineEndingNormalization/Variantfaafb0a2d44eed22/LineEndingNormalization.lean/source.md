# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.CharacterLineEndingNormalization.Variantfaafb0a2d44eed22.LineEndingNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93b818bf55f6f6587d1dd1a155a6ff1da60bb1b4` · SHA-256 `dcd751a3eeb27362c23d43d3ec4f7ca656cf16eb52693b14c7740328a115b3af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LineEndingNormalization — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: faafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa
Organized SHA-256: 8c8e5b5c4a58348ee498ccd4e8b1bfc564618f198e480bf51a5d444d988f56ea
PMD: 510.0.070.020.050 inductive types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete CRLF/bare-CR recursion and no-CR predicate with canonical-output, fixed-input and idempotence proofs. This is a pure Char-list function; no filesystem or external runtime correspondence is executed or certified. -/

import BitMatrix.Codec.BitDocument
import Mathlib.Tactic

/-!
# Runtime codec profiles

The two supported runtimes intentionally have different source domains.
Rust preserves the source bytes represented by a Lean string.  JavaScript
first canonicalizes CRLF and bare CR to LF.  Their bit-document format is the
same after that source-profile step.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.CharacterLineEndingNormalization.Variantfaafb0a2d44eed22

open _root_.BitMatrix.Codec

namespace BitMatrix.Codec.Profiles

/-- Canonicalize CRLF and bare CR to LF, matching the JavaScript codec. -/
def normalizeLineEndings : List Char → List Char
  | [] => []
  | '\r' :: '\n' :: rest => '\n' :: normalizeLineEndings rest
  | '\r' :: rest => '\n' :: normalizeLineEndings rest
  | character :: rest => character :: normalizeLineEndings rest


/-- The common source domain on which neither runtime changes line endings. -/
def CanonicalLineEndings (characters : List Char) : Prop :=
  '\r' ∉ characters


/-- Normalization always produces canonical LF-only line endings. -/
theorem normalizeLineEndings_canonical (characters : List Char) :
    CanonicalLineEndings (normalizeLineEndings characters) := by
  induction characters using normalizeLineEndings.induct with
  | case1 => simp [normalizeLineEndings, CanonicalLineEndings]
  | case2 rest induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨by decide, induction⟩
  | case3 rest exclusion induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨by decide, induction⟩
  | case4 character rest exclusion headNotCr induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨fun equality => headNotCr equality.symm, induction⟩


/-- Canonical LF-only input is unchanged. -/
theorem normalizeLineEndings_eq_self_of_canonical
    {characters : List Char} (canonical : CanonicalLineEndings characters) :
    normalizeLineEndings characters = characters := by
  induction characters with
  | nil => rfl
  | cons head tail induction =>
      have headNotCr : head ≠ '\r' := by
        intro equality
        apply canonical
        simp [equality]
      have tailCanonical : CanonicalLineEndings tail := by
        intro member
        apply canonical
        simp [member]
      cases tail with
      | nil => simp [normalizeLineEndings]
      | cons next rest =>
          simp [normalizeLineEndings, headNotCr, induction tailCanonical]


/-- Line-ending normalization is idempotent. -/
theorem normalizeLineEndings_idempotent (characters : List Char) :
    normalizeLineEndings (normalizeLineEndings characters) =
      normalizeLineEndings characters :=
  normalizeLineEndings_eq_self_of_canonical
    (normalizeLineEndings_canonical characters)


end BitMatrix.Codec.Profiles

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.CharacterLineEndingNormalization.Variantfaafb0a2d44eed22
```
