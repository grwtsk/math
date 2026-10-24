# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ded058f00b722c6e14e9eef1a700af7c94842b0b` · SHA-256 `ae2be11f899fd46498b1e1476b5db6625657910018f13899006730f84e4df318`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IntrinsicQuotient.Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IntrinsicQuotient.Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"edb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Operational/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Topology.Sets.Opens

/-!
# Intrinsic quotient neighborhoods

The topology of an intrinsic quotient is the coinduced topology of the
quotient map.  Neighborhoods and their saturated inverse images are therefore
derived objects; this interface has no clustering, distance, or model input.
-/


namespace GRWTSK.Topology.GeneralTopology.IntrinsicQuotient.Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3

namespace Mathematics.Operational

universe u

variable {State : Type u} [TopologicalSpace State]

/-- The intrinsic equivalence quotient of an operational state type. -/
abbrev IntrinsicQuotient (intrinsic : Setoid State) :=
  Quotient intrinsic

/-- The canonical quotient map for the declared intrinsic equivalence. -/
def quotientMap (intrinsic : Setoid State) :
    State → IntrinsicQuotient intrinsic :=
  Quotient.mk intrinsic

/-- The quotient topology, defined exactly by inverse images under `quotientMap`. -/
@[reducible] def quotientTopology (intrinsic : Setoid State) :
    TopologicalSpace (IntrinsicQuotient intrinsic) :=
  TopologicalSpace.coinduced (quotientMap intrinsic) inferInstance

/-- Openness in the intrinsic quotient topology. -/
def IsQuotientOpen
    (intrinsic : Setoid State)
    (subset : Set (IntrinsicQuotient intrinsic)) : Prop :=
  @IsOpen _ (quotientTopology intrinsic) subset

/-- The quotient topology has precisely the advertised inverse-image opens. -/
theorem isQuotientOpen_iff
    (intrinsic : Setoid State)
    (subset : Set (IntrinsicQuotient intrinsic)) :
    IsQuotientOpen intrinsic subset ↔
      IsOpen (quotientMap intrinsic ⁻¹' subset) :=
  Iff.rfl

/-- No other topology with the same inverse-image opens is different. -/
theorem quotientTopology_unique
    (intrinsic : Setoid State)
    (candidate : TopologicalSpace (IntrinsicQuotient intrinsic))
    (characterizes :
      ∀ subset,
        @IsOpen _ candidate subset ↔
          IsOpen (quotientMap intrinsic ⁻¹' subset)) :
    candidate = quotientTopology intrinsic := by
  apply TopologicalSpace.ext
  funext subset
  apply propext
  exact
    (characterizes subset).trans
      (isQuotientOpen_iff intrinsic subset).symm

/-- The neighborhood filter written as its collection of member sets. -/
def quotientNeighborhoods
    (intrinsic : Setoid State)
    (state : State) :
    Set (Set (IntrinsicQuotient intrinsic)) :=
  {neighborhood |
    ∃ openSet,
      IsQuotientOpen intrinsic openSet ∧
      quotientMap intrinsic state ∈ openSet ∧
      openSet ⊆ neighborhood}

/-- The actual neighborhood filter at the intrinsic equivalence class of `state`. -/
def quotientNeighborhoodFilter
    (intrinsic : Setoid State)
    (state : State) :
    Filter (IntrinsicQuotient intrinsic) :=
  @nhds _ (quotientTopology intrinsic) (quotientMap intrinsic state)

/-- The explicit neighborhood collection is exactly the quotient `nhds` filter. -/
theorem mem_quotientNeighborhoodFilter_iff
    (intrinsic : Setoid State)
    (state : State)
    (neighborhood : Set (IntrinsicQuotient intrinsic)) :
    neighborhood ∈ quotientNeighborhoodFilter intrinsic state ↔
      neighborhood ∈ quotientNeighborhoods intrinsic state := by
  change
    neighborhood ∈
        @nhds _ (quotientTopology intrinsic)
          (quotientMap intrinsic state) ↔
      ∃ openSet,
        @IsOpen _ (quotientTopology intrinsic) openSet ∧
        quotientMap intrinsic state ∈ openSet ∧
        openSet ⊆ neighborhood
  constructor
  · intro member
    rcases
      (@mem_nhds_iff
        (IntrinsicQuotient intrinsic)
        (quotientTopology intrinsic)
        (quotientMap intrinsic state)
        neighborhood).mp member with
      ⟨openSet, subset, openSetOpen, classMember⟩
    exact ⟨openSet, openSetOpen, classMember, subset⟩
  · rintro ⟨openSet, openSetOpen, classMember, subset⟩
    exact
      (@mem_nhds_iff
        (IntrinsicQuotient intrinsic)
        (quotientTopology intrinsic)
        (quotientMap intrinsic state)
        neighborhood).mpr
        ⟨openSet, subset, openSetOpen, classMember⟩

/-- Saturated state-space neighborhoods obtained from quotient neighborhoods. -/
def saturatedNeighborhoods
    (intrinsic : Setoid State)
    (state : State) :
    Set (Set State) :=
  {subset |
    ∃ neighborhood,
      neighborhood ∈ quotientNeighborhoods intrinsic state ∧
      subset = quotientMap intrinsic ⁻¹' neighborhood}

/-- A subset is saturated when it contains whole intrinsic equivalence classes. -/
def IsIntrinsicSaturated
  (intrinsic : Setoid State)
  (subset : Set State) : Prop :=
  ∀ ⦃left right⦄,
    intrinsic.r left right →
    left ∈ subset →
    right ∈ subset

omit [TopologicalSpace State] in
/-- Every inverse image of a quotient set is intrinsically saturated. -/
theorem quotient_preimage_isIntrinsicSaturated
    (intrinsic : Setoid State)
    (subset : Set (IntrinsicQuotient intrinsic)) :
    IsIntrinsicSaturated intrinsic
      (quotientMap intrinsic ⁻¹' subset) := by
  intro left right related leftMember
  have classesEqual :
      quotientMap intrinsic left = quotientMap intrinsic right :=
    Quotient.sound related
  simpa [classesEqual] using leftMember

/-- Every member of the saturated-neighborhood family is saturated. -/
theorem saturatedNeighborhood_isIntrinsicSaturated
    (intrinsic : Setoid State)
    (state : State)
    {subset : Set State}
    (member : subset ∈ saturatedNeighborhoods intrinsic state) :
    IsIntrinsicSaturated intrinsic subset := by
  rcases member with ⟨neighborhood, _, rfl⟩
  exact quotient_preimage_isIntrinsicSaturated intrinsic neighborhood

/-- Membership is determined solely by topology and intrinsic equivalence. -/
theorem mem_quotientNeighborhoods_iff
    (intrinsic : Setoid State)
    (state : State)
    (neighborhood : Set (IntrinsicQuotient intrinsic)) :
    neighborhood ∈ quotientNeighborhoods intrinsic state ↔
      ∃ openSet,
        IsOpen (quotientMap intrinsic ⁻¹' openSet) ∧
        quotientMap intrinsic state ∈ openSet ∧
        openSet ⊆ neighborhood :=
  Iff.rfl

end Mathematics.Operational
```
