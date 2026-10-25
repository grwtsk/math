# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tree.Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd52de76bb3ca507b8890263a70501a42bd29edf` · SHA-256 `dd0ef0b797aa6c50bb0a3d7e90af01803fd8145d67c2b39ced5727afb75b2732`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BinaryRefinementTree.Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.BinaryRefinementTree.Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41","mathematical_subject":"Logic.Foundations","original_sha256":"c3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Refinement/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Logic.Relation
import Mathematics.BinaryFrontier.PartialBitfield.Order

/-!
# Structural binary refinement trees

Tree validity depends only on node identity, parenthood, acyclicity, and exact
one-coordinate state refinement.  Satisfiability is not imported.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BinaryRefinementTree.Variantc3328fc8778753ccc0c99cb20e316a13d2c7ee3910a58f7909c003e95bc59e41

namespace Mathematics.BinaryFrontier.Refinement

open Mathematics.BinaryFrontier

universe uNode

structure BinaryRefinementTree
    (Node : Type uNode)
    [Fintype Node]
    [DecidableEq Node]
    (width : Nat) where
  root : Node
  parent : Node → Option Node
  state : Node → PartialBitfield width
  root_parent :
    parent root = none
  nonroot_parent :
    ∀ node,
      node ≠ root →
      ∃ parentNode,
        parent node = some parentNode
  parent_refines :
    ∀ {parentNode childNode},
      parent childNode = some parentNode →
      OneCoordinateResolution
        (state parentNode)
        (state childNode)
  acyclic :
    ∀ node,
      ¬Relation.TransGen
        (fun child ancestor =>
          parent child = some ancestor)
        node node

def BinaryRefinementTree.ParentEdge
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    (parentNode childNode : Node) : Prop :=
  tree.parent childNode = some parentNode

structure CompleteSplitRegistry
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width) where
  splitCoordinate :
    Node → Option (Fin width)
  zeroChild :
    Node → Option Node
  oneChild :
    Node → Option Node
  complete_when_declared :
    ∀ node coordinate,
      splitCoordinate node = some coordinate →
      ∃ zeroNode oneNode,
        zeroChild node = some zeroNode ∧
        oneChild node = some oneNode ∧
        tree.parent zeroNode = some node ∧
        tree.parent oneNode = some node
  child_states_match :
    ∀ node coordinate zeroNode oneNode,
      splitCoordinate node = some coordinate →
      zeroChild node = some zeroNode →
      oneChild node = some oneNode →
      CompleteBooleanSplit
        (tree.state node)
        (tree.state zeroNode)
        (tree.state oneNode)

theorem BinaryRefinementTree.edge_extends
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    {parentNode childNode : Node}
    (edge :
      tree.parent childNode =
        some parentNode) :
    Extends
      (tree.state parentNode)
      (tree.state childNode) :=
  oneCoordinateResolution_extends
    (tree.parent_refines edge)

end Mathematics.BinaryFrontier.Refinement
```
