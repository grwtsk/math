# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f50726f6f66426f756e646172792e6c65616e.Variantde7adbe1f827d7e887bbc799ffcf2643a31dee53a4fdfb02a3d96bc8ef7dd72c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70cb890d215ccb1c1e98b65b9edb297635cdcfae` · SHA-256 `65f2f00b09aa4c4bb102bd20857ae0973cc3cdb988d060df24f7f3cd348f4f51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrossesProofBoundary.Variantf59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrossesProofBoundary.Variantf59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e","mathematical_subject":"Foundations.Unclassified","original_sha256":"f59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/Bit1/Bit1/M506970656c696e652f50726f6f66426f756e646172792e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436c61696d5374617475732e6c65616e

/- source-tree-label: STL1|L|addr=11101011|role=proof_code_atom|slug=pipeline-proofboundary|owner=canonical_owner|core=Pipeline/ProofBoundary.lean|leaf=M506970656c696e652f50726f6f66426f756e646172792e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrossesProofBoundary.Variantf59ed0f3dade8ffa2c0a9b72395691c85fb84e566a5ce5a51d86bf1a41be846e

set_option autoImplicit false

namespace Think.Braid.Law

def crossesProofBoundary : ClaimStatus -> Bool :=
  ClaimStatus.crossesTheoremBoundary

theorem finite_witness_stays_below_boundary :
    crossesProofBoundary ClaimStatus.finiteWitness = false := rfl

theorem checked_theorem_crosses_boundary :
    crossesProofBoundary ClaimStatus.checkedTheorem = true := rfl

end Think.Braid.Law
```
