# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M536f75726365547265652f5765696768742e6c65616e.Variant53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57fe132c1d3683350e122f866f46df289d46edbb` · SHA-256 `53ecb1858f7837f7100e5b1bc3dee2dc56fa5fba7dd4dc5c547f800fbfd86db9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M536f75726365547265652f4e6f64652e6c65616e


/- source-tree-label: STL1|L|addr=1011011|role=proof_code_atom|slug=sourcetree-weight|owner=canonical_owner|core=SourceTree/Weight.lean|leaf=M536f75726365547265652f5765696768742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

def poleBaseWeight : Pole -> Nat
  | .request => 4
  | .carrier => 4
  | .lowering => 4
  | .trace => 14
  | .compact => 8
  | .classifier => 7
  | .scheduler => 7
  | .cluster => 5
  | .boundary => 8

def poleWeight (p : Pole) : PoleWeight :=
  { pole := p, weight := poleBaseWeight p }

theorem poleBaseWeight_pos (p : Pole) :
    0 < poleBaseWeight p := by
  cases p <;> decide

end Think.SourceTree
```
