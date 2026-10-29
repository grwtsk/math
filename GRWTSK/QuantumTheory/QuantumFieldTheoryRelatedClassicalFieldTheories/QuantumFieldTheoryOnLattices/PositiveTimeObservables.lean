/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's continuous-map algebra retains Kim Morrison and Nicolò Cavalleri's
upstream authorship and Apache-2.0 license. Other imports retain their licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.FiniteSU2Wilson
import Mathlib.Topology.ContinuousMap.Algebra

/-!
# The actual positive-time observable algebra of the finite Wilson lattice

At period 2*T, the positive vertices have time representatives 1,...,T.
A positive interior link must have both endpoints in that set. Thus the two
crossing temporal layers based at 0 and T are excluded from the observable's
dependence inventory, but remain in the full configuration and measure.

Continuous complex functions are restricted by actual vertex gauge invariance
and equality whenever two configurations agree on those interior links. These
properties define a concrete complex subalgebra, closed under conjugation.
They supply no positivity assumption and no Hilbert norm. Reflection sends
positive observables to a different dependence region; this source does not
claim invariance of the positive algebra under reflection.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.SU2Wilson

/-- Configurations on the full period-2*T lattice. Crossing links are present. -/
abbrev Config (T : ℕ) := Configuration (2 * T) SU2

/-- The positive vertices, using the actual natural representatives in Z/(2*T). -/
def positiveVertex (T : ℕ) (x : Vertex (2 * T)) : Prop :=
  1 ≤ (x 0).val ∧ (x 0).val ≤ T

/-- Both endpoints, rather than only the initial vertex, must lie at positive
time. This inventory does not alter the full Haar or Wilson measure. -/
def positiveInteriorLink (T : ℕ) (e : Link (2 * T)) : Prop :=
  positiveVertex T e.1 ∧ positiveVertex T (shift e.1 e.2)

/-- Literal invariance under every actual vertex gauge transformation. -/
def GaugeInvariant (T : ℕ) (F : C(Config T, ℂ)) : Prop :=
  ∀ (h : Gauge (2 * T) SU2) (U : Config T), F (gaugeTransform h U) = F U

/-- Literal finite-coordinate dependence; no completion or quotient of the
configuration measure is substituted. -/
def DependsOnPositiveLinks (T : ℕ) (F : C(Config T, ℂ)) : Prop :=
  ∀ U V : Config T,
    (∀ e : Link (2 * T), positiveInteriorLink T e → U e = V e) → F U = F V

/-- The concrete complex algebra of continuous positive-time gauge-invariant
observables. The algebra axioms are proved for the actual pointwise operations. -/
def positiveTimeAlgebra (T : ℕ) : Subalgebra ℂ C(Config T, ℂ) where
  carrier F := GaugeInvariant T F ∧ DependsOnPositiveLinks T F
  zero_mem' := by
    constructor
    · intro h U
      rfl
    · intro U V hUV
      rfl
  one_mem' := by
    constructor
    · intro h U
      rfl
    · intro U V hUV
      rfl
  add_mem' := by
    intro F G hF hG
    constructor
    · intro h U
      change F (gaugeTransform h U) + G (gaugeTransform h U) = F U + G U
      rw [hF.1 h U, hG.1 h U]
    · intro U V hUV
      change F U + G U = F V + G V
      rw [hF.2 U V hUV, hG.2 U V hUV]
  mul_mem' := by
    intro F G hF hG
    constructor
    · intro h U
      change F (gaugeTransform h U) * G (gaugeTransform h U) = F U * G U
      rw [hF.1 h U, hG.1 h U]
    · intro U V hUV
      change F U * G U = F V * G V
      rw [hF.2 U V hUV, hG.2 U V hUV]
  algebraMap_mem' := by
    intro z
    constructor
    · intro h U
      rfl
    · intro U V hUV
      rfl

theorem mem_positiveTimeAlgebra_iff (T : ℕ) (F : C(Config T, ℂ)) :
    F ∈ positiveTimeAlgebra T ↔ GaugeInvariant T F ∧ DependsOnPositiveLinks T F :=
  Iff.rfl

/-- Extract gauge invariance from an actual algebra member. -/
theorem gaugeInvariant_of_mem (T : ℕ) (F : positiveTimeAlgebra T) :
    GaugeInvariant T F.val := F.prop.1

