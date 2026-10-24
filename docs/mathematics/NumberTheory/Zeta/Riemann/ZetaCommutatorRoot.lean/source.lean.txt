/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripStructuredTransport
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A zeta spectral-parameter commutator root

This file supplies the smallest source-faithful concrete root currently supported by
the repository for issue #229. Its object carrier is the full complex spectral
parameter used by `riemannZeta`; nontrivial zeros remain a predicate on that carrier.
The coordinate map is injective, so off-line points are not projected to the critical
line and distinct reflected records are not collapsed.

The noncommutative algebra is the full endomorphism ring of a two-component complex
module. A distinguished projection and an upper-shift coordinate give a represented
commutator whose readout is exactly the imaginary part of the original spectral
parameter. This is an exact algebraic identification theorem, not a numerical fit.

This construction is not a Connes spectral triple and does not claim that the spectrum
of an operator is the nontrivial zeta-zero divisor. Dense domains, self-adjointness,
compact resolvent, bounded-commutator analysis, summability, trace identities, real
structure, grading, and first-order conditions remain explicitly unavailable or
outside the present scope. The root statement is proved independently of RH. Its
logical profile therefore records the immediate necessary direction `RH → RootStatement`,
not an unavailable reverse direction. No sufficient direction is supplied.
-/

namespace GRWTSK.RiemannHypothesis.ZetaCommutatorRoot

noncomputable section

/-- The complete zeta spectral-parameter carrier. Restricting to zeros is a separate
predicate and therefore cannot make the root vacuous. -/
abbrev SpectralPoint := ℂ

/-- Two-component complex module on which the coordinate algebra acts. -/
abbrev ModuleCarrier := ℂ × ℂ

/-- Concrete noncommutative coordinate algebra. -/
abbrev Operator := Module.End ℂ ModuleCarrier

/-- Canonical zeta source identity consumed by this root. -/
def sourceId : String :=
  "Mathlib.NumberTheory.LSeries.RiemannZeta.riemannZeta"

/-- Exact upstream source revision selected by the repository lock. -/
def sourceRevision : String :=
  "mathlib@db584cd6d46c92f209a44c0f1c829460d327499d"

/-- Exact local zero and reflection convention. -/
def normalizationId : String :=
  "GRWTSK.RiemannHypothesis.NontrivialZetaZero/full-complex-parameter/v1"

/-- Any change to the source, representation, coordinate, readout, or normalization
invalidates a downstream chart comparison. -/
def invalidationKey : String :=
  "zeta-parameter|End_C(CxC)|projection-upper-shift|imag-readout|v1"

/-- Projection to the first module component. This is the distinguished algebraic
Dirac-like datum used by the present root; no self-adjoint spectral theorem is claimed. -/
def firstProjection : Operator where
  toFun v := (v.1, 0)
  map_add' x y := by
    ext <;> simp
  map_smul' c x := by
    ext <;> simp

/-- Upper-shift coordinate carrying the full complex spectral parameter. -/
def coordinateOperator (z : ℂ) : Operator where
  toFun v := (z * v.2, 0)
  map_add' x y := by
    ext <;> simp [mul_add]
  map_smul' c x := by
    ext <;> simp [mul_left_comm]

/-- Unit upper shift. -/
def upperShift : Operator :=
  coordinateOperator 1

/-- Unit lower shift, used to witness genuine noncommutativity of the represented
endomorphism algebra. -/
def lowerShift : Operator where
  toFun v := (0, v.1)
  map_add' x y := by
    ext <;> simp
  map_smul' c x := by
    ext <;> simp

/-- The selected upper and lower shifts do not commute. -/
theorem upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift :
    upperShift * lowerShift ≠ lowerShift * upperShift := by
  intro h
  have hAt := congrArg
    (fun operator : Operator => operator ((1 : ℂ), (0 : ℂ))) h
  have hFirst := congrArg Prod.fst hAt
  have hone : (1 : ℂ) = 0 := by
    simp [upperShift, lowerShift, coordinateOperator, Module.End.mul_apply] at hFirst
  exact one_ne_zero hone

/-- Concrete root. The representation is the identity representation of the full
endomorphism ring, and height is read from the first component of the commutator acting
on the second basis vector. -/
def root : NoncommutativeHeightRoot Operator SpectralPoint ModuleCarrier where
  sourceId := sourceId
  revision := sourceRevision
  coordinate := coordinateOperator
  representation := RingHom.id Operator
  dirac := firstProjection
  operatorHeight := fun operator =>
    (operator ((0 : ℂ), (1 : ℂ))).1.im
  image_noncommutative := by
    refine ⟨upperShift, lowerShift, ?_⟩
    simpa using upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift

/-- Exact immutable source binding for the concrete root. -/
def binding : SourceBinding where
  sourceId := sourceId
  revision := sourceRevision
  normalizationId := normalizationId

/-- The represented commutator is exactly the upper-shift coordinate. -/
theorem commutatorAt_eq_coordinateOperator (z : SpectralPoint) :
    root.commutatorAt z = coordinateOperator z := by
  apply LinearMap.ext
  intro v
  ext <;>
    simp [NoncommutativeHeightRoot.commutatorAt, root, firstProjection,
      coordinateOperator, Module.End.mul_apply]

/-- The common root height is exactly the original imaginary spectral parameter. -/
theorem heightAt_eq_im (z : SpectralPoint) :
    root.heightAt z = z.im := by
  unfold NoncommutativeHeightRoot.heightAt
  rw [commutatorAt_eq_coordinateOperator]
  simp [root, coordinateOperator]

