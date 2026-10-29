-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ResidueSixCounts.Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ResidueSixCounts.Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/AnalyticPrimeWalk.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public import Surface.Core.CyclicPrimeWalk
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Data.ZMod.Basic
public import Mathlib.LinearAlgebra.Trace
public import Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic
public import Mathlib.NumberTheory.LSeries.DirichletContinuation
import Mathlib.Tactic

/-!
# Conditional analytic interface for the residue-six prime walk

`CyclicPrimeWalk` proves the exact finite-dimensional matrix identities.  This
file supplies a deliberately separate interface for analytic number-theory
input.  It does **not** define a Dirichlet `L`-function, state global GRH, prove
GRH for the nonprincipal character modulo three, prove an inverse prime-number
theorem, or prove a Rubinstein--Sarnak density theorem.

Instead, `AnalyticBridgeHypotheses` packages the exact assumptions needed to
translate externally established prime-count information into the checked
matrix model:

* explicit residue-one and residue-five count functions;
* eventual positivity of their eligible total;
* the exact relation between their signed normalized difference and `delta`;
* an exact cutoff indexing `K` eligible observations;
* a square-root/log count-difference estimate (the estimate normally supplied
  by GRH for the relevant nonprincipal Dirichlet character);
* a separate inverse-PNT-style upper estimate for the cutoff at index `K`;
* a separately assumed logarithmic density for the negative sign of `delta`.

The last three bullets are fields of a structure, not conclusions of this
module.  In particular, no implication from a formal `GRH` or `GSH` predicate
is claimed, and logarithmic sign density is not a statement about an ordinary
Cesaro mean.

The logarithmic-density sampler uses the exact cell weight

```
log ((n + 1) / n) = integral on [n,n+1] of 1/x.
```

Thus it is the natural discrete encoding of the continuous logarithmic
measure when the supplied counting functions are understood as integer-step
functions.  Connecting that interpretation to a formal prime predicate is
still external to this file.

## Frobenius normalization

Let `D = M₁ - M₅` and `E = delta • D`.  Direct calculation gives

```
Tr(Dᵀ D) = 6.
```

Consequently the Frobenius probe that recovers `delta` is `D / 6`, not
`D / 3`.  The latter returns `2 * delta`.  Both facts are checked below.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ResidueSixCounts.Variant978d121bf8ed0de1fc089941c0c1febe41cb9e6f19e1fe5447f25b0aad717063

public section

namespace Surface.Core.AnalyticPrimeWalk

noncomputable section

open scoped BigOperators
open Surface.Core.CyclicPrimeWalk

/-! ## Precisely scoped hypotheses about the conductor-three L-function

The residue classes `1` and `5` modulo six are distinguished by the unique
nontrivial character modulo three.  We construct that character directly from
the quadratic character of the field `ZMod 3`, then cast its integer values to
`ℂ`.  This avoids changing its level to six: `changeLevel` would modify the
L-function by an Euler factor at two and therefore would not have literally the
same zero set.

The two predicates below only *name* the GRH and zero-independence assumptions
for this one L-function.  No implication from either predicate to a prime-count
estimate or a density statement is proved in this file.
-/

/-- The primitive real quadratic Dirichlet character of conductor three,
viewed as a complex-valued character. -/
@[expose]
def conductorThreeCharacter : DirichletCharacter ℂ 3 :=
  (quadraticChar (ZMod 3)).ringHomComp (Int.castRingHom ℂ)

/-- The displayed character is nontrivial. -/
@[surface_novel, surface_published]
theorem conductorThreeCharacter_ne_one : conductorThreeCharacter ≠ 1 := by
  exact (MulChar.ringHomComp_ne_one_iff Int.cast_injective).2
    (quadraticChar_ne_one ((ZMod.ringChar_zmod_n 3).substr (by norm_num)))

/-- Its conductor is exactly three, rather than merely a level dividing
three. -/
@[surface_novel, surface_published]
theorem conductorThreeCharacter_isPrimitive :
    DirichletCharacter.IsPrimitive conductorThreeCharacter := by
  rw [DirichletCharacter.isPrimitive_def]
  rcases (Nat.dvd_prime (by norm_num : Nat.Prime 3)).mp
      (DirichletCharacter.conductor_dvd_level conductorThreeCharacter) with h | h
  · exact False.elim (conductorThreeCharacter_ne_one
      (DirichletCharacter.eq_one_iff_conductor_eq_one.mpr h))
  · exact h

