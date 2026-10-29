/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's semilinear-form source retains Andreas Swerdlow's authorship;
its inner-product core retains Zhouhang Zhou, Sébastien Gouëzel and
Frédéric Dupuis's authorship and Apache-2.0 license. Other imports retain
their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionPositivity
import Mathlib.LinearAlgebra.SesquilinearForm.Basic
import Mathlib.Analysis.InnerProductSpace.Defs

/-!
# Sesquilinearity and Cauchy--Schwarz for the actual Wilson reflection form

All operations below are those of the existing continuous gauge-invariant
positive-time subalgebra. Additivity uses the proved integrability of each
actual mixed reflection product under the normalized Wilson measure. The
bundled form uses Mathlib's conjugate-linear-first, linear-second convention.

The pre-inner-product core is only algebraic proof data for Mathlib's
semidefinite Cauchy--Schwarz lemma. We never install its norm, seminormed group
or topology on the already normed observable algebra. In particular no norm
is inferred on the prequotient from a possibly zero diagonal. The existing
finite reflection-positivity theorem supplies every nonnegativity premise.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive
axiom audit NOT_RUN, including the inherited finite-regulator chain.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionSesquilinear

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.BondTimeReflection
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionPositivity

variable (T : ℕ) (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)

theorem positiveReflectionForm_add_left (F G H : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β (F + G) H =
      positiveReflectionForm T hT β F H + positiveReflectionForm T hT β G H := by
  change (∫ U, conj (F.val (reflection U) + G.val (reflection U)) * H.val U
      ∂positiveWilsonMeasure T hT β) = _
  simp_rw [map_add, add_mul]
  exact integral_add (positiveReflectionForm_integrable T hT β hβ F H)
    (positiveReflectionForm_integrable T hT β hβ G H)

theorem positiveReflectionForm_add_right (F G H : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β F (G + H) =
      positiveReflectionForm T hT β F G + positiveReflectionForm T hT β F H := by
  change (∫ U, conj (F.val (reflection U)) * (G.val U + H.val U)
      ∂positiveWilsonMeasure T hT β) = _
  simp_rw [mul_add]
  exact integral_add (positiveReflectionForm_integrable T hT β hβ F G)
    (positiveReflectionForm_integrable T hT β hβ F H)

theorem positiveReflectionForm_smul_left (z : ℂ) (F G : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β (z • F) G =
      conj z * positiveReflectionForm T hT β F G := by
  change (∫ U, conj (z * F.val (reflection U)) * G.val U
      ∂positiveWilsonMeasure T hT β) = _
  simp_rw [map_mul, mul_assoc]
  exact integral_const_mul _ _

theorem positiveReflectionForm_smul_right (z : ℂ) (F G : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β F (z • G) =
      z * positiveReflectionForm T hT β F G := by
  change (∫ U, conj (F.val (reflection U)) * (z * G.val U)
      ∂positiveWilsonMeasure T hT β) = _
  calc
    _ = ∫ U, z * (conj (F.val (reflection U)) * G.val U)
        ∂positiveWilsonMeasure T hT β := by
      apply integral_congr_ae
      exact ae_of_all _ (fun U => by ring)
    _ = _ := integral_const_mul _ _

/-- The actual normalized Wilson pairing, with Mathlib's maintained convention.
No positivity or integrability field is supplied as an assumption. -/
def reflectionSesqForm :
    positiveTimeAlgebra T →ₛₗ[starRingEnd ℂ] positiveTimeAlgebra T →ₗ[ℂ] ℂ where
  toFun F :=
    { toFun := fun G => positiveReflectionForm T hT β F G
      map_add' := positiveReflectionForm_add_right T hT β hβ F
      map_smul' := by
        intro z G
        change positiveReflectionForm T hT β F (z • G) =
          z * positiveReflectionForm T hT β F G
        exact positiveReflectionForm_smul_right T hT β z F G }
  map_add' := by
    intro F G
    ext H
    exact positiveReflectionForm_add_left T hT β hβ F G H
  map_smul' := by
    intro z F
    ext G
    change positiveReflectionForm T hT β (z • F) G =
      conj z * positiveReflectionForm T hT β F G
    exact positiveReflectionForm_smul_left T hT β z F G

@[simp] theorem reflectionSesqForm_apply (F G : positiveTimeAlgebra T) :
    reflectionSesqForm T hT β hβ F G = positiveReflectionForm T hT β F G := rfl

theorem reflectionSesqForm_isSymm :
    (reflectionSesqForm T hT β hβ).IsSymm := by
  constructor
  intro F G
  exact (positiveReflectionForm_hermitian T hT β G F).symm

/-- Algebraic semidefinite data only: no derived norm instances are installed. -/
def reflectionPreInnerCore : PreInnerProductSpace.Core ℂ (positiveTimeAlgebra T) where
  inner := positiveReflectionForm T hT β
  conj_inner_symm F G := (positiveReflectionForm_hermitian T hT β F G).symm
  re_inner_nonneg F := finiteWilson_reflection_positive T hT β hβ F
  add_left F G H := positiveReflectionForm_add_left T hT β hβ F G H
  smul_left F G z := positiveReflectionForm_smul_left T hT β z F G

/-- Complex Cauchy--Schwarz for the concrete normalized form.
Mathlib's semidefinite proof includes zero diagonals and divides only inside
a branch where the off-diagonal scalar norm has already been proved nonzero. -/
theorem positiveReflectionForm_cauchySchwarz (F G : positiveTimeAlgebra T) :
    ‖positiveReflectionForm T hT β F G‖ ^ 2 ≤
      (positiveReflectionForm T hT β F F).re *
        (positiveReflectionForm T hT β G G).re := by
  letI : PreInnerProductSpace.Core ℂ (positiveTimeAlgebra T) :=
    reflectionPreInnerCore T hT β hβ
  have h := InnerProductSpace.Core.inner_mul_inner_self_le (𝕜 := ℂ) F G
  change ‖positiveReflectionForm T hT β F G‖ *
      ‖positiveReflectionForm T hT β G F‖ ≤
    (positiveReflectionForm T hT β F F).re *
      (positiveReflectionForm T hT β G G).re at h
  have hn : ‖positiveReflectionForm T hT β G F‖ =
      ‖positiveReflectionForm T hT β F G‖ := by
    rw [positiveReflectionForm_hermitian T hT β G F]
    exact Complex.norm_conj _
  simpa only [hn, pow_two] using h

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionSesquilinear

