import Mathematics.Concept.Kind

/-!
# Mathematical point kinds

`Kind` classifies admitted concepts at a broad level.  `PointKind` types the
smaller distinctions exposed by source atomization.  No ingress point is left
untyped: even retained opacity has an explicit constructor.
-/

namespace Mathematics.Concept

inductive PointKind
  | sourceToken
  | object
  | structure
  | relation
  | operation
  | quantifier
  | hypothesis
  | conclusion
  | scope
  | authorityCoordinate
  | proofInput
  | lemma
  | proofTransformation
  | proofCase
  | normalization
  | rewrite
  | witness
  | proofClosure
  | definitionGenus
  | constraint
  | constructor
  | eliminator
  | equivalence
  | representation
  | boundary
  | theorem
  | failedConjecture
  | countermodel
  | tacticPattern
  | rhetoricalRole
  | obligation
  | opaqueSource
  deriving DecidableEq, Repr, Inhabited

/-- Broad concept projection; several elemental distinctions may share it. -/
def PointKind.conceptKind : PointKind → Kind
  | .sourceToken | .opaqueSource => .representation
  | .object => .object
  | .structure => .structure
  | .relation => .relation
  | .operation | .proofTransformation | .normalization | .rewrite |
      .constructor | .eliminator => .operation
  | .quantifier | .hypothesis | .conclusion | .scope | .proofInput |
      .lemma | .proofCase | .witness | .proofClosure | .definitionGenus |
      .constraint | .boundary | .failedConjecture | .countermodel |
      .obligation => .proposition
  | .authorityCoordinate | .rhetoricalRole => .property
  | .equivalence => .relation
  | .representation => .representation
  | .theorem => .theorem
  | .tacticPattern => .dynamics

end Mathematics.Concept
