import Surface.AST.Core

namespace Surface

namespace AST

def DeclarationGraph := List LeanDeclarationAst

def theoremDeclarations (graph : DeclarationGraph) : List LeanDeclarationAst :=
  graph.filter fun declaration =>
    declaration.kind = LeanDeclarationKind.theorem

theorem theoremDeclarations_are_theorems
    {graph : DeclarationGraph} {declaration : LeanDeclarationAst} :
    declaration ∈ theoremDeclarations graph ->
      declaration.kind = LeanDeclarationKind.theorem := by
  intro h
  simp [theoremDeclarations] at h
  exact h.2

end AST

end Surface
