# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Resolver.Variantd11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b91417f1c0fa1115b015f086330862062c260e3a` · SHA-256 `d11d1453ad8cc4fcf8ea2f217c87c6c849e9543bbc8ff791a4fa16cfd240c370`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Completion.Bitfield
import Mathematics.BinaryFrontier.Completion.ContinuationCover
import Mathematics.BinaryFrontier.Obstruction.Provenance
import Mathematics.BinaryFrontier.Obstruction.Factorization
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance

/-!
# Conservative binary-frontier resolver

The resolver consumes a finite committed decision cut.  It never searches
indefinitely and never converts missing completion, core, or symmetry
evidence into falsehood.  Only malformed structure returns `rejected`.
-/

namespace Mathematics.BinaryFrontier.Refinement

open Mathematics.BinaryFrontier
open Mathematics.BinaryFrontier.Completion

universe uNode uLeaf uObstruction

inductive FrontierUnknownKind
  | completionDecision
  | continuationCompleteness
  | primitiveCore
  | coreMinimality
  | completionEquivariance
  | canonicalOrder
  | automorphismAction
  | canonicalization
  | orientationEquivariance
  | grayTraversal
  | factorIndependence
  | snapshotBinding
  deriving DecidableEq, Repr, Fintype

inductive RefinementRejection
  | rootHasParent
  | missingParent
  | cyclicParentRelation
  | edgeNotOneCoordinateResolution
  | declaredSplitMissingZeroChild
  | declaredSplitMissingOneChild
  | childUsesWrongCoordinate
  | duplicateNodeIdentity
  | malformedAddress
  deriving DecidableEq, Repr, Fintype

inductive FrontierResolution
    (Node : Type uNode)
    (LeafWitness : Type uLeaf)
    (ObstructionWitness : Type uObstruction)
  | leaf
      (node : Node)
      (address : FrontierAddress)
      (witness : LeafWitness)
  | obstruction
      (witness : ObstructionWitness)
  | unknown
      (nearestKnownNode : Node)
      (unknowns : Finset FrontierUnknownKind)
  | rejected
      (reason : RefinementRejection)
  deriving Repr

structure CertifiedFrontierLeaf
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (addresses :
      TreeAddressRegistry tree)
    {Full Constraint : Type*}
    (semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint)
    (constraints : Finset Constraint)
    (Terminal : Node → Prop)
    (node : Node) where
  terminal :
    Terminal node
  address : FrontierAddress
  address_correct :
    address = addresses.address node
  completion :
    CompletionCertificate
      semantics constraints (tree.state node)

/--
All decision procedures are evaluated before the cut is committed.  The pure
resolver only selects among supplied mathematical witnesses and explicit
unknowns.
-/
structure FiniteResolverCut
    (Node : Type uNode)
    (LeafWitness : Type uLeaf)
    (ObstructionWitness : Type uObstruction) where
  structuralValidation :
    Except RefinementRejection Unit
  leafWitness :
    Node →
      Option (FrontierAddress × LeafWitness)
  obstructionWitness :
    Node → Option ObstructionWitness
  nearestKnownNode :
    Node → Node
  unknowns :
    Node → Finset FrontierUnknownKind
  leaf_obstruction_exclusive :
    ∀ node address witness,
      leafWitness node =
          some (address, witness) →
      obstructionWitness node = none
  unknowns_nonempty :
    ∀ node,
      leafWitness node = none →
      obstructionWitness node = none →
      (unknowns node).Nonempty

def resolve
    {Node : Type uNode}
    {LeafWitness : Type uLeaf}
    {ObstructionWitness : Type uObstruction}
    (cut :
      FiniteResolverCut
        Node LeafWitness ObstructionWitness)
    (node : Node) :
    FrontierResolution
      Node LeafWitness ObstructionWitness :=
  match cut.structuralValidation with
  | .error reason =>
      .rejected reason
  | .ok _ =>
      match cut.leafWitness node with
      | some (address, witness) =>
          .leaf node address witness
      | none =>
          match cut.obstructionWitness node with
          | some witness =>
              .obstruction witness
          | none =>
              .unknown
                (cut.nearestKnownNode node)
                (cut.unknowns node)

theorem finite_certified_resolver_total
    {Node : Type uNode}
    {LeafWitness : Type uLeaf}
    {ObstructionWitness : Type uObstruction}
    (cut :
      FiniteResolverCut
        Node LeafWitness ObstructionWitness)
    (node : Node) :
    ∃ result :
        FrontierResolution
          Node LeafWitness ObstructionWitness,
      resolve cut node = result :=
  ⟨resolve cut node, rfl⟩

theorem resolver_rejected_only_from_structure
    {Node : Type uNode}
    {LeafWitness : Type uLeaf}
    {ObstructionWitness : Type uObstruction}
    (cut :
      FiniteResolverCut
        Node LeafWitness ObstructionWitness)
    (node : Node)
    (reason : RefinementRejection)
    (rejected :
      resolve cut node =
        FrontierResolution.rejected reason) :
    cut.structuralValidation = .error reason := by
  cases validation :
      cut.structuralValidation with
  | error structuralReason =>
      simp [resolve, validation] at rejected
      subst structuralReason
      exact validation
  | ok value =>
      cases leaf :
          cut.leafWitness node with
      | none =>
          cases obstruction :
              cut.obstructionWitness node with
          | none =>
              simp [resolve, validation,
                leaf, obstruction] at rejected
          | some witness =>
              simp [resolve, validation,
                leaf, obstruction] at rejected
      | some leafValue =>
          rcases leafValue with
            ⟨address, witness⟩
          simp [resolve, validation,
            leaf] at rejected

theorem resolver_unknown_has_named_frontier
    {Node : Type uNode}
    {LeafWitness : Type uLeaf}
    {ObstructionWitness : Type uObstruction}
    (cut :
      FiniteResolverCut
        Node LeafWitness ObstructionWitness)
    (node nearest : Node)
    (unknowns : Finset FrontierUnknownKind)
    (unknown :
      resolve cut node =
        FrontierResolution.unknown
          nearest unknowns) :
    unknowns.Nonempty := by
  cases validation :
      cut.structuralValidation with
  | error structuralReason =>
      simp [resolve, validation] at unknown
  | ok value =>
      cases leaf :
          cut.leafWitness node with
      | some leafValue =>
          rcases leafValue with
            ⟨address, witness⟩
          simp [resolve, validation,
            leaf] at unknown
      | none =>
          cases obstruction :
              cut.obstructionWitness node with
          | some witness =>
              simp [resolve, validation,
                leaf, obstruction] at unknown
          | none =>
              simp [resolve, validation,
                leaf, obstruction] at unknown
              subst unknowns
              exact
                cut.unknowns_nonempty
                  node leaf obstruction

end Mathematics.BinaryFrontier.Refinement
```
