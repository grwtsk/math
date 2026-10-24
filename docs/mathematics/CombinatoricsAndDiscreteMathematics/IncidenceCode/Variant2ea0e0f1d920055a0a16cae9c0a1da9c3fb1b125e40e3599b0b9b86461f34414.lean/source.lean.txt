-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteIncidenceCode.Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteIncidenceCode.Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/IncidenceCode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity
import Mathlib.Data.Fintype.Basic

/-!
# Exact Boolean incidence coordinates

An incidence code is a complete family of answers to a declared probe family.
It is a navigation coordinate, not an identity.  A certified code additionally
carries a witness that it lies in the image of the authoritative encoder.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteIncidenceCode.Variant5295074c45eccc7e1426afc192283ee077accb98fc1f609236718a315afc1a2e

namespace Mathematics.Projection

universe u v w

/-- Complete Boolean incidence over a probe family. -/
abbrev IncidenceCode (Probe : Type u) := Probe → Bool

/-- Dense finite-stage materialization of an incidence code. -/
structure FiniteIncidenceCode (width : Nat) where
  bits : BitVec width
  deriving DecidableEq, Repr

/--
An admitted coordinate is in the exact image of the authoritative encoder.
Arbitrary bit patterns used for search do not acquire this witness.
-/
structure CertifiedIncidence
    {Object : Type u} {Probe : Type v}
    (encode : Object → IncidenceCode Probe) where
  object : Object
  code : IncidenceCode Probe
  realized : encode object = code

namespace CertifiedIncidence

variable {Object : Type u} {Probe : Type v}
variable {encode : Object → IncidenceCode Probe}

/-- Every authoritative object has its canonical realized coordinate. -/
def ofObject (object : Object) : CertifiedIncidence encode where
  object := object
  code := encode object
  realized := rfl

end CertifiedIncidence

/--
A probe extension embeds every old probe into the enlarged family.  New
coordinates may refine an old fiber but cannot reinterpret an old probe.
-/
structure ProbeExtension (OldProbe : Type u) (NewProbe : Type v) where
  embed : OldProbe → NewProbe
  embed_injective : Function.Injective embed

namespace ProbeExtension

variable {OldProbe : Type u} {NewProbe : Type v}

def restrict
    (extension : ProbeExtension OldProbe NewProbe)
    (code : IncidenceCode NewProbe) :
    IncidenceCode OldProbe :=
  fun probe ↦ code (extension.embed probe)

end ProbeExtension

/--
An accepted refinement is conservative: forgetting its new probes recovers
the previous authoritative incidence exactly.
-/
structure ConservativeRefinement
    {Object : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    (oldEncode : Object → IncidenceCode OldProbe)
    (newEncode : Object → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe) : Prop where
  forgetsToOld :
    ∀ object, extension.restrict (newEncode object) = oldEncode object

end Mathematics.Projection
