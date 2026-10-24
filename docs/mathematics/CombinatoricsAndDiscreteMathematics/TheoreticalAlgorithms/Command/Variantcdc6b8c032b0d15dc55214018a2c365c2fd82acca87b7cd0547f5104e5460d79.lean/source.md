# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Command.Variantcdc6b8c032b0d15dc55214018a2c365c2fd82acca87b7cd0547f5104e5460d79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2769f839ad81fc137fd11d6b6998e4bafd2808cd` · SHA-256 `8f31a83986ae02489dfbdba576ffacc13998db63aa600d0dd2c1d23f0fc981c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteRange.Variantbda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ByteRange.Variantbda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f","mathematical_subject":"Computation.DataStructures","original_sha256":"bda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Element/Command.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Element.Id

/-! # Lean-front-end source command records -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteRange.Variantbda09383fad1f927ffeae86b2c166557cee61ff24d625112f82075c364ef095f

namespace Mathematics.Element

open Mathematics

structure ByteRange where
  start : Nat
  stop : Nat
  deriving DecidableEq, Repr, Inhabited

def ByteRange.Valid (range : ByteRange) : Prop :=
  range.start ≤ range.stop

structure LineColumnRange where
  startLine : Nat
  startColumn : Nat
  stopLine : Nat
  stopColumn : Nat
  deriving DecidableEq, Repr, Inhabited

inductive CommandAuthority
  | leanFrontend
  | compiledEnvironment
  | aligned
  | sourceOnly
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure CommandRecord where
  id : SourceCommandId
  fileId : SourceFileId
  ordinal : Nat
  bytes : ByteRange
  position : LineColumnRange
  syntaxKind : String
  rawDigest : Digest
  canonicalSyntaxDigest : Digest
  leadingTriviaDigest : Digest
  trailingTriviaDigest : Digest
  contextBefore : SourceContextId
  contextAfter : SourceContextId
  emittedDeclarations : Array ExtractorDeclarationId
  generatedDeclarations : Array ExtractorDeclarationId
  referencedCommands : Array SourceCommandId
  attachedAttributes : Array SourceCommandId
  attachedDocumentation : Option SourceCommandId
  environmentBefore : Digest
  environmentAfter : Digest
  authority : CommandAuthority
  deriving DecidableEq, Repr

end Mathematics.Element
```
