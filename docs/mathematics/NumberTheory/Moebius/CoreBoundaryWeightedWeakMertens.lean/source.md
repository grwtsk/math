# Complete source: GRWTSK.NumberTheory.Moebius.CoreBoundaryWeightedWeakMertens

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95ff9f421d528818a77cbdc7bb2a521169800453` · SHA-256 `b8dbcaea7a70037e9eb79fefe2c19da2e57061601a16a981634245917726ee44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #641. Parent: draft PR #640 at
`59d0a306489e4248542b7e85d08fae536e3d8747`.
-/
import GRWTSK.NumberTheory.Moebius.CoreBoundaryTerminalNormalization

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Regularized weighted Mertens square at one prefix.  The denominator
`N+1` avoids an artificial singularity at the zero prefix. -/
def weightedMertensPrefixSquare (N : ℕ) : ℝ :=
  mertensPrefixReal N ^ 2 / (((N + 1 : ℕ) : ℝ) ^ 2)

/-- The exact weighted version of the three ordinary Mertens-prefix families
appearing in the boundary localized energy. -/
def boundaryLocalizedWeightedMertensSquareEnergy (j : ℕ) : ℝ :=
  ∑ u ∈ Finset.range (2 ^ j),
    (weightedMertensPrefixSquare (2 ^ (j + 1) - u - 1) +
      weightedMertensPrefixSquare (2 ^ j - u - 1) +
      weightedMertensPrefixSquare
        (logarithmicShallowDepthCount j - u))

/-- Each ordinary Mertens square is recovered from its regularized weighted
square by multiplying by `(N+1)^2`. -/
theorem mertensPrefix_sq_eq_weighted_mul
    (N : ℕ) :
    mertensPrefixReal N ^ 2 =
      (((N + 1 : ℕ) : ℝ) ^ 2) *
        weightedMertensPrefixSquare N := by
  unfold weightedMertensPrefixSquare
  have h : (0 : ℝ) < (N + 1 : ℕ) := by positivity
  field_simp [ne_of_gt h]
  ring

