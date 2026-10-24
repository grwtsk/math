# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedFactor.Variantfe79ad8b8abb563fea21edf94ac25c2b0b7bd347254112c74fb3b93b2199b608

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a701cef0d14bb2df707caca56f79093d499b2e5` · SHA-256 `b1968eccfd27b3435ceea8795230a8fa817613c8dde0ee5c56d354b1781353d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedFactorAtom.Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OrderedFactorAtom.Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420","mathematical_subject":"Computation.DataStructures","original_sha256":"990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/OrderedFactor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree

/-!
# Ordered factor-tree syntax

What is formalized:
Finite ordered binary factor trees over simple Boolean-syntax atoms. The binary
constructor preserves left/right order and bracketing.

What is certificate-gated:
Any interpretation as matrices, flows, homology, arithmetic, topology,
external cohomology, Hilbert-space data, or spectral data must be supplied by a
separate typed adapter or certificate.

What is not claimed:
Ordered factor trees are not quotiented by commutativity or associativity.
This file does not prove prime factorization, topology-prime uniqueness,
analytic number theory, BSD, Connes trace formulas, or spectral correspondence.

Primary mathematical source:
Internal Boolean-syntax discipline.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedFactorAtom.Variant990aa5d5f0e74eb26e74c92569d7f62a9bfe7eeb670f6bce586d744060939420

namespace Boolean

/-- Atoms for the pre-interpretation ordered factor-tree syntax. -/
inductive OrderedFactorAtom where
  | token : String -> OrderedFactorAtom
  | matrixCell : Nat -> Nat -> OrderedFactorAtom
  | constant : Bool -> OrderedFactorAtom
deriving Repr, DecidableEq

/--
Finite ordered binary syntax tree.

The constructor `node left right` is deliberately ordered and bracket-sensitive.
-/
inductive OrderedFactorTree where
  | atom : OrderedFactorAtom -> OrderedFactorTree
  | node : OrderedFactorTree -> OrderedFactorTree -> OrderedFactorTree
deriving Repr, DecidableEq

namespace OrderedFactorTree

/-- Number of syntax nodes. -/
def size : OrderedFactorTree -> Nat
  | atom _ => 1
  | node l r => 1 + size l + size r

/-- Maximum root-to-leaf depth, counting a single atom as depth one. -/
def depth : OrderedFactorTree -> Nat
  | atom _ => 1
  | node l r => 1 + Nat.max (depth l) (depth r)

/-- Primitive ordered binary composition. -/
def compose (left right : OrderedFactorTree) : OrderedFactorTree :=
  node left right

theorem size_pos (t : OrderedFactorTree) :
    t.size > 0 := by
  induction t with
  | atom _ =>
      simp [size]
  | node l r ihl ihr =>
      simp [size]
      omega

theorem depth_le_size (t : OrderedFactorTree) :
    t.depth <= t.size := by
  induction t with
  | atom _ =>
      simp [depth, size]
  | node l r ihl ihr =>
      have hmax : Nat.max l.depth r.depth <= l.size + r.size := by
        exact Nat.max_le.mpr <| by
          constructor <;> omega
      simp [depth, size]
      omega

theorem compose_eq_node (left right : OrderedFactorTree) :
    compose left right = node left right := rfl

theorem node_left_right_visible
    {A B C D : OrderedFactorTree}
    (h : node A B = node C D) :
    A = C /\ B = D := by
  cases h
  exact ⟨rfl, rfl⟩

theorem bracketing_visible
    {A B C D E F : OrderedFactorTree}
    (h : node (node A B) C = node (node D E) F) :
    A = D /\ B = E /\ C = F := by
  cases h
  exact ⟨rfl, rfl, rfl⟩

/-- Boundary descriptor: no commutativity quotient is installed. -/
def order_not_quotiented : List String := [
  "OrderedFactorTree preserves left and right children.",
  "No commutativity quotient is installed by this layer."
]

/-- Boundary descriptor: no associativity quotient is installed. -/
def bracketing_not_quotiented : List String := [
  "OrderedFactorTree preserves binary bracketing.",
  "No associativity quotient is installed by this layer."
]

end OrderedFactorTree

theorem orderedFactorTree_size_pos (t : OrderedFactorTree) :
    t.size > 0 :=
  OrderedFactorTree.size_pos t

theorem orderedFactorTree_depth_le_size (t : OrderedFactorTree) :
    t.depth <= t.size :=
  OrderedFactorTree.depth_le_size t

theorem orderedFactorTree_order_visible
    {A B C D : OrderedFactorTree}
    (h : OrderedFactorTree.node A B = OrderedFactorTree.node C D) :
    A = C /\ B = D :=
  OrderedFactorTree.node_left_right_visible h

theorem orderedFactorTree_bracketing_visible
    {A B C D E F : OrderedFactorTree}
    (h :
      OrderedFactorTree.node (OrderedFactorTree.node A B) C =
        OrderedFactorTree.node (OrderedFactorTree.node D E) F) :
    A = D /\ B = E /\ C = F :=
  OrderedFactorTree.bracketing_visible h

end Boolean
```
