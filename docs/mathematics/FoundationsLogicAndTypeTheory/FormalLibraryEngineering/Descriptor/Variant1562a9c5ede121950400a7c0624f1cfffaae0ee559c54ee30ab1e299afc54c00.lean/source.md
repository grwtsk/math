# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Descriptor.Variant1562a9c5ede121950400a7c0624f1cfffaae0ee559c54ee30ab1e299afc54c00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ec2db1cec675e1b96c2340cbfef49491742f1e4` · SHA-256 `30947f1211882f3ea0a10bb009b0264ff7e521f4766cdb144890c30e397c4162`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DescriptorKind.Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DescriptorKind.Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0","mathematical_subject":"Foundations.Unclassified","original_sha256":"44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/Descriptor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Semantically accountable descriptors

Every retained label has exactly one disposition because the disposition is a
single typed field.  Candidate, opaque, and unresolved labels are therefore
visible states rather than omissions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DescriptorKind.Variant44cf8620e8a2abb03b98789707e73641d633e6d6c6ff73f6a862a89072b786d0

namespace Mathematics.Concept

abbrev DescriptorId := StableId

inductive DescriptorKind
  | symbol
  | identifier
  | name
  | label
  | phrase
  | modifier
  | instruction
  deriving DecidableEq, Repr, Inhabited

/-- The exhaustive disposition required for every descriptor occurrence. -/
inductive DescriptorDisposition
  | knownPoint (pointId : ElementId)
  | projectLocalName (pointId : ElementId)
  | contextualModifier
  | representationIdentifier (representationId : RepresentationId)
  | operationalInstruction
  | authorityClassification
  | boundaryOrProhibition
  | candidatePoint (candidateId : ElementId)
  | opaqueLabel
  | unresolvedObligation (obligationId : StableId)
  deriving DecidableEq, Repr, Inhabited

/-- One exact descriptor occurrence and its accountable meaning status. -/
structure Descriptor where
  descriptorId : DescriptorId
  text : String
  kind : DescriptorKind
  disposition : DescriptorDisposition
  source : SourceAnalysis.AbstractSourceAddress
  normalizedTextDigest : Digest
  interpretationDigest : Digest
  deriving DecidableEq, Repr

/-- Spelling equality alone is merely an observation about text. -/
def Descriptor.SameSpelling (left right : Descriptor) : Prop :=
  left.text = right.text

/-- Descriptor identity is independent of spelling. -/
def Descriptor.SameIdentity (left right : Descriptor) : Prop :=
  left.descriptorId = right.descriptorId

end Mathematics.Concept
```
