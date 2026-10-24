# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f4f626c6.Variant9c5366a00e630401fc5af74cfcc98db252b29494b7298a7b371b24fb74fa77a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66bd5f8e259389a469b24980bc8641dde738de60` · SHA-256 `36e6df564b8ee5b6bd80abe287fef146d003927feaf02b1905d45ce34339dee1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PartialIsoExtensionObligationTag.Variante1ffcdecdf3c11aa7fc82089ea95532739c7ad4bed6918e14e52087e0c44ab51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1ffcdecdf3c11aa7fc82089ea95532739c7ad4bed6918e14e52087e0c44ab51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PartialIsoExtensionObligationTag.Variante1ffcdecdf3c11aa7fc82089ea95532739c7ad4bed6918e14e52087e0c44ab51","mathematical_subject":"Computation.DataStructures","original_sha256":"e1ffcdecdf3c11aa7fc82089ea95532739c7ad4bed6918e14e52087e0c44ab51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit1/Bit0/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f4f626c69676174696f6e732e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f2e6c65616e


/- source-tree-label: STL1|L|addr=11110011|role=proof_code_atom|slug=pipeline-center-radofinitepartialisoobligations|owner=canonical_owner|core=Pipeline/Center/RadoFinitePartialIsoObligations.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e6974655061727469616c49736f4f626c69676174696f6e732e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PartialIsoExtensionObligationTag.Variante1ffcdecdf3c11aa7fc82089ea95532739c7ad4bed6918e14e52087e0c44ab51

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFinitePartialIsoObligations

/-!
Finite obligation ledger for future partial-isomorphism extension work.

This module records only finite, local obligation tags. It does not assert an
extension theorem, an existence theorem, homogeneity, back-and-forth,
universality, countability, Fraisse-limit authority, or model-theoretic
transfer.
-/

inductive PartialIsoExtensionObligationTag where
  | chooseFreshWitness
  | preserveDomainMembership
  | preserveImageMembership
  | preserveSourceToTargetEdges
  | preserveTargetToSourceEdges
deriving DecidableEq, Repr

def finitePartialIsoExtensionObligationTags :
    List PartialIsoExtensionObligationTag :=
  [ PartialIsoExtensionObligationTag.chooseFreshWitness
  , PartialIsoExtensionObligationTag.preserveDomainMembership
  , PartialIsoExtensionObligationTag.preserveImageMembership
  , PartialIsoExtensionObligationTag.preserveSourceToTargetEdges
  , PartialIsoExtensionObligationTag.preserveTargetToSourceEdges
  ]

theorem finitePartialIsoExtensionObligationTags_length :
    finitePartialIsoExtensionObligationTags.length = 5 := by
  rfl

theorem finitePartialIso_chooseFreshWitness_mem_obligations :
    PartialIsoExtensionObligationTag.chooseFreshWitness ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveDomainMembership_mem_obligations :
    PartialIsoExtensionObligationTag.preserveDomainMembership ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveImageMembership_mem_obligations :
    PartialIsoExtensionObligationTag.preserveImageMembership ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveSourceToTargetEdges_mem_obligations :
    PartialIsoExtensionObligationTag.preserveSourceToTargetEdges ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

theorem finitePartialIso_preserveTargetToSourceEdges_mem_obligations :
    PartialIsoExtensionObligationTag.preserveTargetToSourceEdges ∈
      finitePartialIsoExtensionObligationTags := by
  simp [finitePartialIsoExtensionObligationTags]

end Think.Pipeline.Center.RadoFinitePartialIsoObligations
```
