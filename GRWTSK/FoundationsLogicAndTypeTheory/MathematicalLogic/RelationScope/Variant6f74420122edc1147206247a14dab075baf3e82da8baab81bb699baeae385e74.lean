import Mathematics.GraphAccess.Arc

/-!
# Relation scope

Scope is a decidable presentation filter over relation classes and traversal
directions.  It does not create graph incidence.
-/

namespace Mathematics.GraphAccess

structure RelationScope (G : GraphCut) where
  allowsClass : G.EdgeClass → Bool
  allowsDirection : G.Edge → ArcDirection → Bool
  digest : ProfileDigest

def InScope
    {G : GraphCut}
    (scope : RelationScope G)
    (arc : Arc G) : Prop :=
  scope.allowsClass (G.edgeClass arc.edge) = true ∧
    scope.allowsDirection arc.edge arc.direction = true

instance
    {G : GraphCut}
    (scope : RelationScope G)
    (arc : Arc G) :
    Decidable (InScope scope arc) :=
  by
    unfold InScope
    infer_instance

def RelationScope.forwardOnly
    (G : GraphCut)
    (allowsClass : G.EdgeClass → Bool)
    (digest : ProfileDigest) :
    RelationScope G where
  allowsClass := allowsClass
  allowsDirection := fun _ direction =>
    direction == .forward
  digest := digest

def RelationScope.bidirectional
    (G : GraphCut)
    (allowsClass : G.EdgeClass → Bool)
    (digest : ProfileDigest) :
    RelationScope G where
  allowsClass := allowsClass
  allowsDirection := fun _ _ => true
  digest := digest

end Mathematics.GraphAccess
