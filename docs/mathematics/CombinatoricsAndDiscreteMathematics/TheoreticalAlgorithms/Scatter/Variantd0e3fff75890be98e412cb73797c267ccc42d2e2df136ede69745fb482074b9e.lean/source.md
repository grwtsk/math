# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scatter.Variantd0e3fff75890be98e412cb73797c267ccc42d2e2df136ede69745fb482074b9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d574f7a81275a1f394bff86432e4311738b04779` · SHA-256 `d0e3fff75890be98e412cb73797c267ccc42d2e2df136ede69745fb482074b9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
