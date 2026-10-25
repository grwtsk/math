# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.PreparedUtf8PayloadProfiles.Variantfaafb0a2d44eed22.TypedProfilePayloadsAndCanonicalAgreement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5891645565eeb2be93ef6f9f0402da50aa05520f` · SHA-256 `7c514db843fbaef93455e071af60c6077ab259d295b49c33f57dea75edce4d6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
TypedProfilePayloadsAndCanonicalAgreement — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: faafb0a2d44eed22221305645a73144ac410d6b351c7531b74acd52c756b01fa
Organized SHA-256: 8c8e5b5c4a58348ee498ccd4e8b1bfc564618f198e480bf51a5d444d988f56ea
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full UTF8 payload witness, both finite profile constructors, all preparation/encoding functions and four exact equations. The document relation retains byte_length<2^prefixWidth; agreement requires the no-CR premise. These represented Rust/JavaScript labels are not evidence about executing either runtime. -/

import BitMatrix.Codec.BitDocument
import Mathlib.Tactic

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.CharacterLineEndingNormalization.Variantfaafb0a2d44eed22.LineEndingNormalization

/-!
# Runtime codec profiles

The two supported runtimes intentionally have different source domains.
Rust preserves the source bytes represented by a Lean string.  JavaScript
first canonicalizes CRLF and bare CR to LF.  Their bit-document format is the
same after that source-profile step.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.PreparedUtf8PayloadProfiles.Variantfaafb0a2d44eed22

open _root_.BitMatrix.Codec
open GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.CharacterLineEndingNormalization.Variantfaafb0a2d44eed22.BitMatrix.Codec.Profiles

namespace BitMatrix.Codec.Profiles

/-- Construct the exact UTF-8 payload represented by a character list. -/
def payloadOfCharacters (characters : List Char) : Utf8Payload where
  text := String.ofList characters
  bytes := (String.ofList characters).toUTF8.data
  encoding := rfl


/-- The source preparation profiles implemented by the Rust and JavaScript
runtimes. -/
inductive RuntimeCodecProfile where
  | rustBytePreserving
  | javascriptLineNormalizing
  deriving DecidableEq, Repr


/-- Prepare source characters according to one runtime profile. -/
def profileCharacters : RuntimeCodecProfile → List Char → List Char
  | .rustBytePreserving, characters => characters
  | .javascriptLineNormalizing, characters => normalizeLineEndings characters


/-- The exact payload submitted to the common bit-document encoder. -/
def profilePayload (profile : RuntimeCodecProfile)
    (characters : List Char) : Utf8Payload :=
  payloadOfCharacters (profileCharacters profile characters)


/-- Encode after applying the selected source profile. -/
def encodeWithProfile (profile : RuntimeCodecProfile)
    (prefixWidth : Nat) (characters : List Char) : BitDocument :=
  encodeBitDocument prefixWidth (profilePayload profile characters)


def encodeRustProfile := encodeWithProfile .rustBytePreserving


def encodeJavaScriptProfile := encodeWithProfile .javascriptLineNormalizing


/-- Rust passes the represented UTF-8 bytes to the common encoder unchanged. -/
@[simp]
theorem rust_profile_payload_bytes (characters : List Char) :
    (profilePayload .rustBytePreserving characters).bytes =
      (String.ofList characters).toUTF8.data :=
  rfl


/-- JavaScript submits the UTF-8 bytes of the normalized character stream. -/
@[simp]
theorem javascript_profile_payload_bytes (characters : List Char) :
    (profilePayload .javascriptLineNormalizing characters).bytes =
      (String.ofList (normalizeLineEndings characters)).toUTF8.data :=
  rfl


/-- Every profile encoder satisfies the common declarative encode/decode
relation for its prepared payload whenever its byte length fits the selected
prefix width. -/
theorem encodeWithProfile_relation (profile : RuntimeCodecProfile)
    (prefixWidth : Nat) (characters : List Char)
    (representable : RepresentableLength prefixWidth
      (profilePayload profile characters).bytes.size) :
    EncodeDecodeRelation prefixWidth (profilePayload profile characters)
      (encodeWithProfile profile prefixWidth characters) :=
  ⟨rfl, representable⟩


/-- The two runtime encoders agree exactly on the canonical LF-only domain. -/
theorem profiles_agree_on_canonical_domain (prefixWidth : Nat)
    {characters : List Char} (canonical : CanonicalLineEndings characters) :
    encodeRustProfile prefixWidth characters =
      encodeJavaScriptProfile prefixWidth characters := by
  simp [encodeRustProfile, encodeJavaScriptProfile, encodeWithProfile,
    profilePayload, profileCharacters,
    normalizeLineEndings_eq_self_of_canonical canonical]


end BitMatrix.Codec.Profiles

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.PreparedUtf8PayloadProfiles.Variantfaafb0a2d44eed22
```
