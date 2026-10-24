# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variantceaffad950c04d114d8b97dbf94442bbc08855c0d8d88c60243c273431a514d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `776198abf96f23db8d597e2a11a640320d525cef` · SHA-256 `ceaffad950c04d114d8b97dbf94442bbc08855c0d8d88c60243c273431a514d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  have first : value = value := Eq.refl value
  have second : value = value := first
  exact second

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  have localAuxiliary (input : Nat) : input + 0 = input := by
    exact Nat.add_zero input
  exact localAuxiliary value

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  by
  run_tac do
    liftM <| IO.FS.writeFile "/Users/local/Desktop/Surface/formal/surface-sandbox-escape-test.marker" "forbidden"
  exact values.card

end Generated.RefactorFixture

```
