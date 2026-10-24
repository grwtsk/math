# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BinaryWordEndpoints.Variant5bb06107b0f1813f.LastEntry

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eba936bf297934e6a960fc97801cd13306bfa284` · SHA-256 `c4834c40342212e703b287b353593a90ae577138bfe96c15838691690cf2c452`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LastEntry — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b
Organized SHA-256: a05c812325ee730c25f9b7a53febd731e3a6218e875b6db89856565b721f3f41
PMD: 510.7.010.030.080 words (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact empty/singleton/recursive lastBit? function and full induction proof that every nonempty b::rest has some last entry. All Bit/list and b/rest parameters remain exact; no nonempty premise is silently applied to []. -/

import Folder.Carrier.Bit

/-!
# Folder.Spectral.PathClass

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.path_class
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BinaryWordEndpoints.Variant5bb06107b0f1813f

open Folder

open Carrier

def lastBit? : List Bit → Option Bit
  | [] => none
  | [b] => some b
  | _ :: rest => lastBit? rest


theorem lastBit?_cons_ne_none (b : Bit) (rest : List Bit) :
    ∃ z, lastBit? (b :: rest) = some z := by
  induction rest generalizing b with
  | nil =>
      exact ⟨b, rfl⟩
  | cons c rest ih =>
      simpa [lastBit?] using ih c


end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.BinaryWordEndpoints.Variant5bb06107b0f1813f
```
