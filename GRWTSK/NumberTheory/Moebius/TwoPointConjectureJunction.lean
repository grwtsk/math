/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #453. Direct stacked parent: draft PR #449 at
`1157501e4b52ec388bbcff8baed6563534c40c0b`.
-/
import GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal
import GRWTSK.NumberTheory.Moebius.DyadicMaximalMertensTwoPointEnergy

/-!
# Two-point conjecture junction

This module separates four different levels of information:

1. terminal cancellation at one fixed shift;
2. terminal cancellation uniform over a growing dyadic shift range;
3. depth-weighted aligned-dyadic tree energy;
4. the canonical maximal-prefix energy consumed by the existing conditional
   Riemann-hypothesis theorem.

Only the third-to-fourth comparison is proved here, for the actual Möbius
source, by reusing the generic finite theorem in
`GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal`.

No implication from either terminal-cancellation interface to tree energy is
asserted. Higher-order Chowla, corrected Elliott, Sarnak-type disjointness,
Weak Mertens and Gonek--Hejhal are represented only through an explicit adapter
record whose proof remains a substantive obligation.
-/

set_option autoImplicit false
noncomputable section

open Filter
open scoped BigOperators Topology

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace TwoPointConjectureJunction

open GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- The ordinary signed two-point source at positive shift `h`. -/
def twoPointSequence (f g : ℕ → ℝ) (h : ℕ) : ℕ → ℝ :=
  fun n => f (n + 1) * g (n + 1 + h)

/-- The ordinary terminal prefix of a real two-point source. -/
def twoPointPrefix (f g : ℕ → ℝ) (h N : ℕ) : ℝ :=
  finitePrefixSum (twoPointSequence f g h) N

/-- The admissible two-point prefix length below the dyadic right endpoint. -/
def dyadicTwoPointCutoff (j h : ℕ) : ℕ :=
  2 ^ (j + 1) - h - 1

/-- Zero-pad a two-point source after the exact admissible cutoff.

The padding is part of the interface: the generic dyadic tree is formed on
`[0,2^(j+1))`, while the arithmetic correlation is only consumed up to
`2^(j+1)-h-1`. -/
def paddedTwoPointSequence
    (f g : ℕ → ℝ) (j h : ℕ) : ℕ → ℝ :=
  fun n =>
    if n < dyadicTwoPointCutoff j h then
      twoPointSequence f g h n
    else 0

/-- Complete aligned-dyadic tree energy of one zero-padded shift source. -/
def twoPointTreeEnergy
    (f g : ℕ → ℝ) (j h : ℕ) : ℝ :=
  dyadicTreeSquareEnergy (j + 1) (paddedTwoPointSequence f g j h)

/-- Sum of the complete tree energies over every positive shift below the
current dyadic endpoint. -/
def twoPointTreeEnergySum
    (f g : ℕ → ℝ) (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), twoPointTreeEnergy f g j h

/-- The generic dyadic all-prefix maximum of one zero-padded shift source. -/
def twoPointDyadicPrefixMaximum
    (f g : ℕ → ℝ) (j h : ℕ) : ℝ :=
  dyadicPrefixMaximum (j + 1) (paddedTwoPointSequence f g j h)

/-- Ordinary fixed-shift terminal cancellation.

This statement intentionally contains no uniformity in `h` and no maximum over
intermediate cutoffs. It is the conservative interface inhabited by a
fixed-form ordinary two-point theorem after all source conventions are matched.
-/
def FixedShiftTerminalCancellation (f g : ℕ → ℝ) : Prop :=
  ∀ h : ℕ, 1 ≤ h →
    Tendsto
      (fun N : ℕ => twoPointPrefix f g h N / (N : ℝ))
      atTop (𝓝 0)

/-- Uniform terminal cancellation over the complete growing dyadic shift range.

