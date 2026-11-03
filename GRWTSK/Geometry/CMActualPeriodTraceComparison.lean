/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMRiemannToProjectivityConsumer
import OAI.AlgebraicGeometry.ComplexMultiplication.CM.PeriodHermitian
import OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion
import Mathlib.Tactic

/-!
# Actual CM period lattice, local trace convention and upstream projectivity

The existing grwtsk CM trace is Tr(xi * x * c(y)); the pinned upstream
OAI.cmTracePairing is Tr(xi * c(x) * y). They are opposite for an
anti-invariant coefficient. The upstream positive period Riemann form is
MINUS the upstream trace pairing, hence its orientation agrees with the
original grwtsk trace pairing. Both signs are retained here.

The upstream period lattice is the image of THE RING OF INTEGERS of E,
not the integer span of an arbitrary Q-basis used in local
CMLatticePolarization. The two should be commensurable, but they are
NOT definitionally identical. We prove the exact membership criterion
and that every local basis-lattice point has some individually cleared
positive denominator. No unproved uniform denominator is asserted.

The genuine period Hermitian (already sourced upstream) is bundled as a
star-semilinear sesquilinear form and consumed by the upstream Riemann
projectivity theorem, on the ACTUAL periodIntegerLattice. This closes
an existence-level period projectivity consumer with NO arbitrary
period comparison input, but it DOES NOT identify that abelian torus
with a particular external original CM variety, produce a physical Chern
connection, or imply a Möbius energy/RH/CERN result.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMNumberFieldIndex
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMTracePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMLatticePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannForm
open OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]
local notation "n" => Module.finrank ℚ E

/-- SOURCE-EXACT sign-convention bridge: local conjugation in the second
slot is upstream conjugation in the FIRST slot after swapping inputs. -/
theorem grwtskTrace_eq_upstream_swap (xi x y : E) :
    CMTracePolarization.tracePairing E xi x y =
      TraceForm.cmTracePairing E xi y x := by
  simp only [CMTracePolarization.tracePairing,
    TraceForm.cmTracePairing_apply]
  congr 1
  change xi * x * (IsCMField.complexConj E y) =
    xi * (IsCMField.complexConj E y) * x
  ring

/-- An actual imaginary coefficient with the POSITIVE integer multiplier
chosen in upstream IntegralPolarization, not a freely normalized scalar. -/
def actualPeriodXi (epsilon : TypeHodgeStructure.CMEmbeddingType E) : E :=
  epsilon.polarizationMultiplier • epsilon.imaginaryElement

theorem actualPeriodXi_antiInvariant
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    TraceForm.cmFieldConjugation E (actualPeriodXi E epsilon) =
      -(actualPeriodXi E epsilon) := by
  unfold actualPeriodXi
  change (IsCMField.complexConj E)
      (epsilon.polarizationMultiplier • epsilon.imaginaryElement) =
    -(epsilon.polarizationMultiplier • epsilon.imaginaryElement)
  rw [map_nsmul, epsilon.imaginaryElement_conjugate, nsmul_neg]

/-- The SOURCE sign cancellation: upstream period form = minus upstream
trace = PLUS the grwtsk convention, for the SAME coefficient xi. -/
theorem periodRiemannForm_eq_grwtskTrace
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) (x y : E) :
    epsilon.periodRiemannForm (epsilon.periodEmbedding x)
      (epsilon.periodEmbedding y) =
      (CMTracePolarization.tracePairing E (actualPeriodXi E epsilon) x y : ℝ) := by
  let xi := actualPeriodXi E epsilon
  have hs := TraceForm.cmTracePairing_skew E xi
    (actualPeriodXi_antiInvariant E epsilon) x y
  calc
    _ = -(epsilon.integralPolarization.form x y : ℝ) :=
      epsilon.periodRiemannForm_trace x y
    _ = -(TraceForm.cmTracePairing E xi x y : ℝ) := by
      simp [xi, actualPeriodXi, epsilon.integralPolarization_form]
    _ = (TraceForm.cmTracePairing E xi y x : ℝ) := by
      rw [hs]
      ring
    _ = (CMTracePolarization.tracePairing E xi x y : ℝ) := by
      exact congrArg (fun q : ℚ => (q : ℝ))
        (grwtskTrace_eq_upstream_swap E xi x y).symm

/-- The local sign orientation also controls the imaginary part of the
UPSTREAM positive Hermitian form on actual field periods. -/
theorem periodHermitian_im_eq_grwtskTrace
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) (x y : E) :
    (epsilon.periodHermitian (epsilon.periodEmbedding x)
      (epsilon.periodEmbedding y)).im =
      (CMTracePolarization.tracePairing E (actualPeriodXi E epsilon) x y : ℝ) := by
  rw [epsilon.periodHermitian_im]
  exact periodRiemannForm_eq_grwtskTrace E epsilon x y

