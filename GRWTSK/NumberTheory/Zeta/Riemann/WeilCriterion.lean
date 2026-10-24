/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Source-bound Weil criterion interfaces

This file advances issue #219 without importing an unverified classical theorem. It
formalizes the exact objects that an accepted zeta Weil criterion must inhabit:

* a source- and normalization-bound complex test subspace;
* a polarized Hermitian form whose diagonal is not positive by definition;
* separate proof records for positivity-to-RH, RH-to-positivity, and equivalence;
* exact negative-witness contrapositives at the admitted scope;
* positive-scalar normalization transport across linearly equivalent test classes.

A citation string has no proof authority. Every criterion direction contains an actual
Lean implication whose source binding must match the selected test space. No concrete
zeta Weil form or external criterion theorem is claimed in this file.
-/

namespace GRWTSK.RiemannHypothesis

/-- Exact admissible complex test space and all convention identities that determine
its mathematical meaning. -/
structure WeilTestSpace (T : Type*) [AddCommGroup T] [Module ℂ T] where
  carrier : Submodule ℂ T
  nontrivial : ∃ f : carrier, f ≠ 0
  sourceId : String
  revision : String
  normalizationId : String
  transformConvention : String
  involutionConvention : String
  topologyProfile : String
  invalidationKey : String

namespace WeilTestSpace

/-- Admitted test vectors. -/
abbrev Vector
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (space : WeilTestSpace T) :=
  space.carrier

/-- Source identity consumed by criterion records. -/
def binding
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (space : WeilTestSpace T) : SourceBinding where
  sourceId := space.sourceId
  revision := space.revision
  normalizationId := space.normalizationId

end WeilTestSpace

/-- Polarized Hermitian form on the exact admitted test class. The form is conjugate
linear in the first input and linear in the second input. Positivity is intentionally
absent from this structure. -/
structure WeilHermitianForm
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (space : WeilTestSpace T) where
  toFun : space.Vector → space.Vector → ℂ
  map_add_left : ∀ f g h, toFun (f + g) h = toFun f h + toFun g h
  map_smul_left : ∀ c f g, toFun (c • f) g = star c * toFun f g
  map_add_right : ∀ f g h, toFun f (g + h) = toFun f g + toFun f h
  map_smul_right : ∀ c f g, toFun f (c • g) = c * toFun f g
  hermitian : ∀ f g, toFun g f = star (toFun f g)
  diagonal_im_zero : ∀ f, (toFun f f).im = 0
  formId : String
  sourceRevision : String
  normalizationId : String
  invalidationKey : String

namespace WeilHermitianForm

/-- Real diagonal value used by the criterion. -/
def diagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space) (f : space.Vector) : ℝ :=
  (form.toFun f f).re

/-- Global positivity on exactly the selected test class. -/
def PositiveDiagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space) : Prop :=
  ∀ f, 0 ≤ form.diagonal f

end WeilHermitianForm

/-- Immutable source/trust metadata for one criterion theorem. The theorem term itself
lives in the direction record below. -/
structure WeilCriterionSource where
  binding : SourceBinding
  theoremId : String
  theoremRevision : String
  assumptionsProfile : String
  invalidationKey : String
  replayDisposition : GapDisposition
  deriving Repr

/-- Exact supported implication from Weil positivity to canonical RH. -/
structure WeilPositivityImpliesRH
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space) where
  source : WeilCriterionSource
  source_binding_eq : source.binding = space.binding
  proof : form.PositiveDiagonal → _root_.RiemannHypothesis

/-- Exact supported implication from canonical RH to Weil positivity. -/
structure RHImpliesWeilPositivity
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space) where
  source : WeilCriterionSource
  source_binding_eq : source.binding = space.binding
  proof : _root_.RiemannHypothesis → form.PositiveDiagonal

/-- Exact two-direction criterion at one test class and normalization. -/
structure WeilPositivityIffRH
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space) where
  source : WeilCriterionSource
  source_binding_eq : source.binding = space.binding
  proof : form.PositiveDiagonal ↔ _root_.RiemannHypothesis

namespace WeilPositivityIffRH

/-- Extract only the forward implication. -/
def toForward
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (criterion : WeilPositivityIffRH form) :
    WeilPositivityImpliesRH form where
  source := criterion.source
  source_binding_eq := criterion.source_binding_eq
  proof := criterion.proof.mp

/-- Extract only the reverse implication. -/
def toReverse
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (criterion : WeilPositivityIffRH form) :
    RHImpliesWeilPositivity form where
  source := criterion.source
  source_binding_eq := criterion.source_binding_eq
  proof := criterion.proof.mpr

