/- Copyright (c) 2026 grwtsk contributors. MIT.
All imported Mathlib and GRWTSK sources retain upstream attribution/licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.CompactPositiveLogarithm
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceCompactOperator
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceFiniteApproximation

/-!
# Actual Wilson spectral brackets and the maximal normalized logarithmic domain

The maintained compact, symmetric, strictly positive invariant operator is
used throughout. First/second values are actual variational constructions.
The finite operator and matrix are the actual projected word construction.
The logarithm has a dense maximal domain and an explicit self-adjoint graph.
Only a numerical finite separation remains a premise of the regulated gap;
no eigenvalue-bound, min-max, compression or logarithmic-domain premise is
hidden in that certificate. No regulator-uniform physical gap is concluded.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceInvariantOperatorPositive
open GRWTSK.Geometry.GaugeTheory.WilsonSliceCompactOperator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2StrictPositivity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteMomentOperator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceTaylorRemainder
open GRWTSK.Geometry.GaugeTheory.WilsonSliceFiniteApproximation
open GRWTSK.Analysis.InnerProductSpace.VariationalSpectralBracket
open GRWTSK.Analysis.InnerProductSpace.FiniteGramCompression

variable (L : ℕ) [NeZero L]

def constantVector : gaugeInvariantSpace L :=
  ⟨oneVector L, oneVector_mem_gaugeInvariantSpace L⟩

theorem constantVector_ne_zero : constantVector L ≠ 0 := by
  intro hz
  exact oneVector_ne_zero L (congrArg Subtype.val hz)

local instance invariantSpace_nontrivial : Nontrivial (gaugeInvariantSpace L) :=
  ⟨⟨constantVector L, 0, constantVector_ne_zero L⟩⟩

theorem actualOperator_ne_zero (β : ℝ) (hβ : 0 < β) : invariantOperator L β hβ.le ≠ 0 := by
  intro hz
  have hp := invariantOperator_inner_pos L β hβ (constantVector L) (constantVector_ne_zero L)
  rw [hz, ContinuousLinearMap.zero_apply, inner_zero_right] at hp
  exact lt_irrefl _ hp

def lambda0 (β : ℝ) (hβ : 0 ≤ β) : ℝ := firstValue (invariantOperator L β hβ)
def lambda1 (β : ℝ) (hβ : 0 ≤ β) : ℝ := secondValue (invariantOperator L β hβ)
def nu0 (β : ℝ) (m : ℕ) : ℝ := firstValue (finiteOperator L β m)
def nu1 (β : ℝ) (m : ℕ) : ℝ := secondValue (finiteOperator L β m)

theorem finiteOperator_compact (β : ℝ) (m : ℕ) : IsCompactOperator (finiteOperator L β m) :=
  gramOperator_compact _

theorem actual_finite_matrix_eigenvalues (β : ℝ) (m : ℕ) {λ : ℝ} (hλ : λ ≠ 0) :
    (∃ a : WordIndex L m → ℝ, a ≠ 0 ∧ (finiteMatrix L β m).mulVec a = λ • a) ↔
      ∃ x : gaugeInvariantSpace L, x ≠ 0 ∧ finiteOperator L β m x = λ • x :=
  nonzero_eigenvalues_iff _ hλ

/-- Both spectral inequalities are obtained from the actual operator remainder. -/
theorem spectral_brackets (β : ℝ) (hβ : 0 < β) (m : ℕ) :
    nu0 L β m ≤ lambda0 L β hβ.le ∧
    lambda1 L β hβ.le ≤ nu1 L β m + tailAllowance L β m := by
  apply variational_bracket (finiteOperator L β m) (invariantOperator L β hβ.le)
    (tailAllowance_nonnegative L hβ.le m)
  · intro x
    have h := (remainder_quadratic_bounds L β hβ m x).1
    simp only [ContinuousLinearMap.sub_apply, inner_sub_right] at h
    change inner ℝ x (finiteOperator L β m x) ≤ inner ℝ x (invariantOperator L β hβ.le x)
    linarith
  · intro x
    have h := (remainder_quadratic_bounds L β hβ m x).2
    simp only [ContinuousLinearMap.sub_apply, inner_sub_right] at h
    change inner ℝ x (invariantOperator L β hβ.le x) ≤
      inner ℝ x (finiteOperator L β m x) + tailAllowance L β m * ‖x‖ ^ 2
    linarith

