-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonMathlibConceptDescriptor.Variantca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NonMathlibConceptDescriptor.Variantca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8","mathematical_subject":"Foundations.Unclassified","original_sha256":"ca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/NonMathlibAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Non-Mathlib mathematics adapters

An adapter can carry the identity and exact-statement boundary of mathematics
that is not directly available in Mathlib.  It does not own theorem authority:
strict use requires either proof authority or an explicit unavailable-authority
marker.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonMathlibConceptDescriptor.Variantca2d365525b807642c921ac6f315fac09e5db4be1fd8456593d23c262ccac7f8

namespace AnalyticNumber
namespace NonMathlibAdapter

structure NonMathlibConceptDescriptor where
  conceptHash : Nat
  label : String
  sourceHash : Nat

structure AdapterDescriptor where
  adapterKindHash : Nat
  adapterSourceHash : Nat
  statementHash : Nat

structure NonMathlibAdapterCertificate where
  concept : NonMathlibConceptDescriptor
  adapter : AdapterDescriptor
  exactStatementRecorded : Prop
  exactStatementProof : exactStatementRecorded
  authorityBoundaryPreserved : Prop
  authorityBoundaryProof : authorityBoundaryPreserved
  unavailableMarkedWhenUnproved : Prop
  unavailableProof : unavailableMarkedWhenUnproved
  adapterDoesNotOwnTheorem : Prop
  noAuthorityProof : adapterDoesNotOwnTheorem

theorem non_mathlib_mathematics_adapter_sound
    (A : NonMathlibAdapterCertificate) :
    A.exactStatementRecorded ∧
    A.authorityBoundaryPreserved ∧
    A.unavailableMarkedWhenUnproved ∧
    A.adapterDoesNotOwnTheorem :=
  by
    exact
      ⟨A.exactStatementProof,
       A.authorityBoundaryProof,
       A.unavailableProof,
       A.noAuthorityProof⟩

def AdapterOwnsTheoremAuthority (_A : AdapterDescriptor) : Prop :=
  False

theorem adapter_descriptor_not_theorem_authority
    (A : AdapterDescriptor) :
    ¬ AdapterOwnsTheoremAuthority A := by
  intro h
  exact h

end NonMathlibAdapter
end AnalyticNumber
