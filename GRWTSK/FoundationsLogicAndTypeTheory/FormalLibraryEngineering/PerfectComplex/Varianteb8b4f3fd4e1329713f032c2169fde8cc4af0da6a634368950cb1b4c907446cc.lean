-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectComplex.Variante46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PerfectComplex.Variante46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6","mathematical_subject":"Foundations.Unclassified","original_sha256":"e46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/PerfectComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.DerivedSheaf.PerfectComplex

Radiation role: research-boundary
BinaryMatrix spine: This module stores perfect-complex contracts, not BinaryMatrix data.
Ontology: derived.perfect_complex
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectComplex.Variante46dd907233a71f3f6701ff6705e6d0cbd86b234b6855ea011b852e9eecb48b6

namespace Folder
namespace DerivedSheaf

structure PerfectComplex where
  derived : DerivedObject
  locallyFinitePresentation : Prop
  locallyFinitePresentation_certified : locallyFinitePresentation
  boundedTorAmplitude : Prop
  boundedTorAmplitude_certified : boundedTorAmplitude
  dualizable : Prop
  dualizable_certified : dualizable
  label : String

theorem perfect_complex_dualizable
    (P : PerfectComplex) :
    P.dualizable :=
  P.dualizable_certified

theorem perfect_complex_locally_finite
    (P : PerfectComplex) :
    P.locallyFinitePresentation :=
  P.locallyFinitePresentation_certified

theorem perfect_complex_bounded_tor
    (P : PerfectComplex) :
    P.boundedTorAmplitude :=
  P.boundedTorAmplitude_certified

end DerivedSheaf
end Folder
