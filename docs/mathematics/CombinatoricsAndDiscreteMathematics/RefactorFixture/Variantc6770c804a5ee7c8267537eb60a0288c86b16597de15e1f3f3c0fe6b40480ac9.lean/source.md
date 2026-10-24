# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RefactorFixture.Variantc6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfd5622faddc598d3ccb74839a6bbc84818d797d` · SHA-256 `c6770c804a5ee7c8267537eb60a0288c86b16597de15e1f3f3c0fe6b40480ac9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  exact Classical.choice ⟨Nat.add_zero value⟩

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture

```
