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
