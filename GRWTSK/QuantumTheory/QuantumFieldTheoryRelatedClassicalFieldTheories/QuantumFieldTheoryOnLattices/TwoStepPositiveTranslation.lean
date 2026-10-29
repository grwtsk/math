/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTimeTranslation
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.PositiveTimeObservables

/-!
# Two-step support room for actual positive-time observables

The domain is a complex submodule of the existing positive-time algebra:
its maps depend only on links with BOTH endpoints at representatives
1,...,T-2. Literal representative arithmetic shows that these links, shifted
once or twice, remain positive interior. Thus both pullbacks F(S U) and
F(S(S U)) belong to the existing algebra for T>=3. Gauge invariance is
transported by the proved vertex-gauge intertwining.

The translation is not asserted to preserve this smaller domain, the whole
positive algebra or its null radical. The separate reflection-form identity
will prove null preservation only on this actual two-step-margin domain.
SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation

open GRWTSK.Geometry.GaugeTheory.FinitePeriodicLattice
open GRWTSK.Geometry.GaugeTheory.PeriodicTimeTranslation
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.WilsonTimeTranslation

theorem atLeastTwo {T : ℕ} (hT : 3 ≤ T) : 2 ≤ T := by omega

def twoStepVertex (T : ℕ) (x : Vertex (2 * T)) : Prop :=
  1 ≤ (x 0).val ∧ (x 0).val ≤ T - 2

def twoStepInteriorLink (T : ℕ) (e : Link (2 * T)) : Prop :=
  twoStepVertex T e.1 ∧ twoStepVertex T (shift e.1 e.2)

def DependsOnTwoStepLinks (T : ℕ) (F : C(Config T, ℂ)) : Prop :=
  ∀ U V : Config T,
    (∀ e : Link (2 * T), twoStepInteriorLink T e → U e = V e) → F U = F V

/-- A literal support restriction inside the actual gauge-invariant algebra. -/
def twoStepDomain (T : ℕ) : Submodule ℂ (positiveTimeAlgebra T) where
  carrier F := DependsOnTwoStepLinks T F.val
  zero_mem' := by
    intro U V hUV
    rfl
  add_mem' := by
    intro F G hF hG U V hUV
    change F.val U + G.val U = F.val V + G.val V
    rw [hF U V hUV, hG U V hUV]
  smul_mem' := by
    intro z F hF U V hUV
    change z * F.val U = z * F.val V
    rw [hF U V hUV]

/-- Both additions are before wraparound in Z/(2*T). All endpoints, including
a temporal link's target, use these actual natural representative equalities. -/
theorem twoStepVertex_translates {T : ℕ} (hT : 3 ≤ T)
    (x : Vertex (2 * T)) (hx : twoStepVertex T x) :
    positiveVertex T (shift x 0) ∧ positiveVertex T (shift (shift x 0) 0) := by
  letI : NeZero (2 * T) := ⟨by omega⟩
  rcases hx with ⟨hlo, hhi⟩
  have h1 : (shift x 0 0).val = (x 0).val + 1 :=
    shift_time_val_of_lt x (by omega)
  have h2 : (shift (shift x 0) 0 0).val = (x 0).val + 2 := by
    rw [shift_time_val_of_lt (shift x 0) (by omega), h1]
    omega
  constructor
  · unfold positiveVertex
    rw [h1]
    constructor <;> omega
  · unfold positiveVertex
    rw [h2]
    constructor <;> omega

theorem timeLink_positive {T : ℕ} (hT : 3 ≤ T)
    (e : Link (2 * T)) (he : twoStepInteriorLink T e) :
    positiveInteriorLink T (timeLink e) := by
  constructor
  · exact (twoStepVertex_translates hT e.1 he.1).1
  · change positiveVertex T (shift (shift e.1 0) e.2)
    rw [shift_comm e.1 0 e.2]
    exact (twoStepVertex_translates hT (shift e.1 e.2) he.2).1

theorem timeLink_twice_positive {T : ℕ} (hT : 3 ≤ T)
    (e : Link (2 * T)) (he : twoStepInteriorLink T e) :
    positiveInteriorLink T (timeLink (timeLink e)) := by
  constructor
  · exact (twoStepVertex_translates hT e.1 he.1).2
  · change positiveVertex T (shift (shift (shift e.1 0) 0) e.2)
    rw [shift_comm (shift e.1 0) 0 e.2, shift_comm e.1 0 e.2]
    exact (twoStepVertex_translates hT (shift e.1 e.2) he.2).2

theorem gaugeInvariant_translate {T : ℕ} (F : C(Config T, ℂ))
    (hF : GaugeInvariant T F) : GaugeInvariant T (translateObservable F) := by
  intro h U
  change F (timeTranslation (gaugeTransform h U)) = F (timeTranslation U)
  rw [timeTranslation_gauge]
  exact hF (fun x => h (shift x 0)) (timeTranslation U)

variable (T : ℕ) (hT : 3 ≤ T)

/-- First shift, with both gauge and positive-link dependence proved. -/
def translatePositive : twoStepDomain T →ₗ[ℂ] positiveTimeAlgebra T where
  toFun F :=
    ⟨translateObservable F.val.val, by
      constructor
      · exact gaugeInvariant_translate F.val.val F.val.prop.1
      · intro U V hUV
        change F.val.val (timeTranslation U) = F.val.val (timeTranslation V)
        apply F.prop
        intro e he
        exact hUV (timeLink e) (timeLink_positive hT e he)⟩
  map_add' := by
    intro F G
    apply Subtype.ext
    apply ContinuousMap.ext
    intro U
    rfl
  map_smul' := by
    intro z F
    apply Subtype.ext
    apply ContinuousMap.ext
    intro U
    rfl

/-- The second pullback is separately constructed from the original margin
domain; it does not iterate a map claimed to preserve that domain. -/
def translateTwicePositive : twoStepDomain T →ₗ[ℂ] positiveTimeAlgebra T where
  toFun F :=
    ⟨translateObservable (translateObservable F.val.val), by
      constructor
      · exact gaugeInvariant_translate (translateObservable F.val.val)
          (gaugeInvariant_translate F.val.val F.val.prop.1)
      · intro U V hUV
        change F.val.val (timeTranslation (timeTranslation U)) =
          F.val.val (timeTranslation (timeTranslation V))
        apply F.prop
        intro e he
        exact hUV (timeLink (timeLink e)) (timeLink_twice_positive hT e he)⟩
  map_add' := by
    intro F G
    apply Subtype.ext
    apply ContinuousMap.ext
    intro U
    rfl
  map_smul' := by
    intro z F
    apply Subtype.ext
    apply ContinuousMap.ext
    intro U
    rfl

@[simp] theorem translatePositive_apply (F : twoStepDomain T) (U : Config T) :
    (translatePositive T hT F).val U = F.val.val (timeTranslation U) := rfl

@[simp] theorem translateTwicePositive_apply (F : twoStepDomain T) (U : Config T) :
    (translateTwicePositive T hT F).val U =
      F.val.val (timeTranslation (timeTranslation U)) := rfl

end GRWTSK.Geometry.GaugeTheory.TwoStepPositiveTranslation

