-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Digest.Variante50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Digest.Variante50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemanticTokenization/TextCarrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Finite text carriers

The carrier records normalized Unicode scalar values and the digest of the
exact source realization.  Digest validity is structural only; it does not
certify a linguistic interpretation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Digest.Variante50c704a758d5456aa2d0b29260125d17c67fe455a7d1aaec54561e072c23cd2

namespace Mathematics.SemanticTokenization

/-!
These identifiers are deliberately capsule-local.  They are refinement
interfaces to the external formalization project's canonical identifiers, not
an attempt to mint a second identity authority.
-/

structure Digest where
  algorithm : String := "sha256"
  value : String
  deriving DecidableEq, Repr

def Digest.Valid (digest : Digest) : Prop :=
  digest.algorithm = "sha256" ∧
    digest.value.length = 64 ∧
    digest.value.toList.all
      (fun character =>
        "0123456789abcdef".contains character) = true

structure StableId where
  value : String
  deriving DecidableEq, Repr

def StableId.Valid (id : StableId) : Prop :=
  id.value ≠ ""

structure SnapshotId where
  value : String
  deriving DecidableEq, Repr

structure SourceLocation where
  path : String
  line : Nat
  column : Nat
  deriving DecidableEq, Repr

structure RawTextCarrier where
  chars : Array Char
  sourceDigest : Digest
  source_digest_valid : sourceDigest.Valid

structure TextCarrier where
  chars : Array Char
  sourceDigest : Digest
  source_digest_valid : sourceDigest.Valid

def TextCarrier.length (text : TextCarrier) : Nat :=
  text.chars.size

theorem TextCarrier.length_eq_size (text : TextCarrier) :
    text.length = text.chars.size :=
  rfl

end Mathematics.SemanticTokenization
