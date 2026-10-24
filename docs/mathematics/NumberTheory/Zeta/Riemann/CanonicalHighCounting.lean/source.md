# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd4a7447fa9441839b2e76e0a0023d4e33249228` · SHA-256 `4ac4003c5529d98746744a1d153f0b5231ad7b55f39f8cf1bf9b582331eb1ac4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound
import GRWTSK.Analysis.Series.HeightCountingTail
import Mathlib.Algebra.Order.Floor.Semiring
import Lean.Elab.Tactic.Omega

set_option autoImplicit false

/-!
# A coarse global high-zero count from the actual local Jensen count

All points and multiplicities are the canonical source. Unit height increments
are covered by the retained three-unit bands. The low head at height two is
kept, not asserted empty. Removing that same head gives a numerical coefficient
44/log(6/5) for every finite high subfamily. No coefficient-one estimate or
numerical zero inventory is asserted. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalHighCounting

open scoped BigOperators
open CanonicalZeroDivisor SeparatedContourHeights CubicZetaCircleBound
open GRWTSK.Analysis.Series.HeightCountingTail

noncomputable section

/-- Deliberately coarse; no asymptotically sharp zero-count constant is claimed. -/
def countingCoefficient : ℝ := 44 / Real.log (6 / 5 : ℝ)

theorem countingCoefficient_pos : 0 < countingCoefficient :=
  div_pos (by norm_num) (Real.log_pos (by norm_num))

/-- Exact mass accounting for two nested COMPLETE heads, including both cutoffs. -/
theorem heightHead_difference_mass {a b : ℝ} (hab : a ≤ b) :
    (∑ z ∈ heightHead b \ heightHead a, multiplicity z) + heightCount a =
      heightCount b := by
  classical
  have hsub := heightHead_mono hab
  have hd : Disjoint (heightHead a) (heightHead b \ heightHead a) := by
    apply Finset.disjoint_left.mpr
    intro z hz hz'
    exact (Finset.mem_sdiff.mp hz').2 hz
  have hu : heightHead a ∪ (heightHead b \ heightHead a) = heightHead b := by
    ext z
    simp only [Finset.mem_union, Finset.mem_sdiff]
    constructor
    · rintro (hz | ⟨hz, _⟩)
      · exact hsub hz
      · exact hz
    · intro hz
      by_cases ha : z ∈ heightHead a
      · exact Or.inl ha
      · exact Or.inr ⟨hz, ha⟩
  unfold heightCount
  rw [add_comm, ← Finset.sum_union hd, hu]

/-- A unit increment lies inside the old band; overlapping bands are only overcounts. -/
theorem heightCount_step (N : ℕ) :
    heightCount ((N : ℝ) + 1) ≤ heightCount (N : ℝ) + bandMass N := by
  classical
  have hsub : heightHead ((N : ℝ) + 1) \ heightHead (N : ℝ) ⊆ heightBand N := by
    intro z hz
    obtain ⟨hz1, hz0⟩ := Finset.mem_sdiff.mp hz
    have h1 := (mem_heightHead _ z).mp hz1
    have h0 : (N : ℝ) < height z := height_gt_of_not_mem_head _ z hz0
    exact (mem_heightBand N z).mpr ⟨h0, by linarith⟩
  have hm : (∑ z ∈ heightHead ((N : ℝ) + 1) \ heightHead (N : ℝ), multiplicity z) ≤
      bandMass N :=
    Finset.sum_le_sum_of_subset_of_nonneg hsub (fun z _ _ => Nat.zero_le _)
  have he := heightHead_difference_mass (a := (N : ℝ)) (b := (N : ℝ) + 1)
    (by linarith)
  calc
    _ = (∑ z ∈ heightHead ((N : ℝ) + 1) \ heightHead (N : ℝ), multiplicity z) +
        heightCount (N : ℝ) := he.symm
    _ ≤ bandMass N + heightCount (N : ℝ) := Nat.add_le_add_right hm _
    _ = _ := add_comm _ _

/-- The unestimated low head remains as an additive term, not a missing case. -/
theorem heightCount_nat_le_bands (N : ℕ) :
    heightCount ((N : ℝ) + 2) ≤ heightCount 2 +
      ∑ k ∈ Finset.range N, bandMass (k + 2) := by
  induction N with
  | zero => simp
  | succ N ih =>
      have hs := heightCount_step (N + 2)
      simp only [Nat.cast_add, Nat.cast_ofNat] at hs
      simp only [Nat.cast_succ, Finset.sum_range_succ]
      rw [show (N : ℝ) + 1 + 2 = (N : ℝ) + 2 + 1 by ring]
      calc
        _ ≤ heightCount ((N : ℝ) + 2) + bandMass (N + 2) := hs
        _ ≤ (heightCount 2 + ∑ k ∈ Finset.range N, bandMass (k + 2)) +
            bandMass (N + 2) := Nat.add_le_add_right ih _
        _ = _ := by omega

theorem localCountBudget_mono (M N : ℕ) (hMN : M ≤ N) :
    localCountBudget M ≤ localCountBudget N := by
  have hc : (M : ℝ) ≤ N := by exact_mod_cast hMN
  have hl := Real.log_le_log (by positivity : (0 : ℝ) < (M : ℝ) + 2)
    (show (M : ℝ) + 2 ≤ (N : ℝ) + 2 by linarith)
  unfold localCountBudget
  exact div_le_div_of_nonneg_right (by linarith)
    (Real.log_pos (by norm_num : (1 : ℝ) < 6 / 5)).le

/-- Every contributing local count is at a valid Jensen stage at least two. -/
theorem heightCount_nat_le_budget (N : ℕ) :
    (heightCount ((N : ℝ) + 2) : ℝ) ≤ (heightCount 2 : ℝ) +
      (N : ℝ) * localCountBudget (N + 2) := by
  have hc : (heightCount ((N : ℝ) + 2) : ℝ) ≤ (heightCount 2 : ℝ) +
      ∑ k ∈ Finset.range N, (bandMass (k + 2) : ℝ) := by
    exact_mod_cast heightCount_nat_le_bands N
  calc
    _ ≤ (heightCount 2 : ℝ) + ∑ k ∈ Finset.range N, (bandMass (k + 2) : ℝ) := hc
    _ ≤ (heightCount 2 : ℝ) + ∑ _k ∈ Finset.range N, localCountBudget (N + 2) := by
      apply add_le_add le_rfl
      apply Finset.sum_le_sum
      intro k hk
      exact (bandMass_le_localCountBudget (k + 2) (by omega)).trans
        (localCountBudget_mono (k + 2) (N + 2) (by
          have := Finset.mem_range.mp hk
          omega))
    _ = _ := by simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]

