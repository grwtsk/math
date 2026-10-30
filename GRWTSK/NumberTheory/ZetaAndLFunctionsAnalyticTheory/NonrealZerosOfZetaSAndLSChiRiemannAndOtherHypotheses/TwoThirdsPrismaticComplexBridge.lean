/- Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Mathematical source context: Bhargav Bhatt and Peter Scholze,
"Prisms and Prismatic Cohomology", Annals of Mathematics 196 (2022),
1135--1275, DOI 10.4007/annals.2022.196.3.5, arXiv:1905.08229.

This local file does not construct a prism or import prismatic cohomology.
It formalizes the finite degree-zero cochain mechanism that any genuine
prismatic comparison must instantiate before it can feed the canonical
Riemann-zeta zero-divisor consumer.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.TwoThirdsPrismaticOrientationGate
import Mathlib.LinearAlgebra.Quotient.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Degree-zero cochain bridge for a prismatic comparison

`TwoThirdsPrismaticOrientationGate` fixed the direction of the desired return:
source cohomology must inject into vanishing prismatic cohomology. Its abstract
gate still accepted a freely supplied nonzero source class for every off-line
multiplicity copy.

This module removes that free field at degree zero. It constructs a genuine
three-term cochain complex

```text
C⁻¹ --dPrev--> C⁰ --dNext--> C¹
```

with `dNext ∘ dPrev = 0`, defines degree-zero cycles, boundaries and cohomology,
and proves that a differential-compatible cochain map induces a linear map on
cohomology. The induced map is injective exactly when every source cycle whose
image is a target boundary was already a source boundary.

For the actual dyadic off-line multiplicity type, the source complex is the
degree-zero complex on the finite coordinate module

```text
DyadicOffLineMultiplicityIndex T → R
```

with zero incoming and outgoing differentials. Every multiplicity copy has a
canonical delta-coordinate class, and this class is proved nonzero over every
nontrivial commutative coefficient ring. Thus a boundary-reflecting cochain map
to a target complex with vanishing degree-zero cohomology constructs the earlier
`DyadicPrismaticCohomologyGate`; the off-line nonzero-class premise is no longer
assumed.

A hostile integer example proves why a degree-zero linear map alone is
insufficient: the identity on degree zero cannot extend from a complex with
incoming differential `id` to one with incoming differential `0`. Without
differential compatibility, source boundaries can become non-boundaries and no
map on cohomology is defined.

Analytical disposition:

* actual source: the canonical dyadic off-line multiplicity index from the
  Mathlib Riemann zeta divisor;
* primary argument: quotient cohomology and the exact kernel formula for
  `Submodule.mapQ`;
* consumer: `DyadicPrismaticCohomologyGate`, hence the existing dyadic-window
  and cofinal RH returns;
* removed premise: nonzeroness of one source class per off-line multiplicity
  copy is now proved from the coordinate basis;
* unresolved suppliers: an actual delta-ring/prism, a genuine prismatic
  complex, a source-to-prismatic chain map, boundary reflection or a stronger
  quasi-isomorphism theorem, and target cohomology vanishing;
* nonclaim: this finite cochain algebra is not itself a prism, prismatic site,
  derived completion, Frobenius-compatible comparison, or prismatic vanishing
  theorem.

SOURCE_ONLY / STATIC_SOURCE_REVIEW_ONLY / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.TwoThirdsPrismaticComplexBridge

open TwoThirdsPrismaticOrientationGate
open TwoThirdsCanonicalMultiplicityBridge
open PositiveHeightCountDeficit
open CanonicalZeroDivisor

noncomputable section

/-! ## A genuine three-term degree-zero cochain complex -/

/-- A three-term cochain complex around degree zero.

The carrier modules are explicit parameters. `d_sq` is the actual
differential-square-zero law needed to define cycles, boundaries, and
degree-zero cohomology. -/
structure DegreeZeroCochainComplex
    (R CPrev CZero CNext : Type)
    [CommRing R]
    [AddCommGroup CPrev] [Module R CPrev]
    [AddCommGroup CZero] [Module R CZero]
    [AddCommGroup CNext] [Module R CNext] where
  dPrev : CPrev →ₗ[R] CZero
  dNext : CZero →ₗ[R] CNext
  d_sq : dNext.comp dPrev = 0

