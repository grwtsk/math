/- 
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import Mathlib.Tactic

/-!
# Marked inverse-boundary reconstruction with a source-exact Weil matrix consumer

This file formalizes a FINITE, conditional mathematical return from a marked
inverse-boundary observation to the existing canonical zeta and primitive-pair
Weil sine matrices in WeilOddSineProjection. The prime-power weights, gamma
parity, zero extension, and both zeta pole orientations are retained inside
those existing matrices. It introduces no replacement Weil source or new
RH/GRH target.

A smooth knot complement, genuine metric, unitary connection, marked
meridians, boundary-operator data and inverse-boundary uniqueness are NOT
constructed here. The two inverse laws are explicit premises. The comparison
to the arithmetic source is another separately required, error-paid premise.
Neither Zhang prime gaps, OpenAI local smoothing/Kakeya, nor a gauge holonomy
identity supplies these premises by itself. This only returns signs of finite
source compressions: no full-form coercivity, infinite complement, Schur return,
complete character inventory, RH or Dirichlet GRH is claimed.

Sources: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20); Alain Connes, arXiv:2602.04022v1,
sections 4.1, 6.1--6.6; Y. Zhang, Bounded gaps between primes,
Ann. Math. 179 (2014); OpenAI, Determination of a metric and a unitary
connection from one boundary patch (2026) and Local smoothing for the
Euclidean wave equation (2026). Geometric sources are comparison context,
not imported proof obligations.
Arithmetic read pin: grwtsk/math@4df23f2ad3fd8924d5c96657dc6aceefd66d2278.
Automation skill audit: grwtsk/noeaaeue@c70e5988dcb94cc13cba28b6abce15675a3dafc3,
the referenced current-main structural-intelligence and finite-diffusion
skills were unavailable. No dependent automation was run.

Mathematical claim: elementary conditional comparison, independent review NOT_RUN.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.MarkedInverseBoundary

open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

/-- Ordered, marked arithmetic components with declared oriented linking.
No existence of a particular smooth link is inferred from these labels. -/
structure PrimeLinkMarks where
  firstPrime : ℕ
  secondPrime : ℕ
  firstPrime_prime : Nat.Prime firstPrime
  secondPrime_prime : Nat.Prime secondPrime
  ordered : firstPrime < secondPrime
  linkingNumber : ℤ
  linkingNumber_eq_gap :
    linkingNumber = (secondPrime : ℤ) - (firstPrime : ℤ)

/-- A Zhang-type gap is a further predicate, not a proved selection theorem. -/
def HasZhangGap (marks : PrimeLinkMarks) : Prop :=
  marks.secondPrime - marks.firstPrime < 70000000 ∧
    ∀ r : ℕ, marks.firstPrime < r →
      r < marks.secondPrime → ¬Nat.Prime r

abbrev SineVector (M : ℕ) := Fin M → ℝ

def coefficientNormSq {M : ℕ} (u : SineVector M) : ℝ :=
  ∑ i : Fin M, (u i) ^ 2

theorem coefficientNormSq_nonneg {M : ℕ} (u : SineVector M) :
    0 ≤ coefficientNormSq u := by
  unfold coefficientNormSq
  exact Finset.sum_nonneg (fun i _ => sq_nonneg (u i))

/-- The matrix argument is supplied from the ORIGINAL Weil finite-sine API. -/
def matrixQuadratic {M : ℕ} (A : Matrix (Fin M) (Fin M) ℝ)
    (u : SineVector M) : ℝ :=
  ∑ i : Fin M, ∑ j : Fin M, u i * A i j * u j

/-- A gauge-aware geometric carrier and exact lossless boundary observation.
Actual inverse-geometry theorems must construct an inhabitant of this type. -/
structure MarkedBoundaryPort (M : ℕ) where
  marks : PrimeLinkMarks
  sourceRevision : String
  GeometricState : Type
  BoundaryState : Type
  realize : SineVector M → GeometricState
  observe : GeometricState → BoundaryState
  reconstruct : BoundaryState → SineVector M
  reconstruct_observe_realize :
    ∀ u, reconstruct (observe (realize u)) = u
  observe_realize_reconstruct :
    ∀ b, observe (realize (reconstruct b)) = b
  gaugeEquivalent : GeometricState → GeometricState → Prop
  observe_gauge_invariant :
    ∀ x y, gaugeEquivalent x y → observe x = observe y

namespace MarkedBoundaryPort

variable {M : ℕ} (port : MarkedBoundaryPort M)

/-- Exact two-sided reconstruction on the fully marked observation carrier. -/
def boundaryEquiv : SineVector M ≃ port.BoundaryState where
  toFun := fun u => port.observe (port.realize u)
  invFun := port.reconstruct
  left_inv := port.reconstruct_observe_realize
  right_inv := port.observe_realize_reconstruct

