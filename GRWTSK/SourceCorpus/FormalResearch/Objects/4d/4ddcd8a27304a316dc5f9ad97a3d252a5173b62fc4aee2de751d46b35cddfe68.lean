import Mathematics.SemiLocalDefect.ShapleyAttribution

/-!
# Archimedean-anchored semi-local symbols

Finite-place products never discard the distinguished archimedean factor.
-/

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol

structure SemiLocalSymbolProfile
    (Prime : Type uPrime)
    (Symbol : Type uSymbol)
    [CommGroup Symbol] where
  archimedeanRatio : Symbol
  finiteRatio : Prime → Symbol

def SemiLocalSymbolProfile.totalSymbol
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (cut : Finset Prime) :
    Symbol :=
  profile.archimedeanRatio *
    ∏ prime ∈ cut, profile.finiteRatio prime

structure QuasiInnerClass
    (Symbol : Type uSymbol)
    [Mul Symbol] where
  member : Symbol → Prop
  multiplicationClosed :
    ∀ {left right : Symbol},
      member left →
      member right →
      member (left * right)

end Mathematics.SemiLocalDefect.Hardy
