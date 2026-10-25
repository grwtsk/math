# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointKind.Variant99550075bde6bc39dcd9536eb016e035cdc41cdd4bc0e5d5620b42dd5d5c1c67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa3967f0063e3fe555ff687af36836ba203786b2` · SHA-256 `8895364ebf0612f447018de8bf7e679e8ede1d8700ae3100ec24f6fe74ad7abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointKind.Variant5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PointKind.Variant5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b","mathematical_subject":"Foundations.Unclassified","original_sha256":"5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/PointKind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Kind

/-!
# Mathematical point kinds

`Kind` classifies admitted concepts at a broad level.  `PointKind` types the
smaller distinctions exposed by source atomization.  No ingress point is left
untyped: even retained opacity has an explicit constructor.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointKind.Variant5bcde9d6b7abc813cfd58ecbaf3567b5aa8850a9e2cf73101ba618c8c3833f2b

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