namespace DegreeZeroCochainComplex

variable
    {R CPrev CZero CNext : Type}
    [CommRing R]
    [AddCommGroup CPrev] [Module R CPrev]
    [AddCommGroup CZero] [Module R CZero]
    [AddCommGroup CNext] [Module R CNext]

/-- Degree-zero cycles are the kernel of the outgoing differential. -/
abbrev cycles
    (C : DegreeZeroCochainComplex R CPrev CZero CNext) :
    Submodule R CZero :=
  C.dNext.ker

/-- The incoming differential, with codomain restricted to cycles. -/
def boundaryCycle
    (C : DegreeZeroCochainComplex R CPrev CZero CNext) :
    CPrev →ₗ[R] C.cycles where
  toFun x := ⟨C.dPrev x, by
    have h := LinearMap.congr_fun C.d_sq x
    simpa using h⟩
  map_add' x y := by
    apply Subtype.ext
    simp
  map_smul' r x := by
    apply Subtype.ext
    simp

/-- Degree-zero boundaries, as an actual submodule of the cycle module. -/
def boundaries
    (C : DegreeZeroCochainComplex R CPrev CZero CNext) :
    Submodule R C.cycles :=
  C.boundaryCycle.range

/-- Degree-zero cohomology `ker(dNext) / range(dPrev)`. -/
abbrev H0
    (C : DegreeZeroCochainComplex R CPrev CZero CNext) : Type :=
  C.cycles ⧸ C.boundaries

/-- The quotient class of a degree-zero cycle. -/
def classOfCycle
    (C : DegreeZeroCochainComplex R CPrev CZero CNext) :
    C.cycles →ₗ[R] C.H0 :=
  C.boundaries.mkQ

@[simp]
theorem classOfCycle_apply
    (C : DegreeZeroCochainComplex R CPrev CZero CNext)
    (x : C.cycles) :
    C.classOfCycle x = Submodule.Quotient.mk x :=
  rfl

end DegreeZeroCochainComplex

/-! ## Differential-compatible maps and induced cohomology -/

structure DegreeZeroCochainMap
    {R CPrev CZero CNext DPrev DZero DNext : Type}
    [CommRing R]
    [AddCommGroup CPrev] [Module R CPrev]
    [AddCommGroup CZero] [Module R CZero]
    [AddCommGroup CNext] [Module R CNext]
    [AddCommGroup DPrev] [Module R DPrev]
    [AddCommGroup DZero] [Module R DZero]
    [AddCommGroup DNext] [Module R DNext]
    (C : DegreeZeroCochainComplex R CPrev CZero CNext)
    (D : DegreeZeroCochainComplex R DPrev DZero DNext) where
  fPrev : CPrev →ₗ[R] DPrev
  fZero : CZero →ₗ[R] DZero
  fNext : CNext →ₗ[R] DNext
  commPrev : fZero.comp C.dPrev = D.dPrev.comp fPrev
  commNext : D.dNext.comp fZero = fNext.comp C.dNext

namespace DegreeZeroCochainMap

variable
    {R CPrev CZero CNext DPrev DZero DNext : Type}
    [CommRing R]
    [AddCommGroup CPrev] [Module R CPrev]
    [AddCommGroup CZero] [Module R CZero]
    [AddCommGroup CNext] [Module R CNext]
    [AddCommGroup DPrev] [Module R DPrev]
    [AddCommGroup DZero] [Module R DZero]
    [AddCommGroup DNext] [Module R DNext]
    {C : DegreeZeroCochainComplex R CPrev CZero CNext}
    {D : DegreeZeroCochainComplex R DPrev DZero DNext}
    (f : DegreeZeroCochainMap C D)

/-- A cochain map sends cycles to cycles. -/
def cyclesMap : C.cycles →ₗ[R] D.cycles where
  toFun x := ⟨f.fZero x.1, by
    change D.dNext (f.fZero x.1) = 0
    have h := LinearMap.congr_fun f.commNext x.1
    simpa [x.2] using h⟩
  map_add' x y := by
    apply Subtype.ext
    simp
  map_smul' r x := by
    apply Subtype.ext
    simp

