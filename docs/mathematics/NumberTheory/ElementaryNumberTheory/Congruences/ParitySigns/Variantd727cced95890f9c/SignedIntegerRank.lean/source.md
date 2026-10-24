# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Congruences.ParitySigns.Variantd727cced95890f9c.SignedIntegerRank

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fdda34fa58bcb532d0a3aea343786fcc9b10782` · SHA-256 `4750c08a916cbbd7ff5d1d36a3caaadb15f721e0f90df7b6664ee92d99c0482f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Individually read source: Parity-dependent sign of a supplied integer.
Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic recombination,
and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are user-specified provisional contribution roles, not independently established model
mechanisms or final per-declaration authorship. Existing notices remain exact in the archives.
Original source SHA256: d727cced95890f9ceddf3f07da907ec935e243111eb7844148cf381bfe0cd7d0
Review: attribution-254-review-000086.
PMD: 510.2.010.020 congruences; editorial navigation only.
Only SignedRank is extracted: if n % 2 = 0 then r else -r, for arbitrary integer n and r.
The archived finiteSupport and value_eq_signed_sum fields are arbitrary supplied propositions.
No finite-support, cohomology, alternating-sum or Euler-characteristic theorem is asserted.
Original whole-source documentation below may describe more than this extracted component.
The original historical import remains explicit and unresolved for replay.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.DerivedSheaf.EulerCharacteristic

Radiation role: research-boundary
BinaryMatrix spine: This module records Euler-characteristic data, not BinaryMatrix counts.
Ontology: derived.euler_characteristic
Pivot role: none
Zero typology: signed-alternating-contract
Contract boundary: contract
Composite stack role: derived-sheaf
-/

open Folder.DerivedSheaf

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Congruences.ParitySigns.Variantd727cced95890f9c

def SignedRank
    (n : Degree)
    (r : Int) : Int :=
  if n % 2 = 0 then r else -r

end GRWTSK.NumberTheory.ElementaryNumberTheory.Congruences.ParitySigns.Variantd727cced95890f9c
```
