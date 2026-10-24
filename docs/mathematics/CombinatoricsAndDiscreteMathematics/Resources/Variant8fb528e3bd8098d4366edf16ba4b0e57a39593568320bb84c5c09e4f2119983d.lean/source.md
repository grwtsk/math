# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Resources.Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6b31029b46832871e2e11944ceef5bc6f9c27f6` · SHA-256 `2fbb9af1a48d625e748b9cad465637716a5f92189fdb95e7bd2ec351bf2d0c63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Coordinate.Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Coordinate.Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Resources.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.BigOperators
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic

/-!
# Resource vectors and frozen comparison policies

A measured resource vector retains coordinates separately. Its partial order is
componentwise, with no default scalar totalization. A declared nonnegative
scalar projection is secondary policy data, not theorem or resource authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Coordinate.Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Resources

open scoped BigOperators

/-- The fourteen independently profiled coordinates required by the resource amendment. -/
inductive Coordinate where
  /-- Work spent constructing proposals. -/
  | proposalWork
  /-- Work spent computing finite observations. -/
  | observationWork
  /-- Number of observation calls. -/
  | observationCalls
  /-- Size of the declared finite observation basis. -/
  | observationDimension
  /-- Number of independent bounded attempts. -/
  | independentAttempts
  /-- Maximum simultaneous work units. -/
  | parallelWidth
  /-- Peak depth in the declared trusted search model. -/
  | peakTrustedDepth
  /-- Work performed by the trusted checker. -/
  | trustedCheckerWork
  /-- Work spent constructing finite certificates. -/
  | certificateConstructionWork
  /-- Certificate size, using the profile's exact byte or symbol unit. -/
  | certificateSize
  /-- Peak memory in the profile's declared unit. -/
  | memoryPeak
  /-- Work spent reconstructing and ranking observation transcripts. -/
  | reconstructionWork
  /-- Number of external-interface calls. -/
  | externalInterfaceCalls
  /-- Separately measured aggregate work under an explicit common-unit model. -/
  | aggregateWork
  deriving DecidableEq, Repr

/-- Exact finite inventory of the fourteen resource coordinate names. -/
instance coordinateFintype : Fintype Coordinate where
  elems := {.proposalWork, .observationWork, .observationCalls, .observationDimension,
    .independentAttempts, .parallelWidth, .peakTrustedDepth, .trustedCheckerWork,
    .certificateConstructionWork, .certificateSize, .memoryPeak, .reconstructionWork,
    .externalInterfaceCalls, .aggregateWork}
  complete := by intro coordinate; cases coordinate <;> simp

/-- A completely measured natural-valued vector. Coordinates need not share units. -/
abbrev Vector (Index : Type*) := Index → ℕ

/-- The canonical fourteen-coordinate measured resource vector. -/
abbrev ResourceVector := Vector Coordinate

/-- Componentwise dominance: each coordinate is compared only with the same coordinate. -/
def ComponentwiseLE {Index : Type*} (first second : Vector Index) : Prop :=
  ∀ coordinate, first coordinate ≤ second coordinate

/-- Strict Pareto improvement includes weak dominance and a strict improvement somewhere. -/
def StrictPareto {Index : Type*} (first second : Vector Index) : Prop :=
  ComponentwiseLE first second ∧ ∃ coordinate, first coordinate < second coordinate

/-- Two vectors can be incomparable; no automatic scalar tie-breaker is inserted. -/
def Incomparable {Index : Type*} (first second : Vector Index) : Prop :=
  ¬ComponentwiseLE first second ∧ ¬ComponentwiseLE second first

/-- Componentwise comparison is reflexive. -/
theorem componentwise_refl {Index : Type*} (vector : Vector Index) :
    ComponentwiseLE vector vector :=
  fun _ ↦ le_rfl

/-- Componentwise comparison is transitive. -/
theorem componentwise_trans {Index : Type*} {first second third : Vector Index}
    (h₁ : ComponentwiseLE first second) (h₂ : ComponentwiseLE second third) :
    ComponentwiseLE first third :=
  fun coordinate ↦ (h₁ coordinate).trans (h₂ coordinate)

/-- Mutual componentwise dominance identifies every measured coordinate. -/
theorem componentwise_antisymm {Index : Type*} {first second : Vector Index}
    (h₁ : ComponentwiseLE first second) (h₂ : ComponentwiseLE second first) : first = second := by
  funext coordinate
  exact le_antisymm (h₁ coordinate) (h₂ coordinate)

/-- The named relation is the ordinary product partial order, not a linear order. -/
theorem componentwise_iff_product_le {Index : Type*} (first second : Vector Index) :
    ComponentwiseLE first second ↔ first ≤ second := Iff.rfl

/-- No vector strictly Pareto-improves itself. -/
theorem strictPareto_irrefl {Index : Type*} (vector : Vector Index) :
    ¬StrictPareto vector vector := by
  rintro ⟨_, coordinate, h⟩
  exact (lt_irrefl _ h)

