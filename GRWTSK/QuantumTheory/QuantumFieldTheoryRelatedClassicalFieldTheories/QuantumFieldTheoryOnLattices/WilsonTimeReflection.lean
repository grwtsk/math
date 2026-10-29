/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.BondTimeReflection
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FiniteSU2Wilson

/-!
# Reflection of the literal finite Wilson plaquette action

Bond reflection reverses the temporal side of each temporal plaquette. Its
holonomy is the conjugate of the inverse of the original holonomy at the
backward reflected base. Spatial plaquettes are pulled back without reversal.
The actual SU(2) penalty is invariant under both inversion and conjugation.
An explicit involution of the complete plaquette inventory then proves exact
Wilson-action invariance. No crossing layer or Haar variable is removed.

This source supplies the action equality used with actual Haar reflection
invariance to construct the reflected Wilson measure. It proves neither
reflection positivity nor a Hilbert norm, Hamiltonian or mass gap.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonTimeReflection

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson

/-- Inversion in actual SU(2) is matrix star, whose trace has the same real
part. This proof does not assume the Wilson penalty is inversion invariant. -/
theorem penalty_inv (g : SU2) : penalty g⁻¹ = penalty g := by
  unfold penalty
  simp only [matrix_inv, Matrix.trace, Matrix.star_apply,
    Complex.re_sum, Complex.star_def, Complex.conj_re]

section Holonomy

variable {L : ℕ} {G : Type*} [Group G]

/-- A spatial plaquette is simply pulled back at the reflected vertex. -/
theorem plaquetteHolonomy_reflection_spatial (U : Configuration L G)
    (x : Vertex L) (μ ν : Fin 4) (hμ : μ ≠ 0) (hν : ν ≠ 0) :
    plaquetteHolonomy (reflection U) x μ ν =
      plaquetteHolonomy U (reflectVertex x) μ ν := by
  have hm (z : Vertex L) : reflection U (z, μ) = U (reflectVertex z, μ) :=
    reflection_spatial U z μ hμ
  have hn (z : Vertex L) : reflection U (z, ν) = U (reflectVertex z, ν) :=
    reflection_spatial U z ν hν
  simp only [plaquetteHolonomy, hm, hn,
    reflectVertex_shift_space x μ hμ, reflectVertex_shift_space x ν hν]

/-- At y=theta(x)-e_0, write A=U(y,0). The temporal plaquette transforms as
A^(-1) P_y^(-1) A, retaining both inverse sides and the changed base. -/
theorem plaquetteHolonomy_reflection_temporal (U : Configuration L G)
    (x : Vertex L) (ν : Fin 4) (hν : ν ≠ 0) :
    plaquetteHolonomy (reflection U) x 0 ν =
      (U (temporalBack x, 0))⁻¹ *
        (plaquetteHolonomy U (temporalBack x) 0 ν)⁻¹ *
          U (temporalBack x, 0) := by
  have hn (z : Vertex L) : reflection U (z, ν) = U (reflectVertex z, ν) :=
    reflection_spatial U z ν hν
  simp only [plaquetteHolonomy, reflection_temporal, hn,
    reflectVertex_shift_time, temporalBack_shift_space x ν hν,
    shift_temporalBack_time]
  group

end Holonomy

/-- Temporal plaquettes use the backward reflected base; spatial plaquettes
use theta(x). Direction labels and their mu<nu condition are unchanged. -/
def reflectPlaquette {L : ℕ} (p : Plaquette L) : Plaquette L :=
  (if p.2.1.1 = 0 then temporalBack p.1 else reflectVertex p.1, p.2)

/-- The map is an involution of the full periodic plaquette inventory. -/
theorem reflectPlaquette_involutive {L : ℕ} :
    Function.Involutive (reflectPlaquette : Plaquette L → Plaquette L) := by
  intro p
  rcases p with ⟨x, dirs⟩
  by_cases h : dirs.1.1 = 0
  · simp only [reflectPlaquette, if_pos h, temporalBack_involutive]
  · simp only [reflectPlaquette, if_neg h, reflectVertex_involutive]

def reflectPlaquetteEquiv (L : ℕ) : Plaquette L ≃ Plaquette L where
  toFun := reflectPlaquette
  invFun := reflectPlaquette
  left_inv := reflectPlaquette_involutive
  right_inv := reflectPlaquette_involutive

/-- The actual penalty is pulled back by the actual plaquette bijection.
For temporal plaquettes both conjugation and inversion are used by proof. -/
theorem penalty_holonomy_reflection {L : ℕ} (U : Configuration L SU2)
    (p : Plaquette L) :
    penalty (holonomy (reflection U) p) =
      penalty (holonomy U (reflectPlaquette p)) := by
  rcases p with ⟨x, dirs⟩
  rcases dirs with ⟨⟨μ, ν⟩, hlt⟩
  have hν : ν ≠ 0 := by
    intro h
    subst ν
    exact (Nat.not_lt_zero μ.val) hlt
  by_cases hμ : μ = 0
  · subst μ
    change penalty (plaquetteHolonomy (reflection U) x 0 ν) =
      penalty (plaquetteHolonomy U (temporalBack x) 0 ν)
    rw [plaquetteHolonomy_reflection_temporal U x ν hν]
    have hc := penalty_conjugation (U (temporalBack x, 0))⁻¹
      (plaquetteHolonomy U (temporalBack x) 0 ν)⁻¹
    simp only [inv_inv] at hc
    rw [hc, penalty_inv]
  · change penalty (plaquetteHolonomy (reflection U) x μ ν) =
      penalty (plaquetteHolonomy U
        (if μ = 0 then temporalBack x else reflectVertex x) μ ν)
    rw [if_neg hμ, plaquetteHolonomy_reflection_spatial U x μ ν hμ hν]

/-- Exact reflection invariance of the full finite Wilson action. Neither
periodic boundary, any direction pair, nor any crossing link is removed. -/
theorem wilsonAction_reflection (L : ℕ) [NeZero L] (U : Configuration L SU2) :
    wilsonAction L (reflection U) = wilsonAction L U := by
  unfold wilsonAction
  calc
    _ = ∑ p : Plaquette L, penalty (holonomy U (reflectPlaquette p)) :=
      Finset.sum_congr rfl (fun p _ => penalty_holonomy_reflection U p)
    _ = ∑ p : Plaquette L, penalty (holonomy U p) :=
      (reflectPlaquetteEquiv L).sum_comp (fun p => penalty (holonomy U p))

end GRWTSK.Geometry.GaugeTheory.WilsonTimeReflection