/-- Differential compatibility sends each source boundary to the matching
target boundary. -/
theorem cyclesMap_boundaryCycle (x : CPrev) :
    f.cyclesMap (C.boundaryCycle x) =
      D.boundaryCycle (f.fPrev x) := by
  apply Subtype.ext
  exact LinearMap.congr_fun f.commPrev x

/-- Every cochain map preserves boundaries. -/
theorem boundaries_le_comap :
    C.boundaries ≤ D.boundaries.comap f.cyclesMap := by
  intro x hx
  rcases hx with ⟨y, rfl⟩
  change f.cyclesMap (C.boundaryCycle y) ∈ D.boundaries
  refine ⟨f.fPrev y, ?_⟩
  exact (f.cyclesMap_boundaryCycle y).symm

/-- The induced linear map on degree-zero cohomology. -/
def h0Map : C.H0 →ₗ[R] D.H0 :=
  C.boundaries.mapQ D.boundaries f.cyclesMap f.boundaries_le_comap

@[simp]
theorem h0Map_classOfCycle (x : C.cycles) :
    f.h0Map (C.classOfCycle x) =
      D.classOfCycle (f.cyclesMap x) :=
  rfl

/-- Exact injectivity criterion: the induced map on `H⁰` is injective when
target boundaries reflect back to source boundaries. Forward preservation is
already forced by the chain-map laws. -/
theorem h0Map_injective_of_boundaryReflection
    (boundaryReflection :
      D.boundaries.comap f.cyclesMap ≤ C.boundaries) :
    Function.Injective f.h0Map := by
  rw [← LinearMap.ker_eq_bot]
  change LinearMap.ker
      (C.boundaries.mapQ D.boundaries f.cyclesMap
        f.boundaries_le_comap) = ⊥
  rw [Submodule.ker_mapQ]
  have hEq :
      D.boundaries.comap f.cyclesMap = C.boundaries :=
    le_antisymm boundaryReflection f.boundaries_le_comap
  simp [hEq]

/-- Conversely, injectivity on `H⁰` forces boundary reflection. -/
theorem boundaryReflection_of_h0Map_injective
    (hInjective : Function.Injective f.h0Map) :
    D.boundaries.comap f.cyclesMap ≤ C.boundaries := by
  intro x hx
  have hTargetZero :
      f.h0Map (C.classOfCycle x) = 0 := by
    rw [h0Map_classOfCycle]
    simpa [DegreeZeroCochainComplex.classOfCycle] using
      (Submodule.Quotient.mk_eq_zero.mpr hx)
  have hSourceZero : C.classOfCycle x = 0 := by
    apply hInjective
    simpa using hTargetZero
  exact Submodule.Quotient.mk_eq_zero.mp
    (by simpa [DegreeZeroCochainComplex.classOfCycle] using hSourceZero)

/-- Boundary reflection is exactly injectivity of the induced degree-zero
cohomology map. -/
theorem h0Map_injective_iff_boundaryReflection :
    Function.Injective f.h0Map ↔
      D.boundaries.comap f.cyclesMap ≤ C.boundaries :=
  ⟨f.boundaryReflection_of_h0Map_injective,
    f.h0Map_injective_of_boundaryReflection⟩

end DegreeZeroCochainMap

/-! ## The source complex on actual off-line multiplicity copies -/

/-- Coordinate module with one scalar coordinate for every actual off-line
analytic-multiplicity copy in the dyadic source window. -/
abbrev OffLineCoordinateModule (R : Type) [CommRing R] (T : ℝ) : Type :=
  DyadicOffLineMultiplicityIndex T → R

/-- The off-line source complex is concentrated in degree zero. Using the same
coordinate module in all three displayed degrees keeps the construction
elementary; both differentials are genuinely zero. -/
def offLineCoordinateComplex
    (R : Type) [CommRing R] (T : ℝ) :
    DegreeZeroCochainComplex R
      (OffLineCoordinateModule R T)
      (OffLineCoordinateModule R T)
      (OffLineCoordinateModule R T) where
  dPrev := 0
  dNext := 0
  d_sq := by simp

/-- Delta-coordinate vector attached to one off-line multiplicity copy. -/
def offLineBasisVector
    (R : Type) [CommRing R] {T : ℝ}
    (i : DyadicOffLineMultiplicityIndex T) :
    OffLineCoordinateModule R T := by
  classical
  exact fun j => if j = i then 1 else 0

