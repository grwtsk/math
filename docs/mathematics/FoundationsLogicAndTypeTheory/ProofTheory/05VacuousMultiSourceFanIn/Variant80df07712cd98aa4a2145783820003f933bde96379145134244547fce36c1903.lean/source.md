# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.05VacuousMultiSourceFanIn.Variant80df07712cd98aa4a2145783820003f933bde96379145134244547fce36c1903

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29f5b00bf9cc59dfb829f8e7a379704b6337a7f7` · SHA-256 `779c5b609e1e5b0b3d4cf812c6a39f082660383394fc900c7e67b4aa4fce5f2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.VacuousDerivation.Variantac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.VacuousDerivation.Variantac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54","mathematical_subject":"Logic.ProofTheory","original_sha256":"ac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-6/reproductions/05_vacuous_multi_source_fan_in.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.MultiSourceExample


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.VacuousDerivation.Variantac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54

namespace FCRS.TheoremTransfer.Cycle6.VacuousFanIn

open FCRS.TheoremTransfer.MultiSourceExample

/--
The aggregate type accepts a replacement `jointInference` that ignores every
translated source premise.  The proof-use equality is still inhabited because
the derived target proposition is independently true.  Graph fan-in therefore
does not establish proof-bearing semantic dependence on either source.
-/
def vacuousDerivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope := {
  derivation with
  jointInference := fun _premises => ⟨True.intro, True.intro⟩
  derivedProofUsesJointInference := by intros; rfl
}

theorem acceptedDespiteIgnoringEverySource :
    ∃ left right : vacuousDerivation.SourceIndex,
      left ≠ right ∧
      vacuousDerivation.sourceNode left ≠ vacuousDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    vacuousDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

/-- The accepted inference result is obtainable with no source-premise input. -/
theorem targetProofWithoutSources : targetTheory.Holds (True ∧ True) :=
  ⟨True.intro, True.intro⟩

#check vacuousDerivation
#check acceptedDespiteIgnoringEverySource
#check targetProofWithoutSources

end FCRS.TheoremTransfer.Cycle6.VacuousFanIn
```
