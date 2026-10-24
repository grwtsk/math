# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Grammar.Variant24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af66034684837646c20bad37e4fe114e65fb923f` · SHA-256 `24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Boolean.NAND
import Folder.Catalan.Tree
import Folder.Spectral.Expansion

/-!
# Folder.Catalan.Grammar

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.grammar
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

structure BinaryGrammar (α : Type _) where
  atom : α
  op : α → α → α

namespace CTree

def eval (G : BinaryGrammar α) : CTree → α
  | leaf => G.atom
  | node l r => G.op (eval G l) (eval G r)

@[simp]
theorem eval_leaf (G : BinaryGrammar α) :
    CTree.eval G CTree.leaf = G.atom :=
  rfl

@[simp]
theorem eval_node (G : BinaryGrammar α) (l r : CTree) :
    CTree.eval G (CTree.node l r) =
      G.op (CTree.eval G l) (CTree.eval G r) :=
  rfl

end CTree

def nandGrammar : BinaryGrammar Boolean.NandExpr where
  atom := Boolean.NandExpr.var 0
  op := Boolean.NandExpr.nand

structure SpectralShellExpansionSignature where
  Carrier : Type _
  atom : Carrier
  expand : Carrier → Carrier → Carrier

def SpectralShellExpansionSignature.toGrammar
    (S : SpectralShellExpansionSignature) :
    BinaryGrammar S.Carrier where
  atom := S.atom
  op := S.expand

structure EMLSignature where
  Carrier : Type _
  one : Carrier
  eml : Carrier → Carrier → Carrier

def EMLSignature.toGrammar (S : EMLSignature) :
    BinaryGrammar S.Carrier where
  atom := S.one
  op := S.eml

end Catalan
end Folder
```
