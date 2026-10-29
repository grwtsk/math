-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.OrdinaryBocksteinPhase.Variant0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrdinaryBocksteinPhase.Variant0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3","mathematical_subject":"Foundations.Unclassified","original_sha256":"0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/OrdinaryBockstein.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.BocksteinExtension

/-!
# Ordinary real-circle coefficient phase

In degree `r`, the Bockstein target is `Tor H^(r+1)(K; ℤ)`.  This phase
torsion is deliberately distinct from `Tor H^r(K; ℤ)`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.OrdinaryBocksteinPhase.Variant0c4e52b857d3192913a9814fc43ce3b2ac5bdcfa1c813edc250f132563bfd8d3

namespace Mathematics.Homology

universe u v w

/-- Certified ordinary coefficient sequence in one cohomological degree. -/
structure OrdinaryBocksteinPhase
    (ContinuousTorus : Type u)
    (CircleCohomology : Type v)
    (NextIntegralTorsion : Type w)
    [AddCommGroup ContinuousTorus]
    [AddCommGroup CircleCohomology]
    [AddCommGroup NextIntegralTorsion] where
  degree : Nat
  extension :
    BocksteinExtension
      ContinuousTorus CircleCohomology NextIntegralTorsion
  continuousQuotientDigest : Digest
  nextDegreeTorsionDigest : Digest
  nextDegree_is_succ : Nat
  nextDegree_eq : nextDegree_is_succ = Nat.succ degree
  longExactSequenceCertificate : ObjectAddress

end Mathematics.Homology
