# Complete source: GRWTSK.Topology.GeneralTopology.Topology.Variantedb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8aaf998fec920645c7010dc1f127ab30499baab` · SHA-256 `edb7d9927434b12b9856a6dd7d378165f07dc43b7e2664166dd28f445e06a1f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Topology.Sets.Opens

/-!
# Intrinsic quotient neighborhoods

The topology of an intrinsic quotient is the coinduced topology of the
quotient map.  Neighborhoods and their saturated inverse images are therefore
derived objects; this interface has no clustering, distance, or model input.
-/

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
