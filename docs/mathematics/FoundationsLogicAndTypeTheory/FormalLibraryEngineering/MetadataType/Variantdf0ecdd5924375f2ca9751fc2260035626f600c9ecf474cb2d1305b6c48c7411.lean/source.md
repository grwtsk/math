# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetadataType.Variantdf0ecdd5924375f2ca9751fc2260035626f600c9ecf474cb2d1305b6c48c7411

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3962a204e103188a4c38bce4cf0ba5feb6badd4b` · SHA-256 `f81d7961c673fd55517fc42f566e643601b6a7e9626b408a7d3f722a84f643ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","mathematical_subject":"Foundations.Unclassified","original_sha256":"956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/MetadataType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Span

/-! # Dependent metadata sorts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MetadataType.Variant956b3113e5be7f7a47910ccd0225475bdd4d88f4ab3f3f1211b6510707da5a59

namespace Mathematics.SemanticTokenization

inductive MetadataType
  | lexeme
  | lemma
  | partOfSpeech
  | syntacticRole
  | concept
  | frame
  | domain
  | register
  | polarity
  | modality
  | figurativeStatus
  | argumentRole
  | discourseRole
  | referent
  | evidence
  deriving DecidableEq, Repr

structure MetadataValue (kind : MetadataType) where
  value : String
  deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
```
