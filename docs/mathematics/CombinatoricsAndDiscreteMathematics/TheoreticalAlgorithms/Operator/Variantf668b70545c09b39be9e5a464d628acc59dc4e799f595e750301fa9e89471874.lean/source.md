# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operator.Variantf668b70545c09b39be9e5a464d628acc59dc4e799f595e750301fa9e89471874

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01481f3e0ab811d6a7442923224f4c38037e86bb` · SHA-256 `77d19a197b7f4a276d6d5090e7c3048571886601da8775dbbf12ef82e8fe85fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operator.Variantcfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Operator.Variantcfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe","mathematical_subject":"Computation.DataStructures","original_sha256":"cfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/Operator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.Step

/-! # Certified finite relaxation operators -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operator.Variantcfe2944e6bede8cc1d06135547e87160e296d31d6c2a765d5ae0467521e36bbe

namespace Mathematics.Relaxation

/--
The operator is deterministic by being a function.  Every nonfixed step
strictly lowers a natural measure and preserves the immutable source boundary
and all declared hard constraints.
-/
structure Operator where
  operatorId : StableId
  constraints : List HardConstraint
  energy : Energy
  step : State → State
  source_preserved :
    ∀ state,
      (step state).ecosystemDigest = state.ecosystemDigest ∧
      (step state).workPackage = state.workPackage
  constraints_preserved :
    ∀ state,
      SatisfiesAll constraints state →
      SatisfiesAll constraints (step state)
  strict_descent :
    ∀ state,
      step state ≠ state →
      energy.measure (step state) < energy.measure state
  operatorDigest : Digest

namespace Operator

/-- One step cannot modify the source ecosystem or work-package boundary. -/
theorem preserves_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).ecosystemDigest = state.ecosystemDigest ∧
      (operator.step state).workPackage = state.workPackage :=
  operator.source_preserved state

end Operator

end Mathematics.Relaxation
```
