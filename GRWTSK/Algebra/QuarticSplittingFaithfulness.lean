import GRWTSK.Algebra.QuarticRootFaithfulness
import Mathlib.FieldTheory.SplittingField.IsSplittingField

/-!
# Quartic root generation in a genuine splitting field

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The chosen splitting-field instance provides generation by the actual
root set. A degree-four root-multiset enumeration has exactly that
root set as its range; therefore its four roots generate the extension.
No irreducibility, characteristic-zero or full-S4 assumption.
-/

namespace GRWTSK.Algebra.QuarticSplittingFaithfulness

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticSplitting
open GRWTSK.Algebra.QuarticRootFaithfulness
open GRWTSK.Algebra.QuarticRootLocusEnumeration
open GRWTSK.Algebra.QuarticGaloisMatching

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- Root generation is automatic in the actual splitting field, provided
the enumerated polynomial is nonzero. -/
theorem rootsGenerate_of_isSplittingField
    (p : K[X]) [IsSplittingField K L p]
    (e : QuarticRootEnumeration (L := L) p) (hne : p ≠ 0) :
    RootsGenerate p e := by
  unfold RootsGenerate
  have hrange : p.rootSet L = Set.range e.r := by
    ext x
    rw [← rootLocus_eq_range_of_enumeration p e hne]
    rfl
  rw [← hrange]
  exact IsSplittingField.adjoin_rootSet L p

/-- For a separable quartic of exact degree four in its splitting field,
the root permutation representation is faithful. -/
theorem faithful_root_action_of_isSplittingField
    (p : K[X]) [IsSplittingField K L p]
    (hdegree : p.natDegree = 4) (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    Function.Injective
      (actualRootPermutationHom p e
        (by intro h; simp [h] at hdegree)
        (enumeration_injective_of_separable p hsep e)) := by
  have hne : p ≠ 0 := by
    intro h
    simp [h] at hdegree
  exact actualRootPermutationHom_injective_of_generates p e hne
    (enumeration_injective_of_separable p hsep e)
    (rootsGenerate_of_isSplittingField p e hne)

end
end GRWTSK.Algebra.QuarticSplittingFaithfulness
