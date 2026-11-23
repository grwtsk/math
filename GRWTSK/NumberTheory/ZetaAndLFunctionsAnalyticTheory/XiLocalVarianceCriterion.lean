import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiWindowVariance
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalZeroDivisor

/-! Three moments on arbitrarily small rational height windows suffice for RH. -/

namespace GRWTSK.XiLocalVarianceCriterion

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor GRWTSK.XiWindowVariance
noncomputable section

def cell (a b : ℚ) : Finset ZeroPoint :=
  (heightHead (max |(a:ℝ)| |(b:ℝ)| + 1)).filter (fun z => (a:ℝ)<z.1.im ∧ z.1.im<(b:ℝ))

theorem mem_cell {a b : ℚ} {z : ZeroPoint} :
    z ∈ cell a b ↔ (a:ℝ)<z.1.im ∧ z.1.im<(b:ℝ) := by
  simp only [cell, Finset.mem_filter, mem_heightHead]
  refine ⟨And.right, fun h => ⟨?_,h⟩⟩
  unfold height
  apply abs_le.mpr
  constructor
  · linarith [le_max_left |(a:ℝ)| |(b:ℝ)|, neg_abs_le (a:ℝ), h.1]
  · linarith [le_max_right |(a:ℝ)| |(b:ℝ)|, le_abs_self (b:ℝ), h.2]

def cellMoments (a b : ℚ) : Moments :=
  stats (cell a b) (fun z => multiplicity z) (fun z => z.1.im) (fun z => z.1.re-1/2)

theorem isolating_radius {ι : Type*} (s : Finset ι) (x : ι → ℝ) (c : ℝ) :
    ∃ ε : ℝ, 0 < ε ∧ ε ≤ 1 ∧ ∀ i ∈ s, |x i-c| < ε → x i = c := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨1, by norm_num, le_rfl, by simp⟩
  | @insert i s _ ih =>
    obtain ⟨ε,hε,h1,hs⟩ := ih
    by_cases hi : x i = c
    · exact ⟨ε,hε,h1,fun j hj h => (Finset.mem_insert.mp hj).elim
          (fun e => e ▸ hi) (fun hj' => hs j hj' h)⟩
    · refine ⟨min ε |x i-c|, lt_min hε (abs_pos.mpr (sub_ne_zero.mpr hi)),
        (min_le_left _ _).trans h1, ?_⟩
      intro j hj h
      rcases Finset.mem_insert.mp hj with rfl|hj
      · exact False.elim ((not_lt_of_ge (min_le_right _ _)) h)
      · exact hs j hj (h.trans_le (min_le_left _ _))

theorem isolate_height (q : ZeroPoint) :
    ∃ a b : ℚ, q ∈ cell a b ∧ ∀ z ∈ cell a b, z.1.im = q.1.im := by
  let c := q.1.im
  obtain ⟨ε,hε,h1,hs⟩ := isolating_radius (heightHead (|c|+2)) (fun z => z.1.im) c
  obtain ⟨a,ha,ha'⟩ := exists_rat_btwn (sub_lt_self c hε)
  obtain ⟨b,hb,hb'⟩ := exists_rat_btwn (lt_add_of_pos_right c hε)
  refine ⟨a,b,mem_cell.mpr ⟨ha',hb⟩,?_⟩
  intro z hz
  obtain ⟨hl,hu⟩ := mem_cell.mp hz
  have hd : |z.1.im-c| < ε := abs_lt.mpr ⟨by linarith,by linarith⟩
  apply hs z _ hd
  rw [mem_heightHead]
  unfold height
  exact abs_le.mpr ⟨by linarith [neg_abs_le c],by linarith [le_abs_self c]⟩

theorem mass_pos {a b : ℚ} (h : (cell a b).Nonempty) : 0 < (cellMoments a b).mass := by
  exact Finset.sum_pos (fun i _ => by exact_mod_cast multiplicity_pos i) h

theorem rational_cell_variances_iff_RH :
    (∀ a b : ℚ, 0 ≤ determinant (cellMoments a b)) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h s hs ht hp
    let q : ZeroPoint := ⟨s, hs, ht, hp⟩
    obtain ⟨a,b,hq,hfiber⟩ := isolate_height q
    have hc := (determinant_nonneg_iff (mass_pos ⟨q,hq⟩)).mp (h a b) q.1.im
    unfold cellMoments at hc
    rw [stats_centered] at hc
    by_contra hn
    have hn' : q.1.re-1/2 ≠ 0 := sub_ne_zero.mpr hn
    have hneg : (∑ z ∈ cell a b, (multiplicity z : ℝ)*
        ((z.1.im-q.1.im)^2-(z.1.re-1/2)^2)) < 0 := by
      apply Finset.sum_neg'
      · intro z hz
        rw [hfiber z hz]
        simp only [sub_self, zero_pow (by decide : 2 ≠ 0), zero_sub]
        exact mul_nonpos_of_nonneg_of_nonpos (by positivity) (neg_nonpos.mpr (sq_nonneg _))
      · refine ⟨q,hq,?_⟩
        simp only [sub_self, zero_pow (by decide : 2 ≠ 0), zero_sub]
        exact mul_neg_of_pos_of_neg (by exact_mod_cast multiplicity_pos q) (neg_neg_of_pos (sq_pos_of_ne_zero hn'))
    exact (not_lt_of_ge hc) hneg
  · intro h a b
    by_cases hs : (cell a b).Nonempty
    · apply (determinant_nonneg_iff (mass_pos hs)).mpr
      intro x
      unfold cellMoments
      rw [stats_centered]
      apply Finset.sum_nonneg
      intro z _
      rw [h z.1 z.2.1 z.2.2.1 z.2.2.2]
      simp only [sub_self, zero_pow (by decide : 2 ≠ 0), sub_zero]
      positivity
    · simp [cellMoments, stats, determinant, Finset.not_nonempty_iff_eq_empty.mp hs]

end
end GRWTSK.XiLocalVarianceCriterion