theorem observed_injective :
    Function.Injective
      (fun u : SineVector M => port.observe (port.realize u)) :=
  port.boundaryEquiv.injective

theorem observed_surjective :
    Function.Surjective
      (fun u : SineVector M => port.observe (port.realize u)) :=
  port.boundaryEquiv.surjective

/-- Gauge equivalence does not erase the source reconstructed from the
complete observation. This does not imply a geometric uniqueness theorem. -/
theorem reconstruct_gauge_invariant (x y : port.GeometricState)
    (hxy : port.gaugeEquivalent x y) :
    port.reconstruct (port.observe x) =
      port.reconstruct (port.observe y) := by
  rw [port.observe_gauge_invariant x y hxy]

end MarkedBoundaryPort

/-- Essential source-fidelity obligation: ONE-SIDED, with all comparison
loss charged before using a positive geometric energy. -/
structure SourceLowerComparison {M : ℕ}
    (A : Matrix (Fin M) (Fin M) ℝ)
    (port : MarkedBoundaryPort M) where
  geometricEnergy : port.BoundaryState → ℝ
  error : ℝ
  error_nonneg : 0 ≤ error
  sourceLower : ∀ u : SineVector M,
    geometricEnergy (port.observe (port.realize u)) -
      error * coefficientNormSq u ≤ matrixQuadratic A u

/-- The signed source lower bound is a CONSEQUENCE only when every
component of the inverse map, geometric sign, and comparison is provided. -/
theorem lower_of_marked_geometry {M : ℕ}
    {A : Matrix (Fin M) (Fin M) ℝ}
    {port : MarkedBoundaryPort M}
    (bridge : SourceLowerComparison A port)
    (C : ℝ)
    (hgeom : ∀ b : port.BoundaryState,
      -C * coefficientNormSq (port.reconstruct b) ≤
        bridge.geometricEnergy b)
    (u : SineVector M) :
    -(C + bridge.error) * coefficientNormSq u ≤
      matrixQuadratic A u := by
  have h := hgeom (port.observe (port.realize u))
  rw [port.reconstruct_observe_realize] at h
  calc
    -(C + bridge.error) * coefficientNormSq u =
        -C * coefficientNormSq u -
          bridge.error * coefficientNormSq u := by ring
    _ ≤ bridge.geometricEnergy (port.observe (port.realize u)) -
          bridge.error * coefficientNormSq u := sub_le_sub_right h _
    _ ≤ matrixQuadratic A u := bridge.sourceLower u

theorem nonnegative_of_exact_marked_geometry {M : ℕ}
    {A : Matrix (Fin M) (Fin M) ℝ}
    {port : MarkedBoundaryPort M}
    (bridge : SourceLowerComparison A port)
    (hzero : bridge.error = 0)
    (hgeom : ∀ b : port.BoundaryState, 0 ≤ bridge.geometricEnergy b)
    (u : SineVector M) :
    0 ≤ matrixQuadratic A u := by
  have hbound := lower_of_marked_geometry bridge 0
    (fun b => by simpa using hgeom b) u
  simpa [hzero] using hbound

/-- Actual zeta source including BOTH poles and every active prime power. -/
theorem zeta_odd_sine_lower_of_marked_geometry {M : ℕ}
    (T : ℝ) (port : MarkedBoundaryPort M)
    (bridge : SourceLowerComparison (zetaSineMatrix T M) port)
    (C : ℝ)
    (hgeom : ∀ b : port.BoundaryState,
      -C * coefficientNormSq (port.reconstruct b) ≤
        bridge.geometricEnergy b)
    (u : SineVector M) :
    -(C + bridge.error) * coefficientNormSq u ≤
      matrixQuadratic (zetaSineMatrix T M) u :=
  lower_of_marked_geometry bridge C hgeom u

/-- Individual primitive nonprincipal conjugate-pair source: the exact
character, conductor, gamma parity and zero pole term remain imported. -/
theorem primitive_pair_odd_sine_lower_of_marked_geometry
    {M q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (port : MarkedBoundaryPort M)
    (bridge : SourceLowerComparison
      (primitivePairSineMatrix χ hprimitive hnonprincipal T M) port)
    (C : ℝ)
    (hgeom : ∀ b : port.BoundaryState,
      -C * coefficientNormSq (port.reconstruct b) ≤
        bridge.geometricEnergy b)
    (u : SineVector M) :
    -(C + bridge.error) * coefficientNormSq u ≤
      matrixQuadratic
        (primitivePairSineMatrix χ hprimitive hnonprincipal T M) u :=
  lower_of_marked_geometry bridge C hgeom u

/-- Hostile example: an exact reversible coordinate change does not impose
positivity on a signed quadratic form. -/
theorem identity_recovery_does_not_force_positivity :
    (fun x : ℝ => -x ^ 2) 1 < 0 ∧
      ((fun x : ℝ => x) 1 = 1) := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.MarkedInverseBoundary
