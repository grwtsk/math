-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutDefectCapacity.Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeCutDefectCapacity.Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/PositiveCapacity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.OperatorOrder

/-!
# Positive finite-prime defect capacity

This is the authoritative abstract potential.  Hardy and Sonin objects may
realize it only through later certificates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutDefectCapacity.Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b

namespace Mathematics.SemiLocalDefect

universe uPrime

structure PrimeCutDefectCapacity
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  defect : Finset Prime → model.Operator
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (defect cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (defect cut)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (defect cut) model.identity
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (defect source) (defect target)
  digest : CapacityDigest

def PrimeCutDefectCapacity.baseline
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    model.Operator :=
  capacity.defect ∅

def PrimeCutDefectCapacity.reducedDefect
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime) :
    model.Operator :=
  capacity.defect cut - capacity.baseline

def PrimeCutDefectCapacity.increment
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  capacity.defect (insert prime cut) -
    capacity.defect cut

theorem reducedDefect_empty
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    capacity.reducedDefect ∅ = 0 := by
  simp [PrimeCutDefectCapacity.reducedDefect,
    PrimeCutDefectCapacity.baseline]

theorem reducedDefect_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime) :
    model.Nonnegative
      (capacity.reducedDefect cut) := by
  exact capacity.monotone (Finset.empty_subset cut)

theorem increment_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.Nonnegative
      (capacity.increment cut prime) :=
  capacity.monotone
    (Finset.subset_insert prime cut)

theorem increment_selfAdjoint
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.SelfAdjoint
      (capacity.increment cut prime) :=
  model.sub_selfAdjoint
    (capacity.selfAdjoint _)
    (capacity.selfAdjoint _)

end Mathematics.SemiLocalDefect