@[simp]
theorem offLineBasisVector_apply_self
    (R : Type) [CommRing R] {T : ℝ}
    (i : DyadicOffLineMultiplicityIndex T) :
    offLineBasisVector R i i = 1 := by
  classical
  simp [offLineBasisVector]

/-- The coordinate vector is nonzero over every nontrivial coefficient ring. -/
theorem offLineBasisVector_ne_zero
    (R : Type) [CommRing R] [Nontrivial R] {T : ℝ}
    (i : DyadicOffLineMultiplicityIndex T) :
    offLineBasisVector R i ≠ 0 := by
  intro h
  have hAtI := congrFun h i
  simpa [offLineBasisVector] using hAtI

/-- Every coordinate vector is a cycle in the concentrated source complex. -/
def offLineBasisCycle
    (R : Type) [CommRing R] {T : ℝ}
    (i : DyadicOffLineMultiplicityIndex T) :
    (offLineCoordinateComplex R T).cycles :=
  ⟨offLineBasisVector R i, by simp [offLineCoordinateComplex]⟩

/-- The concentrated source complex has no nonzero boundaries. -/
@[simp]
theorem offLineCoordinateComplex_boundaries_eq_bot
    (R : Type) [CommRing R] (T : ℝ) :
    (offLineCoordinateComplex R T).boundaries = ⊥ := by
  ext x
  simp [DegreeZeroCochainComplex.boundaries,
    DegreeZeroCochainComplex.boundaryCycle,
    offLineCoordinateComplex]

/-- Canonical degree-zero cohomology class of one actual off-line
multiplicity copy. -/
def offLineBasisClass
    (R : Type) [CommRing R] {T : ℝ}
    (i : DyadicOffLineMultiplicityIndex T) :
    (offLineCoordinateComplex R T).H0 :=
  (offLineCoordinateComplex R T).classOfCycle
    (offLineBasisCycle R i)

/-- The canonical class of every off-line multiplicity copy is nonzero. This
discharges the corresponding free premise from the earlier abstract gate. -/
theorem offLineBasisClass_ne_zero
    (R : Type) [CommRing R] [Nontrivial R] {T : ℝ}
    (i : DyadicOffLineMultiplicityIndex T) :
    offLineBasisClass R i ≠ 0 := by
  intro h
  have hmem :
      offLineBasisCycle R i ∈
        (offLineCoordinateComplex R T).boundaries :=
    Submodule.Quotient.mk_eq_zero.mp
      (by simpa [offLineBasisClass,
        DegreeZeroCochainComplex.classOfCycle] using h)
  have hCycleZero : offLineBasisCycle R i = 0 := by
    simpa using hmem
  have hVectorZero : offLineBasisVector R i = 0 :=
    congrArg Subtype.val hCycleZero
  exact offLineBasisVector_ne_zero R i hVectorZero

/-! ## Return from a boundary-reflecting target complex -/

variable
    {R PPrev PZero PNext : Type}
    [CommRing R] [Nontrivial R]
    [AddCommGroup PPrev] [Module R PPrev]
    [AddCommGroup PZero] [Module R PZero]
    [AddCommGroup PNext] [Module R PNext]

/-- A differential-compatible, boundary-reflecting comparison into a target
complex with vanishing `H⁰` constructs the exact cohomology gate consumed by
the existing RH return.

The target is intentionally called only a target complex here. A genuine
prismatic application must separately prove that it is obtained from an actual
prism and prismatic complex, including all completion and Frobenius data. -/
def dyadicPrismaticGate_of_boundaryReflectingComplexComparison
    {T : ℝ}
    (P : DegreeZeroCochainComplex R PPrev PZero PNext)
    (comparison :
      DegreeZeroCochainMap (offLineCoordinateComplex R T) P)
    (boundaryReflection :
      P.boundaries.comap comparison.cyclesMap ≤
        (offLineCoordinateComplex R T).boundaries)
    (targetH0Vanishes : ∀ y : P.H0, y = 0) :
    DyadicPrismaticCohomologyGate T where
  SourceH := (offLineCoordinateComplex R T).H0
  PrismH := P.H0
  sourceZero := 0
  prismZero := 0
  comparison := comparison.h0Map
  comparison_zero := by simp
  comparison_injective :=
    comparison.h0Map_injective_of_boundaryReflection boundaryReflection
  prism_vanishing := targetH0Vanishes
  offLineClass := offLineBasisClass R
  offLineClass_ne_zero := offLineBasisClass_ne_zero R

