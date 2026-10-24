import GRWTSK.Algebra.QuarticCubicResidueSeparation

/-!
# Separable cubic after residue-field reduction

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

For a monic quartic coefficient tuple reduced into a field, nonzero
Cubic.discr implies separability of the actual reduced cubic polynomial
provided it splits there. The statement is characteristic-independent.
The split hypothesis is explicit and may alternatively be discharged
after passing to a splitting field.
-/

namespace GRWTSK.Algebra.QuarticCubicResidueSeparable

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicDiscriminantReduction
open GRWTSK.Algebra.QuarticCubicPolynomialComparison
open GRWTSK.Algebra.QuarticBaseResolvent

noncomputable section

variable {R F : Type*} [CommRing R] [Field F]

/-- Reduction of a quartic's adjacency cubic is separable whenever
its reduced discriminant is nonzero and the cubic splits in F. -/
theorem reduced_adjacencyCubic_separable
    (f : R →+* F) (s₁ s₂ s₃ s₄ : R)
    (hs : (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Splits)
    (hd : f (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Separable := by
  have hd' : (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).discr ≠ 0 := by
    rwa [adjacencyCubic_discr_map] 
  have hn := GRWTSK.Algebra.QuarticCubicResidueSeparation.adjacencyCubic_roots_nodup_of_discr_ne_zero
    (f s₁) (f s₂) (f s₃) (f s₄) hs hd'
  apply (Polynomial.nodup_roots_iff_of_splits ?_ hs).mp hn
  intro h
  have hh := congrArg (fun q : F[X] => q.coeff 3) h
  simpa [Cubic.toPoly, adjacencyCubic] using hh

end
end GRWTSK.Algebra.QuarticCubicResidueSeparable
