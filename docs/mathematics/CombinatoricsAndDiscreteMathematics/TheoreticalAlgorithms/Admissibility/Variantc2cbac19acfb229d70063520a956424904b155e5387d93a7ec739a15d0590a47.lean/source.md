# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Admissibility.Variantc2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73b1d3cc47279bf647f0cf35a60c5a4c44e02a69` · SHA-256 `c2cbac19acfb229d70063520a956424904b155e5387d93a7ec739a15d0590a47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
