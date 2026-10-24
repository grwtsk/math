import Surface.Meta.AST

namespace Surface

namespace Meta

inductive SlugKind where
  | project
  | module
  | namespace
  | definition
  | theorem
  | structure
  | inductive
  | fixture
  | paperMap
  | claimBoundary
  | runtime
  | rendering
  | htmlPage
deriving DecidableEq, Repr

structure Slug where
  canonical : String
  kind : SlugKind
  sourceName? : Option String
  module? : Option String
  collisionHash? : Option String
deriving Repr

namespace Slug

def Nonempty (slug : Slug) : Prop :=
  slug.canonical ≠ ""

end Slug

structure ExportedAstNode where
  id : String
  slug : Slug
  trusted : Bool
  nonemptyId : id ≠ ""

def ExportedAstNodeValid (node : ExportedAstNode) : Prop :=
  node.trusted = true ∧ Slug.Nonempty node.slug

theorem exported_ast_node_slug_nonempty
    {node : ExportedAstNode} :
    ExportedAstNodeValid node ->
      Slug.Nonempty node.slug := by
  intro h
  exact h.2

end Meta

end Surface
