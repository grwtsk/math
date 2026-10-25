# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterDecomposition.Variant82ce4ab63435fbffd998ead3f599bf27f299c1d104f483ba757d065ffc8a5c8a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32145f243621c95d9441e45ba90c402c6a93e734` · SHA-256 `4bda654495334334bd86cf4f1ed3960f0fb331f3e5eff09333bfdedd2e154ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterProfile.Variante9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CharacterProfile.Variante9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782","mathematical_subject":"Foundations.Unclassified","original_sha256":"e9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/CharacterDecomposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.EffectiveOrbit
import Mathematics.Oracle.Naming.CyclicCharacters

/-!
# Character decomposition boundary

Finite turn-group characters are reused without calling them Dirichlet
characters absent conductor, unit-group, and primitivity evidence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterProfile.Variante9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782

namespace Mathematics.Orbit

structure CharacterProfile where
  turnGroupDigest : Digest
  conductorCertificate : Option CertificateId
  primitivityCertificate : Option CertificateId
  deriving DecidableEq, Repr

end Mathematics.Orbit
```
