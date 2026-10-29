-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hash256.Variant31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hash256.Variant31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2","mathematical_subject":"Foundations.Unclassified","original_sha256":"31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:320433e3de5f4dfe34b2575f/workspace/lib/Surface/Core/XYZ/Hash.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Hash

/-!
# XYZ hash compatibility surface

The implementation is payload-neutral in `Surface.Core.Transport`. These
abbreviations and thin theorem wrapper preserve the published XYZ API exactly;
Lean still validates framing only and does not compute SHA-256.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hash256.Variant31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2

public section

namespace Surface.Core.XYZ

abbrev Hash256 := Surface.Core.Transport.Hash256
abbrev lowerHexAlphabet := Surface.Core.Transport.lowerHexAlphabet
abbrev IsLowerHexDigit := Surface.Core.Transport.IsLowerHexDigit
abbrev Hash256.Valid (hash : Hash256) :=
  Surface.Core.Transport.Hash256.Valid hash
abbrev verifyHash256 := Surface.Core.Transport.verifyHash256

@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid :=
  Surface.Core.Transport.verifyHash256_sound hash accepted

end Surface.Core.XYZ
