/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and original GRWTSK source retain upstream license/credit. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

set_option autoImplicit false
noncomputable section

/-!
# Source-identified Euclidean straight tubes to finite shading cells

Every index carries an actual straight Euclidean cylinder of ambient
dimension d, its own subset shading, and its own nonnegative weight.
Repeated equal tubes are NOT deduplicated; their indices and markings
may be different.

For any finite family of geometric cell regions, incidence is defined
by actual pointwise intersection of the *shading* and the cell. This
constructs the existing finite indexed-counting interface without a
supplied arbitrary incidence bit. Its weighted Fubini identity and
Cauchy second-overlap inequality are then consumed unchanged.

Crucial distinction: a cell that merely intersects a tiny shading
need not have positive shaded Lebesgue volume. A lower bound for
Euclidean union volume requires a separate grid/volume-filling
calibration plus genuine directional/clustering assumptions.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteIndexedShadingVolume

universe u v

variable {d : ℕ} {Index : Type u} {Cell : Type v}
variable [Fintype Index] [Fintype Cell]

/-- A genuinely geometric collection of straight tubes. The separate
indexed shadings preserve multiplicity when different source indices
have identical line segments or thickened regions. -/
structure Family (d : ℕ) (Index : Type u) [Fintype Index] where
  tube : Index → Tube d
  shading : Index → Set (Space d)
  shading_subtube : ∀ i, shading i ⊆ (tube i).region
  weight : Index → ℝ
  weight_nonneg : ∀ i, 0 ≤ weight i

namespace Family

variable (S : Family d Index)

/-- All physically selected shading points, before discretization. -/
def shadingUnion : Set (Space d) := ⋃ i, S.shading i

/-- The union of the original straight cylindrical regions. -/
def tubeUnion : Set (Space d) := ⋃ i, (S.tube i).region

theorem shadingUnion_subtubeUnion :
    S.shadingUnion ⊆ S.tubeUnion := by
  intro x hx
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx
  exact Set.mem_iUnion.mpr ⟨i, S.shading_subtube i hi⟩

/-- An exact Lebesgue-volume comparison in the correct ambient
dimension. It is an upper bound for a shading union, not the
nontrivial *lower* union estimate sought by Kakeya theory. -/
theorem shadingUnion_volume_le_tubeUnion :
    MeasureTheory.volume S.shadingUnion ≤
      MeasureTheory.volume S.tubeUnion :=
  MeasureTheory.measure_mono S.shadingUnion_subtubeUnion

theorem shading_volume_le_tube_volume (i : Index) :
    MeasureTheory.volume (S.shading i) ≤ (S.tube i).lebesgueVolume :=
  MeasureTheory.measure_mono (S.shading_subtube i)

/-- An index may be marked in a cell only if a point of its actual
shading is in that cell. The marking is completely determined from
geometry; it does not pre-assume a Kakeya incidence inequality. -/
def geometricMark (cells : Cell → Set (Space d))
    (i : Index) (c : Cell) : Bool :=
  decide (∃ x : Space d, x ∈ S.shading i ∧ x ∈ cells c)

theorem geometricMark_eq_true_iff
    (cells : Cell → Set (Space d)) (i : Index) (c : Cell) :
    S.geometricMark cells i c = true ↔
      ∃ x : Space d, x ∈ S.shading i ∧ x ∈ cells c := by
  simp [geometricMark]

/-- Every marked cell does intersect the *original straight tube*,
not merely the medium's low-energy numerical surrogate. -/
theorem geometricMark_sound
    (cells : Cell → Set (Space d))
    (i : Index) (c : Cell)
    (h : S.geometricMark cells i c = true) :
    ∃ x : Space d,
      x ∈ (S.tube i).region ∧ x ∈ cells c := by
  obtain ⟨x, hx, hc⟩ :=
    (S.geometricMark_eq_true_iff cells i c).mp h
  exact ⟨x, S.shading_subtube i hx, hc⟩

/-- Completeness in the *same geometric* intersection convention.
Repeated indices remain repeated. -/
theorem geometricMark_complete
    (cells : Cell → Set (Space d)) (i : Index) (c : Cell)
    (x : Space d) (hs : x ∈ S.shading i) (hc : x ∈ cells c) :
    S.geometricMark cells i c = true :=
  (S.geometricMark_eq_true_iff cells i c).mpr ⟨x, hs, hc⟩

/-- Canonical adapter to the existing weighted finite incidence and
second-moment API. No fake independent boolean incidence source. -/
def asIndexedCounting (cells : Cell → Set (Space d)) :
    FiniteIndexedShadingVolume.Family Index Cell where
  marked := S.geometricMark cells
  weight := S.weight
  weight_nonneg := S.weight_nonneg

/-- Exact source-indexed weighted incidence mass equals the sum of
physical-cell multiplicities, without losing repeated tube indices. -/
theorem geometric_weighted_fubini
    (cells : Cell → Set (Space d)) :
    (S.asIndexedCounting cells).totalIncidence =
      ∑ c : Cell, (S.asIndexedCounting cells).multiplicity c :=
  (S.asIndexedCounting cells).totalIncidence_eq_sum_multiplicity

/-- The finite visited-cell Cauchy estimate, with an explicit set
of covered cell IDs and their true geometric shading-derived
multiplicity. A union-volume estimate needs its own cell-volume
calibration; no unproved lower bound is inferred. -/
theorem geometric_visible_count_cauchy
    (cells : Cell → Set (Space d)) (covered : Finset Cell) :
    (∑ c ∈ covered, (S.asIndexedCounting cells).multiplicity c) ^ 2 ≤
      (covered.card : ℝ) *
        (S.asIndexedCounting cells).overlapSecondMoment covered :=
  (S.asIndexedCounting cells).finite_visible_count_cauchy covered

/-- Exact directional separation predicate for this selected
family, with scale σ carried explicitly. This predicate is
not proved for arbitrary families and is not manufactured from
a potential, a finite image or a source-index count. -/
def DirectionsSeparated (S : Family d Index) (σ : ℝ) : Prop :=
  ∀ i j : Index, i ≠ j →
    σ ≤ dist ((S.tube i).direction : Space d)
      ((S.tube j).direction : Space d)

end Family

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