/-- Extract the exact positive-link dependence from an actual algebra member. -/
theorem dependsOnPositiveLinks_of_mem (T : ℕ) (F : positiveTimeAlgebra T) :
    DependsOnPositiveLinks T F.val := F.prop.2

/-- Pointwise conjugation as a concrete continuous complex map. -/
def conjugate {T : ℕ} (F : C(Config T, ℂ)) : C(Config T, ℂ) :=
  ⟨fun U => star (F U), F.continuous.star⟩

@[simp] theorem conjugate_apply {T : ℕ} (F : C(Config T, ℂ)) (U : Config T) :
    conjugate F U = star (F U) := rfl

/-- The observable algebra is closed under the conjugation used by the
reflection form, independently of any positivity property of that form. -/
theorem conjugate_mem {T : ℕ} {F : C(Config T, ℂ)}
    (hF : F ∈ positiveTimeAlgebra T) : conjugate F ∈ positiveTimeAlgebra T := by
  constructor
  · intro h U
    change star (F (gaugeTransform h U)) = star (F U)
    rw [hF.1 h U]
  · intro U V hUV
    change star (F U) = star (F V)
    rw [hF.2 U V hUV]

/-- The temporal crossing layer based at representative 0 is not positive
interior: its initial vertex is outside the positive set. -/
theorem not_positiveInteriorLink_of_time_val_zero {T : ℕ}
    (x : Vertex (2 * T)) (hx : (x 0).val = 0) :
    ¬ positiveInteriorLink T (x, (0 : Fin 4)) := by
  intro h
  have hlow := h.1.1
  rw [hx] at hlow
  omega

/-- The same first crossing-layer exclusion at the actual zero group value. -/
theorem not_positiveInteriorLink_of_time_zero {T : ℕ}
    (x : Vertex (2 * T)) (hx : x 0 = 0) :
    ¬ positiveInteriorLink T (x, (0 : Fin 4)) :=
  not_positiveInteriorLink_of_time_val_zero x (by simp [hx])

/-- At the other periodic boundary, a temporal link based at representative T
ends at representative T+1. The hypothesis T>=2 keeps this before wraparound. -/
theorem temporal_target_val_at_T {T : ℕ} (hT : 2 ≤ T)
    (x : Vertex (2 * T)) (hx : (x 0).val = T) :
    (shift x (0 : Fin 4) 0).val = T + 1 := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  have hcast : x 0 = (T : ZMod (2 * T)) := by
    calc
      x 0 = ((x 0).val : ZMod (2 * T)) := (ZMod.natCast_zmod_val (x 0)).symm
      _ = (T : ZMod (2 * T)) := by rw [hx]
  have hshift : shift x (0 : Fin 4) 0 = ((T + 1 : ℕ) : ZMod (2 * T)) := by
    change x 0 + (1 : ZMod (2 * T)) = _
    rw [hcast]
    simp only [Nat.cast_add, Nat.cast_one]
  exact (congrArg ZMod.val hshift).trans (ZMod.val_cast_of_lt (by omega))

/-- The crossing temporal layer based at representative T is also excluded;
it cannot be mistaken for a positive interior link merely because its source
vertex lies in the positive set. -/
theorem not_positiveInteriorLink_of_time_val_T {T : ℕ} (hT : 2 ≤ T)
    (x : Vertex (2 * T)) (hx : (x 0).val = T) :
    ¬ positiveInteriorLink T (x, (0 : Fin 4)) := by
  intro h
  have hupper := h.2.2
  rw [temporal_target_val_at_T hT x hx] at hupper
  omega

/-- The second crossing-layer exclusion at the actual group value T. -/
theorem not_positiveInteriorLink_of_time_T {T : ℕ} (hT : 2 ≤ T)
    (x : Vertex (2 * T)) (hx : x 0 = (T : ZMod (2 * T))) :
    ¬ positiveInteriorLink T (x, (0 : Fin 4)) := by
  apply not_positiveInteriorLink_of_time_val_T hT x
  rw [hx]
  exact ZMod.val_cast_of_lt (by omega)

/-- A spatial link has the same time coordinate at its two endpoints. -/
theorem positiveInteriorLink_spatial_iff {T : ℕ}
    (x : Vertex (2 * T)) (μ : Fin 4) (hμ : μ ≠ 0) :
    positiveInteriorLink T (x, μ) ↔ positiveVertex T x := by
  simp [positiveInteriorLink, positiveVertex, shift, Ne.symm hμ]

end GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
