-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityBand.Variant69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityBand.Variant69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9","mathematical_subject":"Foundations.Unclassified","original_sha256":"69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.quarentine/61026/.quarentine/formal/Formal/Band.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
Authority bands for the Formal program.

This module is intentionally dependency-free. It gives the organization layer a
typed vocabulary for saying what kind of authority a conceptual boundary has.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityBand.Variant69cc93c4193c4c7b247865ecdf9313fd0107bea90c6300a175057464ace4b8b9

namespace Formal

inductive AuthorityBand where
  | checked
  | surface
  | blueprint
  | patch
  | external
  | archive
  deriving DecidableEq, Repr

def AuthorityBand.mayCloseTheoremAuthority : AuthorityBand -> Bool
  | .checked => true
  | .surface => false
  | .blueprint => false
  | .patch => false
  | .external => false
  | .archive => false

theorem AuthorityBand.blueprint_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .blueprint = false := by
  rfl

theorem AuthorityBand.patch_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .patch = false := by
  rfl

theorem AuthorityBand.external_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .external = false := by
  rfl

theorem AuthorityBand.archive_cannot_close :
    AuthorityBand.mayCloseTheoremAuthority .archive = false := by
  rfl

structure ConceptualBoundary where
  band : AuthorityBand
  moduleName : String
  importsCorpus : Bool
  deriving Repr

def ConceptualBoundary.mayCloseTheoremAuthority
    (boundary : ConceptualBoundary) : Bool :=
  boundary.band.mayCloseTheoremAuthority && !boundary.importsCorpus

def ConceptualBoundary.marker
    (band : AuthorityBand)
    (moduleName : String) : ConceptualBoundary :=
  { band, moduleName, importsCorpus := false }

def ConceptualBoundary.corpus
    (band : AuthorityBand)
    (moduleName : String) : ConceptualBoundary :=
  { band, moduleName, importsCorpus := true }

theorem marker_blueprint_cannot_close (moduleName : String) :
    (ConceptualBoundary.marker .blueprint moduleName).mayCloseTheoremAuthority
      = false := by
  rfl

theorem marker_patch_cannot_close (moduleName : String) :
    (ConceptualBoundary.marker .patch moduleName).mayCloseTheoremAuthority
      = false := by
  rfl

theorem corpus_checked_cannot_close (moduleName : String) :
    (ConceptualBoundary.corpus .checked moduleName).mayCloseTheoremAuthority
      = false := by
  simp [ConceptualBoundary.mayCloseTheoremAuthority, ConceptualBoundary.corpus,
    AuthorityBand.mayCloseTheoremAuthority]

end Formal