/-- Strict Pareto improvement composes without losing a strict coordinate. -/
theorem strictPareto_trans {Index : Type*} {first second third : Vector Index}
    (h₁ : StrictPareto first second) (h₂ : StrictPareto second third) :
    StrictPareto first third := by
  obtain ⟨coordinate, hstrict⟩ := h₁.2
  exact ⟨componentwise_trans h₁.1 h₂.1,
    coordinate, hstrict.trans_le (h₂.1 coordinate)⟩

/-- Strict improvement in one direction excludes even weak dominance in the other. -/
theorem strictPareto_not_reverse {Index : Type*} {first second : Vector Index}
    (h : StrictPareto first second) : ¬ComponentwiseLE second first := by
  intro reverse
  obtain ⟨coordinate, hstrict⟩ := h.2
  exact (not_lt_of_ge (reverse coordinate)) hstrict

/-- Incomparability is symmetric. -/
theorem incomparable_symm {Index : Type*} {first second : Vector Index}
    (h : Incomparable first second) : Incomparable second first :=
  ⟨h.2, h.1⟩

/-- Incomparable vectors admit no Pareto improvement in either direction. -/
theorem incomparable_no_pareto {Index : Type*} {first second : Vector Index}
    (h : Incomparable first second) :
    ¬StrictPareto first second ∧ ¬StrictPareto second first :=
  ⟨fun strict ↦ h.1 strict.1, fun strict ↦ h.2 strict.1⟩

/-- Reindexing by a bijection preserves coordinatewise comparison. -/
theorem componentwise_reindex_iff {Index Other : Type*} (rename : Other ≃ Index)
    (first second : Vector Index) :
    ComponentwiseLE (fun coordinate ↦ first (rename coordinate))
      (fun coordinate ↦ second (rename coordinate)) ↔ ComponentwiseLE first second := by
  constructor
  · intro h coordinate
    simpa using h (rename.symm coordinate)
  · intro h coordinate
    exact h (rename coordinate)

/-- Renaming coordinates cannot silently resolve a Pareto tradeoff. -/
theorem incomparable_reindex_iff {Index Other : Type*} (rename : Other ≃ Index)
    (first second : Vector Index) :
    Incomparable (fun coordinate ↦ first (rename coordinate))
      (fun coordinate ↦ second (rename coordinate)) ↔ Incomparable first second := by
  simp only [Incomparable, componentwise_reindex_iff]

/-- Adding the same measured overhead in each coordinate preserves the product order. -/
theorem componentwise_add_common_iff {Index : Type*}
    (first second overhead : Vector Index) :
    ComponentwiseLE (fun coordinate ↦ first coordinate + overhead coordinate)
      (fun coordinate ↦ second coordinate + overhead coordinate) ↔
      ComponentwiseLE first second := by
  simp only [ComponentwiseLE, Nat.add_le_add_iff_right]

/-- A common overhead cannot turn incomparable measured profiles into comparable ones. -/
theorem incomparable_add_common_iff {Index : Type*}
    (first second overhead : Vector Index) :
    Incomparable (fun coordinate ↦ first coordinate + overhead coordinate)
      (fun coordinate ↦ second coordinate + overhead coordinate) ↔
      Incomparable first second := by
  simp only [Incomparable, componentwise_add_common_iff]

/-- A finite candidate is retained unless another measured candidate strictly dominates it. -/
def ParetoMember {Index : Type*} (pool : Finset (Vector Index)) (candidate : Vector Index) : Prop :=
  candidate ∈ pool ∧ ∀ other ∈ pool, ¬StrictPareto other candidate

/-- A two-profile finite frontier retains both incomparable profiles. -/
theorem incomparable_pair_retained {Index : Type*} [DecidableEq (Vector Index)]
    {first second : Vector Index} (h : Incomparable first second) :
    ParetoMember {first, second} first ∧ ParetoMember {first, second} second := by
  constructor
  · refine ⟨by simp, ?_⟩
    intro other member strict
    simp only [Finset.mem_insert, Finset.mem_singleton] at member
    rcases member with rfl | rfl
    · exact strictPareto_irrefl _ strict
    · exact h.2 strict.1
  · refine ⟨by simp, ?_⟩
    intro other member strict
    simp only [Finset.mem_insert, Finset.mem_singleton] at member
    rcases member with rfl | rfl
    · exact h.1 strict.1
    · exact strictPareto_irrefl _ strict

/-- Nonnegative rational coefficients explicitly declare a secondary cost functional. -/
structure ScalarProjection (Index : Type*) where
  /-- Source identity of the reviewed conversion/weight policy. -/
  policyIdentity : String
  /-- Explicit per-coordinate coefficients; no implicit unit conversion is performed. -/
  coefficients : Index → ℚ
  /-- Negative coefficients may not turn greater consumption into a lower resource score. -/
  nonnegative : ∀ coordinate, 0 ≤ coefficients coordinate

/-- A scalar is derived from the retained vector using only declared coefficients. -/
def ScalarProjection.value {Index : Type*} [Fintype Index]
    (projection : ScalarProjection Index) (vector : Vector Index) : ℚ :=
  ∑ coordinate, projection.coefficients coordinate * (vector coordinate : ℚ)

