/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonReflectionSesquilinear

/-!
# The actual null space is the radical of the Wilson reflection pairing

The submodule is the kernel of the actual bundled conjugate-linear map.
Cauchy--Schwarz proves that it consists exactly of the observables with
zero real diagonal. Thus it is a complex submodule without assuming that
the set of null observables is closed under addition. Its elements annihilate
the form in both slots. No division by a diagonal, positivity certificate,
new source observable or ambient norm is used.

SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive
axiom audit NOT_RUN, including all inherited dependencies.
-/
set_option autoImplicit false
noncomputable section
open scoped ComplexConjugate

namespace GRWTSK.Geometry.GaugeTheory.WilsonReflectionRadical

open GRWTSK.Geometry.GaugeTheory.PositiveTimeObservables
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionForm
open GRWTSK.Geometry.GaugeTheory.WilsonReflectionSesquilinear

variable (T : ℕ) (hT : 2 ≤ T) (β : ℝ) (hβ : 0 ≤ β)

/-- The canonical kernel of the actual first-slot semilinear map. -/
def nullSubmodule : Submodule ℂ (positiveTimeAlgebra T) :=
  LinearMap.ker (reflectionSesqForm T hT β hβ)

theorem null_annihilates_left (F : positiveTimeAlgebra T)
    (hF : F ∈ nullSubmodule T hT β hβ) (G : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β F G = 0 := by
  have h : reflectionSesqForm T hT β hβ F = 0 := hF
  exact congrArg (fun L : positiveTimeAlgebra T →ₗ[ℂ] ℂ => L G) h

theorem null_annihilates_right (F : positiveTimeAlgebra T)
    (hF : F ∈ nullSubmodule T hT β hβ) (G : positiveTimeAlgebra T) :
    positiveReflectionForm T hT β G F = 0 := by
  rw [positiveReflectionForm_hermitian T hT β G F,
    null_annihilates_left T hT β hβ F hF G, map_zero]

/-- Zero diagonal forces every mixed pairing to vanish, including when either
diagonal is zero. Only a scalar norm squared is compared to zero. -/
theorem annihilates_of_diagonal_re_zero (F : positiveTimeAlgebra T)
    (hF : (positiveReflectionForm T hT β F F).re = 0)
    (G : positiveTimeAlgebra T) : positiveReflectionForm T hT β F G = 0 := by
  have h := positiveReflectionForm_cauchySchwarz T hT β hβ F G
  rw [hF, zero_mul] at h
  apply norm_eq_zero.mp
  nlinarith [norm_nonneg (positiveReflectionForm T hT β F G)]

/-- This identifies the proved complex submodule with precisely the requested
zero-diagonal set; it is not a replacement null-space assumption. -/
theorem mem_nullSubmodule_iff (F : positiveTimeAlgebra T) :
    F ∈ nullSubmodule T hT β hβ ↔
      (positiveReflectionForm T hT β F F).re = 0 := by
  constructor
  · intro hF
    rw [null_annihilates_left T hT β hβ F hF F]
    rfl
  · intro hF
    change reflectionSesqForm T hT β hβ F = 0
    ext G
    exact annihilates_of_diagonal_re_zero T hT β hβ F hF G

theorem nullSubmodule_carrier :
    (nullSubmodule T hT β hβ : Set (positiveTimeAlgebra T)) =
      {F | (positiveReflectionForm T hT β F F).re = 0} := by
  ext F
  exact mem_nullSubmodule_iff T hT β hβ F

/-- Explicit two-slot representative invariance under null additions. -/
theorem positiveReflectionForm_add_null (F G n m : positiveTimeAlgebra T)
    (hn : n ∈ nullSubmodule T hT β hβ) (hm : m ∈ nullSubmodule T hT β hβ) :
    positiveReflectionForm T hT β (F + n) (G + m) =
      positiveReflectionForm T hT β F G := by
  rw [positiveReflectionForm_add_left T hT β hβ,
    positiveReflectionForm_add_right T hT β hβ,
    null_annihilates_right T hT β hβ m hm F,
    null_annihilates_left T hT β hβ n hn (G + m), add_zero, add_zero]

end GRWTSK.Geometry.GaugeTheory.WilsonReflectionRadical

