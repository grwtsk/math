/-
Copyright (c) 2026 grwtsk contributors. MIT.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No RH, GRH, zero-ordinate arithmetic, spectral-cover existence, or
non-soficity claim is asserted without the explicit supplier hypotheses below.
-/
import GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrdinateSoficLanguageCriterion

set_option autoImplicit false
noncomputable section

/-!
# Actual zeta base problem for conditional RH-to-generalized spectral transport

The generic spectral-cover interface is specialized here to the repository's
actual nontrivial Riemann-zeta zero predicate and the literal critical line
Re z = 1/2.

This removes one abstraction layer from the proposed RH = GRH slogan:
the base zero problem is the actual zeta predicate already used by the
zero-ordinate sofic criterion; a supplied spectral-cover family transports
zeta critical-line placement to every generalized zero problem; the reverse
direction requires an actual BaseSpecialization into one generalized family
member; and the same zeta critical-line premise can feed the existing
eventual-sofic ordinate contradiction.

No generalized L-function family, spectral map, zero preservation theorem,
critical-locus pullback, RH, GRH, irrationality, or transcendence theorem is
constructed by this file.
-/

universe uIndex uGen uObs uState uSpectral

namespace GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge

open GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover
open GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.DynamicSoficSpectralCover

/-- The base zero problem is exactly the repository's selected nontrivial
Riemann-zeta zeros with the literal critical-line predicate. -/
def zetaZeroProblem : ZeroProblem ℂ where
  isZero := ActualZetaZero
  critical := fun z => z.re = (1 : ℝ) / 2

/-- The abstract zero-problem hypothesis is definitionally the zeta critical
placement proposition already used by the ordinate-sofic module. -/
theorem zetaZeroProblem_hypothesis_iff :
    zetaZeroProblem.Hypothesis ↔ ZetaCriticalPlacement := by
  rfl

/-- A spectral cover from the actual zeta zero problem to every member of a
generalized family transports zeta critical-line placement to the entire
family. This is the exact conditional RH-to-generalized-RH direction in this
interface. -/
theorem zetaCriticalPlacement_implies_generalized_of_spectralCovers
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily zetaZeroProblem family)
    (hZeta : ZetaCriticalPlacement) :
    GeneralizedHypothesis family := by
  apply rh_implies_generalized_of_spectralCoverFamily covers
  exact zetaZeroProblem_hypothesis_iff.mpr hZeta

/-- The reverse generalized-to-zeta direction is structural when one actual
family member contains the zeta base problem through a typed specialization. -/
theorem generalized_implies_zetaCriticalPlacement_of_member_specialization
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (i0 : Index)
    (specialization : BaseSpecialization zetaZeroProblem (family i0))
    (hGeneralized : GeneralizedHypothesis family) :
    ZetaCriticalPlacement := by
  apply zetaZeroProblem_hypothesis_iff.mp
  exact generalized_implies_base_of_member_specialization
    i0 specialization hGeneralized

/-- Under both typed suppliers, spectral covers from zeta to every generalized
member and one generalized member specializing back to zeta, the actual zeta
critical-placement statement is equivalent to the generalized family
hypothesis. No unconditional GRH = RH is claimed. -/
theorem zetaCriticalPlacement_iff_generalized_of_spectralCovers_and_specialization
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily zetaZeroProblem family)
    (i0 : Index)
    (specialization : BaseSpecialization zetaZeroProblem (family i0)) :
    ZetaCriticalPlacement ↔ GeneralizedHypothesis family := by
  rw [← zetaZeroProblem_hypothesis_iff]
  exact rh_iff_generalized_of_spectralCovers_and_member_specialization
    covers i0 specialization

/-- The same supplied zeta critical-line premise can feed both the generalized
spectral-cover transport and the existing eventual-sofic ordinate split.
The sofic arithmetic suppliers remain independent and explicit. -/
theorem zetaCriticalPlacement_transports_and_splits_ordinates
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily zetaZeroProblem family)
    {Obs : Type uObs} {State : Type uState} {Spectral : Type uSpectral}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (process : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (soficSuppliers : ZetaEventualSoficSuppliers process.labelTrace)
    (hZeta : ZetaCriticalPlacement) :
    GeneralizedHypothesis family ∧
      ∀ z, ActualZetaZero z →
        (¬ RationalReal (zetaHeight z)) ∧
        (z.re = (1 : ℝ) / 2) ∧
        (¬ AlgebraicReal (zetaHeight z)) := by
  refine ⟨
    zetaCriticalPlacement_implies_generalized_of_spectralCovers
      covers hZeta,
    ?_⟩
  exact eventual_ordinate_split_for_dynamic_spectral_cover
    process soficSuppliers hZeta


/-- The non-eventual-sofic premise can be discharged by the explicit
right-context certificate developed in the exact-language layer.  This theorem
still keeps the two arithmetic-to-eventual-sofic classifications and zeta
critical placement as independent hypotheses.  The spectral-cover family is
likewise supplied rather than constructed. -/
theorem zetaCriticalPlacement_transports_with_rightContext_certificate
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily zetaZeroProblem family)
    {Obs : Type uObs} {State : Type uState} {Spectral : Type uSpectral}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (process : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover.EventuallySoficTrace
          (process.labelTrace z))
    (algebraicOnLineEventually :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) →
          GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover.EventuallySoficTrace
            (process.labelTrace z))
    (hcontexts : ZetaUnboundedTailContexts process.labelTrace)
    (hZeta : ZetaCriticalPlacement) :
    GeneralizedHypothesis family ∧
      ∀ z, ActualZetaZero z →
        (¬ RationalReal (zetaHeight z)) ∧
        (z.re = (1 : ℝ) / 2) ∧
        (¬ AlgebraicReal (zetaHeight z)) := by
  apply zetaCriticalPlacement_transports_and_splits_ordinates
    covers process
  · exact eventualSuppliers_of_zeta_rightContexts
      process.labelTrace
      rationalEventually algebraicOnLineEventually hcontexts
  · exact hZeta


/-- A complete family of finite-capacity continuation certificates for the SAME
zeta trace supplies the unbounded-tail-context premise, after which the existing
right-context transport theorem applies unchanged.  Each arithmetic-to-sofic
classification, the spectral-cover family, the dynamic spectral process, and
critical-line placement remain independent supplied hypotheses. -/
theorem zetaCriticalPlacement_transports_with_all_capacityCertificates
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily zetaZeroProblem family)
    {Obs : Type uObs} {State : Type uState} {Spectral : Type uSpectral}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (process : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover.EventuallySoficTrace
          (process.labelTrace z))
    (algebraicOnLineEventually :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) →
          GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover.EventuallySoficTrace
            (process.labelTrace z))
    (hall : ∀ capacity : ℕ,
      ZetaTailContextCapacityCertificate process.labelTrace capacity)
    (hZeta : ZetaCriticalPlacement) :
    GeneralizedHypothesis family ∧
      ∀ z, ActualZetaZero z →
        (¬ RationalReal (zetaHeight z)) ∧
        (z.re = (1 : ℝ) / 2) ∧
        (¬ AlgebraicReal (zetaHeight z)) := by
  exact zetaCriticalPlacement_transports_with_rightContext_certificate
    covers process rationalEventually algebraicOnLineEventually
    (zeta_unboundedTailContexts_of_all_capacityCertificates
      process.labelTrace hall)
    hZeta

end GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge
