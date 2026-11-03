/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exactness transported through a genuine additive equivalence

The elliptic Kummer sequence is already exact in pinned Tau Ceti
on explicit continuous Gal(Fsep/F) H¹. The separate upstream
comparison into canonical GalRep continuousH¹ is an actual
additive equivalence; its image/ker transport is PURE ALGEBRA.

The theorem here proves the exact transport without
postulating any new arithmetic source, adding an axiom or
inventing a cohomology rank. Its arithmetic instantiation
must still be kernel checked in the compatible upstream
toolchain, where the source equivalence lives.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.KummerExactTransport

variable {P H Q H' : Type*}
variable [AddCommGroup P] [AddCommGroup H]
variable [AddCommGroup Q] [AddCommGroup H']

/-- Send the ORIGINAL inclusion/connecting map through the
actual cohomology comparison equivalence. -/
def transportInclusion (f : P →+ H) (e : H ≃+ H') : P →+ H' :=
  e.toAddMonoidHom.comp f

/-- Transport the ORIGINAL quotient/obstruction map back
along the inverse comparison, retaining its actual codomain. -/
def transportObstruction (g : H →+ Q) (e : H ≃+ H') : H' →+ Q :=
  g.comp e.symm.toAddMonoidHom

/-- The transported inclusion stays injective. -/
theorem injective_transportInclusion (f : P →+ H)
    (e : H ≃+ H') (hf : Function.Injective f) :
    Function.Injective (transportInclusion f e) :=
  e.injective.comp hf

/-- The transported obstruction remains surjective. -/
theorem surjective_transportObstruction (g : H →+ Q)
    (e : H ≃+ H') (hg : Function.Surjective g) :
    Function.Surjective (transportObstruction g e) :=
  hg.comp e.symm.surjective

/-- This is the complete middle exactness assertion.
For a genuine Kummer short exact sequence, the SAME
actual quotient, inclusion and obstruction groups occur
on the right, with no replacement coefficient model. -/
theorem range_transportInclusion_eq_ker_transportObstruction
    (f : P →+ H) (g : H →+ Q) (e : H ≃+ H')
    (hexact : f.range = g.ker) :
    (transportInclusion f e).range =
      (transportObstruction g e).ker := by
  ext y
  constructor
  · rintro ⟨x, rfl⟩
    change g (e.symm (e (f x))) = 0
    rw [e.symm_apply_apply]
    have hx : f x ∈ g.ker := by
      rw [← hexact]
      exact ⟨x, rfl⟩
    exact hx
  · intro hy
    change g (e.symm y) = 0 at hy
    have hz : e.symm y ∈ f.range := by
      rw [hexact]
      exact hy
    obtain ⟨x, hx⟩ := hz
    refine ⟨x, ?_⟩
    change e (f x) = y
    rw [hx, e.apply_symm_apply]

/-- Reuse the original algebraic exactness interface unchanged
after transport across an isomorphism of the middle carrier. -/
theorem exact_transport (f : P →+ H) (g : H →+ Q)
    (e : H ≃+ H') (hexact : Function.Exact f g) :
    Function.Exact (transportInclusion f e)
      (transportObstruction g e) := by
  apply (AddMonoidHom.exact_iff).mpr
  exact range_transportInclusion_eq_ker_transportObstruction
    f g e ((AddMonoidHom.exact_iff).mp hexact)

end GRWTSK.CategoryTheoryHomologicalAlgebra.KummerExactTransport
