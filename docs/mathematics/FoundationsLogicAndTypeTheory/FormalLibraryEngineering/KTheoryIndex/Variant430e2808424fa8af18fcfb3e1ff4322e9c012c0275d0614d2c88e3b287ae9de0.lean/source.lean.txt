-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryIndex.Variantf0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KTheoryIndex.Variantf0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548","mathematical_subject":"Foundations.Unclassified","original_sha256":"f0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/KTheoryIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.DerivedIndex
import Folder.DerivedSheaf.ModuliStackKTheory
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.DerivedSheaf.KTheoryIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records the primary K-theory index, not BinaryMatrix data.
Ontology: derived.k_theory_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryIndex.Variantf0dd5af00a10c9020a547dbb6b942cd4132ef1f7ce498ff18ef44fbfe119d548

namespace Folder
namespace DerivedSheaf

/--
The primary index object: a K-theory class of a perfect complex over the
contract-level K(M_ell) target.
-/
structure KTheoryIndex
    (M : MellKTheory) where
  perfect : PerfectComplex
  indexClass : KTheoryClass M.K
  euler? : Option DerivedIndex
  classOfPerfectComplex : Prop
  classOfPerfectComplex_certified : classOfPerfectComplex
  sourceLabel : String

theorem ktheory_index_class_of_perfect_complex
    {M : MellKTheory}
    (I : KTheoryIndex M) :
    I.classOfPerfectComplex :=
  I.classOfPerfectComplex_certified

theorem ktheory_index_has_class
    {M : MellKTheory}
    (I : KTheoryIndex M) :
    ∃ c : KTheoryClass M.K, c = I.indexClass :=
  ⟨I.indexClass, rfl⟩

end DerivedSheaf
end Folder
