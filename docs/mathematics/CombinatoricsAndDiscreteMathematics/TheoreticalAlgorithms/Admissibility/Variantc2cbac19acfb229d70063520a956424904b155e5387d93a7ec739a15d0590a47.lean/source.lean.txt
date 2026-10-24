import Color.Centroid

namespace Color

structure Band where
  name : String
  namespaceName : String
  bitDepth : Nat
  rangeMin : Byte
  rangeMax : Byte
  centroid : Centroid
deriving Repr, DecidableEq

inductive ColorAtom where
  | black
  | white
  | red
  | green
  | blue
  | neutral
  | mix : List String → ColorAtom
  | unresolved
deriving Repr, DecidableEq

structure Admissibility where
  band : Band
  accepts : ColorAtom → Prop
  rejects : ColorAtom → Prop
  symmetric : Bool

def acceptsOnly (target : ColorAtom) : ColorAtom → Prop
  | atom => atom = target

def rejectsUnresolved : ColorAtom → Prop
  | ColorAtom.unresolved => True
  | _ => False

def symmetricMixColorSet (a b : String) : List String :=
  if a <= b then [a, b] else [b, a]

theorem symmetricMixColorSet_red_green :
    symmetricMixColorSet "red" "green" = ["green", "red"] := rfl

theorem symmetricMixColorSet_green_red :
    symmetricMixColorSet "green" "red" = ["green", "red"] := rfl

end Color
