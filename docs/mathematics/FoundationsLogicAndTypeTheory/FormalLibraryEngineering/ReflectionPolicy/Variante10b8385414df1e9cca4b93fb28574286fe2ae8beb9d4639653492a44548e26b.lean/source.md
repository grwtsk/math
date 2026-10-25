# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflectionPolicy.Variante10b8385414df1e9cca4b93fb28574286fe2ae8beb9d4639653492a44548e26b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `803cf5dc9709811e07697377833788a5dd6b91ef` · SHA-256 `d17da553d7e4afbda41b7ecc6fb05ddb9ff6bcba94809eaa496d095f95f4b21d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflectionPolicy.Variant363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReflectionPolicy.Variant363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b","mathematical_subject":"Foundations.Unclassified","original_sha256":"363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Mathlib/ReflectionPolicy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Mathlib.DeclarationIndex

/-! # Mathlib-positive reflection policy -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflectionPolicy.Variant363bfd16b25c417b8f33b11057b3b1664fb344c35d864f3536d26b12fe8fda3b

namespace Mathematics.Projects.Mathlib

structure ReflectionPolicy where
  targetRevisionId : StableId
  requireGenerality : Bool := true
  requireProjectIndependence : Bool := true
  requireApiStability : Bool := true
  requireMathlibStyle : Bool := true
  requireMinimalDependencies : Bool := true
  requireDocumentation : Bool := true
  requireKernelCheck : Bool := true
  requireTests : Bool := true
  requireLicenseCompatibility : Bool := true
  requireMigrationPlanForApiChange : Bool := true
  policyDigest : Digest

end Mathematics.Projects.Mathlib
```
