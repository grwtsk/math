# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Coverage.Varianta3946de677acd51a70afd80b1e77a5346c43a7abcfcdb74734040b0c7ead2391

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `956cf990598af23daab9fe1e01449b5a2e2a2e03` · SHA-256 `e3e8d5c434aad8f02d8deb810867134877ae069745ef83931edf9d9d69e129bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SystemManifest.Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SystemManifest.Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Coverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Event

/-!
# Honest whole-system coverage

A required vertex must be observed, explicitly unsupported, or excluded with a
reason.  The indexed classifier leaves no fourth, silently omitted case.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SystemManifest.Variant8a5bc78388d5d7895fb45688d72d6800f0a33d11e769aab67d8a11783a19e4ec

namespace Mathematics.Mutation

structure SystemManifest where
  manifestId : StableId
  digest : Digest
  requiredVertices : Finset StableId
  requiredEdges : Finset StableId

inductive CoverageDisposition
  | observed (receipt : ObjectAddress)
  | unsupported (reason : String)
  | excluded (reason : String)

structure CoverageCertificate
    (manifest : SystemManifest) where
  classifyVertex :
    ∀ vertex, vertex ∈ manifest.requiredVertices → CoverageDisposition
  observedCount : Nat
  unsupportedCount : Nat
  excludedCount : Nat
  adapterDigest : Digest
  toolchainDigest : Digest

def wholeSystemCovered
    (manifest : SystemManifest) : Prop :=
  Nonempty (CoverageCertificate manifest)

structure WholeSystemClaim
    (manifest : SystemManifest) where
  coverage : CoverageCertificate manifest

theorem whole_system_claim_requires_coverage
    (manifest : SystemManifest)
    (claim : WholeSystemClaim manifest) :
    wholeSystemCovered manifest :=
  ⟨claim.coverage⟩

end Mathematics.Mutation
```
