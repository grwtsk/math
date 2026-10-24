# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Phase.Variant644667885aea76068cfe316ac62552e06638a270d7a5681ba2c19f3de15c80ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e5696fb360df321c157ea6345c9efebe709a6c2` · SHA-256 `d394ecb47fb58e3a0f4de351662ae09a40396deed1bc1597d2a50cb67d03aa84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Status.Variant32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Status.Variant32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe","mathematical_subject":"Computation.DataStructures","original_sha256":"32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Orbit/Phase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-! # Evidence-governed phase classification -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Status.Variant32f7b681cd93419f1a18a2aca2019a68e6dc006444cf80e3d5a6efc890e996fe

namespace Mathematics.Orbit

inductive Status
  | finite (period : Nat)
  | denseCircle
  | denseTorus (dimension : Nat)
  | unresolved
  deriving DecidableEq, Repr

inductive PhaseEvidence
  | exactRational (numerator : Int) (denominator : Nat)
  | certifiedIrrational (certificate : CertificateId)
  | finitePrefix (samples : List Int)
  deriving DecidableEq, Repr

def classify : PhaseEvidence → Status
  | .exactRational _ denominator =>
      if denominator = 0 then .unresolved else .finite denominator
  | .certifiedIrrational _ => .denseCircle
  | .finitePrefix _ => .unresolved

@[simp] theorem finite_prefix_never_claims_irrationality
    (samples : List Int) :
    classify (.finitePrefix samples) = .unresolved := rfl

end Mathematics.Orbit
```
