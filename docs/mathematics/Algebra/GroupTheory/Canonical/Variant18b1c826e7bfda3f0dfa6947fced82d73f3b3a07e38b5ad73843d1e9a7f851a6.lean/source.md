# Complete source: GRWTSK.Algebra.GroupTheory.Canonical.Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0662d5597cbc3baafdf25b740add06890f578264` · SHA-256 `18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.Data.Fintype.Basic

/-!
# Data-only finite-orbit canonicalization

Canonicalization acts on stable obstruction data.  It never compares proof
terms and does not establish feasibility or infeasibility.  The ordering and
encoding version are explicit certificate data.
-/

namespace Mathematics.BinaryFrontier

def SameOrbit
    {G X : Type}
    [Group G]
    [MulAction G X]
    (left right : X) : Prop :=
  ∃ groupElement : G,
    groupElement • left = right

structure FiniteDataCanonicalizer
    (G X : Type)
    [Group G]
    [Fintype G]
    [MulAction G X] where
  orderingVersion : String
  encode : X → String
  encode_injective : Function.Injective encode
  canonicalize : X → X
  chosenFromOrbit :
    ∀ value : X,
      SameOrbit (G := G) value (canonicalize value)
  orbitInvariant :
    ∀ (groupElement : G) (value : X),
      canonicalize (groupElement • value) =
        canonicalize value
  idempotent :
    ∀ value : X,
      canonicalize (canonicalize value) =
        canonicalize value
  complete :
    ∀ left right : X,
      canonicalize left = canonicalize right ↔
        SameOrbit (G := G) left right

theorem canon_smul
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (groupElement : G)
    (value : X) :
    canonicalizer.canonicalize (groupElement • value) =
      canonicalizer.canonicalize value :=
  canonicalizer.orbitInvariant groupElement value

theorem canon_idempotent
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (value : X) :
    canonicalizer.canonicalize
        (canonicalizer.canonicalize value) =
      canonicalizer.canonicalize value :=
  canonicalizer.idempotent value

theorem canon_eq_iff_same_orbit
    {G X : Type}
    [Group G]
    [Fintype G]
    [MulAction G X]
    (canonicalizer : FiniteDataCanonicalizer G X)
    (left right : X) :
    canonicalizer.canonicalize left =
        canonicalizer.canonicalize right ↔
      SameOrbit (G := G) left right :=
  canonicalizer.complete left right

end Mathematics.BinaryFrontier
```
