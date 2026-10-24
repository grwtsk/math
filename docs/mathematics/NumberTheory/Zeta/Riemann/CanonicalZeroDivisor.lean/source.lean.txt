/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import Mathlib.NumberTheory.LSeries.ZetaZeros
import Mathlib.Analysis.Analytic.Order
import Mathlib.Data.Finset.Card
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Lean.Elab.Tactic.NormCast
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Canonical nontrivial zeta divisor at finite absolute height

The point type reuses the repository's exact nontrivial-zero predicate.
Weights are the analytic orders of the actual Mathlib riemannZeta, not user
metadata. Finiteness and positivity of those orders are proved before the
natural-number conversion is used. Compact-zero finiteness and the existing
open-strip theorem construct a complete mathematical height inventory.

The finite set is noncomputable: it is not an enumerator, certified external
zero list, zero-count asymptotic, or first-Riesz formula. Both height signs and
all horizontal coordinates are retained. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED; the imported repository proofs retain their audit duties.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

open Set
open scoped BigOperators

noncomputable section

/-- Distinct complex points, with the already maintained exact zero predicate. -/
abbrev ZeroPoint := {z : ℂ // NontrivialZetaZero z}

/-- Analyticity is used only away from the excluded pole. -/
theorem analyticAt_point (z : ZeroPoint) : AnalyticAt ℂ riemannZeta z.1 :=
  analyticOn_riemannZeta z.1 z.2.2.2

/-- The actual zeta germ has finite order, since zeta is nonzero at two on the
connected punctured plane. No nonvanishing claim at a zero is used. -/
theorem order_ne_top (z : ZeroPoint) : analyticOrderAt riemannZeta z.1 ≠ ⊤ := by
  have htwo : analyticOrderAt riemannZeta (2 : ℂ) = 0 :=
    analyticOrderAt_eq_zero.mpr
      (Or.inr (riemannZeta_ne_zero_of_one_le_re (by norm_num)))
  exact analyticOn_riemannZeta.analyticOrderAt_ne_top_of_isPreconnected
    (isConnected_compl_singleton_of_one_lt_rank (by simp) (1 : ℂ)).2
    (by simp : (2 : ℂ) ∈ ({1}ᶜ : Set ℂ)) z.2.2.2
    (by rw [htwo]; exact ENat.zero_ne_top)

/-- Analytic multiplicity is fixed by the source function and the full point. -/
def multiplicity (z : ZeroPoint) : ℕ := analyticOrderNatAt riemannZeta z.1

/-- The conversion to natural numbers loses no infinite-order information. -/
theorem multiplicity_cast (z : ZeroPoint) :
    (multiplicity z : ℕ∞) = analyticOrderAt riemannZeta z.1 :=
  Nat.cast_analyticOrderNatAt (order_ne_top z)

/-- Every actual nontrivial zero receives a positive, finite analytic weight. -/
theorem multiplicity_pos (z : ZeroPoint) : 0 < multiplicity z := by
  apply Nat.pos_of_ne_zero
  intro hz
  have ho : analyticOrderAt riemannZeta z.1 ≠ 0 :=
    analyticOrderAt_ne_zero.mpr ⟨analyticAt_point z, z.2.1⟩
  have he := multiplicity_cast z
  rw [hz, Nat.cast_zero] at he
  exact ho he.symm

/-- The weight has the defining local-factorization meaning, not only a name. -/
theorem multiplicity_factorization (z : ZeroPoint) :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g z.1 ∧ g z.1 ≠ 0 ∧
      ∀ᶠ s in nhds z.1, riemannZeta s = (s - z.1) ^ multiplicity z • g s := by
  exact (analyticAt_point z).analyticOrderAt_eq_natCast.mp (multiplicity_cast z).symm

/-- Absolute height preserves both signs; it is not the zero's identity key. -/
def height (z : ZeroPoint) : ℝ := |z.1.im|

/-- Reuse the established unconditional strip restriction, with no line projection. -/
theorem point_mem_strip (z : ZeroPoint) : 0 < z.1.re ∧ z.1.re < 1 :=
  z.2.mem_critical_strip

/-- Bounded absolute height and the strip put all these zeros in one compact ball. -/
theorem bounded_zero_set_finite (T : ℝ) :
    {z : ℂ | NontrivialZetaZero z ∧ |z.im| ≤ T}.Finite := by
  apply (isCompact_closedBall (0 : ℂ) (|T| + 1)).inter_riemannZetaZeros_finite.subset
  intro z hz
  refine ⟨?_, mem_riemannZetaZeros.mpr hz.1.1⟩
  rw [Metric.mem_closedBall, dist_zero_right]
  have hs := hz.1.mem_critical_strip
  calc
    ‖z‖ ≤ |z.re| + |z.im| := Complex.norm_le_abs_re_add_abs_im z
    _ ≤ 1 + |T| := add_le_add
      (by rw [abs_of_pos hs.1]; exact hs.2.le) (hz.2.trans (le_abs_self T))
    _ = |T| + 1 := add_comm _ _

/-- Finiteness survives passage to the subtype of exact nontrivial zeros. -/
theorem height_set_finite (T : ℝ) : {z : ZeroPoint | height z ≤ T}.Finite := by
  exact Set.Finite.of_injOn
    (f := fun z : ZeroPoint => z.1)
    (s := {z : ZeroPoint | height z ≤ T})
    (t := {z : ℂ | NontrivialZetaZero z ∧ |z.im| ≤ T})
    (fun z hz => ⟨z.2, hz⟩) Subtype.val_injective.injOn
    (bounded_zero_set_finite T)

/-- The complete mathematical height head, not a computed or parsed list. -/
def heightHead (T : ℝ) : Finset ZeroPoint := (height_set_finite T).toFinset

@[simp] theorem mem_heightHead (T : ℝ) (z : ZeroPoint) :
    z ∈ heightHead T ↔ height z ≤ T := by
  classical
  simp only [heightHead, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]

/-- An external finite set can replace the head only after exact membership
agreement at every actual point; numerical proximity is not this premise. -/
theorem heightHead_eq_of_exact_membership (T : ℝ) (S : Finset ZeroPoint)
    (hS : ∀ z, z ∈ S ↔ height z ≤ T) : S = heightHead T := by
  classical
  ext z
  exact (hS z).trans (mem_heightHead T z).symm

/-- Every omitted canonical point has height strictly beyond the cutoff. -/
theorem height_gt_of_not_mem_head (T : ℝ) (z : ZeroPoint)
    (hz : z ∉ heightHead T) : T < height z :=
  lt_of_not_ge (fun h => hz ((mem_heightHead T z).mpr h))

/-- Every actual point belongs to a finite head, including an atom at its cutoff. -/
theorem point_mem_own_head (z : ZeroPoint) : z ∈ heightHead (height z) :=
  (mem_heightHead _ _).mpr le_rfl

/-- Nested closed-height inventories, with no re-enumeration assumption. -/
theorem heightHead_mono {T V : ℝ} (hTV : T ≤ V) : heightHead T ⊆ heightHead V := by
  intro z hz
  exact (mem_heightHead V z).mpr (((mem_heightHead T z).mp hz).trans hTV)

/-- A negative height cutoff selects no records. -/
theorem heightHead_eq_empty_of_neg {T : ℝ} (hT : T < 0) : heightHead T = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro z hz
  have hh := (mem_heightHead T z).mp hz
  exact (not_le_of_gt hT) ((abs_nonneg z.1.im).trans hh)

/-- Full analytic-multiplicity count, over both height signs. -/
def heightCount (T : ℝ) : ℕ := ∑ z ∈ heightHead T, multiplicity z

/-- Distinct-point cardinality cannot exceed the analytic-multiplicity count. -/
theorem head_card_le_heightCount (T : ℝ) : (heightHead T).card ≤ heightCount T := by
  calc
    _ = ∑ _z ∈ heightHead T, (1 : ℕ) := by simp
    _ ≤ _ := Finset.sum_le_sum (fun z _ => multiplicity_pos z)

/-- Enlarging the height cutoff does not decrease the source count. -/
theorem heightCount_mono {T V : ℝ} (hTV : T ≤ V) : heightCount T ≤ heightCount V := by
  exact Finset.sum_le_sum_of_subset_of_nonneg (heightHead_mono hTV)
    (fun z _ _ => Nat.zero_le (multiplicity z))

/-- Positive analytic weights prevent a nonempty head from having zero count. -/
theorem heightCount_eq_zero_iff (T : ℝ) :
    heightCount T = 0 ↔ heightHead T = ∅ := by
  constructor
  · intro hzero
    apply Finset.card_eq_zero.mp
    exact Nat.eq_zero_of_le_zero (hzero ▸ head_card_le_heightCount T)
  · intro hempty
    simp [heightCount, hempty]

/-- Rewrite the integer count in the real normalization used by the tail theorem. -/
theorem heightCount_cast (T : ℝ) :
    (heightCount T : ℝ) = ∑ z ∈ heightHead T, (multiplicity z : ℝ) := by
  simp only [heightCount, Nat.cast_sum]

end
end GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
