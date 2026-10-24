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
