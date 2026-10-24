# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PFRProfile.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7573c875d31469a429fbd87ce6f9c968671ed18` · SHA-256 `70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao PFR blueprint-driven profile -/

namespace Mathematics.Projects.Tao

structure ParameterDependency where
  parameterId : StableId
  downstreamDeclarationIds : List StableId
  downstreamBlueprintIds : List StableId
  deriving DecidableEq, Repr

structure PFRProfile where
  base : Projects.ProjectProfile
  blueprintArtifactIds : List StableId
  blueprintGraphIds : List StableId
  theoremBlueprintMapIds : List StableId
  issueIds : List StableId
  paperReferenceIds : List StableId
  parameterDependencies : List ParameterDependency
  stageIds : List StableId
  workflowIds : List StableId
  mathlibMigrationIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
```
