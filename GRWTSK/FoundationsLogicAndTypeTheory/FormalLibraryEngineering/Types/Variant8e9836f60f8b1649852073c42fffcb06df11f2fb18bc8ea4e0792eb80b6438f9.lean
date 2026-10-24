-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Types.Variant628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b","mathematical_subject":"Foundations.Unclassified","original_sha256":"628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Discovery/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Validity.Types

/-!
# Discovery Types (Re-export)

This module re-exports `LeanCert.Validity.Types` for backward compatibility.
The certificate types have been moved to the Validity layer to reflect
the LeanCert philosophy of separating Engine (computation) from
Validity (certification).

## Migration

Old import: `import LeanCert.Discovery.Types`
New import: `import LeanCert.Validity.Types`

Both continue to work.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant628f9b8bc7de2c4c0e92e298c236328c52fdd65944428788788947438bf68c1b

namespace LeanCert.Discovery

-- Re-export all certificate types from Validity
export LeanCert.Validity (
  DiscoveryConfig
  VerifiedGlobalMin
  VerifiedGlobalMax
  VerifiedRoot
  UniqueVerifiedRoot
  VerifiedIntegral
  VerifiedUpperBound
  VerifiedLowerBound
  VerifiedBoxBound
)

end LeanCert.Discovery