/-- The ORIGINAL local rational-basis integer lattice has its own
integer-valued pairing and its OWN denominator-clearing scale. If its
chosen xi matches the actual upstream CM period xi, the comparison
has this exact scale, not an implicit integral identification. -/
theorem originalBasis_periodHermitian_scaled
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    {v : OddSignRow E} (X : SignControlledXi E v)
    (hxi : X.xi = actualPeriodXi E epsilon)
    (a b : Fin n → ℤ) :
    (latticeScale E X : ℝ) *
      (epsilon.periodHermitian (epsilon.periodEmbedding (latticeVector E a))
        (epsilon.periodEmbedding (latticeVector E b))).im =
      (integralPairing E X a b : ℝ) := by
  rw [periodHermitian_im_eq_grwtskTrace, ← hxi]
  exact_mod_cast scaled_tracePairing_lattice_integral E X a b

/-- The actual period embedding separates ALL field elements. -/
theorem periodEmbedding_injective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    Function.Injective epsilon.periodEmbedding := by
  intro x y h
  let w : _root_.NumberField.InfinitePlace E := Classical.choice inferInstance
  apply (epsilon.placeEmbedding w).injective
  exact congrFun h w

/-- Complete arithmetic period lattice is the full image of O_E; this
reuses the upstream FULL source, not a selected Galois coordinate slice. -/
theorem ringOfIntegers_period_range
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    Set.range (fun a : 𝓞 E => epsilon.periodEmbedding (a : E)) =
      (epsilon.periodIntegerLattice : Set (PeriodSpace.CMPeriodSpace E)) := by
  ext z
  exact (epsilon.mem_periodIntegerLattice z).symm

/-- An arbitrary local rational-basis Z-lattice vector is in the upstream
period integer lattice IF AND ONLY IF it is an algebraic integer. -/
theorem localBasis_period_mem_iff_integral
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : Fin n → ℤ) :
    epsilon.periodEmbedding (latticeVector E a) ∈
      epsilon.periodIntegerLattice ↔ IsIntegral ℤ (latticeVector E a) := by
  rw [epsilon.mem_periodIntegerLattice]
  constructor
  · rintro ⟨u, hu⟩
    have he : (u : E) = latticeVector E a :=
      (periodEmbedding_injective E epsilon) hu
    rw [← he]
    exact u.property
  · intro h
    exact ⟨⟨latticeVector E a, h⟩, rfl⟩

/-- Number-field arithmetic supplies an individual positive denominator
for any local rational-basis lattice point. It is NOT the same as the
polarization's latticeScale and is not yet one uniform denominator. -/
theorem localBasis_period_exists_integral_multiple
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : Fin n → ℤ) :
    ∃ m : ℕ, 0 < m ∧
      epsilon.periodEmbedding (m • latticeVector E a) ∈
        epsilon.periodIntegerLattice := by
  obtain ⟨m, hm, hint⟩ :=
    IntegralPolarization.exists_positive_integral_multiple E (latticeVector E a)
  refine ⟨m, hm, (epsilon.mem_periodIntegerLattice _).2 ?_⟩
  exact ⟨⟨m • latticeVector E a, hint⟩, rfl⟩

/-- Bundle the ACTUAL upstream positive Hermitian form in exactly the
sesquilinear type consumed by the pinned Riemann projectivity theorem. -/
def actualPeriodSesquilinear
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    PeriodSpace.CMPeriodSpace E →ₗ⋆[ℂ]
      PeriodSpace.CMPeriodSpace E →ₗ[ℂ] ℂ where
  toFun := epsilon.periodHermitian
  map_add' x y := by
    apply LinearMap.ext
    intro z
    exact epsilon.periodHermitian_add_left x y z
  map_smul' c x := by
    apply LinearMap.ext
    intro z
    change epsilon.periodHermitian (c • x) z =
      star c * epsilon.periodHermitian x z
    exact PeriodHermitian.cmPeriodHermitian_smul_left E _ c x z

/-- Unlike the preceding conditional source-period consumer, the actual
ε-period lattice has its own already-proved discrete cocompact topology,
positive Hermitian form and integral imaginary periods. This produces
an existence-level projective complex torus WITHOUT assuming a new
abstract period comparison. The identification with the PARTICULAR
external original CM variety is not part of this statement. -/
theorem actual_period_torus_projective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    IsProjectiveComplexTorus
      (PeriodSpace.CMPeriodSpace E)
      epsilon.periodIntegerLattice.toAddSubgroup := by
  letI : DiscreteTopology epsilon.periodIntegerLattice.toAddSubgroup :=
    epsilon.periodIntegerLattice_discrete
  letI : CompactSpace
      (PeriodSpace.CMPeriodSpace E ⧸ epsilon.periodIntegerLattice.toAddSubgroup) :=
    epsilon.periodTorus_compact
  apply (riemann_projectivity_criterion
    (PeriodSpace.CMPeriodSpace E)
    epsilon.periodIntegerLattice.toAddSubgroup).2
  refine ⟨actualPeriodSesquilinear E epsilon, ?_, ?_, ?_⟩
  · intro u w
    change epsilon.periodHermitian w u =
      star (epsilon.periodHermitian u w)
    exact epsilon.periodHermitian_symm u w
  · intro u hu
    exact epsilon.periodHermitian_positive u hu
  · intro u hu w hw
    obtain ⟨m, hm⟩ := epsilon.periodRiemannForm_isInteger u w hu hw
    refine ⟨m, ?_⟩
    change (epsilon.periodHermitian u w).im = (m : ℝ)
    rw [epsilon.periodHermitian_im]
    exact hm.symm

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
