# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementaryCatalogue.Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `465299540d5a33ecc2b813bd075b399cf1a008a7` · SHA-256 `f58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.EMLTree

namespace Surface.Legacy

inductive ElementarySymbol where
  | one
  | var
  | neg
  | inv
  | add
  | sub
  | mul
  | div
  | pow
  | exp
  | log
  | sqrt
  | sin
  | cos
  | tan
  | pi
  | e
  | I
deriving DecidableEq, Repr

def ElementarySymbol.name : ElementarySymbol -> String
  | .one => "one"
  | .var => "var"
  | .neg => "neg"
  | .inv => "inv"
  | .add => "add"
  | .sub => "sub"
  | .mul => "mul"
  | .div => "div"
  | .pow => "pow"
  | .exp => "exp"
  | .log => "log"
  | .sqrt => "sqrt"
  | .sin => "sin"
  | .cos => "cos"
  | .tan => "tan"
  | .pi => "pi"
  | .e => "e"
  | .I => "I"

def elementaryArity : ElementarySymbol -> Nat
  | .one => 0
  | .pi => 0
  | .e => 0
  | .I => 0
  | .var => 1
  | .neg => 1
  | .inv => 1
  | .exp => 1
  | .log => 1
  | .sqrt => 1
  | .sin => 1
  | .cos => 1
  | .tan => 1
  | .add => 2
  | .sub => 2
  | .mul => 2
  | .div => 2
  | .pow => 2

def targetElementaryBasis : List ElementarySymbol :=
  [.one, .var, .neg, .inv, .add, .sub, .mul, .div, .pow, .exp, .log,
   .sqrt, .sin, .cos, .tan, .pi, .e, .I]

def selectedElementaryBasis : List ElementarySymbol :=
  [.one, .var, .exp, .log]

theorem selected_subset_target :
    ∀ s, s ∈ selectedElementaryBasis -> s ∈ targetElementaryBasis := by
  intro s h
  simp [selectedElementaryBasis] at h
  rcases h with h | h | h | h
  · cases h
    simp [targetElementaryBasis]
  · cases h
    simp [targetElementaryBasis]
  · cases h
    simp [targetElementaryBasis]
  · cases h
    simp [targetElementaryBasis]

theorem selected_nodup : selectedElementaryBasis.Nodup := by
  decide

theorem target_nodup : targetElementaryBasis.Nodup := by
  decide

def emlOneTree : EMLTree 0 :=
  EMLTree.one

def emlVarTree : EMLTree 1 :=
  EMLTree.var 0

def emlExpTree : EMLTree 1 :=
  EMLTree.eml (EMLTree.var 0) EMLTree.one

def emlLogTree : EMLTree 1 :=
  EMLTree.eml
    EMLTree.one
    (EMLTree.eml
      (EMLTree.eml EMLTree.one (EMLTree.var 0))
      EMLTree.one)

end Surface.Legacy
```