end WeilPositivityIffRH

/-- A forward criterion gives a sufficient atlas profile for exact Weil positivity. -/
def WeilPositivityImpliesRH.localProfile
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (criterion : WeilPositivityImpliesRH form) :
    LocalRHProfile form.PositiveDiagonal :=
  LocalRHProfile.ofSufficient criterion.proof

/-- A two-direction criterion gives an equivalent atlas profile. -/
def WeilPositivityIffRH.localProfile
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (criterion : WeilPositivityIffRH form) :
    LocalRHProfile form.PositiveDiagonal :=
  LocalRHProfile.ofEquivalence criterion.proof

/-- Failure of RH yields a negative diagonal witness whenever the accepted forward
criterion has the exact stated scope. This is classical contraposition of the supplied
Lean theorem, not a witness constructed from symmetry alone. -/
theorem negativeWitness_of_not_rh
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (criterion : WeilPositivityImpliesRH form)
    (hnot : ¬ _root_.RiemannHypothesis) :
    ∃ f, form.diagonal f < 0 := by
  classical
  by_contra hnegative
  apply hnot
  apply criterion.proof
  intro f
  by_contra hnonnegative
  have hlt : form.diagonal f < 0 := lt_of_not_ge hnonnegative
  exact hnegative ⟨f, hlt⟩

/-- A negative witness refutes global positivity at the exact test class. -/
theorem not_positiveDiagonal_of_negativeWitness
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (witness : ∃ f, form.diagonal f < 0) :
    ¬ form.PositiveDiagonal := by
  rintro hpositive
  rcases witness with ⟨f, hnegative⟩
  exact (not_lt_of_ge (hpositive f)) hnegative

/-- Under the exact reverse criterion, a negative witness refutes RH. -/
theorem not_rh_of_negativeWitness
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (criterion : RHImpliesWeilPositivity form)
    (witness : ∃ f, form.diagonal f < 0) :
    ¬ _root_.RiemannHypothesis := by
  intro hrh
  exact not_positiveDiagonal_of_negativeWitness witness (criterion.proof hrh)

/-- Exact positive-scalar normalization and test-class equivalence. The repository form
is `scalar` times the source form after the declared linear equivalence. -/
structure PositiveNormalizationTransport
    {T S : Type*}
    [AddCommGroup T] [Module ℂ T]
    [AddCommGroup S] [Module ℂ S]
    {repoSpace : WeilTestSpace T} {sourceSpace : WeilTestSpace S}
    (repoForm : WeilHermitianForm repoSpace)
    (sourceForm : WeilHermitianForm sourceSpace) where
  transportId : String
  toSource : repoSpace.Vector ≃ₗ[ℂ] sourceSpace.Vector
  scalar : ℝ
  scalar_positive : 0 < scalar
  diagonal_eq :
    ∀ f, repoForm.diagonal f = scalar * sourceForm.diagonal (toSource f)
  sourceRevision : String
  invalidationKey : String

namespace PositiveNormalizationTransport

/-- Positivity of the repository normalization implies positivity of the source
normalization when the conversion scalar is positive and the test map is an equivalence. -/
theorem sourcePositive_of_repoPositive
    {T S : Type*}
    [AddCommGroup T] [Module ℂ T]
    [AddCommGroup S] [Module ℂ S]
    {repoSpace : WeilTestSpace T} {sourceSpace : WeilTestSpace S}
    {repoForm : WeilHermitianForm repoSpace}
    {sourceForm : WeilHermitianForm sourceSpace}
    (transport : PositiveNormalizationTransport repoForm sourceForm)
    (hrepo : repoForm.PositiveDiagonal) :
    sourceForm.PositiveDiagonal := by
  intro g
  have hmul : 0 ≤ transport.scalar * sourceForm.diagonal g := by
    have hrepo' := hrepo (transport.toSource.symm g)
    rw [transport.diagonal_eq (transport.toSource.symm g)] at hrepo'
    simpa using hrepo'
  rcases (mul_nonneg_iff.mp hmul) with hpositive | hnegative
  · exact hpositive.2
  · exact (not_le_of_gt transport.scalar_positive hnegative.1).elim

