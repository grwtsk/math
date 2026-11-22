/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean compilation and axiom audit NOT_RUN.
-/
import GRWTSK.AlgebraicTopology.MirroredPrimeHeatAndSignedReturn
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeBeaconCardinality

/-!
# Mirror sign obstruction and source-valid global placement certificates

A bijective reflection of a signed readout preserves the existence
of negative witnesses. Mirroring a positive graph heat operator does
not create the missing source arithmetic information needed for Weil
positivity.

An optimality claim for a 4096-prime permutation needs a lower bound
valid across ALL allowed assignments and an attained placement,
not merely an attractive visualization or local swap improvement.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicTopology.MirroredSpectralSignAndOptimality

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeBeaconCardinality
open GRWTSK.AlgebraicTopology.MirroredPrimeHeatAndSignedReturn

universe u v

/-- Nonnegative on the whole admitted source test class. -/
def GloballyNonnegative {State : Type u} (Q : State → ℝ) : Prop :=
  ∀ s, 0 ≤ Q s

/-- Bijective reflection cannot create global positivity. -/
theorem nonnegative_pullback_iff {State : Type u}
    (J : State ≃ State) (Q : State → ℝ) :
    GloballyNonnegative (fun s => Q (J s)) ↔
      GloballyNonnegative Q := by
  constructor
  · intro h s
    have hs := h (J.symm s)
    simpa only [J.apply_symm_apply] using hs
  · intro h s
    exact h (J s)

/-- Every original negative witness survives an invertible mirror. -/
theorem negative_witness_pullback_iff {State : Type u}
    (J : State ≃ State) (Q : State → ℝ) :
    (∃ s, Q (J s) < 0) ↔ (∃ s, Q s < 0) := by
  constructor
  · rintro ⟨s, hs⟩
    exact ⟨J s, hs⟩
  · rintro ⟨s, hs⟩
    refine ⟨J.symm s, ?_⟩
    simpa only [J.apply_symm_apply] using hs

/-- Specialize the no-go theorem to the existing actual signed-knot mirror. -/
theorem signedKnotMirror_noPositivityCreation {PrimeId : Type v}
    (Q : SignedKnot PrimeId → ℝ) :
    (∀ s, 0 ≤ Q (signedKnotReflect s)) ↔
      (∀ s, 0 ≤ Q s) :=
  nonnegative_pullback_iff signedKnotReflect Q

/-- Exactly the original 4096 primary-beacon assignment domain. -/
abbrev Placement := Fin 4096 ≃ Beacon 4

/-- Unoptimized arithmetic and geometric matrices remain independent inputs. -/
def PairwiseScore (weights : Fin 4096 → Fin 4096 → ℝ)
    (spatial : Beacon 4 → Beacon 4 → ℝ) (P : Placement) : ℝ :=
  ∑ i : Fin 4096, ∑ j : Fin 4096,
    weights i j * spatial (P i) (P j)

/-- The precise evidence needed before claiming a globally optimal placement. -/
structure OptimalityCertificate (score : Placement → ℝ) where
  placement : Placement
  lowerBound : ℝ
  bound_all : ∀ P, lowerBound ≤ score P
  attained : score placement = lowerBound

theorem OptimalityCertificate.globallyOptimal
    {score : Placement → ℝ} (C : OptimalityCertificate score)
    (P : Placement) : score C.placement ≤ score P := by
  rw [C.attained]
  exact C.bound_all P

theorem OptimalityCertificate.optimalScore
    {score : Placement → ℝ} (C : OptimalityCertificate score) :
    score C.placement = C.lowerBound :=
  C.attained

/-- Real finite feature energy: an exact sum of real squares. -/
def FeatureEnergy {Index : Type u} {Channel : Type v}
    [Fintype Index] [Fintype Channel]
    (features : Index → Channel → ℝ) (weights : Index → ℝ) : ℝ :=
  ∑ channel : Channel,
    (∑ i : Index, weights i * features i channel) ^ 2

/-- A genuine Gram feature energy is nonnegative. This is not a
source equivalence to the signed Weil quadratic functional. -/
theorem featureEnergy_nonnegative {Index : Type u} {Channel : Type v}
    [Fintype Index] [Fintype Channel]
    (features : Index → Channel → ℝ) (weights : Index → ℝ) :
    0 ≤ FeatureEnergy features weights := by
  unfold FeatureEnergy
  exact Finset.sum_nonneg (fun channel _ => sq_nonneg _)

end GRWTSK.AlgebraicTopology.MirroredSpectralSignAndOptimality