This still observes only the terminal admissible prefix at each `(j,h)`. It is
strictly different from maximal-prefix or block-energy control. -/
def GrowingShiftDyadicTerminalCancellation (f g : ℕ → ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ J : ℕ, ∀ j : ℕ, J ≤ j →
    ∀ h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
      |twoPointPrefix f g h (dyadicTwoPointCutoff j h)| ≤
        ε * ((2 ^ (j + 1) : ℕ) : ℝ)

/-- Source-facing all-scale aligned-tree supplier, with the exact maximalization
cost `j+2` retained rather than silently absorbed.

For the Möbius specialization this is the immediate arithmetic premise proved
to feed the existing canonical maximal-prefix energy. -/
def SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost
    (f g : ℕ → ℝ) : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧ ∀ j : ℕ,
    ((j : ℝ) + 2) * twoPointTreeEnergySum f g j ≤
      (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 *
        ((2 ^ (j + 1) : ℕ) : ℝ)

/-- Exact Möbius specialization of the depth-weighted tree-energy supplier. -/
def SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost : Prop :=
  SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost
    moebiusReal moebiusReal

/-- A source proposition connects to the RH-facing arithmetic path only through
an explicit proof-producing adapter.

The existence of this record type is not evidence that any named conjecture
supplies a value of it. -/
structure ToMertensTreeEnergyAdapter (source : Prop) : Type where
  toTreeEnergy :
    source → SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost

/-- Adapter shape required from a higher-order Chowla statement before it may
be used by the binary Möbius tree-energy path. -/
abbrev HigherOrderChowlaAdapter (source : Prop) :=
  ToMertensTreeEnergyAdapter source

/-- Adapter shape required from a higher-order corrected Elliott statement. -/
abbrev CorrectedElliottAdapter (source : Prop) :=
  ToMertensTreeEnergyAdapter source

/-- Adapter shape required from a Sarnak-type dynamical disjointness statement.
It must include the arithmetic-to-dynamical and dynamical-to-tree-energy
comparison; neither direction is inferred from the name. -/
abbrev SarnakDisjointnessAdapter (source : Prop) :=
  ToMertensTreeEnergyAdapter source

/-- Adapter shape required from a Weak Mertens mean-square statement. -/
abbrev WeakMertensAdapter (source : Prop) :=
  ToMertensTreeEnergyAdapter source

/-- Adapter shape required from a Gonek--Hejhal negative-moment statement. -/
abbrev GonekHejhalAdapter (source : Prop) :=
  ToMertensTreeEnergyAdapter source

@[simp] theorem twoPointPrefix_moebius
    (h N : ℕ) :
    twoPointPrefix moebiusReal moebiusReal h N =
      mertensTwoPointPrefix h N := by
  rfl

/-- Before the arithmetic cutoff, the zero-padded generic source has exactly
the ordinary two-point prefix. -/
theorem finitePrefixSum_padded_eq_twoPointPrefix
    {f g : ℕ → ℝ} {j h N : ℕ}
    (hN : N ≤ dyadicTwoPointCutoff j h) :
    finitePrefixSum (paddedTwoPointSequence f g j h) N =
      twoPointPrefix f g h N := by
  unfold finitePrefixSum paddedTwoPointSequence twoPointPrefix twoPointSequence
  apply Finset.sum_congr rfl
  intro n hn
  rw [if_pos]
  exact lt_of_lt_of_le (Finset.mem_range.mp hn) hN

/-- Möbius specialization of the exact padding identity. -/
theorem finitePrefixSum_padded_moebius_eq_mertens
    {j h N : ℕ} (hN : N ≤ dyadicTwoPointCutoff j h) :
    finitePrefixSum
        (paddedTwoPointSequence moebiusReal moebiusReal j h) N =
      mertensTwoPointPrefix h N := by
  rw [finitePrefixSum_padded_eq_twoPointPrefix hN,
    twoPointPrefix_moebius]

/-- The generic zero-padded dyadic prefix maximum is nonnegative because it
contains the zero prefix. -/
theorem twoPointDyadicPrefixMaximum_nonneg
    (f g : ℕ → ℝ) (j h : ℕ) :
    0 ≤ twoPointDyadicPrefixMaximum f g j h := by
  unfold twoPointDyadicPrefixMaximum dyadicPrefixMaximum
  have hzero := le_partialSups_of_le
    (fun N : ℕ =>
      |finitePrefixSum (paddedTwoPointSequence f g j h) N|)
    (Nat.zero_le (2 ^ (j + 1)))
  simpa using hzero

/-- The actual Möbius prefix maximum is bounded by the generic maximum of the
zero-padded source on the complete dyadic interval. -/
theorem mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ≤
      twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h := by
  unfold mertensTwoPointPrefixMax
  apply (partialSups_le_iff).2
  intro N hN
  have hNcut : N ≤ dyadicTwoPointCutoff j h := by
    simpa [dyadicTwoPointCutoff] using hN
  have hNY : N ≤ 2 ^ (j + 1) := by
    unfold dyadicTwoPointCutoff at hNcut
    omega
  calc
    |mertensTwoPointPrefix h N| =
        |finitePrefixSum
          (paddedTwoPointSequence moebiusReal moebiusReal j h) N| := by
      rw [finitePrefixSum_padded_moebius_eq_mertens hNcut]
    _ ≤ twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h := by
      unfold twoPointDyadicPrefixMaximum dyadicPrefixMaximum
      exact le_partialSups_of_le
        (fun n : ℕ =>
          |finitePrefixSum
            (paddedTwoPointSequence moebiusReal moebiusReal j h) n|)
        hNY

/-- One exact shift-wise connection: the canonical Möbius prefix maximum is
controlled by `j+2` times the complete zero-padded aligned-tree energy. -/
theorem mertensTwoPointPrefixMax_sq_le_twoPointTreeEnergy
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ^ 2 ≤
      ((j : ℝ) + 2) *
        twoPointTreeEnergy moebiusReal moebiusReal j h := by
  have hmax :=
    mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum j h
  have hsquare :
      mertensTwoPointPrefixMax j h ^ 2 ≤
        twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h ^ 2 :=
    (sq_le_sq₀
      (mertensTwoPointPrefixMax_nonneg j h)
      (twoPointDyadicPrefixMaximum_nonneg
        moebiusReal moebiusReal j h)).2 hmax
  have htree :=
    dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
      (j + 1) (paddedTwoPointSequence moebiusReal moebiusReal j h)
  calc
    mertensTwoPointPrefixMax j h ^ 2 ≤
        twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h ^ 2 :=
      hsquare
    _ ≤ (((j + 1 : ℕ) : ℝ) + 1) *
        dyadicTreeSquareEnergy (j + 1)
          (paddedTwoPointSequence moebiusReal moebiusReal j h) := by
      simpa [twoPointDyadicPrefixMaximum] using htree
    _ = ((j : ℝ) + 2) *
        twoPointTreeEnergy moebiusReal moebiusReal j h := by
      simp [twoPointTreeEnergy, Nat.cast_add]
      ring

/-- Summing the shift-wise comparison gives the exact finite connection from
local tree energy to the canonical maximal quadratic energy. -/
theorem mertensTwoPointMaximalQuadraticEnergy_le_treeEnergySum
    (j : ℕ) :
    mertensTwoPointMaximalQuadraticEnergy j ≤
      ((j : ℝ) + 2) *
        twoPointTreeEnergySum moebiusReal moebiusReal j := by
  unfold mertensTwoPointMaximalQuadraticEnergy twoPointTreeEnergySum
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefixMax j h ^ 2) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ((j : ℝ) + 2) *
          twoPointTreeEnergy moebiusReal moebiusReal j h := by
      apply Finset.sum_le_sum
      intro h _hh
      exact mertensTwoPointPrefixMax_sq_le_twoPointTreeEnergy j h
    _ = ((j : ℝ) + 2) *
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          twoPointTreeEnergy moebiusReal moebiusReal j h := by
      rw [Finset.mul_sum]

/-- The depth-weighted tree-energy supplier discharges the exact canonical
maximal-prefix premise with the same subpolynomial constants. -/
theorem subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy
    (hTree :
      SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost) :
    SubpolynomialDyadicMaximalMertensTwoPointEnergy := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := hTree δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  refine ⟨mul_nonneg hA (by positivity), ?_⟩
  exact
    (mertensTwoPointMaximalQuadraticEnergy_le_treeEnergySum j).trans
      (hscale j)

/-- Direct conditional endpoint from the explicit Möbius tree-energy supplier. -/
theorem riemannHypothesis_of_mertensTwoPointTreeEnergy
    (hTree :
      SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
    (subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy hTree)

/-- A named or abstract conjecture reaches the existing RH endpoint only after
both its own proof and an explicit adapter into the Möbius tree-energy supplier
are supplied. -/
theorem riemannHypothesis_of_adapter
    {source : Prop}
    (bridge : ToMertensTreeEnergyAdapter source)
    (hsource : source) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_mertensTwoPointTreeEnergy
    (bridge.toTreeEnergy hsource)

end TwoPointConjectureJunction
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.mertensTwoPointPrefixMax_sq_le_twoPointTreeEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.mertensTwoPointMaximalQuadraticEnergy_le_treeEnergySum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.TwoPointConjectureJunction.riemannHypothesis_of_adapter
