# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Paper.Variant97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5861a879a0c8885873a4ca4d5fd15440efea8065` · SHA-256 `97678cdd55830438091f5fe6d1dafdc7f9e5cbcf1f8e92da9fd804f2b7bb1c83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.Literature.Paper

Radiation role: research-boundary
BinaryMatrix spine: This module records literature references, not BinaryMatrix data.
Ontology: canonical.literature_compendium
Pivot role: none
Zero typology: none
Contract boundary: external-witness
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath
namespace Literature

inductive AccessStatus where
  | open
  | paywalled
  | mixed
  | external
  | unknown
deriving DecidableEq, Repr

inductive AdaptationGap where
  | small
  | smallMedium
  | medium
  | mediumHigh
  | high
  | veryHigh
  | extreme
deriving DecidableEq, Repr

inductive PaperRole where
  | familyIndex
  | determinantOfCohomology
  | moduliStack
  | baseChange
  | deformationInvariance
  | analyticHeatFlow
  | continuationMap
  | superconnection
  | apsBoundary
  | categoricalTrace
  | crystallineComparison
  | prismaticComparison
  | spectralRealization
  | explicitFormula
  | survey
deriving DecidableEq, Repr

structure PaperReference where
  key : String
  title : String
  authors : String
  role : PaperRole
  access : AccessStatus
  gap : AdaptationGap
  phase : String
  whyRelevant : String
  remainingGap : String

theorem paper_has_title
    (P : PaperReference) :
    ∃ t, P.title = t :=
  ⟨P.title, rfl⟩

theorem paper_has_remaining_gap
    (P : PaperReference) :
    ∃ g, P.remainingGap = g :=
  ⟨P.remainingGap, rfl⟩

end Literature
end CanonicalPath
end Folder
```
