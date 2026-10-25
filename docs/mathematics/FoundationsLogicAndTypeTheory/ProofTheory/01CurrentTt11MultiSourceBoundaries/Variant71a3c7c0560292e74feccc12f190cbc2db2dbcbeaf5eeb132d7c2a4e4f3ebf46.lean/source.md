# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01CurrentTt11MultiSourceBoundaries.Variant71a3c7c0560292e74feccc12f190cbc2db2dbcbeaf5eeb132d7c2a4e4f3ebf46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a73a875705ed8d913606c36a0e2a3a1e716a0508` · SHA-256 `46527c9d396d6b4bc61a3a3c850d6019943c666ae2d3f39cb9a60a83b9f4536d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Transport.Variant278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.Transport.Variant278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436","mathematical_subject":"Logic.ProofTheory","original_sha256":"278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-10/reproductions/01_current_tt11_multi_source_boundaries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport
import FCRS.TheoremTransfer


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Transport.Variant278c6f926aae39e641db2c37ba3550f8de0ba4d2f4d9d13aaca269fb48e9b436

namespace FCRS.TheoremTransfer.Cycle10.CurrentBoundaries

open FCRS.Transport
open FCRS.Transport.Theorems
open FCRS.TheoremTransfer.MultiSourceExample

#check ReflectiveRecoveryObservation
#check tt11_reflectiveRecovery
#check MultiSourceInferenceExpression.interpret
#check MultiSourceTheoremTransferDerivation.derivedProofObjectExact
#check MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#check MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#check derivation_has_distinct_fan_in
#check derivation_expression_uses_both_source_leaves

/-- The current concrete aggregate still has two distinct source nodes. -/
example :
    ∃ left right : derivation.SourceIndex,
      left ≠ right ∧
      derivation.sourceNode left ≠ derivation.sourceNode right :=
  derivation_has_distinct_fan_in

/-- Both exact source indices remain leaves of the current proof expression. -/
example :
    derivation.jointInferenceExpression.UsesSource false ∧
      derivation.jointInferenceExpression.UsesSource true :=
  derivation_expression_uses_both_source_leaves

#print axioms tt11_reflectiveRecovery
#print axioms MultiSourceInferenceExpression.interpret
#print axioms MultiSourceTheoremTransferDerivation.hasDistinctFanIn
#print axioms MultiSourceTheoremTransferDerivation.sourceLeafCoverage
#print axioms derivation_has_distinct_fan_in
#print axioms derivation_expression_uses_both_source_leaves
#print axioms derivation

end FCRS.TheoremTransfer.Cycle10.CurrentBoundaries
```
