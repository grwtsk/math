# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TextCarrier.Variant8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ea659e9685d8de1a813a70cc6d416f478293720` · SHA-256 `8a368de260543a82382dc3e262037bea6b7d73cd4f185ee70fdc5ae6b082e051`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Basic

/-!
# Immutable raw and normalized text carriers
-/

namespace Mathematics.SemanticTokenization

structure RawText where
  id : TextId
  chars : Array Char
  sourceDigest : Digest
deriving Repr

structure TextCarrier where
  id : TextId
  chars : Array Char
  normalizedDigest : Digest
  sourceDigest : Digest
deriving Repr

def SameTextVersion (left right : TextCarrier) : Prop :=
  left.id = right.id ∧
  left.normalizedDigest = right.normalizedDigest ∧
  left.sourceDigest = right.sourceDigest

theorem sameTextVersion_refl (text : TextCarrier) :
    SameTextVersion text text :=
  ⟨rfl, rfl, rfl⟩

theorem sameTextVersion_symm {left right : TextCarrier} :
    SameTextVersion left right →
    SameTextVersion right left := by
  rintro ⟨hId, hDigest, hSource⟩
  exact ⟨hId.symm, hDigest.symm, hSource.symm⟩

theorem sameTextVersion_trans {a b c : TextCarrier} :
    SameTextVersion a b →
    SameTextVersion b c →
    SameTextVersion a c := by
  rintro
    ⟨hId₁, hDigest₁, hSource₁⟩
    ⟨hId₂, hDigest₂, hSource₂⟩
  exact
    ⟨hId₁.trans hId₂,
      hDigest₁.trans hDigest₂,
      hSource₁.trans hSource₂⟩

end Mathematics.SemanticTokenization
```
