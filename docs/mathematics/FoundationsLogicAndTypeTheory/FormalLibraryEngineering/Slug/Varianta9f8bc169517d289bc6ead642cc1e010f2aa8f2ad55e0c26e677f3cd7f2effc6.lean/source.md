# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slug.Varianta9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c00a762682e8bcf95c2923c662bd383829f760e` · SHA-256 `a9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
