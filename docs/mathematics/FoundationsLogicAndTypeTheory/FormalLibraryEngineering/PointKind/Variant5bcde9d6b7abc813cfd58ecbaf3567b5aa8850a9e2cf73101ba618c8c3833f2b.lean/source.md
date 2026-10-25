# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointKind.Variant5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f0aa8c28c4e329c972f1fa5de8ba908f74d847d` · SHA-256 `5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
