# Complete source: GRWTSK.Algebra.UniversalAlgebra.SignaturesAndAlgebras.TermAlgebras.CatalanAndCategoryInterfaces.Variant24d9943e0ed00d15.BinaryGrammarAndTreeEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1b6dee97dac83013b94726cf123f8306ebacaf1` · SHA-256 `f4c26ee9f3c923e0f46071cb90a40c5342dc55c34850fbecf194efc782d4b90a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BinaryGrammarAndTreeEvaluation — exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 24d9943e0ed00d1543a4cabc9c74d286729d9d66d4ff87939a673e95ca8d7112
Organized SHA-256: dd18413cf497c503ee6e11d8aa92d84aad9e4c209b8e1f069cf2e58468fa7c5a
PMD: 510.1.010.010.030 term algebras (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The exact two-field binary grammar and tree evaluator, a NAND syntax interpretation, and two complete typed binary-signature records with their literal conversions. Neither signature stores operation laws or a connection to imported spectral representations. All atom/carrier/operation fields remain whole; no shell, analytic, EML or fixed-point law follows from names. Original namespace blocks are copied unchanged; the physical subject path does not rename declarations or add a logical wrapper. Only explicit same-source public companion imports are added where listed. Historical imported representations remain distinct and unreplayed.
-/

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

end Catalan
end Folder
```
