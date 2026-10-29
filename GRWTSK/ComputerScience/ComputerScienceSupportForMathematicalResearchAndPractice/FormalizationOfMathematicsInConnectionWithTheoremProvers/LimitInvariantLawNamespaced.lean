-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniqueProjectiveInvariantLaw.Variant6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UniqueProjectiveInvariantLaw.Variant6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad","mathematical_subject":"Foundations.Unclassified","original_sha256":"6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Boundary/LimitInvariantLaw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitKernel

/-!
# Unique projective limit invariant law
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniqueProjectiveInvariantLaw.Variant6fbee60e8e567e36a39f1047d5e794bec9d8e011f63d52a1c3ff0710d5b530ad

namespace Mathematics.StratifiedBoundary

structure UniqueProjectiveInvariantLaw
    (Kernel Law : Type u) where
  kernel : Kernel
  limitLaw : Law
  finiteMarginal : Nat → Law
  invariant : Prop
  invariantProof : invariant
  projects : Nat → Prop
  projectProof :
    ∀ stage : Nat,
      projects stage
  unique :
    ∀ candidate : Law,
      candidate = limitLaw

theorem projective_limit_invariant_law_unique
    {Kernel Law : Type u}
    (certificate :
      UniqueProjectiveInvariantLaw Kernel Law)
    (candidate : Law) :
    candidate = certificate.limitLaw :=
  certificate.unique candidate

end Mathematics.StratifiedBoundary
