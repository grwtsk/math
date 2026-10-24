# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abf59f5450e910db843ab9a52a44d546ce0ed35d` · SHA-256 `a68dc21ff4fe3205062db87e719b03b90a2bf40a9f6dbcdd0149d50bbc0d8dfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib real powers and canonical radical (Apache-2.0).
OpenAI Codex formalization assistance.
This module freezes a target proposition; it supplies no proof of that target. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.RadicalMultiplicativeInterface
import Mathlib.Analysis.SpecialFunctions.Pow.Real

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- The uniform radical-height bound at the specified real epsilon. Its
constant may depend on epsilon, but is uniform over all primitive positive
additive triples. The radical is Mathlib's `UniqueFactorizationMonoid.radical`
on the exact natural product `a * b * c`; exponentiation is `Real.rpow`. -/
def ABCBound (ε : ℝ) : Prop :=
  ∃ K : ℝ, 0 < K ∧ ∀ t : PrimitiveAdditiveTriple,
    (t.c : ℝ) ≤ K * Real.rpow (t.radical : ℝ) (1 + ε)

/-- The canonical integer abc conjecture: the uniform bound for every positive
real epsilon. This proposition is not assumed as an axiom and is not proved
by any declaration in the initial target package. -/
def ABCConjecture : Prop :=
  ∀ ε : ℝ, 0 < ε → ABCBound ε

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