/-- Transport an accepted source criterion through a positive normalization. -/
theorem rh_of_repoPositive
    {T S : Type*}
    [AddCommGroup T] [Module ℂ T]
    [AddCommGroup S] [Module ℂ S]
    {repoSpace : WeilTestSpace T} {sourceSpace : WeilTestSpace S}
    {repoForm : WeilHermitianForm repoSpace}
    {sourceForm : WeilHermitianForm sourceSpace}
    (transport : PositiveNormalizationTransport repoForm sourceForm)
    (criterion : WeilPositivityImpliesRH sourceForm)
    (hrepo : repoForm.PositiveDiagonal) :
    _root_.RiemannHypothesis :=
  criterion.proof (transport.sourcePositive_of_repoPositive hrepo)

/-- Package the transported implication only after supplying source metadata rebound to
the exact repository test-space identity. -/
def toCriterion
    {T S : Type*}
    [AddCommGroup T] [Module ℂ T]
    [AddCommGroup S] [Module ℂ S]
    {repoSpace : WeilTestSpace T} {sourceSpace : WeilTestSpace S}
    {repoForm : WeilHermitianForm repoSpace}
    {sourceForm : WeilHermitianForm sourceSpace}
    (transport : PositiveNormalizationTransport repoForm sourceForm)
    (criterion : WeilPositivityImpliesRH sourceForm)
    (translatedSource : WeilCriterionSource)
    (hbinding : translatedSource.binding = repoSpace.binding) :
    WeilPositivityImpliesRH repoForm where
  source := translatedSource
  source_binding_eq := hbinding
  proof := transport.rh_of_repoPositive criterion

end PositiveNormalizationTransport

/-- A positive scalar preserves nonnegativity. -/
theorem positiveScalar_preserves_nonnegative
    {c x : ℝ} (hc : 0 < c) (hx : 0 ≤ x) :
    0 ≤ c * x :=
  mul_nonneg hc.le hx

/-- A negative normalization scalar reverses a strictly positive diagonal value and
therefore cannot be omitted from a positivity transport. -/
theorem negativeScalar_reverses_positive
    {c x : ℝ} (hc : c < 0) (hx : 0 < x) :
    c * x < 0 :=
  mul_neg_of_neg_of_pos hc hx


/-!
## Positivity transfer from approximating classical test vectors

This is a topological supplier for extending positivity beyond a finite
arithmetic realization. Convergence of the *test vectors*, continuity of the
actual diagonal, and positivity of the actual diagonal on every approximant
are independent mathematical obligations. No density or continuity of the
classical zeta Weil form is asserted by this theorem.
-/

open Filter Topology

namespace WeilHermitianForm

/-- Convergent test-vector approximations preserve nonnegativity of the
actual continuous Weil diagonal. This is the missing finite-image to full
test-class inference, *provided* the required convergent approximation and
continuity hypotheses have themselves been supplied. -/
theorem positiveDiagonal_of_convergent_tests
    {T : Type*} [TopologicalSpace T] [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space)
    (approximants : ∀ f : space.Vector, ℕ → space.Vector)
    (happroximates :
      ∀ f, Tendsto (approximants f) atTop (𝓝 f))
    (hcontinuous : Continuous form.diagonal)
    (hpositive :
      ∀ (f : space.Vector) (n : ℕ),
        0 ≤ form.diagonal (approximants f n)) :
    form.PositiveDiagonal := by
  intro f
  have hlimit :
      Tendsto (fun n => form.diagonal (approximants f n))
        atTop (𝓝 (form.diagonal f)) :=
    (hcontinuous.tendsto f).comp (happroximates f)
  exact ge_of_tendsto hlimit
    (Filter.Eventually.of_forall (hpositive f))

end WeilHermitianForm

/-- Conditional classical-RH consumer of the topological Weil positivity
transfer. A cited Connes trace formula or finite arithmetic Gram is not
automatically a source for any of the three analytic hypotheses below.
The criterion is the exact accepted source-bound direction, not metadata. -/
theorem riemannHypothesis_of_convergentWeilTests
    {T : Type*} [TopologicalSpace T] [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    (criterion : WeilPositivityImpliesRH form)
    (approximants : ∀ f : space.Vector, ℕ → space.Vector)
    (happroximates :
      ∀ f, Tendsto (approximants f) atTop (𝓝 f))
    (hcontinuous : Continuous form.diagonal)
    (hpositive :
      ∀ (f : space.Vector) (n : ℕ),
        0 ≤ form.diagonal (approximants f n)) :
    _root_.RiemannHypothesis :=
  criterion.proof
    (form.positiveDiagonal_of_convergent_tests
      approximants happroximates hcontinuous hpositive)

end GRWTSK.RiemannHypothesis
