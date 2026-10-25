# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965.CanonicalStringCarrier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56dc1bcf1ddf61b82d04c275d90c651863fb6770` · SHA-256 `72b46e7e8d90529a5ef4e8fb378aa1b917555ec08af30a204b2034c284a7d573`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CanonicalStringCarrier — individually reviewed exact source
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

/- Whole body:String/no-CR/no-terminalLF structure, full extensionality proof, text and UTF8 definitions. All constraint fields are retained; original source prose claiming a checked environment remains historical, with no new compilation or runtime UTF8 acceptance claim. -/

import BitMatrix.Carrier.BooleanSpace

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

/--
A canonical source is represented by its body before the required final LF.
The body contains no CR and does not itself end in LF, so `text` has exactly
one terminal LF.  UTF-8 validity follows from using Lean `String` as source.
-/
structure CanonicalSource where
  body : String
  noCarriageReturn : '\r' ∉ body.toList
  noTerminalLineFeed : body.toList.getLast? ≠ some '\n'


namespace CanonicalSource

@[ext]
theorem ext {left right : CanonicalSource} (body : left.body = right.body) :
    left = right := by
  cases left
  cases right
  cases body
  rfl


/-- Canonical text with exactly one terminal line feed. -/
def text (source : CanonicalSource) : String :=
  source.body.push '\n'


/-- Canonical UTF-8 bytes. -/
def utf8 (source : CanonicalSource) : ByteArray :=
  source.text.toUTF8


end CanonicalSource

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965
```
