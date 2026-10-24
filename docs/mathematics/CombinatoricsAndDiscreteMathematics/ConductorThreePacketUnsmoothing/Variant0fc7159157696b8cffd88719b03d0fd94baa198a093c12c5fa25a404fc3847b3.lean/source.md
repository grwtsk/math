# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreePacketUnsmoothing.Variant0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbb69b5aedc63d836ac3426d25b99e71b2efc725` · SHA-256 `0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreePolarizedPackets
public import Surface.Core.ConductorThreeHalfPlusEpsilon
import Mathlib.Tactic

/-!
# Boundary-stable packet unsmoothing

The smooth Schwartz-seminorm estimate in
`ConductorThreePolarizedPackets` is a useful packet target, but it does not by
itself control a sharp moving cutoff.  A weight transitioning on one lattice
spacing has derivatives that grow with the arithmetic scale, so a bounded
partition-of-unity argument would lose a power of that scale.

This module records a stronger and exact endpoint: uniform control for
discrete bounded-variation multipliers.  The literal prefix cutoff has total
variation cost exactly `2`, and its weighted readout is definitionally the
twisted Chebyshev sum.  Consequently the implication to
`TwistedPsiHalfPlusEpsilon` is fully checked; the research obligation is to
derive this BV/maximal estimate from the polarized packet construction.
-/

public section

namespace Surface.Core.ConductorThreePacketUnsmoothing

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeVonMangoldt
open Surface.Core.ConductorThreeHalfPlusEpsilon

/-- Discrete total-variation cost on the samples `0, ..., 2 * N`. -/
@[expose]
def DiscretePacketWeightCost (N : ℕ) (weight : ℕ → ℝ) : ℝ :=
  |weight 0| +
    ∑ n ∈ Finset.range (2 * N), |weight (n + 1) - weight n|

/-- Readout of the actual unsummed coefficients against a discrete weight. -/
@[expose]
def conductorThreeDiscreteWeightedSum (N : ℕ) (weight : ℕ → ℝ) : ℝ :=
  ∑ n ∈ Finset.range (2 * N + 1),
    twistedVonMangoldtThree n * weight n

/-- Uniform half-plus-epsilon control for discrete BV test multipliers.

This is a genuine maximal signed estimate.  Unlike finite-order weighted
`L∞` derivative control, it admits moving sharp cutoffs with a uniform cost.
-/
@[expose]
def ConductorThreeBVPacketEstimate : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (N : ℕ) (weight : ℕ → ℝ), 2 ≤ N →
        DiscretePacketWeightCost N weight ≤ 2 →
          |conductorThreeDiscreteWeightedSum N weight| ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-- The exact prefix multiplier selecting the indices `n ≤ x`. -/
@[expose]
def conductorThreePrefixWeight (x n : ℕ) : ℝ :=
  if n ≤ x then 1 else 0

/-- The prefix multiplier has one initial unit of mass and one jump, hence
total-variation cost exactly `2`. -/
@[surface_novel, surface_published]
theorem conductorThreePrefixWeight_cost (x : ℕ) (hx : 1 ≤ x) :
    DiscretePacketWeightCost x (conductorThreePrefixWeight x) = 2 := by
  unfold DiscretePacketWeightCost conductorThreePrefixWeight
  simp only [Nat.zero_le, ↓reduceIte, abs_one]
  have hsplit : Finset.range (2 * x) =
      Finset.range x ∪ Finset.Ico x (2 * x) := by
    ext n
    simp
    omega
  rw [hsplit, Finset.sum_union]
  · have hfirst : ∀ n ∈ Finset.range x,
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)| = 0 := by
      intro n hn
      simp only [Finset.mem_range] at hn
      simp [show n ≤ x by omega, show n + 1 ≤ x by omega]
    rw [show (∑ n ∈ Finset.range x,
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)|) = 0 by
      exact Finset.sum_eq_zero hfirst]
    have hxmem : x ∈ Finset.Ico x (2 * x) := by
      simp
      omega
    rw [Finset.sum_eq_single x]
    · simp
      norm_num
    · intro b hb hbx
      simp only [Finset.mem_Ico] at hb
      have hxb : x < b := lt_of_le_of_ne hb.1 (Ne.symm hbx)
      simp [show ¬b ≤ x by omega, show ¬b + 1 ≤ x by omega]
    · exact fun hxnot ↦ (hxnot hxmem).elim
  · exact Finset.disjoint_left.2 (by
      intro n hn hni
      simp only [Finset.mem_range] at hn
      simp only [Finset.mem_Ico] at hni
      omega)

/-- The BV readout of the prefix multiplier is exactly `Ψχ₃(x)`. -/
@[surface_novel, surface_published]
theorem conductorThreeDiscreteWeightedSum_prefix (x : ℕ) (hx : 1 ≤ x) :
    conductorThreeDiscreteWeightedSum x (conductorThreePrefixWeight x) =
      conductorThreePsi x := by
  unfold conductorThreeDiscreteWeightedSum conductorThreePrefixWeight
    conductorThreePsi
  rw [← Finset.sum_range_add_sum_Ico
    (f := fun n ↦ twistedVonMangoldtThree n *
      if n ≤ x then (1 : ℝ) else 0)
    (show x + 1 ≤ 2 * x + 1 by omega)]
  have hmain :
      (∑ n ∈ Finset.range (x + 1),
        twistedVonMangoldtThree n *
          if n ≤ x then (1 : ℝ) else 0) =
        ∑ n ∈ Finset.range (x + 1), twistedVonMangoldtThree n := by
    apply Finset.sum_congr rfl
    intro n hn
    simp only [Finset.mem_range] at hn
    simp [show n ≤ x by omega]
  rw [hmain]
  have htail :
      (∑ n ∈ Finset.Ico (x + 1) (2 * x + 1),
        twistedVonMangoldtThree n *
          if n ≤ x then (1 : ℝ) else 0) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    simp only [Finset.mem_Ico] at hn
    simp [show ¬n ≤ x by omega]
  rw [htail, add_zero]

/-- A uniform BV packet estimate yields the sharp summatory
half-plus-epsilon bound with the same constant. -/
@[surface_novel, surface_published]
theorem bvPacketEstimate_implies_halfPlusEpsilon :
    ConductorThreeBVPacketEstimate → TwistedPsiHalfPlusEpsilon := by
  intro hBV epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hBV epsilon hepsilon
  refine ⟨C, hC, ?_⟩
  intro x hx
  rw [← conductorThreeDiscreteWeightedSum_prefix x (by omega)]
  exact hbound x (conductorThreePrefixWeight x) hx (by
    rw [conductorThreePrefixWeight_cost x (by omega)])

end

end Surface.Core.ConductorThreePacketUnsmoothing
```