/-- The coordinate retains the entire complex parameter. In particular, no off-line
point is projected to the critical line and no two reflected points are identified by
the coordinate map. -/
theorem coordinate_injective : Function.Injective root.coordinate := by
  intro z w h
  have hAt := congrArg
    (fun operator : Operator => operator ((0 : ℂ), (1 : ℂ))) h
  have hFirst := congrArg Prod.fst hAt
  simpa [root, coordinateOperator] using hFirst

/-- Exact height identification for every canonical nontrivial zeta zero. The zero
predicate supplies source meaning; it is not used to manufacture the equality. -/
theorem nontrivialZetaZero_heightAt_eq_im
    {z : SpectralPoint} (_hz : NontrivialZetaZero z) :
    root.heightAt z = z.im :=
  heightAt_eq_im z

/-- Algebraic facts established by the present root. -/
def RootStatement : Prop :=
  Function.Injective root.coordinate ∧
    ∀ z : SpectralPoint, root.heightAt z = z.im

/-- The concrete root statement is inhabited without any RH premise. -/
theorem rootStatement : RootStatement :=
  ⟨coordinate_injective, heightAt_eq_im⟩

/-- Every independently proved statement is, in particular, a necessary consequence
of RH. This implication discards its RH argument; it is not a special zeta theorem. -/
theorem rootStatement_of_rh (_hrh : _root_.RiemannHypothesis) : RootStatement :=
  rootStatement

/-- The strongest direction supplied here is necessary, not neutral: the reverse
implication is already available through the unconditional root theorem. -/
def localProfile : LocalRHProfile RootStatement :=
  LocalRHProfile.ofNecessary rootStatement_of_rh

@[simp] theorem localProfile_status : localProfile.status = .necessary :=
  rfl

/-- A sufficient implication from this already proved root statement is exactly as
strong as RH itself. Packaging the root cannot construct that missing implication. -/
theorem rootStatement_implies_rh_iff :
    (RootStatement → _root_.RiemannHypothesis) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h
    exact h rootStatement
  · intro hrh _
    exact hrh

/-- Root chart on the full spectral-parameter carrier. Its explicit anchor rules out a
zero-subtype vacuity. -/
def chart : CriticalStripChart root where
  carrier := fun _ => True
  anchor := 0
  anchor_mem := trivial
  coordinate := root.coordinate
  coordinate_eq_root := by
    intro _ _
    rfl
  localStatement := RootStatement
  sourceId := sourceId
  revision := sourceRevision
  normalizationId := normalizationId
  source_eq_root := rfl
  revision_eq_root := rfl

@[simp] theorem binding_matches_chart : binding.Matches chart := by
  exact ⟨rfl, rfl, rfl⟩

/-- Operator-theoretic obligations that would be needed before promoting this algebraic
root to a spectral-triple or scattering realization. -/
inductive OperatorAxiomKind where
  | denseDomain
  | selfAdjointness
  | compactResolventOrReplacement
  | boundedCommutators
  | summability
  | traceIdentity
  | realStructure
  | grading
  | firstOrderCondition
  deriving DecidableEq, Repr

/-- Current disposition of every potential spectral-triple obligation. -/
def operatorAxiomDisposition : OperatorAxiomKind → GapDisposition
  | .denseDomain => .unavailable
  | .selfAdjointness => .unavailable
  | .compactResolventOrReplacement => .unavailable
  | .boundedCommutators => .unavailable
  | .summability => .unavailable
  | .traceIdentity => .unavailable
  | .realStructure => .notApplicable
  | .grading => .notApplicable
  | .firstOrderCondition => .notApplicable

/-- No spectral-triple obligation is discharged by the algebraic parameter root. -/
theorem operatorAxiom_not_discharged (kind : OperatorAxiomKind) :
    operatorAxiomDisposition kind ≠ .discharged := by
  cases kind <;> decide

/-- Initial chart-height comparisons requested by issue #229. -/
inductive HeightComparisonKind where
  | zetaSpectralImaginary
  | certifiedZeroInterval
  | arithmeticCutoff
  | scatteringHeight
  | ellipticReturnHeight
  | jetDepth
  | weilTransformScale
  deriving DecidableEq, Repr

/-- Only the full spectral parameter and its nontrivial-zero specialization are exactly
identified. Every other prior height remains a typed unavailable comparison. -/
def heightComparisonDisposition : HeightComparisonKind → GapDisposition
  | .zetaSpectralImaginary => .discharged
  | .certifiedZeroInterval => .unavailable
  | .arithmeticCutoff => .unavailable
  | .scatteringHeight => .unavailable
  | .ellipticReturnHeight => .unavailable
  | .jetDepth => .unavailable
  | .weilTransformScale => .unavailable

@[simp] theorem zetaSpectralImaginary_discharged :
    heightComparisonDisposition .zetaSpectralImaginary = .discharged :=
  rfl

/-- The remaining comparison kinds are not silently identified with the root height. -/
theorem unresolved_height_comparison_not_discharged
    (kind : HeightComparisonKind)
    (hkind : kind ≠ .zetaSpectralImaginary) :
    heightComparisonDisposition kind ≠ .discharged := by
  cases kind <;> simp_all [heightComparisonDisposition]

end

end GRWTSK.RiemannHypothesis.ZetaCommutatorRoot
