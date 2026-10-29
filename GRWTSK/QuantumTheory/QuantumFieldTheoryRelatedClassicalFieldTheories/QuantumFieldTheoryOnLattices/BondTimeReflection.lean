/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FinitePeriodicLattice
import Mathlib.Tactic.Ring

/-!
# Bond time reflection of the actual periodic link configuration

Time is coordinate zero. Vertex reflection is `x_0 -> 1-x_0`, with the
three spatial coordinates fixed. A forward temporal link is reversed: its
reflected positive-link base is `theta(x)-e_0`, and its group value is
inverted. Spatial links are pulled back to `theta(x)` without inversion.

The algebra is valid for every natural period L. The concrete Wilson
consumer specializes to L=2*T with T>=2. The link permutation, configuration
involution and homeomorphism are proved here, not supplied as assumptions.
The two crossing temporal layers are retained in the full link inventory.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false

namespace GRWTSK.Geometry.GaugeTheory.BondTimeReflection

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice

/-- Reflection in the bond plane between time representatives zero and one. -/
def reflectVertex {L : ℕ} (x : Vertex L) : Vertex L :=
  fun ρ => if ρ = 0 then 1 - x ρ else x ρ

/-- Base of the reflected positive temporal link. Its time is `-x_0`. -/
def temporalBack {L : ℕ} (x : Vertex L) : Vertex L :=
  fun ρ => if ρ = 0 then -x ρ else x ρ

@[simp] theorem reflectVertex_time {L : ℕ} (x : Vertex L) :
    reflectVertex x 0 = 1 - x 0 := by simp [reflectVertex]

@[simp] theorem temporalBack_time {L : ℕ} (x : Vertex L) :
    temporalBack x 0 = -x 0 := by simp [temporalBack]

/-- The temporal base is literally `theta(x)-e_0`. -/
theorem temporalBack_eq_reflectVertex_sub_unit {L : ℕ} (x : Vertex L) :
    temporalBack x = fun ρ => reflectVertex x ρ - if ρ = 0 then 1 else 0 := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [temporalBack, reflectVertex, hρ] <;> ring

@[simp] theorem reflectVertex_involutive {L : ℕ} :
    Function.Involutive (reflectVertex : Vertex L → Vertex L) := by
  intro x
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [reflectVertex, hρ] <;> ring

@[simp] theorem temporalBack_involutive {L : ℕ} :
    Function.Involutive (temporalBack : Vertex L → Vertex L) := by
  intro x
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [temporalBack, hρ]

/-- The reflected target of a forward temporal link is its reflected base. -/
theorem reflectVertex_shift_time {L : ℕ} (x : Vertex L) :
    reflectVertex (shift x 0) = temporalBack x := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [reflectVertex, temporalBack, shift, hρ] <;> ring

/-- Reversing the reflected positive temporal link restores theta(x). -/
theorem shift_temporalBack_time {L : ℕ} (x : Vertex L) :
    shift (temporalBack x) 0 = reflectVertex x := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [reflectVertex, temporalBack, shift, hρ] <;> ring

/-- Spatial translation commutes with vertex reflection. -/
theorem reflectVertex_shift_space {L : ℕ} (x : Vertex L) (μ : Fin 4)
    (hμ : μ ≠ 0) : reflectVertex (shift x μ) = shift (reflectVertex x) μ := by
  funext ρ
  by_cases hρ : ρ = 0
  · subst ρ
    simp [reflectVertex, shift, Ne.symm hμ]
  · simp [reflectVertex, shift, hρ]

/-- Spatial translation also commutes with the reflected temporal base. -/
theorem temporalBack_shift_space {L : ℕ} (x : Vertex L) (μ : Fin 4)
    (hμ : μ ≠ 0) : temporalBack (shift x μ) = shift (temporalBack x) μ := by
  funext ρ
  by_cases hρ : ρ = 0
  · subst ρ
    simp [temporalBack, shift, Ne.symm hμ]
  · simp [temporalBack, shift, hρ]

def reflectVertexEquiv (L : ℕ) : Vertex L ≃ Vertex L where
  toFun := reflectVertex
  invFun := reflectVertex
  left_inv := reflectVertex_involutive
  right_inv := reflectVertex_involutive

