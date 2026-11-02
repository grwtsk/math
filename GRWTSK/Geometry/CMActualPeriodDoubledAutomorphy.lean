/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualPeriodTraceComparison
import OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion
import Mathlib.Tactic

/-!
# Actual O_E-period holomorphic doubled automorphy and cover-frame action

The original CM field and embedding type provide a REAL, sourced period
integer lattice, a strictly positive Hermitian form H, and integral periods.
The upstream RiemannProjectivity proof already establishes the holomorphic
nonvanishing doubled factor J₂(λ,z)=exp(2πH(λ,z)+πH(λ,λ)) and the exact
translation cocycle. This module specializes that theorem to each actual
algebraic integer a : O_E; it introduces no independent automorphy law.

The factor defines a strict action of the additive period lattice on the
covering space times a trivial complex line, including exact inverses. This
is the transition-function precursor of a descended holomorphic line bundle.
There is NO identification yet with the user's particular preexisting CM
abelian variety or a Chern connection, and the DOUBLED factor is not a proof
of the original undoubled mod-two residue flux.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodDoubledAutomorphy

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion
open OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion.Construction
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- Every actual ring-of-integers period belongs to the SOURCE lattice. -/
theorem sourceIntegralPeriod_mem
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) (a : 𝓞 E) :
    epsilon.periodEmbedding (a : E) ∈ epsilon.periodIntegerLattice :=
  (epsilon.mem_periodIntegerLattice _).2 ⟨a, rfl⟩

/-- The actual positive Hermitian integral period identity in the exact
upstream sesquilinear type; no freely supplied input is needed. -/
theorem sourceHermitian_integral_periods
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u w : PeriodSpace.CMPeriodSpace E)
    (hu : u ∈ epsilon.periodIntegerLattice)
    (hw : w ∈ epsilon.periodIntegerLattice) :
    ∃ m : ℤ, ((actualPeriodSesquilinear E epsilon) u w).im = (m : ℝ) := by
  obtain ⟨m, hm⟩ := epsilon.periodRiemannForm_isInteger u w hu hw
  refine ⟨m, ?_⟩
  change (epsilon.periodHermitian u w).im = (m : ℝ)
  rw [epsilon.periodHermitian_im]
  exact hm.symm

/-- A nonzero holomorphic transition factor for EACH original a : O_E.
The factor is doubled, so it is independent of a theta semicharacter. -/
def actualDoubledFactor
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) : ℂ :=
  doubledAutomorphy (actualPeriodSesquilinear E epsilon)
    (epsilon.periodEmbedding (a : E)) z

theorem actualDoubledFactor_ne_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    actualDoubledFactor E epsilon a z ≠ 0 :=
  doubledAutomorphy_ne_zero (actualPeriodSesquilinear E epsilon) _ _

@[simp] theorem actualDoubledFactor_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) :
    actualDoubledFactor E epsilon 0 z = 1 := by
  simpa [actualDoubledFactor] using
    (doubledAutomorphy_zero (actualPeriodSesquilinear E epsilon) z)

theorem actualDoubledFactor_holomorphic
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) (a : 𝓞 E) :
    Differentiable ℂ (actualDoubledFactor E epsilon a) :=
  doubledAutomorphy_differentiable (actualPeriodSesquilinear E epsilon) _

/-- Direct consumption of the upstream projectivity-source cocycle on the
actual O_E lattice, not a conjectural factor on chosen residue representatives. -/
theorem actualDoubledFactor_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    actualDoubledFactor E epsilon (a + b) z =
      actualDoubledFactor E epsilon a
          (z + epsilon.periodEmbedding (b : E)) *
        actualDoubledFactor E epsilon b z := by
  have hs : ∀ u v : PeriodSpace.CMPeriodSpace E,
      (actualPeriodSesquilinear E epsilon) v u =
        star ((actualPeriodSesquilinear E epsilon) u v) := by
    intro u v
    exact epsilon.periodHermitian_symm u v
  have hi : ∀ u ∈ epsilon.periodIntegerLattice.toAddSubgroup,
      ∀ v ∈ epsilon.periodIntegerLattice.toAddSubgroup,
      ∃ m : ℤ, ((actualPeriodSesquilinear E epsilon) u v).im = (m : ℝ) := by
    intro u hu v hv
    exact sourceHermitian_integral_periods E epsilon u v hu hv
  have h := doubledAutomorphy_add (actualPeriodSesquilinear E epsilon)
    hs epsilon.periodIntegerLattice.toAddSubgroup hi
    (epsilon.periodEmbedding (a : E)) (epsilon.periodEmbedding (b : E)) z
    (sourceIntegralPeriod_mem E epsilon a)
    (sourceIntegralPeriod_mem E epsilon b)
  simpa only [actualDoubledFactor, map_add] using h

/-- The exact covering-space line-frame translation; no quotient bundle or
particular abelian-variety line bundle is asserted by this definition. -/
def periodFrameShift
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    PeriodSpace.CMPeriodSpace E × ℂ :=
  (p.1 + epsilon.periodEmbedding (a : E),
    actualDoubledFactor E epsilon a p.1 * p.2)

@[simp] theorem periodFrameShift_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    periodFrameShift E epsilon 0 p = p := by
  rcases p with ⟨z, w⟩
  simp [periodFrameShift]

/-- Exact group-action law for the holomorphic transition functions. -/
theorem periodFrameShift_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    periodFrameShift E epsilon (a + b) p =
      periodFrameShift E epsilon a (periodFrameShift E epsilon b p) := by
  rcases p with ⟨z, w⟩
  apply Prod.ext
  · change z + epsilon.periodEmbedding ((a + b : 𝓞 E) : E) =
        (z + epsilon.periodEmbedding (b : E)) +
          epsilon.periodEmbedding (a : E)
    simp only [map_add]
    abel
  · change actualDoubledFactor E epsilon (a + b) z * w =
        actualDoubledFactor E epsilon a
            (z + epsilon.periodEmbedding (b : E)) *
          (actualDoubledFactor E epsilon b z * w)
    rw [actualDoubledFactor_add]
    ring

/-- Original lattice inverse and genuine invertible frame shift. -/
theorem periodFrameShift_neg_comp
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    periodFrameShift E epsilon (-a) (periodFrameShift E epsilon a p) = p := by
  rw [← periodFrameShift_add]
  simp

/-- No originally nonzero fiber coordinate can be lost in a valid shift. -/
theorem periodFrameShift_nonzero_fiber
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (p : PeriodSpace.CMPeriodSpace E × ℂ)
    (hp : p.2 ≠ 0) :
    (periodFrameShift E epsilon a p).2 ≠ 0 := by
  exact mul_ne_zero (actualDoubledFactor_ne_zero E epsilon a p.1) hp

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodDoubledAutomorphy
