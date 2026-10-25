# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalObject.Variante1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bae8fa89c7f4eb59cad2f31a7c8a044283d9b82e` · SHA-256 `e1084d3845e92817df1a04b576a79914f20f4e8cfa96392232a5b33f2ca58176`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Prismatic.CertifiedPrime

/-!
# Global objects and nonidentical realizations

The arithmetic object is not identified with any one of its realizations.
Archimedean, `ℓ`-adic, prismatic, de Rham, Betti, and finite-combinatorial
views remain separately typed.  A passage between them is explicit,
directional, and certificate bearing.
-/

namespace Mathematics.Prismatic

universe u v

/-- Realization channels that must not be collapsed by representation syntax. -/
inductive RealizationKind
  | globalArithmetic
  | archimedean
  | ellAdic (prime : Nat)
  | prismatic (prime : Nat)
  | deRham
  | betti
  | finiteCombinatorial
  deriving DecidableEq, Repr

/-- Identity of the arithmetic object before choosing a realization. -/
structure GlobalArithmeticObject where
  objectId : ElementRef
  semanticDigest : Digest
  definitionAddress : ObjectAddress
  deriving Repr

/-- One typed carrier representing a fixed global object. -/
structure ArithmeticRealization
    (global : GlobalArithmeticObject) where
  Carrier : Type u
  kind : RealizationKind
  realizationDigest : Digest
  realizationAddress : ObjectAddress

/--
A directional comparison map.  The certificate binds the precise domain,
codomain, scalar extension, hypotheses, and map; no equivalence is inferred.
-/
structure RealizationComparison
    {global : GlobalArithmeticObject}
    (source : ArithmeticRealization.{u} global)
    (target : ArithmeticRealization.{v} global) where
  map : source.Carrier → target.Carrier
  hypothesisDigest : Digest
  scalarExtensionDigest : Digest
  mapDigest : Digest
  certificate : ObjectAddress

end Mathematics.Prismatic
```
