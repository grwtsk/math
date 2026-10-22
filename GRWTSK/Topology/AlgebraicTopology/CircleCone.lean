/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI Codex.
Imported Mathlib results retain their original credits and licenses. -/
import Mathlib.Analysis.Complex.Circle
import Mathlib.Topology.Homeomorph.Quotient
import Mathlib.Topology.ContinuousMap.Basic
import Mathlib.Topology.UnitInterval

/-!
# The cone on the circle is the closed disk

The cone convention collapses the radius-zero end of `Circle × [0,1]`.
The radial map is a quotient map from a compact space to a Hausdorff space.
Its kernel is exactly the cone relation, so the induced map is a homeomorphism.
The radius-one boundary is preserved pointwise and the apex maps to zero.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.CircleCone

open Set

/-- The cone relation identifies exactly the points of the radius-zero end. -/
def coneSetoid (X : Type*) : Setoid (X × unitInterval) where
  r p q := p = q ∨ ((p.2 : ℝ) = 0 ∧ (q.2 : ℝ) = 0)
  iseqv := {
    refl := fun _ => Or.inl rfl
    symm := by
      intro p q h
      exact h.elim (fun h => Or.inl h.symm) (fun h => Or.inr h.symm)
    trans := by
      intro p q r hpq hqr
      rcases hpq with rfl | hpq
      · exact hqr
      rcases hqr with rfl | hqr
      · exact Or.inr hpq
      · exact Or.inr ⟨hpq.1, hqr.2⟩ }

/-- The cone on a type, with the quotient topology when the type is topological. -/
abbrev Cone (X : Type*) := Quotient (coneSetoid X)

/-- The closed complex unit disk. -/
abbrev ClosedDisk := Metric.closedBall (0 : ℂ) 1

/-- A point of the cone represented by its direction and radius. -/
def coneMk {X : Type*} (x : X) (r : unitInterval) : Cone X :=
  Quotient.mk (coneSetoid X) (x, r)

/-- The radius-one copy of the circle in its cone. -/
def boundary (z : Circle) : Cone Circle := coneMk z 1

/-- The collapsed radius-zero end of the cone. -/
def apex : Cone Circle := coneMk 1 0

theorem coneMk_zero (z : Circle) : coneMk z 0 = apex := by
  unfold coneMk apex
  apply Quotient.sound
  exact Or.inr ⟨rfl, rfl⟩

/-- The continuous radial map before passing to the cone quotient. -/
def radialMap (p : Circle × unitInterval) : ClosedDisk :=
  ⟨(p.2 : ℝ) • (p.1 : ℂ), by
    rw [mem_closedBall_zero_iff, norm_smul, Real.norm_eq_abs,
      abs_of_nonneg p.2.2.1, Circle.norm_coe, mul_one]
    exact p.2.2.2⟩

@[simp] theorem norm_radialMap (p : Circle × unitInterval) :
    ‖(radialMap p : ℂ)‖ = (p.2 : ℝ) := by
  simp only [radialMap, norm_smul, Real.norm_eq_abs,
    abs_of_nonneg p.2.2.1, Circle.norm_coe, mul_one]

theorem continuous_radialMap : Continuous radialMap := by
  apply Continuous.subtype_mk
  exact (continuous_subtype_val.comp continuous_snd).smul
    (continuous_subtype_val.comp continuous_fst)

/-- The radial map identifies precisely the cone relation, including its apex. -/
theorem coneSetoid_iff_radialMap_eq (p q : Circle × unitInterval) :
    coneSetoid Circle p q ↔ radialMap p = radialMap q := by
  constructor
  · intro h
    rcases h with rfl | h
    · rfl
    apply Subtype.ext
    simp only [radialMap, h.1, h.2, zero_smul]
  · intro h
    have hr : (p.2 : ℝ) = (q.2 : ℝ) := by
      simpa only [norm_radialMap] using congrArg (fun x : ClosedDisk => ‖(x : ℂ)‖) h
    by_cases hp : (p.2 : ℝ) = 0
    · exact Or.inr ⟨hp, hr.symm.trans hp⟩
    · apply Or.inl
      apply Prod.ext
      · apply Circle.coe_injective
        have he : (p.2 : ℝ) • (p.1 : ℂ) = (p.2 : ℝ) • (q.1 : ℂ) := by
          simpa only [radialMap, ← hr] using congrArg Subtype.val h
        have hi := congrArg (fun x : ℂ => (p.2 : ℝ)⁻¹ • x) he
        simpa only [inv_smul_smul₀ hp] using hi
      · exact Subtype.ext hr

/-- Every disk point has a radial representative; zero uses direction one. -/
theorem radialMap_surjective : Function.Surjective radialMap := by
  intro x
  by_cases hx : (x : ℂ) = 0
  · refine ⟨(1, 0), ?_⟩
    apply Subtype.ext
    change (0 : ℝ) • ((1 : Circle) : ℂ) = (x : ℂ)
    simpa only [zero_smul] using hx.symm
  · have hn : ‖(x : ℂ)‖ ≠ 0 := norm_ne_zero_iff.mpr hx
    let z : Circle := ⟨‖(x : ℂ)‖⁻¹ • (x : ℂ), by
      apply mem_sphere_zero_iff_norm.mpr
      rw [norm_smul, norm_inv, norm_norm,
        inv_mul_cancel₀ hn]⟩
    let r : unitInterval := ⟨‖(x : ℂ)‖,
      norm_nonneg _, mem_closedBall_zero_iff.mp x.2⟩
    refine ⟨(z, r), ?_⟩
    apply Subtype.ext
    exact smul_inv_smul₀ hn (x : ℂ)

/-- The cone-to-disk homeomorphism induced by the radial map. -/
def homeomorph : Cone Circle ≃ₜ ClosedDisk := by
  let f : C(Circle × unitInterval, ClosedDisk) := ⟨radialMap, continuous_radialMap⟩
  have hf : _root_.Topology.IsQuotientMap f :=
    _root_.Topology.IsQuotientMap.of_surjective_continuous
      radialMap_surjective continuous_radialMap
  exact (Homeomorph.Quotient.congrRight coneSetoid_iff_radialMap_eq).trans
    hf.homeomorph

@[simp] theorem homeomorph_coneMk (z : Circle) (r : unitInterval) :
    (homeomorph (coneMk z r) : ℂ) = (r : ℝ) • (z : ℂ) := by
  change (radialMap (z, r) : ℂ) = (r : ℝ) • (z : ℂ)
  rfl

/-- The homeomorphism agrees pointwise with the circle's standard disk inclusion. -/
@[simp] theorem homeomorph_boundary (z : Circle) :
    (homeomorph (boundary z) : ℂ) = (z : ℂ) := by
  rw [boundary, homeomorph_coneMk]
  change (1 : ℝ) • (z : ℂ) = (z : ℂ)
  exact one_smul _ _

/-- The collapsed end maps to the center of the disk. -/
@[simp] theorem homeomorph_apex : (homeomorph apex : ℂ) = 0 := by
  rw [apex, homeomorph_coneMk]
  change (0 : ℝ) • ((1 : Circle) : ℂ) = 0
  exact zero_smul _ _

end GRWTSK.Topology.AlgebraicTopology.CircleCone
