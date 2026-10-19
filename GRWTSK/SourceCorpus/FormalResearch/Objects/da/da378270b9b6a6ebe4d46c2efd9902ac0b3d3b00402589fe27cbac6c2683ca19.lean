import Mathematics.StratifiedBoundary.OrdinalTally.Profile

/-!
# Profile-relative ordinal semantics

Semantic equality is exposed separately from executable code equality.
-/

namespace Mathematics.StratifiedBoundary

def OrdinalSemanticallyEqual
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (left right : OrdinalTally) : Prop :=
  profile.denotes left = profile.denotes right

structure CompleteNormalizationProfile
    (Semantic : Type u)
    extends OrdinalNotationProfile Semantic where
  normalizedEqualityComplete :
    ∀ {left right},
      admits left →
      admits right →
      normalize left = normalize right ↔
        denotes left = denotes right

end Mathematics.StratifiedBoundary
