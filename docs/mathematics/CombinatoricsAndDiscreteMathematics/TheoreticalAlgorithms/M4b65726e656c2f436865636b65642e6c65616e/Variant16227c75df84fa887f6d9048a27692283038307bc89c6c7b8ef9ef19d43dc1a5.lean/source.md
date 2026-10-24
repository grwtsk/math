# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M4b65726e656c2f436865636b65642e6c65616e.Variant16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a346e8813cb58cefb09133379c142f18d76d9ec` · SHA-256 `16227c75df84fa887f6d9048a27692283038307bc89c6c7b8ef9ef19d43dc1a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=010000000|role=proof_code_atom|slug=kernel-checked|owner=canonical_owner|core=Kernel/Checked.lean|leaf=M4b65726e656c2f436865636b65642e6c65616e.lean -/

set_option autoImplicit false

namespace FWR

inductive Checked (P : Prop) where
  | proved : P -> Checked P
  | residue : List Residue -> Checked P

namespace Checked

def residues {P : Prop} : Checked P -> List Residue
  | proved _ => []
  | residue rs => rs

def hasResidue {P : Prop} : Checked P -> Bool
  | proved _ => false
  | residue rs => !rs.isEmpty

def isProved {P : Prop} : Checked P -> Bool
  | proved _ => true
  | residue _ => false

end Checked

end FWR
```
