# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSiteConfigurations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ba05d2a50cf689bdef60a5795e30783e23e6cb0` · SHA-256 `c3039a6ddec442a963d7e725d7760aff1cc46cc1430d3a1d5dd5ec13a656bd2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Finite physical site configurations
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 61ddd674c4a185bd8c2369c52e856d523fd19b8d77537cab2b20d474480411f1
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The original whole-file documentation below describes the unsplit source. Physical configuration counting and supplied virtual dimensions are separate; no tensor contraction, rank theorem or bond bound is constructed.
-/
import Mathlib.Data.Fintype.BigOperators

/-!
# Finite tensor-network indices

The physical configuration space and the virtual bond profile are distinct.
The basis cardinality is `D ^ N`; the qubit specialization is a separate
theorem rather than a silent replacement of `D` by two.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSiteConfigurations

/-- One physical basis configuration for `N` sites of local dimension `D`. -/
abbrev PhysicalConfiguration (N D : Nat) :=
  Fin N → Fin D

/-- The exact number of physical basis configurations. -/
theorem physicalConfiguration_card (N D : Nat) :
    Fintype.card (PhysicalConfiguration N D) = D ^ N := by
  simp [PhysicalConfiguration]

/-- The binary specialization is valid only after fixing local dimension two. -/
theorem qubitConfiguration_card (N : Nat) :
    Fintype.card (PhysicalConfiguration N 2) = 2 ^ N := by
  simp [PhysicalConfiguration]

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.FiniteSiteConfigurations
```
