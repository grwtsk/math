# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variant3fea353e6af29e4c9cbbde872593e7fd40a5e364fc74def4cb4087e0847b836f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efb3f82bbc2db4add0fe114610e48dcc3a66ca2d` · SHA-256 `f013e14df9600ca8c960b36a400eecded0322e4dcaf31d28bfd3ba3acba2f58a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","mathematical_subject":"Foundations.Unclassified","original_sha256":"fe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/OwnerAuthority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Owner authority

This module is deliberately not imported by the graph-access core.  Owner
commit authority is supplied only by the external state owner.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52

namespace Mathematics.GraphAccess.Owner

inductive OwnerAuthority
  | commit
deriving DecidableEq, Repr

end Mathematics.GraphAccess.Owner
```