theorem principal_eigenvector (β : ℝ) (hβ : 0 < β) :
    ∃ v : gaugeInvariantSpace L, ‖v‖ = 1 ∧
      invariantOperator L β hβ.le v = lambda0 L β hβ.le • v :=
  exists_unit_principal _ (invariantOperator_isSymmetric L β hβ.le)
    (invariantOperator_isCompactOperator L β hβ.le)
    (invariantOperator_inner_nonnegative L β hβ.le) (actualOperator_ne_zero L β hβ)

def spectralCoordinates (β : ℝ) (hβ : 0 ≤ β) :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.coordinates
    (invariantOperator L β hβ) (invariantOperator_isCompactOperator L β hβ)
    (invariantOperator_isSymmetric L β hβ)

def logarithmicDomain (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) : Submodule ℝ (gaugeInvariantSpace L) :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logDomain
    (invariantOperator L β hβ) (invariantOperator_isCompactOperator L β hβ)
    (invariantOperator_isSymmetric L β hβ) a

def logarithmicOperator (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    logarithmicDomain L β hβ a →ₗ[ℝ] gaugeInvariantSpace L :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logarithm
    (invariantOperator L β hβ) (invariantOperator_isCompactOperator L β hβ)
    (invariantOperator_isSymmetric L β hβ) a

theorem logarithmicDomain_dense (β : ℝ) (hβ : 0 ≤ β) (a : ℝ) :
    (logarithmicDomain L β hβ a).topologicalClosure = ⊤ :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logDomain_dense _ _ _ a

/-- The entire adjoint graph, including its domain, is the graph of the constructed logarithm. -/
theorem logarithmicOperator_adjoint_graph (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x y : gaugeInvariantSpace L) :
    (∀ z : logarithmicDomain L β hβ a,
      inner ℝ (logarithmicOperator L β hβ a z) x = inner ℝ (z : gaugeInvariantSpace L) y) ↔
      ∃ hx : x ∈ logarithmicDomain L β hβ a, logarithmicOperator L β hβ a ⟨x,hx⟩ = y :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logarithm_adjoint_graph _ _ _ a x y

theorem logarithmicOperator_nonnegative (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : logarithmicDomain L β hβ.le a) :
    0 ≤ inner ℝ (x : gaugeInvariantSpace L) (logarithmicOperator L β hβ.le a x) :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logarithm_nonnegative _ _ _ ha
    (invariantOperator_inner_pos L β hβ) x

/-- The spectral exponential of the domain-defined logarithm agrees with the
ACTUAL normalized transfer operator on all Hilbert inputs. -/
theorem normalizedTransfer_coordinate (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : gaugeInvariantSpace L) (μ : ℝ) :
    spectralCoordinates L β hβ.le ((lambda0 L β hβ.le)⁻¹ • invariantOperator L β hβ.le x) μ =
      Real.exp (-a * (Real.log (lambda0 L β hβ.le / μ) / a)) •
        spectralCoordinates L β hβ.le x μ :=
  GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.normalizedTransfer_coordinate _ _ _ ha
    (invariantOperator_inner_pos L β hβ) x μ

/-- Only the explicit finite separation is a certificate input. All source,
compression, remainder, min-max and maximal-domain bridges have been constructed. -/
theorem finite_separation_logarithmic_gap (β : ℝ) (hβ : 0 < β) (m : ℕ)
    {a : ℝ} (ha : 0 < a)
    (hb : 0 < nu1 L β m + tailAllowance L β m)
    (hsep : nu1 L β m + tailAllowance L β m < nu0 L β m)
    (x : logarithmicDomain L β hβ.le a)
    (hperp : spectralCoordinates L β hβ.le (x : gaugeInvariantSpace L)
      (lambda0 L β hβ.le) = 0) :
    (Real.log (nu0 L β m / (nu1 L β m + tailAllowance L β m)) / a) *
      ‖(x : gaugeInvariantSpace L)‖ ^ 2 ≤
        inner ℝ (x : gaugeInvariantSpace L) (logarithmicOperator L β hβ.le a x) := by
  have hbracket := spectral_brackets L β hβ m
  exact GRWTSK.Analysis.InnerProductSpace.CompactPositiveLogarithm.logarithm_gap _ _ _ ha
    (invariantOperator_inner_pos L β hβ) (actualOperator_ne_zero L β hβ)
    (hb.trans hsep) hb hbracket.1 hbracket.2 hsep x hperp

end GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
