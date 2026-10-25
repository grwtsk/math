# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Implication.Variantcf1ba81ff2a626f2e8ab0afcccbbe4d48150419d6e1ecbb203ee296c80b775e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d876819d9ed235dedb237f8827f865527eb68af2` · SHA-256 `73df5d9aebdfbb314e7d3fec1cbfe9edd19e3bd845cbeeab239ded4314c02831`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedImplication.Variante8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CertifiedImplication.Variante8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c","mathematical_subject":"Foundations.Unclassified","original_sha256":"e8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Relations/Implication.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Relations.Affinity

/-!
# Directed implication channel

Numerical implication affinity is the premise-to-conclusion cross-role block.
It is deliberately distinct from proof-bearing implication.  Hermitian
symmetry relates the reverse *role-swapped* entry, not the score obtained by
swapping concepts while keeping premise and conclusion roles fixed.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CertifiedImplication.Variante8696f408f9cb1ab302f87819e15815ab3006d90f0798b969349eee52759c73c

noncomputable section

namespace DAF.Rhetorical

/-- Directed premise/conclusion affinity.  A null endpoint returns `none`. -/
def implicationAffinity
    (kernel : PositiveKernel RhetoricalIndex)
    (premise conclusion : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (premiseVector kernel premise)
    (conclusionVector kernel conclusion)

/-- Every defined implication affinity is Cauchy--Schwarz bounded. -/
theorem implicationAffinity_mem_Icc
    (kernel : PositiveKernel RhetoricalIndex)
    {premise conclusion : Universe.ConceptId}
    {score : ℝ}
    (computed : implicationAffinity kernel premise conclusion = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 :=
  normalizedRealAffinity_mem_Icc kernel computed

/-- Proof-bearing implication keeps its theorem identity and proof term.  No
constructor consumes an affinity score. -/
structure CertifiedImplication
    (interpret : Universe.ConceptId → Prop) where
  premise : Universe.ConceptId
  conclusion : Universe.ConceptId
  theoremId : Universe.TerrainNodeId
  proof : interpret premise → interpret conclusion

namespace CertifiedImplication

variable {interpret : Universe.ConceptId → Prop}

/-- Applying certified implication uses only the stored proof. -/
theorem apply
    (certificate : CertifiedImplication interpret)
    (premiseProof : interpret certificate.premise) :
    interpret certificate.conclusion :=
  certificate.proof premiseProof

end CertifiedImplication

end DAF.Rhetorical
```
