# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF04TraversalPreservation.Variant572cd92034cee9ee88695fd9f53a48b02c83c2419451b56c029890f1b98f385a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `027fb56b25faccb711c41b2136caa618482aab9b` · SHA-256 `e6f6919473201b347b55ce1676faae6888aa034b29e52309de52e35449d3b69a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf04TraversalPreservation.Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf04TraversalPreservation.Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f","mathematical_subject":"Foundations.Unclassified","original_sha256":"61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF04_TraversalPreservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf04TraversalPreservation.Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f

namespace FCRS.ControlledPlane.Theorems

/--
CF-04 research-rule projection for one-way source-occurrence preservation and
edgewise weight preservation.  It makes no target-occurrence reflection or
bijection claim.
-/
theorem cf04_traversalPreservation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF04Claim M := by
  exact {
    preserved := by
      intro c
      exact ⟨
        occurrencePreserved_of_sieveTransport (M.sieveTransport c),
        registry.cf04.weightPreserved c
      ⟩
    sourceWeightCorrect := registry.cf04.sourceWeightCorrect
    fixedWeightCorrect := registry.cf04.fixedWeightCorrect
  }

end FCRS.ControlledPlane.Theorems
```
