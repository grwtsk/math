import GRWTSK.Algebra.QuarticAdjacencyStabilizer
import Mathlib.FieldTheory.Galois.Basic

/-!
# Galois correspondence for the quartic adjacency field

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Under finite dimensionality and a genuine Galois extension L/K, the
adjacency-generated intermediate field is the fixed field of its own
pointwise stabilizer. The equality is an instance of the fundamental
theorem of Galois theory, not a new assertion that any given quartic
has full symmetric Galois group.

The subgroup equality with the preimage of V4 depends on the earlier
actual-root permutation and matching-action sources.
-/

namespace GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence

open Polynomial
open GRWTSK.Algebra.QuarticAdjacencyIntermediateField
open GRWTSK.Algebra.QuarticAdjacencyStabilizer
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section
variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The custom stabilizer is exactly Mathlib's fixing subgroup for
the actual adjacency intermediate field. -/
theorem adjacencyStabilizer_eq_fixingSubgroup
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p) :
    adjacencyStabilizer p e =
      IntermediateField.fixingSubgroup (adjacencyField p e) := by
  ext φ
  change (∀ x : adjacencyField p e, φ x.1 = x.1) ↔ _
  exact (IntermediateField.mem_fixingSubgroup_iff φ).symm

/-- The generated adjacency field is genuinely the fixed field of
its stabilizer, when L/K is finite Galois. -/
theorem adjacencyField_eq_fixedField
    [FiniteDimensional K L] [IsGalois K L]
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p) :
    IntermediateField.fixedField (adjacencyStabilizer p e) =
      adjacencyField p e := by
  rw [adjacencyStabilizer_eq_fixingSubgroup]
  exact IntermediateField.fixedField_fixingSubgroup

/-- The relative extension degree equals the cardinality of the
actual stabilizer, without assuming that it has four elements. -/
theorem finrank_adjacencyField_eq_card_stabilizer
    [FiniteDimensional K L] [IsGalois K L]
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p) :
    Module.finrank (adjacencyField p e) L =
      Nat.card (adjacencyStabilizer p e) := by
  rw [← adjacencyField_eq_fixedField p e]
  exact IntermediateField.finrank_fixedField_eq_card

end
end GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence
