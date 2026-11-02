/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMRiemannSemicharacter
import OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion
import Mathlib.Tactic

/-!
# Consumer of the actual CM trace periods in upstream torus projectivity

The pinned openai/math@4eaee875... RiemannProjectivity criterion already
proves existence of a projective complex torus from a positive Hermitian
form with integral lattice periods. We do NOT reprove that theorem, and
we do NOT pretend to have constructed its period comparison with the
specified original CM abelian variety.

This file states exactly the remaining bridge, on the SOURCE CM trace lattice:
  * an injective additive period map from the ORIGINAL Fin(n)→ℤ lattice;
  * a discrete cocompact period image in the chosen complex vector space;
  * a positive Hermitian form on that space;
  * imaginary Hermitian period pairings equal the source ORIGINAL
    denominator-cleared integer CM trace form.

The last premise DISCHARGES the entire integrality clause of the already
proved upstream projectivity criterion. Hence a genuine projective
embedding follows conditionally with no arbitrary replacement matrix.
The previous file separately constructs the source Appell-Humbert
semicharacter, but this project's doubled-automorphy projectivity theorem
does not require choosing that semicharacter.

Source-specific period, Hodge, ample Chern connection and physical
residue-channel transports remain to be identified. No RH energy or
Schwartz-to-periodic smoothing conclusion is claimed.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannToProjectivityConsumer

open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMNumberFieldIndex
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMLatticePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannSemicharacter

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
variable {v : OddSignRow E}
local notation "n" => Module.finrank ℚ E

/-- The additional PERIOD realization, not a source consequence. The
integral input is a genuine source CM trace pairing, not an arbitrary
symplectic form. -/
structure SourcePeriodComparison
    (X : SignControlledXi E v)
    (V : Type*) [NormedAddCommGroup V] [NormedSpace ℂ V]
    [FiniteDimensional ℂ V] where
  period : (Fin n → ℤ) →+ V
  period_injective : Function.Injective period
  hermitian : V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ
  hermitian_symm : ∀ a b : V, hermitian b a = star (hermitian a b)
  hermitian_positive : ∀ a : V, a ≠ 0 → 0 < (hermitian a a).re
  source_imaginary_period : ∀ a b : Fin n → ℤ,
    (hermitian (period a) (period b)).im =
      (integralPairing E X a b : ℝ)

/-- The original source exactly supplies integrality for EVERY actual
period. No new independent integrality predicate is assumed here. -/
theorem source_period_imaginary_integral
    {V : Type*} [NormedAddCommGroup V] [NormedSpace ℂ V]
    [FiniteDimensional ℂ V]
    (X : SignControlledXi E v)
    (P : SourcePeriodComparison E X V)
    (u w : V) (hu : u ∈ P.period.range) (hw : w ∈ P.period.range) :
    ∃ m : ℤ, (P.hermitian u w).im = (m : ℝ) := by
  rcases hu with ⟨a, rfl⟩
  rcases hw with ⟨b, rfl⟩
  exact ⟨integralPairing E X a b, P.source_imaginary_period a b⟩

/-- A complete SOURCE-typed conditional consumption of the upstream theorem.
Only the period realization, positivity, discrete/cocompactness and exact
trace comparison remain independent; integrality is now discharged. -/
theorem source_period_projective_torus
    {V : Type*} [NormedAddCommGroup V] [NormedSpace ℂ V]
    [FiniteDimensional ℂ V]
    (X : SignControlledXi E v)
    (P : SourcePeriodComparison E X V)
    [DiscreteTopology P.period.range]
    [CompactSpace (V ⧸ P.period.range)] :
    OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion.
      IsProjectiveComplexTorus V P.period.range := by
  apply (OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion.
    riemann_projectivity_criterion V P.period.range).2
  refine ⟨P.hermitian, P.hermitian_symm, P.hermitian_positive, ?_⟩
  intro u hu w hw
  exact source_period_imaginary_integral E X P u w hu hw

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannToProjectivityConsumer
