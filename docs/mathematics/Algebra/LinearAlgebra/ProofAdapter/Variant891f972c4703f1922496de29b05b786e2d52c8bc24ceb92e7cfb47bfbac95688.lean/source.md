# Complete source: GRWTSK.Algebra.LinearAlgebra.ProofAdapter.Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `224d4b973fdb0c8652140a1054f517bb98c0a3a6` · SHA-256 `3db0f52ccc5f8a5503b9a6148cafac0248db9f7cf4e9a9f3c194792bea82da29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProofAdapterDescriptor.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProofAdapterDescriptor.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","mathematical_subject":"Foundations.Unclassified","original_sha256":"0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ProofAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.ProofSyntax
import Surface.Legacy.BinaryLogicMatrix.TheoremAdapter


namespace GRWTSK.Algebra.LinearAlgebra.ProofAdapterDescriptor.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab

namespace Surface.Legacy

structure ProofAdapterDescriptor where
  term : ProofTerm
  theoremDescriptor : EncodedTheorem
  syntaxRoundTrip : Prop
  proofAuthorityBoundary : String

theorem proofAdapter_syntax_roundTrip_projects
    (A : ProofAdapterDescriptor) :
    A.syntaxRoundTrip -> A.syntaxRoundTrip := by
  intro h
  exact h

theorem proofAdapter_preserves_theorem_statement
    (A : ProofAdapterDescriptor) :
    A.theoremDescriptor.statement :=
  A.theoremDescriptor.soundProof

end Surface.Legacy
```