/-- Any prefix whose successor is at most the dyadic endpoint costs at most
the endpoint square times its weighted Mertens square. -/
theorem mertensPrefix_sq_le_endpoint_mul_weighted
    {N Y : ℕ}
    (hNY : N + 1 ≤ Y) :
    mertensPrefixReal N ^ 2 ≤
      ((Y : ℝ) ^ 2) * weightedMertensPrefixSquare N := by
  rw [mertensPrefix_sq_eq_weighted_mul]
  have hcast : ((N + 1 : ℕ) : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast hNY
  have hsquare :
      (((N + 1 : ℕ) : ℝ) ^ 2) ≤ (Y : ℝ) ^ 2 := by
    nlinarith [show (0 : ℝ) ≤ (N + 1 : ℕ) by positivity,
      show (0 : ℝ) ≤ Y by positivity]
  exact mul_le_mul_of_nonneg_right hsquare
    (by unfold weightedMertensPrefixSquare; positivity)

/-- The shallow cutoff is always below the full right dyadic endpoint. -/
theorem logarithmicShallowDepthCount_add_one_le_endpoint
    (j : ℕ) :
    logarithmicShallowDepthCount j + 1 ≤ 2 ^ (j + 1) := by
  unfold logarithmicShallowDepthCount
  have h :
      min (j + 2) (2 ^ (j + 1) - 1) ≤
        2 ^ (j + 1) - 1 :=
    min_le_right _ _
  omega

/-- The unweighted localized Mertens square energy is controlled by the exact
weighted localized statistic with the endpoint factor `(2^(j+1))^2`. -/
theorem boundaryLocalizedMertensSquareEnergy_le_weighted
    (j : ℕ) :
    boundaryLocalizedMertensSquareEnergy j ≤
      (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
        boundaryLocalizedWeightedMertensSquareEnergy j := by
  unfold boundaryLocalizedMertensSquareEnergy
    boundaryLocalizedWeightedMertensSquareEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro u hu
  have huX : u < 2 ^ j := Finset.mem_range.mp hu
  have hA :
      (2 ^ (j + 1) - u - 1) + 1 ≤ 2 ^ (j + 1) := by
    omega
  have hB :
      (2 ^ j - u - 1) + 1 ≤ 2 ^ (j + 1) := by
    rw [Nat.pow_succ]
    omega
  have hC :
      (logarithmicShallowDepthCount j - u) + 1 ≤
        2 ^ (j + 1) := by
    have hD := logarithmicShallowDepthCount_add_one_le_endpoint j
    omega
  have h1 := mertensPrefix_sq_le_endpoint_mul_weighted hA
  have h2 := mertensPrefix_sq_le_endpoint_mul_weighted hB
  have h3 := mertensPrefix_sq_le_endpoint_mul_weighted hC
  calc
    mertensPrefixReal (2 ^ (j + 1) - u - 1) ^ 2 +
        mertensPrefixReal (2 ^ j - u - 1) ^ 2 +
        mertensPrefixReal (logarithmicShallowDepthCount j - u) ^ 2 ≤
      (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
          weightedMertensPrefixSquare (2 ^ (j + 1) - u - 1) +
        (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
          weightedMertensPrefixSquare (2 ^ j - u - 1) +
        (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
          weightedMertensPrefixSquare
            (logarithmicShallowDepthCount j - u) := by
      exact add_le_add (add_le_add h1 h2) h3
    _ = (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) *
        (weightedMertensPrefixSquare (2 ^ (j + 1) - u - 1) +
          weightedMertensPrefixSquare (2 ^ j - u - 1) +
          weightedMertensPrefixSquare
            (logarithmicShallowDepthCount j - u)) := by ring

/-- Discrete weighted Weak-Mertens source at the exact localized prefixes used
by the boundary packet.  This is not asserted to be the classical integral
Weak Mertens conjecture. -/
def DyadicWeightedWeakMertensBoundarySource : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      boundaryLocalizedWeightedMertensSquareEnergy j ≤
        C * (j + 2 : ℝ)

/-- The discrete weighted source supplies the natural-scale localized Mertens
square energy. -/
theorem subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted
    (hWeighted : DyadicWeightedWeakMertensBoundarySource) :
    SubpolynomialBoundaryLocalizedMertensSquareEnergy := by
  obtain ⟨C, hC, hWeighted⟩ := hWeighted
  intro δ hδ
  obtain ⟨A, hA, hlog⟩ :=
    nat_add_two_le_const_mul_dyadic_rpow hδ
  refine ⟨4 * C * A,
    mul_nonneg (mul_nonneg (by norm_num) hC) hA, ?_⟩
  intro j
  let X : ℝ := ((2 ^ j : ℕ) : ℝ)
  have hX : 0 ≤ X := by
    dsimp [X]
    positivity
  have hloc :=
    boundaryLocalizedMertensSquareEnergy_le_weighted j
  have hweight := hWeighted j
  have hendpoint :
      (((2 ^ (j + 1) : ℕ) : ℝ) ^ 2) =
        4 * X ^ 2 := by
    dsimp [X]
    rw [Nat.pow_succ]
    norm_num
    ring
  rw [hendpoint] at hloc
  calc
    boundaryLocalizedMertensSquareEnergy j ≤
      4 * X ^ 2 *
        boundaryLocalizedWeightedMertensSquareEnergy j := hloc
    _ ≤ 4 * X ^ 2 * (C * (j + 2 : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hweight
        (mul_nonneg (by norm_num) (sq_nonneg X))
    _ ≤ 4 * X ^ 2 *
        (C * (A * (X ^ δ))) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left (hlog j) hC
      · positivity
    _ = (4 * C * A) * X ^ 2 * X ^ δ := by ring
    _ = (4 * C * A) *
        (((2 ^ j : ℕ) : ℝ) ^ 2) *
          (((2 ^ j : ℕ) : ℝ) ^ δ) := by rfl

/-- Actual discrete weighted-to-localized adapter. -/
def discreteWeightedWeakMertensToBoundaryLocalizedEnergyAdapter :
    WeakMertensToBoundaryLocalizedEnergyAdapter
      DyadicWeightedWeakMertensBoundarySource where
  integralToDiscreteLocalization := True
  smallScaleControl := True
  toLocalized := by
    intro hWeighted _ _
    exact subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted
      hWeighted

/-- The discrete weighted source therefore supplies the exceptional signed
boundary packet through the now-closed normalization chain. -/
theorem subpolynomialCoreBoundarySignedPacket_of_weightedWeakMertens
    (hWeighted : DyadicWeightedWeakMertensBoundarySource) :
    SubpolynomialCoreBoundarySignedPacket :=
  subpolynomialCoreBoundarySignedPacket_of_localizedMertensEnergy
    (subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted hWeighted)

/-- Classical integral/global Weak Mertens still requires a real localization
theorem into the exact discrete weighted source. -/
structure ClassicalWeakMertensToDiscreteBoundaryAdapter
    (classicalWeakMertens : Prop) : Type where
  integralToRegularizedDiscrete : Prop
  localizationUniformity : Prop
  toDiscrete :
    classicalWeakMertens →
      integralToRegularizedDiscrete →
      localizationUniformity →
      DyadicWeightedWeakMertensBoundarySource

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.boundaryLocalizedMertensSquareEnergy_le_weighted
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialBoundaryLocalizedMertensSquareEnergy_of_weighted
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialCoreBoundarySignedPacket_of_weightedWeakMertens
```