/-- GRH restricted to the conductor-three character: every zero of its
L-function in the open critical strip lies on the critical line.  The strip
hypotheses exclude the known trivial zeros, so this says nothing about them. -/
@[expose]
def GRHForConductorThreeCharacter : Prop :=
  ∀ s : ℂ, conductorThreeCharacter.LFunction s = 0 →
    0 < s.re → s.re < 1 → s.re = (1 / 2 : ℝ)

/-- Positive ordinates of critical-line zeros of the conductor-three
L-function.  This is a set of ordinates rather than a multiset of zeros, so it
does not encode multiplicity. -/
@[expose]
def conductorThreePositiveZeroOrdinates : Set ℝ :=
  {gamma : ℝ | 0 < gamma ∧
    conductorThreeCharacter.LFunction
      ((1 / 2 : ℂ) + (gamma : ℂ) * Complex.I) = 0}

/-- A carefully scoped zero-independence hypothesis: the distinct positive
critical-line ordinates of this one L-function are linearly independent over
`ℚ`.  This is the local LI hypothesis used by this model, not a claim about all
Dirichlet L-functions and not a simplicity theorem for zeros with multiplicity. -/
@[expose]
def ConductorThreePositiveOrdinatesLI : Prop :=
  LinearIndependent ℚ
    (fun gamma : conductorThreePositiveZeroOrdinates ↦ (gamma.1 : ℝ))

/-- Local name for the pair of analytic assumptions conventionally used in
the conductor-three prime race.  It is intentionally narrower than a global
"Grand Simplicity Hypothesis". -/
@[expose]
def ConductorThreeGRHAndLI : Prop :=
  GRHForConductorThreeCharacter ∧ ConductorThreePositiveOrdinatesLI

/-! ## Explicit count data and analytic hypotheses -/

/-- Two integer-cutoff counting functions.  Their intended interpretation is
the number of eligible primes `p <= x` in the residue classes `1` and `5`
modulo six.  That interpretation is data supplied by a caller; this structure
does not itself define primality. -/
structure ResidueSixCounts where
  residueOneCount : ℕ → ℕ
  residueFiveCount : ℕ → ℕ

/-- Total observations belonging to either reduced residue class. -/
@[expose]
def eligibleCount (counts : ResidueSixCounts) (x : ℕ) : ℕ :=
  counts.residueOneCount x + counts.residueFiveCount x

/-- Signed, real-valued count difference.  Casting before subtraction avoids
truncation when residue five is ahead. -/
@[expose]
def countDifference (counts : ResidueSixCounts) (x : ℕ) : ℝ :=
  (counts.residueOneCount x : ℝ) - (counts.residueFiveCount x : ℝ)

/-- The square-root/log count estimate normally obtained from GRH for the
relevant nonprincipal character.  This is only a predicate on supplied count
functions; no theorem in this module establishes it from GRH. -/
@[expose]
def HasSqrtLogCountDifferenceBound (counts : ResidueSixCounts) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ x₀ : ℕ, 2 ≤ x₀ ∧
    ∀ x : ℕ, x₀ ≤ x →
      abs (countDifference counts x) ≤
        C * Real.sqrt (x : ℝ) * Real.log (x : ℝ)

/-- An inverse-PNT-style upper estimate for the integer cutoff containing the
first `K` eligible observations.  It is intentionally separate from the count
difference estimate: neither field is silently used to prove the other. -/
@[expose]
def HasInversePNTReindexBound (cutoffAtEligibleIndex : ℕ → ℕ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ K₀ : ℕ, 2 ≤ K₀ ∧
    ∀ K : ℕ, K₀ ≤ K →
      (cutoffAtEligibleIndex K : ℝ) ≤
        C * (K : ℝ) * Real.log (K : ℝ)

/-- Exact logarithmic measure of the integer cell `[n,n+1]`. -/
@[expose]
def logCellWeight (n : ℕ) : ℝ :=
  Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))

