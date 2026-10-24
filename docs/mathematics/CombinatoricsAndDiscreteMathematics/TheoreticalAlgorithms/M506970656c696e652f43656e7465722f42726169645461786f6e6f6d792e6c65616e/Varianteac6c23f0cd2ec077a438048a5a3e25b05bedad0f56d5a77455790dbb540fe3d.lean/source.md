# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e.Varianteac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6f2302c732351ad625e94c043ce6a1a896bfc9a` · SHA-256 `eac6c23f0cd2ec077a438048a5a3e25b05bedad0f56d5a77455790dbb540fe3d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f43656e7465722f42726169644e6f6465732e6c65616e

/- source-tree-label: STL1|L|addr=0000011|role=proof_code_atom|slug=pipeline-center-braidtaxonomy|owner=canonical_owner|core=Pipeline/Center/BraidTaxonomy.lean|leaf=M506970656c696e652f43656e7465722f42726169645461786f6e6f6d792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Braid.Taxonomy

inductive TripleId where
  | T0 | T1 | T2 | T3 | T4 | T5 | T6 | T7 | T8
deriving DecidableEq, Repr

def TripleId.all : List TripleId :=
  [.T0, .T1, .T2, .T3, .T4, .T5, .T6, .T7, .T8]

def TripleId.code : TripleId -> String
  | .T0 => "T0"
  | .T1 => "T1"
  | .T2 => "T2"
  | .T3 => "T3"
  | .T4 => "T4"
  | .T5 => "T5"
  | .T6 => "T6"
  | .T7 => "T7"
  | .T8 => "T8"

def declaredTripleIds : List String :=
  TripleId.all.map TripleId.code

theorem declaredTripleIds_has_nine :
    declaredTripleIds.length = 9 := rfl

structure Triple where
  abstractSource : AbstractNode
  concreteMiddle : ConcreteNode
  abstractTarget : AbstractNode
deriving Repr

def declaredBraid : List Triple := [
  ⟨.A0, .C0, .A1⟩,
  ⟨.A1, .C1, .A2⟩,
  ⟨.A2, .C2, .A3⟩,
  ⟨.A3, .C3, .A4⟩,
  ⟨.A4, .C4, .A5⟩,
  ⟨.A5, .C5, .A6⟩,
  ⟨.A6, .C6, .A7⟩,
  ⟨.A7, .C7, .A8⟩,
  ⟨.A8, .C8, .A0⟩
]

theorem declaredBraid_has_nine : declaredBraid.length = 9 := by rfl

end Think.Braid.Taxonomy
```
