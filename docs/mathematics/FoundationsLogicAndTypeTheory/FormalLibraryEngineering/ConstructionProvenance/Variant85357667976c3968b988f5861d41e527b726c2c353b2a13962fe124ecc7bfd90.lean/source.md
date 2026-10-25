# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructionProvenance.Variant85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f9118a8495caac3358c66f8138412614c05cacc` · SHA-256 `85357667976c3968b988f5861d41e527b726c2c353b2a13962fe124ecc7bfd90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Arithmetic construction and projector provenance

Structural coupling is witnessed by one fixed construction rule.  Arithmetic
essentiality is stronger: two sources with the same erased image must remain
distinguishable by an isomorphism-invariant detector.
-/

namespace Mathematics.Prismatic

universe u v w x

/-- A realization explicitly produced by one fixed arithmetic construction. -/
structure ConstructionProvenance
    (Source : Type u) (Realization : Type v) where
  construct : Source → Realization
  source : Source
  realization : Realization
  realizes : realization = construct source

/--
An idempotent is source-derived only when the same declared construction
produces both the carrier and its projector.
-/
structure ProjectorProvenance
    (Source : Type u) (Carrier : Type v) where
  source : Source
  constructCarrier : Source → Carrier
  Projector : Type w
  constructProjector : Source → Projector
  applyProjector : Projector → Carrier → Carrier
  idempotent :
    ∀ value,
      applyProjector (constructProjector source)
          (applyProjector (constructProjector source) value) =
        applyProjector (constructProjector source) value

/--
A pair of arithmetic sources with the same erased image but distinguishable
realizations is an exact obstruction to factorization through erasure.
-/
structure NonfactorizationWitness
    (Source : Type u) (Erased : Type v)
    (Realization : Type w) (Invariant : Type x) where
  erase : Source → Erased
  realize : Source → Realization
  detector : Realization → Invariant
  left : Source
  right : Source
  sameErasure : erase left = erase right
  distinguished :
    detector (realize left) ≠ detector (realize right)

namespace NonfactorizationWitness

variable {Source : Type u} {Erased : Type v}
  {Realization : Type w} {Invariant : Type x}

/-- The realization cannot be reconstructed from the arithmetic-erased input. -/
theorem no_erased_factorization
    (witness :
      NonfactorizationWitness Source Erased Realization Invariant) :
    ¬ ∃ factor : Erased → Realization,
        ∀ source, witness.realize source =
          factor (witness.erase source) := by
  rintro ⟨factor, factors⟩
  apply witness.distinguished
  rw [factors witness.left, factors witness.right, witness.sameErasure]

end NonfactorizationWitness

end Mathematics.Prismatic
```
