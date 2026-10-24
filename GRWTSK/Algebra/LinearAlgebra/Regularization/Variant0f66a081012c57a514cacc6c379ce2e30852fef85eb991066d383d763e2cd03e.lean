import DAF.Rhetorical.Kernel.Core
import DAF.Universe.Id
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.NormNum

/-!
# Identity-preserving rhetorical-kernel regularization

A semidefinite semantic kernel may identify different indices.  Production
identity is therefore represented by adding a strictly positive diagonal
kernel.  The regularization value and version are explicit identity inputs;
they are not inferred from floating-point behavior.
-/

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexOrder

universe u v

/-- Source-bound identity inputs for a regularized production kernel.  The
digest is computed by the deterministic manifest generator from all fields,
including the role vocabulary. -/
structure RegularizedKernelIdentity where
  kernelId : Universe.StableId
  kernelDigest : Universe.Digest
  semanticKernelDigest : Universe.Digest
  policyVersion : String
  epsilonNumerator : Nat
  epsilonDenominator : Nat
  epsilonDenominatorPositive : 0 < epsilonDenominator
  roleVocabulary : List String
  deriving DecidableEq

/-- Version of the first exact project regularization policy. -/
def productionRegularizationVersion : String :=
  "daf-rhetorical-kernel-regularization-v1"

/-- Exact numerator of the production regularization value. -/
def productionEpsilonNumerator : Nat := 1

/-- Exact denominator of the production regularization value. -/
def productionEpsilonDenominator : Nat := 1024

/-- Exact real regularization value used by production policy v1. -/
def productionEpsilon : ℝ :=
  productionEpsilonNumerator / productionEpsilonDenominator

theorem productionEpsilon_pos : 0 < productionEpsilon := by
  norm_num [productionEpsilon, productionEpsilonNumerator,
    productionEpsilonDenominator]

section Regularization

variable {Index : Type u} [DecidableEq Index]

/-- The strictly positive diagonal identity channel. -/
def identityRegularizer (epsilon : ℝ) : Matrix Index Index ℂ :=
  Matrix.diagonal fun _ ↦ (epsilon : ℂ)

/-- A positive real diagonal is positive definite over the complex field. -/
theorem identityRegularizer_posDef
    (epsilon : ℝ) (epsilonPositive : 0 < epsilon) :
    (identityRegularizer (Index := Index) epsilon).PosDef :=
  Matrix.PosDef.diagonal fun _ ↦ RCLike.ofReal_pos.mpr epsilonPositive

/-- Adding a positive identity channel to a semantic kernel. -/
def regularizedKernel
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) : PositiveKernel Index where
  matrix := identityRegularizer epsilon + semantic.matrix
  positiveSemidefinite :=
    ((identityRegularizer_posDef epsilon epsilonPositive).add_posSemidef
      semantic.positiveSemidefinite).posSemidef

@[simp]
theorem regularizedKernel_apply
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    (i j : Index) :
    regularizedKernel semantic epsilon epsilonPositive i j =
      semantic i j + if i = j then (epsilon : ℂ) else 0 := by
  classical
  by_cases hij : i = j
  · subst j
    simp [regularizedKernel, identityRegularizer, add_comm]
  · simp [regularizedKernel, identityRegularizer, hij, add_comm]

/-- Regularization preserves exact Hermitian symmetry. -/
theorem regularizedKernel_hermitian
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) :
    (regularizedKernel semantic epsilon epsilonPositive).matrix.IsHermitian :=
  (regularizedKernel semantic epsilon epsilonPositive).isHermitian

/-- Regularization preserves positive semidefiniteness. -/
theorem regularizedKernel_psd
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) :
    (regularizedKernel semantic epsilon epsilonPositive).matrix.PosSemidef :=
  (regularizedKernel semantic epsilon epsilonPositive).positiveSemidefinite

/-- Positive identity regularization makes the entire arbitrary-index matrix
strictly positive on every nonzero finitely supported coefficient family. -/
theorem regularizedKernel_posDef
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon) :
    (regularizedKernel semantic epsilon epsilonPositive).matrix.PosDef :=
  (identityRegularizer_posDef epsilon epsilonPositive).add_posSemidef
    semantic.positiveSemidefinite

/-- Every finite Gram matrix selected at pairwise distinct indices is positive
definite. -/
theorem regularizedKernel_strictOnDistinct
    (semantic : PositiveKernel Index)
    (epsilon : ℝ)
    (epsilonPositive : 0 < epsilon)
    {FiniteIndex : Type v}
    (indices : FiniteIndex → Index)
    (distinct : Function.Injective indices) :
    ((regularizedKernel semantic epsilon epsilonPositive).matrix.submatrix
      indices indices).PosDef :=
  (regularizedKernel_posDef semantic epsilon epsilonPositive).submatrix distinct

/-- The zero semantic channel is a valid positive-semidefinite kernel. -/
def zeroSemanticKernel : PositiveKernel Index where
  matrix := 0
  positiveSemidefinite := Matrix.PosSemidef.zero

/-- The legacy Kronecker geometry is the zero semantic kernel regularized by
one.  This is a migration theorem, not the production definition. -/
theorem regularizedZero_one_eq_kronecker :
    (regularizedKernel (zeroSemanticKernel (Index := Index)) 1 (by norm_num)).matrix = 1 := by
  simp [regularizedKernel, identityRegularizer, zeroSemanticKernel]

end Regularization

end DAF.Rhetorical
