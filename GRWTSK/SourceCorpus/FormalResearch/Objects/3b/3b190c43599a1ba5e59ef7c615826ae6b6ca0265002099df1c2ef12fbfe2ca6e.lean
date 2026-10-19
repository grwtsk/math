import FormalResearch.PositiveAtlas.PositiveFourSector

/-!
# Phase-III intervention defect

This module formalizes the intervention/ablation defect interface of Phase III.

A linear intervention pair consists of a baseline map and an intervened map.
Their differential is projected into the distinguished (+,-) sector of a
positive commuting-involution geometry. Pulling the ambient positive form back
through that projected differential produces the intervention-defect geometry.

The resulting defect energy is nonnegative. It is strictly positive exactly
when the projected differential is visible in the ambient positive geometry.
In particular, visibility implies that the projected differential is nonzero
and that the intervention defect is strictly positive.

This remains a geometric/interventional statement. Comparator separation and
causal-comparative conclusions belong to Phase IV.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {X : Type v} [AddCommGroup X] [Module ℝ X]

namespace PositiveForm

/-- The zero vector has zero quadratic energy. -/
theorem zero_self (G : PositiveForm V) :
    G.form (0 : V) 0 = 0 := by
  have h := G.smul_left 0 (0 : V) (0 : V)
  simpa using h

/-- Every visible direction is nonzero. -/
theorem visible_ne_zero
    (G : PositiveForm V) {x : V} (hx : G.Visible x) :
    x ≠ 0 := by
  intro hzero
  unfold Visible at hx
  rw [hzero, G.zero_self] at hx
  exact (lt_irrefl 0) hx

end PositiveForm

/-- A baseline/intervention pair of linear maps into the Phase-III state space. -/
structure LinearIntervention (X : Type v) (V : Type u)
    [AddCommGroup X] [Module ℝ X]
    [AddCommGroup V] [Module ℝ V] where
  baseline : X →ₗ[ℝ] V
  intervened : X →ₗ[ℝ] V

namespace LinearIntervention

/-- The linear intervention differential. -/
def differential (I : LinearIntervention X V) : X →ₗ[ℝ] V :=
  I.intervened - I.baseline

@[simp]
theorem differential_apply
    (I : LinearIntervention X V) (x : X) :
    I.differential x = I.intervened x - I.baseline x := by
  simp [differential]

end LinearIntervention

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- Project the intervention differential into the distinguished (+,-) sector. -/
noncomputable def projectedDifferential
    (I : LinearIntervention X V) : X →ₗ[ℝ] V :=
  C.sectorPM.comp I.differential

@[simp]
theorem projectedDifferential_apply
    (I : LinearIntervention X V) (x : X) :
    C.projectedDifferential I x =
      C.sectorPM (I.intervened x - I.baseline x) := by
  simp [projectedDifferential, LinearIntervention.differential]

/-- The positive geometry seen by the projected intervention differential. -/
noncomputable def interventionDefectGeometry
    (I : LinearIntervention X V) : PositiveForm X :=
  G.pullback (C.projectedDifferential I)

/-- The Phase-III intervention defect energy. -/
noncomputable def interventionDefectEnergy
    (I : LinearIntervention X V) (x : X) : ℝ :=
  (C.interventionDefectGeometry I).form x x

@[simp]
theorem interventionDefectEnergy_eq
    (I : LinearIntervention X V) (x : X) :
    C.interventionDefectEnergy I x =
      G.form (C.projectedDifferential I x)
        (C.projectedDifferential I x) :=
  rfl

/-- The defect energy is exactly the (+,-) sector energy of the intervention
differential. -/
theorem interventionDefectEnergy_eq_interventionEnergy
    (I : LinearIntervention X V) (x : X) :
    C.interventionDefectEnergy I x =
      C.interventionEnergy (I.differential x) :=
  rfl

/-- Intervention defect is always nonnegative. -/
theorem interventionDefectEnergy_nonnegative
    (I : LinearIntervention X V) (x : X) :
    0 ≤ C.interventionDefectEnergy I x :=
  (C.interventionDefectGeometry I).nonnegative x

/-- Defect energy is bounded above by the total positive energy of the raw
intervention differential. -/
theorem interventionDefectEnergy_le_differentialEnergy
    (I : LinearIntervention X V) (x : X) :
    C.interventionDefectEnergy I x ≤
      G.form (I.differential x) (I.differential x) := by
  rw [C.interventionDefectEnergy_eq_interventionEnergy I x]
  exact C.interventionEnergy_le_total (I.differential x)

/-- Strict positivity of the defect is exactly visibility of the projected
intervention differential. -/
theorem interventionDefectEnergy_pos_iff_visible
    (I : LinearIntervention X V) (x : X) :
    0 < C.interventionDefectEnergy I x ↔
      G.Visible (C.projectedDifferential I x) :=
  Iff.rfl

/-- Zero defect is exactly nullity of the projected intervention differential. -/
theorem interventionDefectEnergy_eq_zero_iff
    (I : LinearIntervention X V) (x : X) :
    C.interventionDefectEnergy I x = 0 ↔
      G.IsNull (C.projectedDifferential I x) :=
  Iff.rfl

/-- Visibility of the projected differential implies that it is nonzero. -/
theorem projectedDifferential_ne_zero_of_visible
    (I : LinearIntervention X V) (x : X)
    (hvisible : G.Visible (C.projectedDifferential I x)) :
    C.projectedDifferential I x ≠ 0 :=
  G.visible_ne_zero hvisible

/-- A visible projected intervention differential yields both a nonzero defect
direction and strictly positive Phase-III defect energy. -/
theorem visible_projectedDifferential_gives_positive_defect
    (I : LinearIntervention X V) (x : X)
    (hvisible : G.Visible (C.projectedDifferential I x)) :
    C.projectedDifferential I x ≠ 0 ∧
      0 < C.interventionDefectEnergy I x := by
  refine ⟨C.projectedDifferential_ne_zero_of_visible I x hvisible, ?_⟩
  exact (C.interventionDefectEnergy_pos_iff_visible I x).2 hvisible

/-- Conversely, strictly positive defect energy certifies a visible, hence
nonzero, projected differential. -/
theorem positive_defect_gives_visible_projectedDifferential
    (I : LinearIntervention X V) (x : X)
    (hpos : 0 < C.interventionDefectEnergy I x) :
    G.Visible (C.projectedDifferential I x) ∧
      C.projectedDifferential I x ≠ 0 := by
  have hvisible :=
    (C.interventionDefectEnergy_pos_iff_visible I x).1 hpos
  exact ⟨hvisible, G.visible_ne_zero hvisible⟩

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
