# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlledChain.Variantbaffc1347de1d217ecc4b0031ed01e3aa4db5f5e4b55443095411375c6b2720b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `344410887e39024be5506fbbb693c861a91494ce` · SHA-256 `a8f428c81c6fb7ce7bf0a9eafb81682b3f79e620025afa5480664b81afd55104`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContinuousBudgetCertificate.Variant0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ContinuousBudgetCertificate.Variant0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6","mathematical_subject":"Computation.DataStructures","original_sha256":"0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/ControlledChain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.ControlledChain
import Mathematics.MobiusOntology.ErrorTransform

/-!
# Carrier-indexed controlled chains

The chain index enforces adjacency of independently typed carriers.  Its
scalar profile is merely a composition-preserving image of that typed proof.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContinuousBudgetCertificate.Variant0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6

namespace Mathematics.MobiusOntology

open scoped NNReal

universe u

abbrev MetricCarrier := Mathematics.Attention.MetricCarrier
abbrev ControlledChain := Mathematics.Attention.ControlledChain

namespace ControlledChain

variable {X Y : MetricCarrier.{u}}

def collapse (chain : ControlledChain X Y) :
    Mathematics.Attention.ControlledArrow X Y :=
  Mathematics.Attention.ControlledChain.collapse chain

def runReference
    (chain : ControlledChain X Y) :
    X.carrier → Y.carrier :=
  Mathematics.Attention.ControlledChain.runReference chain

def runImplementation
    (chain : ControlledChain X Y) :
    X.carrier → Y.carrier :=
  Mathematics.Attention.ControlledChain.runImplementation chain

def profile (chain : ControlledChain X Y) :
    List ErrorFactor :=
  Mathematics.Attention.ControlledChain.profile chain

theorem final_discrepancy_le
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      Mathematics.Attention.ErrorFactor.propagateFrom
        initial chain.profile :=
  Mathematics.Attention.ControlledChain.run_error_bound
    chain initialSound

theorem closedForm
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      initial *
          Mathematics.Attention.ErrorFactor.downstreamGain chain.profile +
        Mathematics.Attention.ErrorFactor.weightedResidual chain.profile :=
  Mathematics.Attention.ControlledChain.run_error_bound_closedForm
    chain initialSound

/-- The continuous branch is accepted only under its declared final budget. -/
structure ContinuousBudgetCertificate
    (chain : ControlledChain X Y) where
  initial : ℝ≥0
  allowed : ℝ≥0
  propagated :
    Mathematics.Attention.ErrorFactor.propagateFrom
        initial chain.profile ≤
      allowed

end ControlledChain

end Mathematics.MobiusOntology
```
