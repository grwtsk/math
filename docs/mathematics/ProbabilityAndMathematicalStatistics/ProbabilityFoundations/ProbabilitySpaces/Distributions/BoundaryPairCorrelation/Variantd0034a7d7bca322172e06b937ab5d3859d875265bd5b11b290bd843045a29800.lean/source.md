# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.BoundaryPairCorrelation.Variantd0034a7d7bca322172e06b937ab5d3859d875265bd5b11b290bd843045a29800

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6b60a29f0beea200c2ad9fe114462ce086c0673` · SHA-256 `eadda932313496b9bee038948bb0ff82dc7b1de2e8cf4dce7276b3008c35ee44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.PairCorrelationTarget.Variant43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Distributions.SourceCorpus.PairCorrelationTarget.Variant43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578","mathematical_subject":"Probability.Distributions","original_sha256":"43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/BoundaryPairCorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryWeight


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.PairCorrelationTarget.Variant43fd05412e9f12984eb2fcd748756829d7a28e07be4ab46a62dbf0997d7bc578

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive PairCorrelationTarget where
  | off
  | montgomeryGUE
  | poisson
  | custom
deriving DecidableEq, Repr

structure BoundaryPairCorrelationPolicy where
  target : PairCorrelationTarget
  preventsSpectralClumping : Bool
  importsMontgomeryAsTheoremAuthority : Bool
deriving DecidableEq, Repr

def montgomeryBoundaryPolicy : BoundaryPairCorrelationPolicy :=
  { target := .montgomeryGUE
    preventsSpectralClumping := true
    importsMontgomeryAsTheoremAuthority := false }

theorem montgomery_boundary_policy_is_regularizer :
    montgomeryBoundaryPolicy.importsMontgomeryAsTheoremAuthority = false := by
  rfl

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```
