/-
Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported PFR sources retain their upstream authorship and Apache-2.0 license.
-/
import PFR.RhoFunctional
import Mathlib.Algebra.Group.Pointwise.Finset.Basic
import Mathlib.Tactic.Abel

/-!
# A structured difference cover for small-doubling consumers

The local small-doubling and additive-energy families work with difference sets.
The upstream PFR endpoint covers the original set by translates of a small
submodule. Subtracting two such representations gives a difference-set cover
by the same submodule. This file keeps the finite coset-center set and its
quantitative cardinality, rather than treating an imported cover as an analogy.

The ambient group is an arbitrary module over `ZMod 2`; it need not be finite.
The imported result supplies the finite center set and finite submodule.
-/

open scoped Pointwise

namespace GRWTSK.Combinatorics.SmallDoublingDifferenceCover

/-- Subtracting two elements of a covered set gives a difference of cover centers
plus an element of the same submodule. -/
theorem sub_subset_difference_centers {G : Type*} [AddCommGroup G]
    [Module (ZMod 2) G] {A c : Set G} (H : Submodule (ZMod 2) G)
    (hcover : A ⊆ c + (H : Set G)) :
    A - A ⊆ (c - c) + (H : Set G) := by
  intro z hz
  rcases Set.mem_sub.mp hz with ⟨a, ha, b, hb, rfl⟩
  rcases Set.mem_add.mp (hcover ha) with ⟨u, hu, h, hh, rfl⟩
  rcases Set.mem_add.mp (hcover hb) with ⟨v, hv, k, hk, rfl⟩
  refine Set.mem_add.mpr
    ⟨u - v, Set.mem_sub.mpr ⟨u, hu, v, hv, rfl⟩,
      h - k, H.sub_mem hh hk, ?_⟩
  abel

/-- PFR supplies a finite structured cover for the difference set. The number
of difference centers is strictly below `(2*K^9)^2`, while the submodule still
has cardinality at most that of the original set. The powers here are natural-number powers, matching
the upstream exponent-nine endpoint's exact interface. -/
theorem difference_cover_of_small_doubling {G : Type*} [AddCommGroup G]
    [Module (ZMod 2) G] {A : Set G} {K : ℝ}
    (hA₀ : A.Nonempty) (hAfin : A.Finite)
    (hsmall : Nat.card (A + A) ≤ K * Nat.card A) :
    ∃ (H : Submodule (ZMod 2) G) (D : Set G),
      D.Finite ∧ (H : Set G).Finite ∧
      (Nat.card D : ℝ) < (2 * K ^ (9 : ℕ)) * (2 * K ^ (9 : ℕ)) ∧
      (H : Set G).ncard ≤ Nat.card A ∧ A - A ⊆ D + (H : Set G) := by
  obtain ⟨H, c, hcfin, hHfin, hc, hHcard, hcover⟩ :=
    _root_.better_PFR_conjecture hA₀ hAfin hsmall
  have hcenters : (Nat.card (c - c) : ℝ) ≤
      (Nat.card c : ℝ) * (Nat.card c : ℝ) := by
    exact_mod_cast (Set.natCard_sub_le (s := c) (t := c))
  have hsquare : (Nat.card c : ℝ) * (Nat.card c : ℝ) <
      (2 * K ^ (9 : ℕ)) * (2 * K ^ (9 : ℕ)) :=
    mul_self_lt_mul_self (Nat.cast_nonneg _) hc
  exact ⟨H, c - c, hcfin.sub hcfin, hHfin, hcenters.trans_lt hsquare,
    hHcard, sub_subset_difference_centers H hcover⟩

/-- Finset-facing form for the existing local small-doubling/additive-energy
family. Coercion to sets preserves both pointwise sum and difference sets and
their finite cardinalities, so no representation comparison is left as a premise. -/
theorem finset_difference_cover_of_small_doubling {G : Type*} [AddCommGroup G]
    [Module (ZMod 2) G] [DecidableEq G] {A : Finset G} {K : ℝ}
    (hA₀ : A.Nonempty) (hsmall : ((A + A).card : ℝ) ≤ K * A.card) :
    ∃ (H : Submodule (ZMod 2) G) (D : Set G),
      D.Finite ∧ (H : Set G).Finite ∧
      (Nat.card D : ℝ) < (2 * K ^ (9 : ℕ)) * (2 * K ^ (9 : ℕ)) ∧
      (H : Set G).ncard ≤ A.card ∧ ((A - A : Finset G) : Set G) ⊆ D + (H : Set G) := by
  have hset₀ : (A : Set G).Nonempty := by
    obtain ⟨a, ha⟩ := hA₀
    exact ⟨a, ha⟩
  have hsmall' : Nat.card ((A : Set G) + (A : Set G)) ≤
      K * Nat.card (A : Set G) := by
    simpa only [← Finset.coe_add, Nat.card_eq_finsetCard] using hsmall
  obtain ⟨H, D, hDfin, hHfin, hDcard, hHcard, hcover⟩ :=
    difference_cover_of_small_doubling hset₀ A.finite_toSet hsmall'
  refine ⟨H, D, hDfin, hHfin, hDcard, ?_, ?_⟩
  · simpa only [Nat.card_eq_finsetCard] using hHcard
  · simpa only [Finset.coe_sub] using hcover

end GRWTSK.Combinatorics.SmallDoublingDifferenceCover
