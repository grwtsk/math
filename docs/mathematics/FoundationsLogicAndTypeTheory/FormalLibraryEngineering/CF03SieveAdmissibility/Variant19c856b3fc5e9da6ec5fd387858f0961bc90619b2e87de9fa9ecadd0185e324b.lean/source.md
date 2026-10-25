# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF03SieveAdmissibility.Variant19c856b3fc5e9da6ec5fd387858f0961bc90619b2e87de9fa9ecadd0185e324b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af842ef5c158c72f718e879e85dcf99a1267cc9` · SHA-256 `af1764385e4d259445227ed05869a86dfc737a288c79676249d7a18981357a84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf03SieveAdmissibility.Variant4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf03SieveAdmissibility.Variant4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20","mathematical_subject":"Foundations.Unclassified","original_sha256":"4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF03_SieveAdmissibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf03SieveAdmissibility.Variant4b8d7560649fe32a99002c3392184567dc4ee19fd1971409f539c21cc6d8dd20

namespace FCRS.ControlledPlane.Theorems

/-- CF-03 follows from the sieve fields and the model's typed transport. -/
theorem cf03_sieveAdmissibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S) :
    CF03Claim M := by
  exact {
    factoringClosed := M.sieve.closedUnderFactor
    admissibilityExact := by
      intro e
      rfl
    factorMorphTransported := by
      intro c f
      exact (M.sieveTransport c).factorMorph_commutes f
    acceptanceCorrespondence := by
      intro c m
      exact (M.sieveTransport c).acceptance_iff m
    furtherFactorPreserved := by
      intro c f g hFactor
      exact (M.sieveTransport c).furtherFactor_preserved hFactor
    occurrenceCorrespondence := by
      intro c e f
      exact (M.sieveTransport c).occurrence_iff e f
    admissibilityPreserved := by
      intro c e hAdmissible
      exact admissibleEdge_preserved_of_sieveTransport
        (M.sieveTransport c) hAdmissible
  }

end FCRS.ControlledPlane.Theorems
```
