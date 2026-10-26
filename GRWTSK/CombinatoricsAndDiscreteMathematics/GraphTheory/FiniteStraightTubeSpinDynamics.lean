/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Read-only mathematical precedents: OAI.ClassicalON.BlockOrbit,
OAI.HadwigerCounterexample.spinning. No foreign source is copied.
Upstream Mathlib and GRWTSK author/license requirements are preserved. -/
import GRWTSK.Analysis.Geometry.FiniteStraightTubeRigidSpin
import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubePhysicalMoments

set_option autoImplicit false
noncomputable section

/-!
# Genuine finite spinning dynamics of a source-indexed tube family

An ambient real linear isometry spins *every* original straight tube,
its direction, center, and entire indexed shading by the SAME map.
Every weight and source index remains fixed. This constructs actual
dynamical states and an iterated orbit, not a superficial permutation
of labels or an altered curved-Kakeya model.

The normalized Lebesgue first shading moment, ordered physical
pair-intersection second moment and physical shading union volume
are exactly invariant at every finite iteration. Thus a common
spin alone gives no Kakeya overlap or volume improvement.

Rotating individual tubes independently is a DIFFERENT dynamical
system. It can alter relative intersections, and requires new
directional separation, shading-volume and source-law suppliers.
These are not inferred from the specialized OAI spinning lemma.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells

open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily
open MeasureTheory

universe u
variable {d : ℕ} {Index : Type u} [Fintype Index]

namespace Family

/-- A common ambient rigid spin retains each original source index,
its independent weight, and its own full rotated straight shading. -/
def spin (S : Family d Index) (Q : RigidSpin d) : Family d Index where
  tube i := (S.tube i).spin Q
  shading i := Q '' S.shading i
  shading_subtube := by
    intro i x hx
    rw [Tube.spin_region Q (S.tube i)]
    rcases hx with ⟨y, hy, hxy⟩
    exact ⟨y, S.shading_subtube i hy, hxy⟩
  weight := S.weight
  weight_nonneg := S.weight_nonneg

/-- An entire COMMON spin commutes with the true finite shading
union, rather than merely preserving a coarse cell count. -/
theorem shadingUnion_spin (S : Family d Index) (Q : RigidSpin d) :
    (S.spin Q).shadingUnion = Q '' S.shadingUnion := by
  change (⋃ i, Q '' S.shading i) = Q '' (⋃ i, S.shading i)
  ext x
  constructor
  · intro hx
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hx
    obtain ⟨y, hy, rfl⟩ := hi
    exact ⟨y, Set.mem_iUnion.mpr ⟨i, hy⟩, rfl⟩
  · rintro ⟨y, hy, rfl⟩
    obtain ⟨i, hi⟩ := Set.mem_iUnion.mp hy
    exact Set.mem_iUnion.mpr ⟨i, ⟨y, hi, rfl⟩⟩

/-- A shared rigid spin preserves the actual physical union's
Lebesgue volume, including all arbitrary measurable shadings. -/
theorem shadingUnion_volume_spin (S : Family d Index) (Q : RigidSpin d) :
    volume (S.spin Q).shadingUnion = volume S.shadingUnion := by
  rw [S.shadingUnion_spin]
  exact Q.preserves_volume_image S.shadingUnion

theorem shadingUnion_real_volume_spin
    (S : Family d Index) (Q : RigidSpin d) :
    (volume : Measure (Space d)).real (S.spin Q).shadingUnion =
      (volume : Measure (Space d)).real S.shadingUnion := by
  rw [S.shadingUnion_spin]
  exact Q.preserves_real_volume_image S.shadingUnion

/-- Exact source-indexed physical first mass invariance. Different
index weights are preserved; nothing is averaged or deduplicated. -/
theorem physicalFirstMoment_spin
    (S : Family d Index) (Q : RigidSpin d) :
    (S.spin Q).physicalFirstMoment = S.physicalFirstMoment := by
  unfold physicalFirstMoment
  apply Finset.sum_congr rfl
  intro i _
  change S.weight i *
      (volume : Measure (Space d)).real (Q '' S.shading i) =
    S.weight i *
      (volume : Measure (Space d)).real (S.shading i)
  rw [Q.preserves_real_volume_image]

