-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.GlobalWindowSystem.Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.GlobalWindowSystem.Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582","mathematical_subject":"Probability.Independence","original_sha256":"8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/WindowCover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.Generator
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Real.Basic

/-!
# Exact finite absolute window covers

The window family is finite and its overlap enumeration is exact.  Weights are
static, nonnegative, supported on their absolute regions, and have a strictly
positive total at every admitted global coordinate.  Hence callers never need
to totalize a missing denominator as zero.  Runtime cache state is intentionally
absent from this denotational structure.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.GlobalWindowSystem.Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582

open scoped BigOperators

universe u v

namespace DAF.Terrain

/-- A finite, exactly enumerated weighted cover of the maximal coordinate set. -/
structure GlobalWindowSystem {State : Type u} (G : KnownMaximalState State) where
  WindowId : Type v
  windowFintype : Fintype WindowId
  windowDecEq : DecidableEq WindowId
  region : WindowId → AbsoluteRegion G
  overlappingWindows : AbsoluteRegion G → Finset WindowId
  overlapping_spec :
    letI := windowDecEq
    letI := G.coordDecEq
    ∀ R i,
      i ∈ overlappingWindows R ↔
        ((region i).coordinates ∩ R.coordinates).Nonempty
  weight : WindowId → G.Coord → Real
  weight_nonnegative : ∀ i c, 0 ≤ weight i c
  weight_support :
    letI := G.coordDecEq
    ∀ i c, c ∉ (region i).coordinates → weight i c = 0
  positive_cover :
    letI := windowFintype
    ∀ c, 0 < ∑ i : WindowId, weight i c

namespace GlobalWindowSystem

variable {State : Type u} {G : KnownMaximalState State}

/-- The exact finite intersecting-window function `κ`. -/
def kappa (W : GlobalWindowSystem G) (R : AbsoluteRegion G) :
    Finset W.WindowId :=
  W.overlappingWindows R

theorem mem_kappa_iff (W : GlobalWindowSystem G)
    (R : AbsoluteRegion G) (i : W.WindowId) :
    letI := W.windowDecEq
    letI := G.coordDecEq
    i ∈ W.kappa R ↔
      ((W.region i).coordinates ∩ R.coordinates).Nonempty := by
  letI := W.windowDecEq
  letI := G.coordDecEq
  exact W.overlapping_spec R i

/-- Absolute window placement is data, so evaluating two query regions commutes. -/
theorem kappa_query_order_independent (W : GlobalWindowSystem G)
    (R S : AbsoluteRegion G) :
    (W.kappa R, W.kappa S) = Prod.swap (W.kappa S, W.kappa R) :=
  rfl

/-- The static denominator of weighted fusion. -/
def denominator (W : GlobalWindowSystem G) (c : G.Coord) : Real := by
  letI : Fintype W.WindowId := W.windowFintype
  exact ∑ i : W.WindowId, W.weight i c

theorem denominator_pos (W : GlobalWindowSystem G) (c : G.Coord) :
    0 < W.denominator c := by
  letI : Fintype W.WindowId := W.windowFintype
  exact W.positive_cover c

theorem denominator_ne_zero (W : GlobalWindowSystem G) (c : G.Coord) :
    W.denominator c ≠ 0 :=
  ne_of_gt (W.denominator_pos c)

theorem weight_eq_zero_outside (W : GlobalWindowSystem G)
    (i : W.WindowId) (c : G.Coord)
    (hc : c ∉ (W.region i).coordinates) :
    W.weight i c = 0 := by
  letI : DecidableEq G.Coord := G.coordDecEq
  exact W.weight_support i c hc

end GlobalWindowSystem

/-- A typed failure to cover one admitted absolute coordinate. -/
structure CoverageObstruction {State : Type u} (G : KnownMaximalState State) where
  coordinate : G.Coord
  windowSystemIdentifier : String
  aggregateWeight : Real
  notPositive : ¬ 0 < aggregateWeight

/-- Assumptions under which a fixed-region, fixed-horizon query has a uniform bound. -/
structure FixedQueryCostBound where
  queryCoordinateBound : Nat
  horizon : Nat
  overlapBound : Nat
  costBound : Nat
  costTheorem : ∀ (queryCoordinates timesteps overlap : Nat),
    queryCoordinates ≤ queryCoordinateBound →
    timesteps ≤ horizon →
    overlap ≤ overlapBound →
    queryCoordinates * timesteps * overlap ≤ costBound

end DAF.Terrain
