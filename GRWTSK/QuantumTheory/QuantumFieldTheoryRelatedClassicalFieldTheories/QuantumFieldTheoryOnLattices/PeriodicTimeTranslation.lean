/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.BondTimeReflection

/-!
# Literal periodic time translation of links and plaquettes

S U(x,mu)=U(x+e0,mu) is a permutation of the full positive-link inventory.
The inverse subtracts one modulo L. The group calculations retain both inverse
plaquette sides and prove gauge intertwining and S Theta S=Theta. No support,
Haar-invariance or null-preservation certificate is assumed.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false

namespace GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection

def timeBack {L : ℕ} (x : Vertex L) : Vertex L :=
  fun ρ => x ρ - if ρ = 0 then 1 else 0

@[simp] theorem shift_timeBack {L : ℕ} (x : Vertex L) :
    shift (timeBack x) 0 = x := by
  funext ρ
  simp only [shift, timeBack]
  ring

@[simp] theorem timeBack_shift {L : ℕ} (x : Vertex L) :
    timeBack (shift x 0) = x := by
  funext ρ
  simp only [shift, timeBack]
  ring

def timeVertexEquiv (L : ℕ) : Vertex L ≃ Vertex L where
  toFun x := shift x 0
  invFun := timeBack
  left_inv := timeBack_shift
  right_inv := shift_timeBack

def timeLink {L : ℕ} (e : Link L) : Link L := (shift e.1 0, e.2)

def timeLinkEquiv (L : ℕ) : Link L ≃ Link L where
  toFun := timeLink
  invFun e := (timeBack e.1, e.2)
  left_inv e := by cases e; simp [timeLink]
  right_inv e := by cases e; simp [timeLink]

def timePlaquetteEquiv (L : ℕ) : Plaquette L ≃ Plaquette L where
  toFun p := (shift p.1 0, p.2)
  invFun p := (timeBack p.1, p.2)
  left_inv p := by cases p; simp
  right_inv p := by cases p; simp

/-- The full coordinate permutation; no crossing link is discarded. -/
def timeTranslation {L : ℕ} {G : Type*} (U : Configuration L G) : Configuration L G :=
  fun e => U (timeLink e)

def timeTranslationEquiv (L : ℕ) (G : Type*) : Configuration L G ≃ Configuration L G where
  toFun := timeTranslation
  invFun U e := U ((timeLinkEquiv L).symm e)
  left_inv U := by
    funext e
    exact congrArg U ((timeLinkEquiv L).apply_symm_apply e)
  right_inv U := by
    funext e
    exact congrArg U ((timeLinkEquiv L).symm_apply_apply e)

theorem continuous_timeTranslation {L : ℕ} {G : Type*} [TopologicalSpace G] :
    Continuous (timeTranslation : Configuration L G → Configuration L G) := by
  apply continuous_pi
  intro e
  exact continuous_apply (timeLink e)

def timeTranslationHomeomorph (L : ℕ) (G : Type*) [TopologicalSpace G] :
    Configuration L G ≃ₜ Configuration L G where
  toEquiv := timeTranslationEquiv L G
  continuous_toFun := continuous_timeTranslation
  continuous_invFun := by
    apply continuous_pi
    intro e
    exact continuous_apply ((timeLinkEquiv L).symm e)

/-- Exact representative arithmetic, including the no-wrap hypothesis. -/
theorem shift_time_val_of_lt {L : ℕ} [NeZero L] (x : Vertex L)
    (hx : (x 0).val + 1 < L) :
    (shift x 0 0).val = (x 0).val + 1 := by
  have he : shift x 0 0 = (((x 0).val + 1 : ℕ) : ZMod L) := by
    simp only [shift, if_pos rfl, Nat.cast_add, Nat.cast_one, ZMod.natCast_zmod_val]
  rw [he]
  exact ZMod.val_cast_of_lt hx

theorem shift_reflectVertex_shift {L : ℕ} (x : Vertex L) :
    shift (reflectVertex (shift x 0)) 0 = reflectVertex x := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [shift, reflectVertex, hρ] <;> ring

theorem shift_temporalBack_shift {L : ℕ} (x : Vertex L) :
    shift (temporalBack (shift x 0)) 0 = temporalBack x := by
  funext ρ
  by_cases hρ : ρ = 0 <;> simp [shift, temporalBack, hρ] <;> ring

section Group

variable {L : ℕ} {G : Type*} [Group G]

/-- The transformed vertex gauge is h(x+e0), with both endpoints retained. -/
theorem timeTranslation_gauge (h : Gauge L G) (U : Configuration L G) :
    timeTranslation (gaugeTransform h U) =
      gaugeTransform (fun x => h (shift x 0)) (timeTranslation U) := by
  funext e
  change h (shift e.1 0) * U (timeLink e) *
      (h (shift (shift e.1 0) e.2))⁻¹ =
    h (shift e.1 0) * U (timeLink e) *
      (h (shift (shift e.1 e.2) 0))⁻¹
  rw [shift_comm e.1 0 e.2]

theorem plaquetteHolonomy_timeTranslation (U : Configuration L G)
    (x : Vertex L) (μ ν : Fin 4) :
    plaquetteHolonomy (timeTranslation U) x μ ν =
      plaquetteHolonomy U (shift x 0) μ ν := by
  simp only [plaquetteHolonomy, timeTranslation, timeLink,
    shift_comm x μ 0, shift_comm x ν 0]

theorem holonomy_timeTranslation (U : Configuration L G) (p : Plaquette L) :
    holonomy (timeTranslation U) p = holonomy U (timePlaquetteEquiv L p) :=
  plaquetteHolonomy_timeTranslation U p.1 p.2.1.1 p.2.1.2

/-- This direction is what the substitution U=S V in the reflection integral
uses. Temporal-link inversions remain present in the calculation. -/
theorem timeTranslation_reflection_timeTranslation (U : Configuration L G) :
    timeTranslation (reflection (timeTranslation U)) = reflection U := by
  funext e
  rcases e with ⟨x, μ⟩
  by_cases hμ : μ = 0
  · subst μ
    change (U (shift (temporalBack (shift x 0)) 0, 0))⁻¹ =
      (U (temporalBack x, 0))⁻¹
    rw [shift_temporalBack_shift]
  · change reflection (timeTranslation U) (shift x 0, μ) = reflection U (x, μ)
    rw [reflection_spatial _ _ _ hμ, reflection_spatial _ _ _ hμ]
    change U (shift (reflectVertex (shift x 0)) 0, μ) = U (reflectVertex x, μ)
    rw [shift_reflectVertex_shift]

end Group

end GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation

