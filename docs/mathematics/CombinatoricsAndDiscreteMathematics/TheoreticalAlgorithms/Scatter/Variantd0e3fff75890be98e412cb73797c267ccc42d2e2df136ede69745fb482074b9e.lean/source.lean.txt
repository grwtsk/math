import Color.Admissibility

namespace Color

inductive ScatterRole where
  | leanProjectRoot
  | leanSourceSite
  | classificationSite
  | ontologyMirrorSite
  | systemSite
deriving Repr, DecidableEq

structure FormalSurface where
  enabled : Bool
  system : String
  projectRoot : String
  namespaceName : String
  sourceFile : String
  mirrorFile : String
  astSummary : String
  admissibilitySource : String
  selfOrganizingScatter : Bool
deriving Repr, DecidableEq

structure ProofAtom where
  id : String
  sourceDocument : String
  theoremName : String
  namespaceHint : String
  colorSet : List String
deriving Repr, DecidableEq

def formalSurfaceAccepts (surface : FormalSurface) (atom : ProofAtom) : Prop :=
  surface.enabled = true ∧ atom.namespaceHint = surface.namespaceName

def rootSurface : FormalSurface :=
  { enabled := true,
    system := "lean",
    projectRoot := "docs/ontology",
    namespaceName := "Color",
    sourceFile := "docs/ontology/Color",
    mirrorFile := "docs/ontology/Color",
    astSummary := "docs/ontology/Color/Scatter.lean",
    admissibilitySource := "hybrid",
    selfOrganizingScatter := true }

theorem rootSurface_enabled : rootSurface.enabled = true := rfl

end Color