/-- A declared nonnegative projection is monotone under componentwise dominance. -/
theorem ScalarProjection.monotone {Index : Type*} [Fintype Index]
    (projection : ScalarProjection Index) {first second : Vector Index}
    (h : ComponentwiseLE first second) : projection.value first ≤ projection.value second := by
  apply Finset.sum_le_sum
  intro coordinate _
  exact mul_le_mul_of_nonneg_left (by exact_mod_cast h coordinate)
    (projection.nonnegative coordinate)

/-- Immutable comparison policy bound before any results are observed by the runtime. -/
structure FrozenObjective (Index : Type*) where
  /-- Identity of the objective and constraint source, bound externally to the run snapshot. -/
  profileIdentity : String
  /-- Exact unit or cost model of each measured coordinate. -/
  units : Index → String
  /-- The primary scarce coordinate. -/
  primary : Index
  /-- Optional explicitly chosen secondary objective. -/
  secondary : Option Index
  /-- Per-coordinate upper constraints; none means unconstrained, not unmeasured. -/
  bounds : Index → Option ℕ
  /-- Optional declared scalar projection; raw vectors remain available. -/
  scalarization : Option (ScalarProjection Index)

/-- Every declared finite constraint must hold for a measured vector. -/
def FrozenObjective.Admissible {Index : Type*} (objective : FrozenObjective Index)
    (vector : Vector Index) : Prop :=
  ∀ coordinate bound, objective.bounds coordinate = some bound → vector coordinate ≤ bound

/-- A coordinatewise cheaper vector preserves all upper-bound feasibility constraints. -/
theorem FrozenObjective.admissible_of_le {Index : Type*} (objective : FrozenObjective Index)
    {first second : Vector Index} (h : ComponentwiseLE first second)
    (feasible : objective.Admissible second) : objective.Admissible first :=
  fun coordinate bound hbound ↦ (h coordinate).trans (feasible coordinate bound hbound)

/-- Unknown and unsupported observations differ from every measured natural, including zero. -/
inductive Measurement where
  /-- A value was measured in the profile's exact unit. -/
  | measured (value : ℕ)
  /-- This coordinate has not been measured. -/
  | notMeasured
  /-- The implementation does not support this measurement. -/
  | unsupported
  deriving DecidableEq, Repr

/-- A report becomes a measured vector only after every coordinate is actually measured. -/
def FullyMeasured {Index : Type*} (report : Index → Measurement) (vector : Vector Index) : Prop :=
  ∀ coordinate, report coordinate = .measured (vector coordinate)

/-- No all-measured vector can be recovered from a report containing an unknown coordinate. -/
theorem notMeasured_blocks_completion {Index : Type*} (report : Index → Measurement)
    (coordinate : Index) (unknown : report coordinate = .notMeasured) :
    ¬∃ vector, FullyMeasured report vector := by
  rintro ⟨vector, complete⟩
  have measured := complete coordinate
  rw [unknown] at measured
  cases measured

/-- An unsupported coordinate is also not implicitly coerced to measured zero. -/
theorem unsupported_ne_measured_zero : Measurement.unsupported ≠ .measured 0 := by
  decide

/-- The explicit not-measured marker is distinct from a genuine zero observation. -/
theorem notMeasured_ne_measured_zero : Measurement.notMeasured ≠ .measured 0 := by
  decide

/-- Optional wall-clock evidence is separate from deterministic logical resource coordinates. -/
structure ResourceReport where
  /-- Exact measurement/profile identity retained with all coordinates. -/
  profileIdentity : String
  /-- A separate state for each supported, unmeasured, or measured coordinate. -/
  coordinates : Coordinate → Measurement
  /-- Optional observed nanoseconds; absent timing is not zero time or a logical work bound. -/
  wallTimeNanoseconds : Option ℕ

/-- A finite example using one observation coordinate and eight trusted-depth units. -/
def lowDimensionProfile : ResourceVector
  | .observationDimension => 1
  | .peakTrustedDepth => 8
  | _ => 0

/-- A finite example trading four observation coordinates for three trusted-depth units. -/
def lowDepthProfile : ResourceVector
  | .observationDimension => 4
  | .peakTrustedDepth => 3
  | _ => 0

/-- Dimension and depth can trade off: neither example weakly dominates the other. -/
theorem dimension_depth_incomparable : Incomparable lowDimensionProfile lowDepthProfile := by
  constructor
  · intro h
    have contradiction := h .peakTrustedDepth
    norm_num [lowDimensionProfile, lowDepthProfile] at contradiction
  · intro h
    have contradiction := h .observationDimension
    norm_num [lowDimensionProfile, lowDepthProfile] at contradiction

/-- Choosing depth as a scarce objective does not erase the raw-vector incomparability. -/
theorem depth_objective_preserves_tradeoff :
    lowDepthProfile .peakTrustedDepth < lowDimensionProfile .peakTrustedDepth ∧
      Incomparable lowDimensionProfile lowDepthProfile :=
  ⟨by decide, dimension_depth_incomparable⟩

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Resources
```
