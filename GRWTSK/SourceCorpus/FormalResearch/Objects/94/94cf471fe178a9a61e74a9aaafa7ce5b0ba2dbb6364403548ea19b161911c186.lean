namespace Surface

namespace Meta

inductive AstNodeKind where
  | project
  | module
  | namespace
  | declaration
  | structure
  | structureField
  | inductive
  | constructor
  | definition
  | theorem
  | proof
  | fixture
  | runtimeBinding
  | typeScriptBinding
  | webGpuView
  | paperReference
  | claimBoundary
  | htmlPage
  | context
  | morphism
  | baseChange
  | comparison
  | fiber
deriving DecidableEq, Repr

inductive TrustStatus where
  | trusted
  | generator
  | fixtureOnly
  | externalReference
  | notClaimed
deriving DecidableEq, Repr

inductive DependencyPrecision where
  | exact
  | conservative
  | manual
  | unknown
deriving DecidableEq, Repr

structure SourceRange where
  startLine : Nat
  startColumn : Nat
  endLine : Nat
  endColumn : Nat
deriving Repr

structure AstNode where
  id : String
  slug : String
  kind : AstNodeKind
  displayTitle : String
  sourcePath : String
  sourceRange? : Option SourceRange
  module? : Option String
  namespace? : Option String
  leanName? : Option String
  trustStatus : TrustStatus
  dependencies : List String
  fixtures : List String
  paperReferences : List String
  claimBoundaries : List String
  htmlPath : String
  contentHash : String
deriving Repr

structure AstEdge where
  fromId : String
  toId : String
  relation : String
  precision : DependencyPrecision
deriving Repr

structure ProjectAst where
  root : AstNode
  nodes : List AstNode
  edges : List AstEdge
deriving Repr

end Meta

end Surface
