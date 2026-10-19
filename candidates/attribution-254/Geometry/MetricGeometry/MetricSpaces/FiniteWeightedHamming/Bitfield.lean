/-
# Uncompiled source split candidate: Finite Boolean coordinate bitfields

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing notices remain
preserved in the exact source archives and copied source documentation.
Source original SHA256: 59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef
Source regions: bytes 382..434. Review: attribution-254-review-000003.
Original documentation below describes the unsplit source context.
No Lean compilation, proof acceptance or public umbrella admission is asserted.
-/

import Std

/-!
# Registered finite bitfields

The spectral-closure bitfield is finite by construction.  Its coordinates are
not anonymous booleans: every coordinate carries a source locus, meaning,
authority class, admissibility rule reference, metric weight, event reference,
and an explicit unresolved flag.
-/

namespace GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming

abbrev Bitfield (width : Nat) := Fin width → Bool

end GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming
