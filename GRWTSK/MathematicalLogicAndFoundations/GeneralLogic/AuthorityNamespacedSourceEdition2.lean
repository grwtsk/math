-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ResponseAuthority.Variante2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ResponseAuthority.Variante2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb","mathematical_subject":"Logic.Foundations","original_sha256":"e2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Universe/Authority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Id
import Surface.ContinuousAssurance.Authority

/-!
# DAF universe authority vocabulary

Repository authority remains the five-way Continuous Assurance classification.
Response authority is a separate, finer vocabulary used only for located
language clauses.  The two are not silently coerced into one another.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ResponseAuthority.Variante2c31e074887ebcec35140a77531d0cd2c71c2d4efb622bfcc461802bc8674fb

namespace DAF.Universe

abbrev SourceAuthority := Surface.ContinuousAssurance.AuthorityClass

/-- Authority that a response clause may request from its evidence. -/
inductive ResponseAuthority
  | illustrative
  | proposal
  | imported
  | executable
  | conditional
  | kernelChecked
  deriving DecidableEq, Repr, Inhabited

/-- A conservative numerical rank used by the fail-closed response checker. -/
def ResponseAuthority.rank : ResponseAuthority → Nat
  | .illustrative => 0
  | .proposal => 1
  | .imported => 2
  | .executable => 3
  | .conditional => 4
  | .kernelChecked => 5

/-- Evidence may satisfy only an equal-or-weaker authority request. -/
def ResponseAuthority.Supports
    (available requested : ResponseAuthority) : Prop :=
  requested.rank ≤ available.rank

instance (available requested : ResponseAuthority) :
    Decidable (available.Supports requested) :=
  inferInstanceAs (Decidable (requested.rank ≤ available.rank))

theorem ResponseAuthority.supports_refl (authority : ResponseAuthority) :
    authority.Supports authority := by
  simp [Supports]

theorem ResponseAuthority.supports_trans
    {low middle high : ResponseAuthority}
    (hm : high.Supports middle)
    (hl : middle.Supports low) :
    high.Supports low :=
  Nat.le_trans hl hm

/-- Status values deliberately distinguish absence from non-establishment. -/
inductive EstablishmentStatus
  | unknown
  | notApplicable
  | notEstablished
  | established
  deriving DecidableEq, Repr, Inhabited

end DAF.Universe