/-- The same chain-level hypotheses directly force every zero in the supplied
dyadic window onto the critical line. -/
theorem all_on_line_in_dyadicHead_of_boundaryReflectingComplexComparison
    {T : ℝ}
    (P : DegreeZeroCochainComplex R PPrev PZero PNext)
    (comparison :
      DegreeZeroCochainMap (offLineCoordinateComplex R T) P)
    (boundaryReflection :
      P.boundaries.comap comparison.cyclesMap ≤
        (offLineCoordinateComplex R T).boundaries)
    (targetH0Vanishes : ∀ y : P.H0, y = 0) :
    ∀ z ∈ dyadicHead T, z.1.re = 1 / 2 :=
  all_on_line_in_dyadicHead_of_gate
    (dyadicPrismaticGate_of_boundaryReflectingComplexComparison
      P comparison boundaryReflection targetH0Vanishes)

/-- Chain-level comparison data on a window also annihilates its exact
off-line multiplicity mass. -/
theorem dyadicOffLineMass_eq_zero_of_boundaryReflectingComplexComparison
    {T : ℝ}
    (P : DegreeZeroCochainComplex R PPrev PZero PNext)
    (comparison :
      DegreeZeroCochainMap (offLineCoordinateComplex R T) P)
    (boundaryReflection :
      P.boundaries.comap comparison.cyclesMap ≤
        (offLineCoordinateComplex R T).boundaries)
    (targetH0Vanishes : ∀ y : P.H0, y = 0) :
    dyadicOffLineMass T = 0 :=
  dyadicOffLineMass_eq_zero_of_gate
    (dyadicPrismaticGate_of_boundaryReflectingComplexComparison
      P comparison boundaryReflection targetH0Vanishes)


/-- The external two-thirds budget and the chain-level comparison have separate
roles: the first bounds the complete residual sector, while the second
annihilates only the off-line sector. -/
theorem twoThirds_budget_and_complex_vanishing
    {T : ℝ}
    (hSimple : 2 * dyadicCount T ≤ 3 * dyadicSimpleLineCount T)
    (P : DegreeZeroCochainComplex R PPrev PZero PNext)
    (comparison :
      DegreeZeroCochainMap (offLineCoordinateComplex R T) P)
    (boundaryReflection :
      P.boundaries.comap comparison.cyclesMap ≤
        (offLineCoordinateComplex R T).boundaries)
    (targetH0Vanishes : ∀ y : P.H0, y = 0) :
    3 * dyadicResidualMass T ≤ dyadicCount T ∧
      dyadicOffLineMass T = 0 := by
  refine ⟨three_mul_residualMass_le_dyadicCount T hSimple, ?_⟩
  exact
    dyadicOffLineMass_eq_zero_of_boundaryReflectingComplexComparison
      P comparison boundaryReflection targetH0Vanishes

/-! ## Hostile control: a degree-zero map is not a cochain map -/

/-- Integer complex whose incoming differential is the identity. -/
def integerIncomingIdentityComplex :
    DegreeZeroCochainComplex ℤ ℤ ℤ ℤ where
  dPrev := LinearMap.id
  dNext := 0
  d_sq := by simp

/-- Integer complex with zero incoming and outgoing differentials. -/
def integerZeroComplex :
    DegreeZeroCochainComplex ℤ ℤ ℤ ℤ where
  dPrev := 0
  dNext := 0
  d_sq := by simp

/-- The identity on degree zero cannot be extended to a cochain map from the
incoming-identity complex to the zero-differential complex. Source boundaries
would otherwise be sent to non-boundaries. -/
theorem identity_degreeZero_cannot_extend_to_cochainMap :
    ¬ ∃ f : DegreeZeroCochainMap
        integerIncomingIdentityComplex integerZeroComplex,
      f.fZero = LinearMap.id := by
  rintro ⟨f, hZero⟩
  have h := LinearMap.congr_fun f.commPrev (1 : ℤ)
  norm_num [hZero, integerIncomingIdentityComplex, integerZeroComplex] at h

end

end GRWTSK.RiemannHypothesis.TwoThirdsPrismaticComplexBridge
