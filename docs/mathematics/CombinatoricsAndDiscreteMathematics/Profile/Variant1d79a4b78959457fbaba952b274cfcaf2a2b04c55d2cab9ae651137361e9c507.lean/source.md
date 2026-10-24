# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Profile.Variant1d79a4b78959457fbaba952b274cfcaf2a2b04c55d2cab9ae651137361e9c507

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2935afe95f3ffc5f4d6565dfd6e3f6cb9b8d9347` · SHA-256 `ac57e9947740c44754467057f5454df48621174ff9964d1bc92b2d88a52cf571`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FormalProfile.Variant083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FormalProfile.Variant083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FormalProfile.Variant083007e41b2c3d0e3c3f1e3d352d49855b62a6c76fc2c6dc28185ef0a85fd4cb

namespace Noeoueue

/-- The formal epoch is prior to every snapshot it can certify. -/
structure FormalProfile where
  digest : String
  leanVersion : String
  mathlibRevision : String
  projectDigest : String
  exporterDigest : String
  normalizationVersion : Nat
  eligibleDeclarationKinds : List String
  foundationTypeExclusionPolicy : String
  axiomPolicy : String
  proofOpacityPolicy : String
  statementIncidencePolicy : String
  proofDependencyPolicy : String
  primeFrequencyCutoff : Nat
  coverSearchResourceContract : Nat
  canonicalEquivalencePolicy : String
  trustPolicy : String
  deriving DecidableEq, Repr

def pinnedProfile : FormalProfile :=
  { digest := "source-epoch-bound-at-export", leanVersion := "v4.19.0",
    mathlibRevision := "c44e0c8ee63ca166450922a373c7409c5d26b00b",
    projectDigest := "bound-at-gate", exporterDigest := "bound-at-gate",
    normalizationVersion := 1, eligibleDeclarationKinds := ["theorem", "definition", "opaque"],
    foundationTypeExclusionPolicy := "explicit-v1", axiomPolicy := "reject-unlisted-v1",
    proofOpacityPolicy := "opaque-and-transparent-recorded-v1",
    statementIncidencePolicy := "distinct-normalized-types-once-per-statement-v1",
    proofDependencyPolicy := "separate-nonranking-channel-v1", primeFrequencyCutoff := 4096,
    coverSearchResourceContract := 1000000, canonicalEquivalencePolicy := "checked-inverse-groupoid-v1",
    trustPolicy := "lean-kernel-plus-gate-no-browser-authority-v1" }

end Noeoueue
```
