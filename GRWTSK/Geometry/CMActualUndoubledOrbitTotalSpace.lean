/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualUndoubledFactorCocycle
import Mathlib.Topology.Algebra.Group.Quotient
import Mathlib.Tactic

/-!
# Algebraic orbit total-space for the actual O_E Appell-Humbert action

The ACTUAL ring-of-integers additive group acts on the universal covering
period vector space crossed with C via the SOURCE undoubled factor.
This constructs an honest orbit SET and its projection to the ACTUAL
period torus, with no arbitrary abstract equivalence relation: the
relation and transitivity are derived from the full Appell-Humbert cocycle.

There is no claim of local triviality, bundle topology, holomorphic quotient
structure, Chern connection, or an identification with any external CM
variety. The proper analytic line-bundle descent remains an acceptance gate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledOrbitTotalSpace

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodDoubledAutomorphy

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- Original source period cover times one complex fiber. -/
abbrev CoverTotal : Type := PeriodSpace.CMPeriodSpace E × ℂ

/-- Orbit equivalence derives from the actual O_E holomorphic action. -/
def coverOrbitSetoid
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    Setoid (CoverTotal E) where
  r p q := ∃ a : 𝓞 E, q = undoubledFrameShift E epsilon a p
  iseqv := by
    constructor
    · intro p
      exact ⟨0, (undoubledFrameShift_zero E epsilon p).symm⟩
    · intro p q hpq
      obtain ⟨a, rfl⟩ := hpq
      refine ⟨-a, ?_⟩
      exact (undoubledFrameShift_neg_comp E epsilon a p).symm
    · intro p q r hpq hqr
      obtain ⟨a, rfl⟩ := hpq
      obtain ⟨b, rfl⟩ := hqr
      refine ⟨b+a, ?_⟩
      rw [undoubledFrameShift_add]

/-- The algebraic orbit quotient of the full period-cover action. -/
abbrev ActualOrbitTotal
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) : Type :=
  Quotient (coverOrbitSetoid E epsilon)

/-- The projection is defined on the ACTUAL period torus. It is well-defined
because all genuine O_E translations belong to its periodIntegerLattice. -/
def actualOrbitBaseProjection
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    ActualOrbitTotal E epsilon → epsilon.periodTorus := by
  refine Quotient.lift
    (fun p : CoverTotal E =>
       (QuotientAddGroup.mk p.1 : epsilon.periodTorus)) ?_
  intro p q hpq
  obtain ⟨a, rfl⟩ := hpq
  change (QuotientAddGroup.mk p.1 : epsilon.periodTorus) =
    QuotientAddGroup.mk (p.1 + epsilon.periodEmbedding (a : E))
  have hperiod : (QuotientAddGroup.mk (epsilon.periodEmbedding (a : E)) :
      epsilon.periodTorus) = 0 := by
    exact (QuotientAddGroup.eq_zero_iff _).mpr
      (sourceIntegralPeriod_mem E epsilon a)
  rw [QuotientAddGroup.mk_add, hperiod, add_zero]

/-- Exact source-quotient projection on every cover representative. -/
@[simp] theorem actualOrbitBaseProjection_mk
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : CoverTotal E) :
    actualOrbitBaseProjection E epsilon (Quotient.mk _ p) =
      (QuotientAddGroup.mk p.1 : epsilon.periodTorus) := rfl

/-- Every actual period-torus point is covered by some orbit. Surjectivity
is not local triviality and does not prove the holomorphic bundle axioms. -/
theorem actualOrbitBaseProjection_surjective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    Function.Surjective (actualOrbitBaseProjection E epsilon) := by
  intro q
  obtain ⟨z, rfl⟩ := (QuotientAddGroup.mk_surjective q :
    ∃ z : PeriodSpace.CMPeriodSpace E,
      (QuotientAddGroup.mk z : epsilon.periodTorus) = q)
  refine ⟨Quotient.mk _ (z, (0 : ℂ)), ?_⟩
  rfl

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledOrbitTotalSpace
