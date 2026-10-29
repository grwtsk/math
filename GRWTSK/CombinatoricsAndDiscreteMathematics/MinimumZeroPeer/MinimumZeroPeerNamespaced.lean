-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SufficientObservationFamilies.Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SufficientObservationFamilies.Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/dd/dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d--MinimumZeroPeer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds
import Mathlib.Data.Finset.Max
import Mathlib.Data.Finset.Powerset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Monoid.WithTop

/-!
# Minimum sufficient observation size and declared cost

These minima enumerate all subfamilies of an explicit finite inventory and retain
only families proved to separate the specified target. The value `⊤` means that
no such family exists. It does not mean that a search failed to find one.
Costs have a declared additive codomain; none of these quantities changes the
heterogeneous resource vector or supplies theorem publication authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SufficientObservationFamilies.Variantdd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750d

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

variable {Object Test Value Result OtherResult Cost : Type*}
variable [Fintype Object] [DecidableEq Value] [DecidableEq Result]

/-- The exhaustive finite collection of admitted subfamilies sufficient for this target. -/
def sufficientObservationFamilies (obs : Test → Object → Value) (admitted : Finset Test)
    (target : Object → Result) : Finset (Finset Test) :=
  admitted.powerset.filter (fun selected => SeparatesTarget obs selected target)

/-- Membership combines admission with exact target separation. -/
@[simp] theorem mem_sufficientObservationFamilies (obs : Test → Object → Value)
    (admitted selected : Finset Test) (target : Object → Result) :
    selected ∈ sufficientObservationFamilies obs admitted target ↔
      selected ⊆ admitted ∧ SeparatesTarget obs selected target := by
  simp [sufficientObservationFamilies]

/-- Some admitted subfamily suffices exactly when the full admitted family suffices. -/
theorem sufficientObservationFamilies_nonempty_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    (sufficientObservationFamilies obs admitted target).Nonempty ↔
      SeparatesTarget obs admitted target := by
  constructor
  · rintro ⟨selected, member⟩
    obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp member
    exact separates.mono subset
  · intro separates
    exact ⟨admitted, (mem_sufficientObservationFamilies obs _ _ target).mpr
      ⟨Finset.Subset.refl _, separates⟩⟩

/-- Exhaustive emptiness means no admitted subfamily can determine the target. -/
theorem sufficientObservationFamilies_eq_empty_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    sufficientObservationFamilies obs admitted target = ∅ ↔
      ¬ SeparatesTarget obs admitted target := by
  rw [← Finset.not_nonempty_iff_eq_empty, sufficientObservationFamilies_nonempty_iff]

/-- The least number of sufficient admitted tests, or infinity if there is no sufficient family. -/
def TargetSeparationRank (obs : Test → Object → Value) (admitted : Finset Test)
    (target : Object → Result) : WithTop ℕ :=
  ((sufficientObservationFamilies obs admitted target).image Finset.card).min

/-- The minimum total declared additive cost of a sufficient subfamily, or infinity. -/
def TargetSeparationCost [LinearOrder Cost] [AddCommMonoid Cost]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (cost : Test → Cost) : WithTop Cost :=
  ((sufficientObservationFamilies obs admitted target).image
    (fun selected => ∑ test ∈ selected, cost test)).min

/-- Counting observations is the special case of assigning unit natural-number cost. -/
theorem targetSeparationCost_unit_eq_rank (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationCost obs admitted target (fun _ => (1 : ℕ)) =
      TargetSeparationRank obs admitted target := by
  simp [TargetSeparationCost, TargetSeparationRank]

/-- Every sufficient admitted family gives a rank upper bound. -/
theorem targetSeparationRank_le_of_sufficient {obs : Test → Object → Value}
    {admitted selected : Finset Test} {target : Object → Result}
    (subset : selected ⊆ admitted) (separates : SeparatesTarget obs selected target) :
    TargetSeparationRank obs admitted target ≤ (selected.card : WithTop ℕ) :=
  Finset.min_le (Finset.mem_image.mpr ⟨selected,
    (mem_sufficientObservationFamilies obs _ _ target).mpr ⟨subset, separates⟩, rfl⟩)

/-- A lower bound for every sufficient family is a lower bound for the exact minimum. -/
theorem le_targetSeparationRank {obs : Test → Object → Value} {admitted : Finset Test}
    {target : Object → Result} {lower : WithTop ℕ}
    (bound : ∀ selected ⊆ admitted, SeparatesTarget obs selected target →
      lower ≤ (selected.card : WithTop ℕ)) :
    lower ≤ TargetSeparationRank obs admitted target := by
  apply Finset.le_min
  intro size member
  obtain ⟨selected, hselected, rfl⟩ := Finset.mem_image.mp member
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp hselected
  exact bound selected subset separates

/-- Every sufficient admitted family bounds the minimum declared cost. -/
theorem targetSeparationCost_le_of_sufficient [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {admitted selected : Finset Test} {target : Object → Result}
    (cost : Test → Cost) (subset : selected ⊆ admitted)
    (separates : SeparatesTarget obs selected target) :
    TargetSeparationCost obs admitted target cost ≤
      (↑(∑ test ∈ selected, cost test) : WithTop Cost) :=
  Finset.min_le (Finset.mem_image.mpr ⟨selected,
    (mem_sufficientObservationFamilies obs _ _ target).mpr ⟨subset, separates⟩, rfl⟩)

/-- A bound valid for all sufficient families bounds the exact cost minimum. -/
theorem le_targetSeparationCost [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {admitted : Finset Test} {target : Object → Result}
    (cost : Test → Cost) {lower : WithTop Cost}
    (bound : ∀ selected ⊆ admitted, SeparatesTarget obs selected target →
      lower ≤ (↑(∑ test ∈ selected, cost test) : WithTop Cost)) :
    lower ≤ TargetSeparationCost obs admitted target cost := by
  apply Finset.le_min
  intro value member
  obtain ⟨selected, hselected, rfl⟩ := Finset.mem_image.mp member
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp hselected
  exact bound selected subset separates

/-- A finite rank is attained by an actual sufficient admitted family. -/
theorem targetSeparationRank_attained {obs : Test → Object → Value}
    {admitted : Finset Test} {target : Object → Result} {size : ℕ}
    (finite : TargetSeparationRank obs admitted target = (size : WithTop ℕ)) :
    ∃ selected ⊆ admitted, SeparatesTarget obs selected target ∧ selected.card = size := by
  obtain ⟨selected, member, cardinality⟩ := Finset.mem_image.mp (Finset.mem_of_min finite)
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp member
  exact ⟨selected, subset, separates, cardinality⟩

/-- A finite declared-cost minimum is attained by a sufficient admitted family. -/
theorem targetSeparationCost_attained [LinearOrder Cost] [AddCommMonoid Cost]
    {obs : Test → Object → Value} {admitted : Finset Test} {target : Object → Result}
    {cost : Test → Cost} {value : Cost}
    (finite : TargetSeparationCost obs admitted target cost = (value : WithTop Cost)) :
    ∃ selected ⊆ admitted, SeparatesTarget obs selected target ∧
      ∑ test ∈ selected, cost test = value := by
  obtain ⟨selected, member, total⟩ := Finset.mem_image.mp (Finset.mem_of_min finite)
  obtain ⟨subset, separates⟩ := (mem_sufficientObservationFamilies obs _ _ target).mp member
  exact ⟨selected, subset, separates, total⟩

/-- Infinity denotes exact insufficiency of the full declared observation language. -/
theorem targetSeparationRank_eq_top_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔ ¬ SeparatesTarget obs admitted target := by
  simp [TargetSeparationRank, sufficientObservationFamilies_eq_empty_iff]

/-- Cost infinity has the same semantic obstruction regardless of the declared cost values. -/
theorem targetSeparationCost_eq_top_iff [LinearOrder Cost] [AddCommMonoid Cost]
    (obs : Test → Object → Value) (admitted : Finset Test) (target : Object → Result)
    (cost : Test → Cost) :
    TargetSeparationCost obs admitted target cost = ⊤ ↔ ¬ SeparatesTarget obs admitted target := by
  simp [TargetSeparationCost, sufficientObservationFamilies_eq_empty_iff]

/-- Infinite rank has a target-distinct pair with the same complete observation tuple. -/
theorem targetSeparationRank_eq_top_iff_collision (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔
      ∃ x y, target x ≠ target y ∧ observationCarrier obs admitted x =
        observationCarrier obs admitted y := by
  classical
  rw [targetSeparationRank_eq_top_iff]
  constructor
  · intro insufficient
    change ¬ (∀ x y, target x ≠ target y → ∃ test ∈ admitted, obs test x ≠ obs test y)
      at insufficient
    push Not at insufficient
    obtain ⟨x, y, different, equal⟩ := insufficient
    exact ⟨x, y, different, (observationCarrier_eq_iff obs admitted x y).mpr equal⟩
  · rintro ⟨x, y, different, equal⟩ separates
    exact different ((separates_iff_descends obs admitted target).mp separates equal)

/-- Infinite rank is equivalent to the existing proof-bearing descent obstruction. -/
theorem targetSeparationRank_eq_top_iff_obstructed (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔
      Nonempty (DescentObstruction (observationCarrier obs admitted) target) := by
  rw [targetSeparationRank_eq_top_iff_collision]
  constructor
  · rintro ⟨x, y, different, equal⟩
    exact ⟨⟨x, y, equal, different⟩⟩
  · rintro ⟨obstruction⟩
    exact ⟨obstruction.left, obstruction.right, obstruction.targetSeparated,
      obstruction.sameCarrier⟩

/-- Rank zero means precisely that the target is constant on its domain, including the empty domain. -/
theorem targetSeparationRank_eq_zero_iff (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = 0 ↔ ∀ x y, target x = target y := by
  constructor
  · intro zero
    obtain ⟨selected, _, separates, cardinality⟩ := targetSeparationRank_attained zero
    have empty : selected = ∅ := Finset.card_eq_zero.mp cardinality
    rw [empty] at separates
    exact (separates_empty_iff obs target).mp separates
  · intro constant
    have zeroMember : 0 ∈
        (sufficientObservationFamilies obs admitted target).image Finset.card :=
      Finset.mem_image.mpr ⟨∅,
        (mem_sufficientObservationFamilies obs admitted ∅ target).mpr
          ⟨Finset.empty_subset admitted, (separates_empty_iff obs target).mpr constant⟩,
        Finset.card_empty⟩
    obtain ⟨size, minimum⟩ := Finset.min_of_mem zeroMember
    have zeroSize : size = 0 :=
      Nat.eq_zero_of_le_zero (Finset.min_le_of_eq zeroMember minimum)
    simpa only [TargetSeparationRank, zeroSize, WithTop.coe_zero] using minimum


end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
