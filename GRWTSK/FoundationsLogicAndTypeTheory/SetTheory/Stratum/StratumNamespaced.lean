-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalStratum.Variant7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.OrdinalStratum.Variant7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b","mathematical_subject":"Logic.SetTheory","original_sha256":"7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/OrdinalTally/Stratum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence

/-!
# Ordinal strata

An executable normal form and a registered countable limit are distinct
sources of stratum identity.  Both expose an ordinal target, but equality of
that target does not identify the source record.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalStratum.Variant7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b

namespace Mathematics.StratifiedBoundary.OrdinalTally

inductive OrdinalStratum
    (limits : LimitSemantics)
  | executable
      (code : CanonicalCode limits)
  | countableLimit
      (registered : RegisteredCountableLimit)

namespace OrdinalStratum

def value
    {limits : LimitSemantics} :
    OrdinalStratum limits → Ordinal
  | .executable code => code.value
  | .countableLimit registered =>
      registered.target

def RegisteredIn
    {limits : LimitSemantics}
    (stratum : OrdinalStratum limits)
    (registry :
      CountableLimitRegistry) : Prop :=
  match stratum with
  | .executable _ => True
  | .countableLimit registered =>
      registry.AdmitsTarget registered

def sourceId
    {limits : LimitSemantics} :
    OrdinalStratum limits →
      Option FundamentalSequenceId
  | .executable _ => none
  | .countableLimit registered =>
      some registered.id

end OrdinalStratum

structure StratumBoundaryIndex
    (limits : LimitSemantics) where
  stratum : OrdinalStratum limits

namespace StratumBoundaryIndex

def value
    {limits : LimitSemantics}
    (index : StratumBoundaryIndex limits) :
    Ordinal :=
  Ordinal.omega ^ index.stratum.value

@[simp] theorem value_eq
    {limits : LimitSemantics}
    (index : StratumBoundaryIndex limits) :
    index.value =
      Ordinal.omega ^ index.stratum.value :=
  rfl

end StratumBoundaryIndex

end Mathematics.StratifiedBoundary.OrdinalTally