/-- A common injective spin commutes with true physical set
intersection. The same physical point is required for both
shadings, preventing the coarse-cell false-overlap error. -/
theorem spin_image_inter
    (Q : RigidSpin d) (A B : Set (Space d)) :
    (Q '' A) ∩ (Q '' B) = Q '' (A ∩ B) := by
  ext x
  constructor
  · rintro ⟨⟨a, ha, hax⟩, ⟨b, hb, hbx⟩⟩
    have hab : a = b := Q.injective (hax.trans hbx.symm)
    subst b
    exact ⟨a, ⟨ha, hb⟩, hax⟩
  · rintro ⟨a, ⟨ha, hb⟩, hax⟩
    exact ⟨⟨a, ha, hax⟩, ⟨a, hb, hax⟩⟩

/-- Exact preservation of every ORDERED physical intersection
Lebesgue volume, including i=j and coincident tube traces. -/
theorem spin_pair_real_volume
    (S : Family d Index) (Q : RigidSpin d) (i j : Index) :
    (volume : Measure (Space d)).real
      ((S.spin Q).shading i ∩ (S.spin Q).shading j) =
    (volume : Measure (Space d)).real
      (S.shading i ∩ S.shading j) := by
  change (volume : Measure (Space d)).real
      ((Q '' S.shading i) ∩ (Q '' S.shading j)) = _
  rw [spin_image_inter Q, Q.preserves_real_volume_image]

/-- Physical pair overlap moment is an invariant of a common rigid
spin, even when source directions, centers and individual tubes move. -/
theorem physicalSecondMoment_spin
    (S : Family d Index) (Q : RigidSpin d) :
    (S.spin Q).physicalSecondMoment = S.physicalSecondMoment := by
  unfold physicalSecondMoment
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  change S.weight i * S.weight j *
      (volume : Measure (Space d)).real
        ((Q '' S.shading i) ∩ (Q '' S.shading j)) =
    S.weight i * S.weight j *
      (volume : Measure (Space d)).real
        (S.shading i ∩ S.shading j)
  rw [spin_image_inter Q, Q.preserves_real_volume_image]

/-- A genuine finite dynamical orbit, not a different physical tube
model: spin the COMPLETE family by the SAME isometry at each step. -/
def spinOrbit (S : Family d Index) (Q : RigidSpin d) :
    ℕ → Family d Index
  | 0 => S
  | n + 1 => (S.spinOrbit Q n).spin Q

/-- All finite common-spin dynamics preserve the original physical
weighted first mass; no mixing or Kakeya gain follows from iteration. -/
theorem spinOrbit_firstMoment (S : Family d Index) (Q : RigidSpin d)
    (n : ℕ) :
    (S.spinOrbit Q n).physicalFirstMoment = S.physicalFirstMoment := by
  induction n with
  | zero => rfl
  | succ n ih =>
      exact ((S.spinOrbit Q n).physicalFirstMoment_spin Q).trans ih

/-- Exact second-moment invariance through EVERY finite orbit step,
rather than an assumed heuristic "spinning reduces congestion". -/
theorem spinOrbit_secondMoment (S : Family d Index) (Q : RigidSpin d)
    (n : ℕ) :
    (S.spinOrbit Q n).physicalSecondMoment = S.physicalSecondMoment := by
  induction n with
  | zero => rfl
  | succ n ih =>
      exact ((S.spinOrbit Q n).physicalSecondMoment_spin Q).trans ih

theorem spinOrbit_unionVolume (S : Family d Index) (Q : RigidSpin d)
    (n : ℕ) :
    volume (S.spinOrbit Q n).shadingUnion = volume S.shadingUnion := by
  induction n with
  | zero => rfl
  | succ n ih =>
      exact ((S.spinOrbit Q n).shadingUnion_volume_spin Q).trans ih

/-- Source-faithful dynamics certificate. It proves a NO-GAIN result:
a common spatial rigid spin cannot improve the true Kakeya Q or
shading union volume, although it changes tube directions and centers. -/
theorem common_spin_no_congestion_gain
    (S : Family d Index) (Q : RigidSpin d) (n : ℕ) :
    (S.spinOrbit Q n).physicalFirstMoment = S.physicalFirstMoment ∧
    (S.spinOrbit Q n).physicalSecondMoment = S.physicalSecondMoment ∧
    volume (S.spinOrbit Q n).shadingUnion = volume S.shadingUnion :=
  ⟨S.spinOrbit_firstMoment Q n,
    S.spinOrbit_secondMoment Q n,
    S.spinOrbit_unionVolume Q n⟩

end Family
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteStraightTubeShadingCells
