/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Hilbert-space/adjoint and Fubini results retain their upstream
authorship and Apache-2.0 license. Imported GRWTSK retains attribution. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceL2Operator
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Self-adjointness of the actual bounded real slice kernel map

The kernel-weighted product of two L2 inputs is integrable on the actual
product probability: L2-to-L1, product integrability, and |K|<=1 pay this
before Fubini. The actual K_symm then supplies the real inner-product
identity. This concerns the auxiliary slice map, not a physical Hamiltonian.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceL2SelfAdjoint

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceKernelSymmetry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator

variable (L : ℕ) [NeZero L]

/-- Full product integrability for every pair of actual L2 classes. -/
theorem integrable_mixedKernel (β : ℝ) (hβ : 0 ≤ β) (f g : RealSliceL2 L) :
    Integrable (fun p : Slice L SU2 × Slice L SU2 =>
      f p.1 * sliceKernel L β p.1 p.2 * g p.2)
        ((sliceHaar L).prod (sliceHaar L)) := by
  have h := ((integrable_L2 L f).mul_prod (integrable_L2 L g)).bdd_mul
    (continuous_K L β).aestronglyMeasurable
    (ae_of_all _ (fun p : Slice L SU2 × Slice L SU2 => norm_K_le_one L β hβ p.1 p.2))
  exact h.congr (ae_of_all _ (fun p => by dsimp; ring))

/-- The actual L2 pairing with the actual operator has its literal double integral. -/
theorem inner_operator_eq_double (β : ℝ) (hβ : 0 ≤ β) (f g : RealSliceL2 L) :
    inner ℝ f (operator L β hβ g) =
      ∫ a, ∫ b, f a * sliceKernel L β a b * g b ∂sliceHaar L ∂sliceHaar L := by
  calc
    _ = ∫ a, f a * kernelIntegral L β g a ∂sliceHaar L := by
      rw [L2.inner_def]
      apply integral_congr_ae
      filter_upwards [operator_apply_ae L β hβ g] with a ha
      rw [Real.inner_apply, ha]
    _ = _ := by
      simp only [kernelIntegral, mul_assoc, integral_const_mul]

theorem operator_isSymmetric (β : ℝ) (hβ : 0 ≤ β) :
    (operator L β hβ).toLinearMap.IsSymmetric := by
  intro f g
  calc
    inner ℝ (operator L β hβ f) g = inner ℝ g (operator L β hβ f) :=
      real_inner_comm g (operator L β hβ f)
    _ = ∫ a, ∫ b, g a * sliceKernel L β a b * f b ∂sliceHaar L ∂sliceHaar L :=
      inner_operator_eq_double L β hβ g f
    _ = ∫ b, ∫ a, g a * sliceKernel L β a b * f b ∂sliceHaar L ∂sliceHaar L :=
      integral_integral_swap (integrable_mixedKernel L β hβ g f)
    _ = ∫ a, ∫ b, f a * sliceKernel L β a b * g b ∂sliceHaar L ∂sliceHaar L := by
      apply integral_congr_ae
      refine ae_of_all _ (fun a => ?_)
      apply integral_congr_ae
      exact ae_of_all _ (fun b => by rw [K_symm L β b a]; ring)
    _ = inner ℝ f (operator L β hβ g) := (inner_operator_eq_double L β hβ f g).symm

/-- Actual bounded self-adjoint operator on the real slice Hilbert space. -/
theorem operator_isSelfAdjoint (β : ℝ) (hβ : 0 ≤ β) : IsSelfAdjoint (operator L β hβ) :=
  (operator_isSymmetric L β hβ).isSelfAdjoint

end GRWTSK.Geometry.GaugeTheory.WilsonSliceL2SelfAdjoint
