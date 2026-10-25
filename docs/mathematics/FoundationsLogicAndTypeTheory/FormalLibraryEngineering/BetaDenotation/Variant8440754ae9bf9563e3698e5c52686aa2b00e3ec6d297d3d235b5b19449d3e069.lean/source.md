# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaDenotation.Variant8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cd7e42b7f9f02a927449da4a135d62545f34a98` · SHA-256 `8440754ae9bf9563e3698e5c52686aa2b00e3ec6d297d3d235b5b19449d3e069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer

/-!
Actual source conversion quotients give a denotation preserved by the complete
annotated beta normalizer. The quotient is the source equational semantics;
future operational behavior requires its own contract.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/

namespace FormalResearch.TypeTheory.BetaReduction

open OAI.PureTypeSystem

universe u

/-- The actual source beta-conversion equivalence. -/
def conversionSetoid (S : Type u) : Setoid (Expr S) where
  r := Converts
  iseqv := ⟨fun term => .refl term,
    fun conversion => .symm _ _ conversion,
    fun first second => .trans _ _ _ first second⟩

/-- Denotation in the actual annotated source conversion quotient. -/
def denotation {S : Type u} (term : Expr S) : Quotient (conversionSetoid S) :=
  Quotient.mk (conversionSetoid S) term

/-- Every permitted source step preserves the actual source quotient denotation. -/
theorem step_preserves_denotation {S : Type u} {term target : Expr S}
    (reduction : Beta term target) : denotation term = denotation target :=
  Quotient.sound (.rel _ _ reduction)

/-- The executable normalizer preserves the actual source quotient denotation. -/
theorem normalizeFuel_preserves_denotation {S : Type u} {term target : Expr S} {fuel : ℕ}
    (success : normalizeFuel fuel term = some target) : denotation term = denotation target :=
  Quotient.sound (normalizeFuel_sound success).1.converts

end FormalResearch.TypeTheory.BetaReduction
```
