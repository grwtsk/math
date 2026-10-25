# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonMathlibAdapter.Variantbc3b29ebaba059586e0a17b8b9bd51c5e5f97bd55e3f46c763940c5a19b45846

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ce0e3baa72356c59ae9a34eb70f7af89d89d692` · SHA-256 `4a7343bc8b84165dc749f6ab41cb626b730a64f316042f87f57a6113f7154372`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