/-- Logarithmic mass of cutoffs where the supplied signed discrepancy is
negative.  `Finset.Ico 2 X` corresponds to the cells from `[2,3]` through
`[X-1,X]`. -/
@[expose]
def negativeLogMass (delta : ℕ → ℝ) (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 2 X, if delta n < 0 then logCellWeight n else 0

/-- Finite logarithmic-density sample, normalized exactly as
`(1 / log X) * integral_[2,X] dt/t`. -/
@[expose]
def negativeLogDensityAt (delta : ℕ → ℝ) (X : ℕ) : ℝ :=
  negativeLogMass delta X / Real.log (X : ℝ)

/-- A standalone logarithmic sign-density hypothesis.  The strict inequality
records bias toward residue five under the convention
`delta = (A-B)/(2(A+B))`.  It does not assert eventual domination, a negative
ordinary mean, or a numerical density such as `0.999`. -/
@[expose]
def HasNegativeLogSignDensity (delta : ℕ → ℝ) (density : ℝ) : Prop :=
  Filter.Tendsto (negativeLogDensityAt delta) Filter.atTop (nhds density) ∧
    (1 / 2 : ℝ) < density

/-- All analytic inputs required by the overlay.

No inhabitant is constructed in this module.  Supplying an inhabitant means
supplying proofs of each named analytic field. -/
structure AnalyticBridgeHypotheses where
  counts : ResidueSixCounts
  /-- Integer cutoff containing exactly the first `K` eligible observations. -/
  cutoffAtEligibleIndex : ℕ → ℕ
  /-- Signed discrepancy as a function of the integer cutoff. -/
  delta : ℕ → ℝ
  /-- Threshold after which the normalized denominator is nonzero. -/
  eligibleFrom : ℕ
  eligibleCount_pos : ∀ x : ℕ, eligibleFrom ≤ x →
    0 < eligibleCount counts x
  /-- Exact signed normalization; this is an explicit hypothesis rather than
  a hidden interpretation of `delta`. -/
  delta_eq_normalizedCountDifference : ∀ x : ℕ,
    0 < eligibleCount counts x →
      delta x = countDifference counts x /
        (2 * (eligibleCount counts x : ℝ))
  /-- The reindexing cutoff really contains `K` eligible observations. -/
  cutoff_indexes_eligibleCount : ∀ K : ℕ, 0 < K →
    eligibleCount counts (cutoffAtEligibleIndex K) = K
  /-- Analytic count estimate, customarily GRH-derived but merely assumed
  here. -/
  assumedSqrtLogCountBound : HasSqrtLogCountDifferenceBound counts
  /-- Independent inverse-PNT reindexing estimate. -/
  inversePNTReindexBound : HasInversePNTReindexBound cutoffAtEligibleIndex
  /-- The claimed limiting logarithmic sign density. -/
  negativeLogDensity : ℝ
  /-- Density/bias statement, customarily requiring additional zero
  independence hypotheses but merely assumed here. -/
  logarithmicSignDensity :
    HasNegativeLogSignDensity delta negativeLogDensity

/-! ## Exact bridge from counts to the checked matrix algebra -/

/-- Empirical residue-one weight at an integer cutoff. -/
@[expose]
def empiricalWeightAt (model : AnalyticBridgeHypotheses) (x : ℕ) : ℝ :=
  empiricalWeightFromCounts
    (model.counts.residueOneCount x)
    (model.counts.residueFiveCount x)

/-- Matrix discrepancy at an integer cutoff. -/
@[expose]
def errorOperatorAt (model : AnalyticBridgeHypotheses) (x : ℕ) :
    StandardMatrix :=
  discrepancy (empiricalWeightAt model x)

/-- The external `delta` field agrees with the centered empirical weight
whenever the eligible denominator is positive. -/
@[surface_novel, surface_published]
theorem centeredWeight_empiricalWeightAt_eq_delta
    (model : AnalyticBridgeHypotheses) (x : ℕ)
    (hx : 0 < eligibleCount model.counts x) :
    centeredWeight (empiricalWeightAt model x) = model.delta x := by
  calc
    centeredWeight (empiricalWeightAt model x) =
        countDifference model.counts x /
          (2 * (eligibleCount model.counts x : ℝ)) := by
      exact centeredWeightFromCounts
        (model.counts.residueOneCount x)
        (model.counts.residueFiveCount x) hx
    _ = model.delta x :=
      (model.delta_eq_normalizedCountDifference x hx).symm

/-- The existing signed matrix observable recovers the supplied arithmetic
discrepancy exactly. -/
@[surface_novel, surface_published]
theorem signedObservable_errorOperatorAt
    (model : AnalyticBridgeHypotheses) (x : ℕ)
    (hx : 0 < eligibleCount model.counts x) :
    signedObservable (errorOperatorAt model x) = model.delta x := by
  rw [errorOperatorAt, signedObservable_discrepancy,
    centeredWeight_empiricalWeightAt_eq_delta model x hx]

/-- Exact squared-norm action of the error operator.  This conclusion is
purely algebraic; it uses none of the three asymptotic fields. -/
@[surface_novel, surface_published]
theorem errorOperatorAt_normSq
    (model : AnalyticBridgeHypotheses) (x : ℕ)
    (hx : 0 < eligibleCount model.counts x) (v : StandardCoord) :
    coordNormSq (Matrix.mulVec (errorOperatorAt model x) v) =
      3 * model.delta x ^ 2 * coordNormSq v := by
  rw [errorOperatorAt, discrepancy_normSq,
    centeredWeight_empiricalWeightAt_eq_delta model x hx]

/-- At the exact eligible index, the denominator in `delta` is `2K`. -/
@[surface_novel, surface_published]
theorem delta_at_eligibleIndex
    (model : AnalyticBridgeHypotheses) (K : ℕ) (hK : 0 < K) :
    model.delta (model.cutoffAtEligibleIndex K) =
      countDifference model.counts (model.cutoffAtEligibleIndex K) /
        (2 * (K : ℝ)) := by
  have hcount := model.cutoff_indexes_eligibleCount K hK
  have hpos :
      0 < eligibleCount model.counts (model.cutoffAtEligibleIndex K) := by
    rw [hcount]
    exact hK
  rw [model.delta_eq_normalizedCountDifference _ hpos, hcount]

/-! ## Correctly normalized Frobenius observable -/

/-- Entrywise Frobenius pairing on the displayed two-by-two coordinates.
It is equal to `Tr(Aᵀ B)`. -/
@[expose]
def frobeniusPairing (A B : StandardMatrix) : ℝ :=
  A 0 0 * B 0 0 + A 0 1 * B 0 1 +
    A 1 0 * B 1 0 + A 1 1 * B 1 1

/-- The explicit four-entry formula is exactly the standard matrix identity
`Tr(Aᵀ B)`. -/
@[surface_novel, surface_published]
theorem frobeniusPairing_eq_trace_transpose_mul (A B : StandardMatrix) :
    frobeniusPairing A B = Matrix.trace (A.transpose * B) := by
  simp [frobeniusPairing, Matrix.trace, Matrix.mul_apply, Fin.sum_univ_two]
  ring

/-! ## Coordinate-free oriented trace

The Frobenius formula above is tied to an orthonormal coordinate realization.
The following construction lives directly in the endomorphism algebra of the
kernel-defined standard plane.  Ordinary endomorphism trace is invariant under
arbitrary linear equivalence, not merely orthogonal changes of coordinates.
-/

/-- Difference of the two restricted generators as an endomorphism of the
kernel-defined standard plane.  Writing subtraction as addition of a negative
scalar makes the linear structure used by `toMatrix` explicit. -/
@[expose]
def restrictedGeneratorDifference : Module.End ℝ zeroSumSubspace :=
  restrictedSwap01.toLinearMap + (-1 : ℝ) • restrictedSwap12.toLinearMap

/-- Its matrix in the manuscript basis is exactly `M₁ - M₅`. -/
@[surface_novel, surface_published]
theorem restrictedGeneratorDifference_toMatrix :
    LinearMap.toMatrix standardPlaneBasis standardPlaneBasis
        restrictedGeneratorDifference =
      residueOneReflection - residueFiveReflection := by
  change LinearMap.toMatrix standardPlaneBasis standardPlaneBasis
      (restrictedSwap01.toLinearMap +
        (-1 : ℝ) • restrictedSwap12.toLinearMap) = _
  rw [(LinearMap.toMatrix standardPlaneBasis standardPlaneBasis).map_add,
    (LinearMap.toMatrix standardPlaneBasis standardPlaneBasis).map_smul,
    restrictedSwap01_toMatrix, restrictedSwap12_toMatrix]
  module

/-- Basis-independent signed trace pairing with the generator difference. -/
@[expose]
def orientedEndTrace (A : Module.End ℝ zeroSumSubspace) : ℝ :=
  (1 / 6 : ℝ) * LinearMap.trace ℝ zeroSumSubspace
    (restrictedGeneratorDifference * A)

/-- Simultaneous conjugation preserves the unnormalized trace pairing.  This
is the precise arbitrary-similarity invariance behind `orientedEndTrace`. -/
@[surface_novel, surface_published]
theorem tracePairing_conj
    {V W : Type*} [AddCommGroup V] [Module ℝ V]
    [AddCommGroup W] [Module ℝ W]
    (e : V ≃ₗ[ℝ] W) (D A : Module.End ℝ V) :
    LinearMap.trace ℝ W (e.conj D * e.conj A) =
      LinearMap.trace ℝ V (D * A) := by
  change LinearMap.trace ℝ W
      ((e.conjAlgEquiv ℝ) D * (e.conjAlgEquiv ℝ) A) = _
  rw [← map_mul]
  exact LinearMap.trace_conj' (D * A) e

/-- The coordinate-free pairing recovers the scalar multiplying the generator
difference. -/
@[surface_novel, surface_published]
theorem orientedEndTrace_centeredWeight_generatorDifference (q : ℝ) :
    orientedEndTrace
        ((centeredWeight q) • restrictedGeneratorDifference) =
      centeredWeight q := by
  rw [orientedEndTrace,
    LinearMap.trace_eq_matrix_trace ℝ standardPlaneBasis,
    LinearMap.toMatrix_mul, restrictedGeneratorDifference_toMatrix]
  have hsmul :
      LinearMap.toMatrix standardPlaneBasis standardPlaneBasis
          ((centeredWeight q) • restrictedGeneratorDifference) =
        (centeredWeight q) •
          (residueOneReflection - residueFiveReflection) := by
    rw [(LinearMap.toMatrix standardPlaneBasis standardPlaneBasis).map_smul,
      restrictedGeneratorDifference_toMatrix]
  rw [hsmul, generatorDifference_entries]
  simp [Matrix.trace, Fin.sum_univ_two]
  ring_nf
  rw [sqrtThree_sq]
  ring

/-- The generator difference has Frobenius norm squared six. -/
@[surface_novel, surface_published]
theorem generatorDifference_frobenius_self :
    frobeniusPairing
        (residueOneReflection - residueFiveReflection)
        (residueOneReflection - residueFiveReflection) = 6 := by
  rw [generatorDifference_entries]
  simp [frobeniusPairing]
  nlinarith [sqrtThree_sq]

/-- Correct probe for recovering the coefficient of the generator
difference under the Frobenius pairing. -/
@[expose]
def orientedFrobeniusProbe : StandardMatrix :=
  (1 / 6 : ℝ) • (residueOneReflection - residueFiveReflection)

/-- The normalized Frobenius probe recovers the signed centered weight. -/
@[surface_novel, surface_published]
theorem frobeniusPairing_orientedProbe_discrepancy (q : ℝ) :
    frobeniusPairing orientedFrobeniusProbe (discrepancy q) =
      centeredWeight q := by
  rw [orientedFrobeniusProbe,
    discrepancy_eq_centered_smul_difference,
    generatorDifference_entries]
  simp [frobeniusPairing]
  ring_nf
  rw [sqrtThree_sq]
  ring

/-- The factor `1/3` proposed in the informal calculation.  It is retained as
a named diagnostic so its factor-of-two behavior is explicit. -/
@[expose]
def oneThirdGeneratorDifferenceProbe : StandardMatrix :=
  (1 / 3 : ℝ) • (residueOneReflection - residueFiveReflection)

/-- The proposed `D/3` normalization returns twice the signed discrepancy,
not the signed discrepancy itself. -/
@[surface_novel, surface_published]
theorem frobeniusPairing_oneThirdProbe_discrepancy (q : ℝ) :
    frobeniusPairing oneThirdGeneratorDifferenceProbe (discrepancy q) =
      2 * centeredWeight q := by
  rw [oneThirdGeneratorDifferenceProbe,
    discrepancy_eq_centered_smul_difference,
    generatorDifference_entries]
  simp [frobeniusPairing]
  ring_nf
  rw [sqrtThree_sq]
  ring

/-- Frobenius form of the exact signed observable at a cutoff. -/
@[surface_novel, surface_published]
theorem frobeniusPairing_errorOperatorAt
    (model : AnalyticBridgeHypotheses) (x : ℕ)
    (hx : 0 < eligibleCount model.counts x) :
    frobeniusPairing orientedFrobeniusProbe (errorOperatorAt model x) =
      model.delta x := by
  rw [errorOperatorAt, frobeniusPairing_orientedProbe_discrepancy,
    centeredWeight_empiricalWeightAt_eq_delta model x hx]

end

end Surface.Core.AnalyticPrimeWalk