/-- Elementary logarithmic enlargement; the coefficient 22 is retained. -/
theorem localCountBudget_le_log_multiple (N : ℕ) (t : ℝ) (ht : 2 ≤ t)
    (hNt : (N : ℝ) + 2 ≤ 4 * t) :
    localCountBudget N ≤ (22 / Real.log (6 / 5 : ℝ)) * Real.log t := by
  have ht0 : 0 < t := by linarith
  have h2 : Real.log 2 ≤ Real.log t := Real.log_le_log (by norm_num) ht
  have h4 : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    calc
      _ = Real.log ((2 : ℝ) ^ 2) := by norm_num
      _ = _ := by rw [Real.log_pow]; norm_num
  have hlog := Real.log_le_log (by positivity : (0 : ℝ) < (N : ℝ) + 2) hNt
  rw [Real.log_mul (by norm_num : (4 : ℝ) ≠ 0) ht0.ne', h4] at hlog
  unfold localCountBudget
  rw [h4]
  calc
    _ ≤ (22 * Real.log t) / Real.log (6 / 5 : ℝ) :=
      div_le_div_of_nonneg_right (by linarith)
        (Real.log_pos (by norm_num : (1 : ℝ) < 6 / 5)).le
    _ = _ := by ring

/-- A real cutoff is covered by an exact mathematical ceiling, not rounded zero data. -/
theorem heightCount_le_low_add (t : ℝ) (ht : 2 ≤ t) :
    (heightCount t : ℝ) ≤ (heightCount 2 : ℝ) +
      countingCoefficient * (t * Real.log t) := by
  let N : ℕ := ⌈t⌉₊
  have hceil : t ≤ (N : ℝ) := Nat.le_ceil t
  have hceil' : (N : ℝ) < t + 1 := Nat.ceil_lt_add_one (by linarith)
  have hN : (N : ℝ) ≤ 2 * t := by linarith
  have hNt : ((N + 2 : ℕ) : ℝ) + 2 ≤ 4 * t := by
    push_cast
    linarith
  have hJ := localCountBudget_le_log_multiple (N + 2) t ht hNt
  have hm : (heightCount t : ℝ) ≤ (heightCount ((N : ℝ) + 2) : ℝ) := by
    exact_mod_cast heightCount_mono (show t ≤ (N : ℝ) + 2 by linarith)
  have hp := mul_le_mul hN hJ (localCountBudget_nonneg (N + 2))
    (show 0 ≤ 2 * t by linarith)
  calc
    _ ≤ (heightCount ((N : ℝ) + 2) : ℝ) := hm
    _ ≤ (heightCount 2 : ℝ) + (N : ℝ) * localCountBudget (N + 2) :=
      heightCount_nat_le_budget N
    _ ≤ (heightCount 2 : ℝ) + (2 * t) *
        ((22 / Real.log (6 / 5 : ℝ)) * Real.log t) := add_le_add le_rfl hp
    _ = _ := by unfold countingCoefficient; ring

/-- Uniform count for EVERY finite high subfamily. The exact low mass cancels;
it is neither bounded numerically nor asserted zero. -/
theorem finiteCountingMass_high_le (S : Finset ZeroPoint) (t : ℝ) (ht : 2 ≤ t)
    (hS : ∀ z ∈ S, 2 < height z) :
    finiteCountingMass S height (fun z => (multiplicity z : ℝ)) t ≤
      countingCoefficient * (t * Real.log t) := by
  classical
  have hsub : S.filter (fun z => height z ≤ t) ⊆ heightHead t \ heightHead 2 := by
    intro z hz
    obtain ⟨hzS, hzt⟩ := Finset.mem_filter.mp hz
    refine Finset.mem_sdiff.mpr ⟨(mem_heightHead t z).mpr hzt, ?_⟩
    intro hz2
    exact (not_le_of_gt (hS z hzS)) ((mem_heightHead 2 z).mp hz2)
  have hb : (∑ z ∈ S.filter (fun z => height z ≤ t), (multiplicity z : ℝ)) ≤
      ∑ z ∈ heightHead t \ heightHead 2, (multiplicity z : ℝ) :=
    Finset.sum_le_sum_of_subset_of_nonneg hsub (fun z _ _ => Nat.cast_nonneg _)
  have he : (∑ z ∈ heightHead t \ heightHead 2, (multiplicity z : ℝ)) +
      (heightCount 2 : ℝ) = (heightCount t : ℝ) := by
    exact_mod_cast heightHead_difference_mass ht
  rw [finiteCountingMass, ← Finset.sum_filter]
  linarith [heightCount_le_low_add t ht]

end
end GRWTSK.RiemannHypothesis.CanonicalHighCounting
```
