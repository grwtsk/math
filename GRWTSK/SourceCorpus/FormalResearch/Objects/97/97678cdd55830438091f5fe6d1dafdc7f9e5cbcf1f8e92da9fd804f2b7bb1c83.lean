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
