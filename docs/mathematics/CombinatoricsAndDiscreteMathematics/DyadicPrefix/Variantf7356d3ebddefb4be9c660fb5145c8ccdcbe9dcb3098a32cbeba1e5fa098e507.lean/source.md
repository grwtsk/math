# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DyadicPrefix.Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3ced5676f2ed6a133d93558be79cd87dcdba885` · SHA-256 `f7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Data.Matrix.Basic
public import Mathlib.Data.Nat.Log
import Mathlib.Tactic

/-!
# Boolean certificates for dyadic prefix decompositions

This module gives the phrase *logical bit groups* a finite mathematical
meaning.  A Boolean matrix records which dyadic intervals are selected for a
prefix.  Its entries are incidence data only: real or complex amplitudes live
in a separate function summed over the selected intervals.

`DyadicPrefixCode` is a proof-carrying certificate.  It records disjointness,
exact coverage of the requested prefix, and the logarithmic cardinality
bound.  The module does **not** postulate that such a code exists.  That
construction obligation is exposed separately as `HasDyadicPrefixCode`.
-/

public section

namespace Surface.Core.PrimeLattice.DyadicPrefix

noncomputable section

open scoped BigOperators

/-- Number of binary scales available in the window `0, ..., 2 * N`.
The extra one makes the type of scale rows nonempty, including at `N = 0`. -/
@[expose]
def dyadicDepth (N : ℕ) : ℕ :=
  Nat.log2 (2 * N + 1) + 1

/-- A half-open, binary-aligned interval inside the scale window. -/
structure DyadicInterval (N : ℕ) where
  lower : ℕ
  upper : ℕ
  scale : Fin (dyadicDepth N)
  lower_lt_upper : lower < upper
  upper_le_window : upper ≤ 2 * N + 1
  length_eq_pow : upper - lower = 2 ^ scale.val
  lower_aligned : lower % (2 ^ scale.val) = 0

/-- Finite carrier of a dyadic interval. -/
@[expose]
def DyadicInterval.carrier {N : ℕ} (I : DyadicInterval N) : Finset ℕ :=
  Finset.Ico I.lower I.upper

/-- Every point in a certified dyadic interval lies in the ambient scale
window. -/
@[surface_novel, surface_published]
theorem DyadicInterval.mem_window {N n : ℕ} (I : DyadicInterval N)
    (hn : n ∈ I.carrier) :
    n < 2 * N + 1 := by
  simp only [DyadicInterval.carrier, Finset.mem_Ico] at hn
  exact hn.2.trans_le I.upper_le_window

/-- A Boolean incidence certificate for a prefix.  Rows are dyadic scales;
columns are the finite candidate blocks.  `selected_only_at_native_scale`
prevents the same column from being asserted in an unrelated scale row.

No analytic estimate occurs in this structure. -/
structure DyadicPrefixCode (N : ℕ) (x : Fin (2 * N + 1)) where
  Block : Type
  blockFintype : Fintype Block
  blockDecidableEq : DecidableEq Block
  interval : Block → DyadicInterval N
  incidence : Matrix (Fin (dyadicDepth N)) Block Bool
  blocks : Finset Block
  blocks_iff_native_bit : ∀ b,
    b ∈ blocks ↔ incidence (interval b).scale b = true
  selected_only_at_native_scale : ∀ r b,
    incidence r b = true → r = (interval b).scale
  pairwise_disjoint : Set.PairwiseDisjoint (↑blocks) (fun b ↦ (interval b).carrier)
  exact_prefix_cover :
    blocks.biUnion (fun b ↦ (interval b).carrier) = Finset.range (x.val + 1)
  card_le_depth : blocks.card ≤ dyadicDepth N

attribute [instance] DyadicPrefixCode.blockFintype
attribute [instance] DyadicPrefixCode.blockDecidableEq

/-- The Boolean matrix is exactly the typed incidence mask: a true entry is
at the block's native scale and selects that block. -/
@[surface_novel, surface_published]
theorem incidence_eq_true_iff {N : ℕ} {x : Fin (2 * N + 1)}
    (code : DyadicPrefixCode N x) (r : Fin (dyadicDepth N))
    (b : code.Block) :
    code.incidence r b = true ↔
      r = (code.interval b).scale ∧ b ∈ code.blocks := by
  constructor
  · intro hbit
    have hr := code.selected_only_at_native_scale r b hbit
    refine ⟨hr, ?_⟩
    rw [code.blocks_iff_native_bit]
    simpa [hr] using hbit
  · rintro ⟨rfl, hb⟩
    exact code.blocks_iff_native_bit b |>.mp hb

/-- Existence of a valid Boolean dyadic decomposition is an explicit
construction obligation, not an axiom and not a hidden estimate. -/
@[expose]
def HasDyadicPrefixCode (N : ℕ) (x : Fin (2 * N + 1)) : Prop :=
  Nonempty (DyadicPrefixCode N x)

/-- Sum of an amplitude over one selected dyadic block. -/
@[expose]
def blockSum {N : ℕ} {x : Fin (2 * N + 1)}
    (code : DyadicPrefixCode N x) {E : Type*} [AddCommMonoid E]
    (amplitude : ℕ → E) (b : code.Block) : E :=
  ∑ n ∈ (code.interval b).carrier, amplitude n

/-- Exact coverage and disjointness turn a prefix sum into the sum of its
selected dyadic block sums. -/
@[surface_novel, surface_published]
theorem sum_prefix_eq_sum_blockSums {N : ℕ} {x : Fin (2 * N + 1)}
    (code : DyadicPrefixCode N x) {E : Type*} [AddCommMonoid E]
    (amplitude : ℕ → E) :
    (∑ n ∈ Finset.range (x.val + 1), amplitude n) =
      ∑ b ∈ code.blocks, blockSum code amplitude b := by
  rw [← code.exact_prefix_cover]
  exact Finset.sum_biUnion code.pairwise_disjoint

/-- Checked triangle reduction supplied by a dyadic code.  If every selected
block has norm at most `M`, the whole prefix costs at most the number of
binary scales times `M`.

This theorem is purely finite.  It does not assert the difficult arithmetic
bound on any block. -/
@[surface_novel, surface_published]
theorem norm_prefixSum_le_depth_mul {N : ℕ}
    {x : Fin (2 * N + 1)} (code : DyadicPrefixCode N x)
    {E : Type*} [SeminormedAddCommGroup E] (amplitude : ℕ → E)
    (M : ℝ) (hM : 0 ≤ M)
    (hblock : ∀ b ∈ code.blocks, ‖blockSum code amplitude b‖ ≤ M) :
    ‖∑ n ∈ Finset.range (x.val + 1), amplitude n‖ ≤
      (dyadicDepth N : ℝ) * M := by
  rw [sum_prefix_eq_sum_blockSums code amplitude]
  calc
    ‖∑ b ∈ code.blocks, blockSum code amplitude b‖ ≤
        ∑ b ∈ code.blocks, ‖blockSum code amplitude b‖ :=
      norm_sum_le _ _
    _ ≤ ∑ _b ∈ code.blocks, M := by
      exact Finset.sum_le_sum fun b hb ↦ hblock b hb
    _ = (code.blocks.card : ℝ) * M := by simp
    _ ≤ (dyadicDepth N : ℝ) * M := by
      exact mul_le_mul_of_nonneg_right (by exact_mod_cast code.card_le_depth) hM

end

end Surface.Core.PrimeLattice.DyadicPrefix
```