def temporalBackEquiv (L : ℕ) : Vertex L ≃ Vertex L where
  toFun := temporalBack
  invFun := temporalBack
  left_inv := temporalBack_involutive
  right_inv := temporalBack_involutive

/-- The reflected positive-link label. Its direction is unchanged; only a
temporal link requires the backward reflected base. -/
def reflectLink {L : ℕ} (e : Link L) : Link L :=
  (if e.2 = 0 then temporalBack e.1 else reflectVertex e.1, e.2)

@[simp] theorem reflectLink_direction {L : ℕ} (e : Link L) :
    (reflectLink e).2 = e.2 := rfl

@[simp] theorem reflectLink_temporal {L : ℕ} (x : Vertex L) :
    reflectLink (x, 0) = (temporalBack x, 0) := by simp [reflectLink]

theorem reflectLink_spatial {L : ℕ} (x : Vertex L) (μ : Fin 4) (hμ : μ ≠ 0) :
    reflectLink (x, μ) = (reflectVertex x, μ) := by simp [reflectLink, hμ]

@[simp] theorem reflectLink_involutive {L : ℕ} :
    Function.Involutive (reflectLink : Link L → Link L) := by
  intro e
  rcases e with ⟨x, μ⟩
  by_cases hμ : μ = 0
  · subst μ
    simp only [reflectLink, if_pos rfl, temporalBack_involutive]
  · simp only [reflectLink, if_neg hμ, reflectVertex_involutive]

/-- Actual bijection of the entire positive-link inventory. -/
def reflectLinkEquiv (L : ℕ) : Link L ≃ Link L where
  toFun := reflectLink
  invFun := reflectLink
  left_inv := reflectLink_involutive
  right_inv := reflectLink_involutive

section Group

variable {L : ℕ} {G : Type*} [Group G]

/-- Pull back spatial links; pull back and invert temporal links. -/
def reflection (U : Configuration L G) : Configuration L G :=
  fun e => if e.2 = 0 then (U (reflectLink e))⁻¹ else U (reflectLink e)

@[simp] theorem reflection_temporal (U : Configuration L G) (x : Vertex L) :
    reflection U (x, 0) = (U (temporalBack x, 0))⁻¹ := by
  simp [reflection]

theorem reflection_spatial (U : Configuration L G) (x : Vertex L) (μ : Fin 4)
    (hμ : μ ≠ 0) : reflection U (x, μ) = U (reflectVertex x, μ) := by
  simp [reflection, hμ, reflectLink_spatial _ _ hμ]

/-- Both the label permutation and the temporal inversion are involutions. -/
@[simp] theorem reflection_involutive :
    Function.Involutive (reflection : Configuration L G → Configuration L G) := by
  intro U
  funext e
  by_cases h : e.2 = 0
  · simp only [reflection, reflectLink_direction, if_pos h,
      reflectLink_involutive, inv_inv]
  · simp only [reflection, reflectLink_direction, if_neg h,
      reflectLink_involutive]

def reflectionEquiv : Configuration L G ≃ Configuration L G where
  toFun := reflection
  invFun := reflection
  left_inv := reflection_involutive
  right_inv := reflection_involutive

section Topology

variable [TopologicalSpace G] [IsTopologicalGroup G]

/-- Continuity uses coordinate evaluation and actual group inversion. -/
theorem continuous_reflection :
    Continuous (reflection : Configuration L G → Configuration L G) := by
  apply continuous_pi
  intro e
  by_cases h : e.2 = 0
  · simpa only [reflection, if_pos h] using
      (continuous_apply (reflectLink e) :
        Continuous (fun U : Configuration L G => U (reflectLink e))).inv
  · simpa only [reflection, if_neg h] using
      (continuous_apply (reflectLink e) :
        Continuous (fun U : Configuration L G => U (reflectLink e)))

/-- The actual reflection homeomorphism of the full configuration space. -/
def reflectionHomeomorph : Configuration L G ≃ₜ Configuration L G where
  toEquiv := reflectionEquiv
  continuous_toFun := continuous_reflection
  continuous_invFun := continuous_reflection

end Topology
end Group

end GRWTSK.Geometry.GaugeTheory.BondTimeReflection
